uint64_t sub_261B013AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for AppEntityID();
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v12 = *(v9 + 24);
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 32))(v13, v14, v18);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  v19 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[21];
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + v26) = *(a2 + v26);
  *(a1 + a3[22]) = *(a2 + a3[22]);
  return a1;
}

void *assignWithTake for ListEntity(void *a1, void *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  v11 = *(a1 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;

  v12 = type metadata accessor for AppEntityID();
  v13 = *(v12 + 20);
  v14 = sub_261CFD844();
  (*(*(v14 - 8) + 40))(&v8[v13], &v9[v13], v14);
  v15 = *(v12 + 24);
  v16 = &v8[v15];
  v17 = &v9[v15];
  v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  LODWORD(v13) = v20(v16, 1, v18);
  v21 = v20(v17, 1, v18);
  if (v13)
  {
    if (!v21)
    {
      v22 = sub_261CFD4E4();
      (*(*(v22 - 8) + 32))(v16, v17, v22);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v21)
  {
    sub_261B013AC(v16, type metadata accessor for RecurrentInstanceSpecifier);
LABEL_6:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v16, v17, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v64 = sub_261CFD4E4();
  (*(*(v64 - 8) + 40))(v16, v17, v64);
  v16[*(v18 + 20)] = v17[*(v18 + 20)];
LABEL_7:
  v24 = a3[6];
  v25 = *(a1 + v24);
  *(a1 + v24) = *(a2 + v24);

  v26 = a3[7];
  v27 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v28 = a3[8];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);

  v30 = a3[9];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);

  v32 = a3[10];
  v33 = *(a1 + v32);
  *(a1 + v32) = *(a2 + v32);

  v34 = a3[11];
  v35 = *(a1 + v34);
  *(a1 + v34) = *(a2 + v34);

  v36 = a3[12];
  v37 = *(a1 + v36);
  *(a1 + v36) = *(a2 + v36);

  v38 = a3[13];
  v39 = *(a1 + v38);
  *(a1 + v38) = *(a2 + v38);

  v40 = a3[14];
  v41 = *(a1 + v40);
  *(a1 + v40) = *(a2 + v40);

  v42 = a3[15];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[16];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);

  v46 = a3[17];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);

  v48 = a3[18];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);

  v50 = a3[19];
  v51 = (a1 + v50);
  v52 = a2 + v50;
  v53 = *(a1 + v50);
  v54 = *(a2 + v50);
  if (!v53)
  {
    if (v54)
    {
      v57 = *(v52 + 1);
      *v51 = v54;
      v51[1] = v57;
      goto LABEL_14;
    }

LABEL_13:
    *v51 = *v52;
    goto LABEL_14;
  }

  if (!v54)
  {
    v58 = v51[1];

    goto LABEL_13;
  }

  v55 = *(v52 + 1);
  v56 = v51[1];
  *v51 = v54;
  v51[1] = v55;

LABEL_14:
  v59 = a3[20];
  v60 = *(a1 + v59);
  *(a1 + v59) = *(a2 + v59);

  v61 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  v62 = *(a1 + v61);
  *(a1 + v61) = *(a2 + v61);

  return a1;
}

uint64_t getEnumTagSinglePayload for RemindersAppIntentCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemindersAppIntentCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ListEntity.SortingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListEntity.SortingStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261B01D28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_261B01D70()
{
  result = qword_27FEDE0E0;
  if (!qword_27FEDE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE0E0);
  }

  return result;
}

uint64_t sub_261B01DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B01E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B01E90()
{
  v2 = *(type metadata accessor for ListEntity() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261B01F5C;

  return sub_261AFEF58(v0 + v3);
}

uint64_t sub_261B01F5C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_261B02094()
{
  v0 = sub_261CFD674();
  __swift_allocate_value_buffer(v0, qword_280D27028);
  v1 = __swift_project_value_buffer(v0, qword_280D27028);
  *v1 = type metadata accessor for LookupClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_261B02164()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA148);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA148);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.dueDateOfRecurrentInstance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);

  return sub_261B022C4(v3, a1);
}

uint64_t type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier()
{
  result = qword_27FEDA180;
  if (!qword_27FEDA180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B022C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.init(reminderID:dueDateOfRecurrentInstance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);

  return sub_261B02380(a2, v4);
}

uint64_t sub_261B02380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_261CFD4E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261B022C4(v1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_261AE6A40(v5, &qword_27FEDA160, &qword_261D02220);
    v12 = [*v1 description];
    v13 = sub_261CFFA74();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_261D00334();

    v20 = 0x203A64697BLL;
    v21 = 0xE500000000000000;
    v14 = [*v1 description];
    v15 = sub_261CFFA74();
    v17 = v16;

    MEMORY[0x26671C210](v15, v17);

    MEMORY[0x26671C210](0x746144657564202CLL, 0xEB00000000203A65);
    sub_261B05068(&qword_27FEDA168, MEMORY[0x277CC8990]);
    v18 = sub_261D005F4();
    MEMORY[0x26671C210](v18);

    MEMORY[0x26671C210](125, 0xE100000000000000);
    v13 = v20;
    (*(v7 + 8))(v10, v6);
  }

  return v13;
}

id sub_261B026B0(void *a1, int a2)
{
  LODWORD(v81) = a2;
  v4 = sub_261CFD7E4();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v76 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v82 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v83 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v76 - v20;
  v22 = sub_261CFD4E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261B022C4(v2 + *(v27 + 20), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_261AE6A40(v21, &qword_27FEDA160, &qword_261D02220);
    return 0;
  }

  v80 = v4;
  (*(v23 + 32))(v26, v21, v22);
  v28 = objc_allocWithZone(MEMORY[0x277D44600]);
  v29 = sub_261CFD464();
  sub_261B05020(0, &qword_27FEDA1A0, 0x277D44570);
  v30 = sub_261CFFC54();
  v31 = [v28 initWithDueDateComponents:v29 alarms:v30];

  if (v31)
  {
    v32 = [a1 displayDate];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 date];

      sub_261CFD7C4();
      v35 = v83;
      (*(v84 + 32))(v83, v16, v80);
      if ([a1 isRecurrent])
      {
        v36 = [v31 date];
        v37 = v82;
        sub_261CFD7C4();

        sub_261CFD784();
        if (v38 > 0.0)
        {
          v39 = *(v84 + 8);
          v40 = v80;
          v39(v37, v80);
          v39(v35, v40);
          goto LABEL_8;
        }

        v52 = v84;
        if (fabs(v38) < 0.0000000149011612)
        {
          v53 = *(v84 + 8);
          v54 = v80;
          v53(v37, v80);
          v53(v35, v54);
          (*(v23 + 8))(v26, v22);
          if ((v81 & 1) == 0)
          {
            return v31;
          }

          return 0;
        }

        if (qword_27FED9810 != -1)
        {
          swift_once();
        }

        v55 = sub_261CFF7A4();
        __swift_project_value_buffer(v55, qword_27FEDA148);
        v56 = *(v52 + 16);
        v57 = v37;
        v58 = v80;
        v56(v11, v57, v80);
        v56(v8, v83, v58);
        v59 = sub_261CFF784();
        v60 = sub_261CFFE64();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v77 = v61;
          v81 = swift_slowAlloc();
          v85 = v81;
          *v61 = 136315394;
          v76 = sub_261B05068(&qword_27FEDA198, MEMORY[0x277CC9578]);
          v79 = v59;
          v62 = sub_261D005F4();
          v78 = v60;
          v64 = v63;
          v84 = *(v84 + 8);
          (v84)(v11, v58);
          v65 = sub_261B879C8(v62, v64, &v85);

          v66 = v77;
          *(v77 + 1) = v65;
          *(v66 + 6) = 2080;
          v67 = sub_261D005F4();
          v69 = v68;
          v70 = v8;
          v71 = v84;
          (v84)(v70, v58);
          v72 = sub_261B879C8(v67, v69, &v85);

          *(v66 + 14) = v72;
          v73 = v79;
          _os_log_impl(&dword_261AE2000, v79, v78, "RemindersInCalendar: invalid due date of recurrent instance; date is earlier than due date {date: %s, originalDueDate: %s}", v66, 0x16u);
          v74 = v81;
          swift_arrayDestroy();
          MEMORY[0x26671D560](v74, -1, -1);
          MEMORY[0x26671D560](v66, -1, -1);

          v71(v82, v58);
          v71(v83, v58);
        }

        else
        {

          v75 = *(v84 + 8);
          v75(v8, v58);
          v75(v11, v58);
          v75(v82, v58);
          v75(v83, v58);
        }
      }

      else
      {
        if (qword_27FED9810 != -1)
        {
          swift_once();
        }

        v45 = sub_261CFF7A4();
        __swift_project_value_buffer(v45, qword_27FEDA148);
        v46 = sub_261CFF784();
        v47 = sub_261CFFE64();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v83;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_261AE2000, v46, v47, "RemindersInCalendar: invalid due date of recurrent instance; reminder is not recurrent", v50, 2u);
          MEMORY[0x26671D560](v50, -1, -1);
        }

        (*(v84 + 8))(v49, v80);
      }
    }

    else
    {
      if (qword_27FED9810 != -1)
      {
        swift_once();
      }

      v41 = sub_261CFF7A4();
      __swift_project_value_buffer(v41, qword_27FEDA148);
      v42 = sub_261CFF784();
      v43 = sub_261CFFE64();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_261AE2000, v42, v43, "RemindersInCalendar: invalid due date of recurrent instance; reminder does not have due date", v44, 2u);
        MEMORY[0x26671D560](v44, -1, -1);
      }
    }

    (*(v23 + 8))(v26, v22);
    return 0;
  }

LABEL_8:
  (*(v23 + 8))(v26, v22);
  return v31;
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.hash(into:)()
{
  v1 = v0;
  v2 = sub_261CFD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = *v0;
  sub_261D00104();
  v12 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261B022C4(v1 + *(v12 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_261D006E4();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_261D006E4();
  sub_261B05068(&qword_27FEDA170, MEMORY[0x277CC8990]);
  sub_261CFF944();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_261CFD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_261D006C4();
  v11 = *v0;
  sub_261D00104();
  v12 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261B022C4(v1 + *(v12 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_261D006E4();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_261D006E4();
    sub_261B05068(&qword_27FEDA170, MEMORY[0x277CC8990]);
    sub_261CFF944();
    (*(v3 + 8))(v6, v2);
  }

  return sub_261D006F4();
}

uint64_t sub_261B03390(uint64_t a1)
{
  v3 = v1;
  v4 = sub_261CFD4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  sub_261D006C4();
  v13 = *v1;
  sub_261D00104();
  sub_261B022C4(v3 + *(a1 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_261D006E4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_261D006E4();
    sub_261B05068(&qword_27FEDA170, MEMORY[0x277CC8990]);
    sub_261CFF944();
    (*(v5 + 8))(v8, v4);
  }

  return sub_261D006F4();
}

uint64_t sub_261B0358C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_261CFD4E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  v14 = *v2;
  sub_261D00104();
  sub_261B022C4(v4 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return sub_261D006E4();
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_261D006E4();
  sub_261B05068(&qword_27FEDA170, MEMORY[0x277CC8990]);
  sub_261CFF944();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261B03774(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_261CFD4E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_261D006C4();
  v14 = *v2;
  sub_261D00104();
  sub_261B022C4(v4 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_261D006E4();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_261D006E4();
    sub_261B05068(&qword_27FEDA170, MEMORY[0x277CC8990]);
    sub_261CFF944();
    (*(v6 + 8))(v9, v5);
  }

  return sub_261D006F4();
}

BOOL _s19RemindersAppIntents0A19InCalendarUtilitiesO17ReminderSpecifierV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_261CFD4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1A8, &unk_261D022F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  v17 = *a1;
  v18 = *a2;
  if ((sub_261D000F4() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier() + 20);
  v20 = *(v13 + 48);
  sub_261B022C4(a1 + v19, v16);
  sub_261B022C4(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_261AE6A40(v16, &qword_27FEDA160, &qword_261D02220);
      return 1;
    }

    goto LABEL_7;
  }

  sub_261B022C4(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_261AE6A40(v16, &qword_27FEDA1A8, &unk_261D022F0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  sub_261B05068(&qword_27FEDA1B8, MEMORY[0x277CC8990]);
  v23 = sub_261CFF974();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_261AE6A40(v16, &qword_27FEDA160, &qword_261D02220);
  return (v23 & 1) != 0;
}

void **_s17ReminderSpecifierVwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_261CFD4E4();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t _s17ReminderSpecifierVwxx(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_261CFD4E4();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **_s17ReminderSpecifierVwcp(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **_s17ReminderSpecifierVwca(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_261CFD4E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *_s17ReminderSpecifierVwtk(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_261CFD4E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **_s17ReminderSpecifierVwta(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_261CFD4E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_261B044B8()
{
  sub_261B04554();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_261B04554()
{
  if (!qword_27FEDA190)
  {
    sub_261CFD4E4();
    v0 = sub_261D00154();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEDA190);
    }
  }
}

uint64_t sub_261B045AC(unint64_t a1, uint64_t a2)
{
  v118 = sub_261CFD7E4();
  v116 = *(v118 - 8);
  v4 = *(v116 + 64);
  v5 = MEMORY[0x28223BE20](v118);
  v115 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v101 - v8;
  MEMORY[0x28223BE20](v7);
  v109 = &v101 - v9;
  v10 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v119 = *(v10 - 8);
  v11 = *(v119 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2; v13; i = a2)
  {
    v14 = 0;
    v121 = a1 & 0xFFFFFFFFFFFFFF8;
    v122 = (a1 & 0xC000000000000001);
    v15 = MEMORY[0x277D84F98];
    v16 = a1;
    while (1)
    {
      if (v122)
      {
        v18 = MEMORY[0x26671CA10](v14, a1);
      }

      else
      {
        if (v14 >= *(v121 + 16))
        {
          goto LABEL_28;
        }

        v18 = *(a1 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v21 = [v18 objectID];
      if ((v15 & 0xC000000000000001) != 0)
      {
        if (v15 < 0)
        {
          a2 = v15;
        }

        else
        {
          a2 = v15 & 0xFFFFFFFFFFFFFF8;
        }

        v22 = v19;
        v23 = sub_261D00274();
        if (__OFADD__(v23, 1))
        {
          goto LABEL_30;
        }

        v15 = sub_261CA2468(a2, v23 + 1);
      }

      else
      {
        v24 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v15;
      a1 = v15;
      v26 = sub_261B37CA4(v21);
      v28 = *(v15 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_29;
      }

      a2 = v27;
      if (*(v15 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v26;
          sub_261CA45B4();
          v26 = v35;
        }
      }

      else
      {
        sub_261CA2930(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_261B37CA4(v21);
        if ((a2 & 1) != (v32 & 1))
        {
          goto LABEL_74;
        }
      }

      a1 = v16;
      v15 = v124;
      if (a2)
      {
        v17 = v124[7];
        a2 = *(v17 + 8 * v26);
        *(v17 + 8 * v26) = v19;
      }

      else
      {
        v124[(v26 >> 6) + 8] |= 1 << v26;
        *(*(v15 + 48) + 8 * v26) = v21;
        *(*(v15 + 56) + 8 * v26) = v19;

        v33 = *(v15 + 16);
        v30 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v30)
        {
          goto LABEL_31;
        }

        *(v15 + 16) = v34;
      }

      ++v14;
      if (v20 == v13)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v13 = sub_261D00274();
  }

  v15 = MEMORY[0x277D84F98];
LABEL_34:
  v36 = i;
  v37 = i + 56;
  v38 = 1 << *(i + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(i + 56);
  v41 = (v38 + 63) >> 6;
  v42 = v15 & 0xC000000000000001;
  v43 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 < 0)
  {
    v43 = v15;
  }

  v121 = v43;
  v108 = (v116 + 8);
  v114 = (v116 + 32);
  v106 = v116 + 40;
  sub_261CFD104();
  v44 = 0;
  v122 = MEMORY[0x277D84F98];
  *&v45 = 136315394;
  v107 = v45;
  while (v40)
  {
LABEL_46:
    v47 = v120;
    sub_261B04F14(*(v36 + 48) + *(v119 + 72) * (__clz(__rbit64(v40)) | (v44 << 6)), v120);
    v48 = *v47;
    if (v42)
    {
      v49 = v48;
      v50 = sub_261D004A4();

      if (!v50)
      {
        goto LABEL_40;
      }

      v123 = v50;
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      swift_dynamicCast();
      v51 = v124;
      if (!v124)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!*(v15 + 16))
      {
        goto LABEL_40;
      }

      v52 = sub_261B37CA4(*v47);
      if ((v53 & 1) == 0)
      {
        goto LABEL_40;
      }

      v51 = *(*(v15 + 56) + 8 * v52);
      if (!v51)
      {
        goto LABEL_40;
      }
    }

    v54 = sub_261B026B0(v51, 1);
    if (v54)
    {
      v55 = v54;
      v110 = v42;
      if (qword_27FED9810 != -1)
      {
        swift_once();
      }

      v56 = sub_261CFF7A4();
      __swift_project_value_buffer(v56, qword_27FEDA148);
      v57 = v55;
      v58 = v51;
      v59 = v57;
      v60 = v58;
      v61 = sub_261CFF784();
      v62 = sub_261CFFE84();

      v105 = v62;
      v63 = os_log_type_enabled(v61, v62);
      v112 = v60;
      v113 = v59;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v101 = v64;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v124 = v104;
        *v64 = v107;
        v65 = [v59 date];
        v102 = v61;
        v66 = v65;
        v67 = v109;
        sub_261CFD7C4();

        sub_261B05068(&qword_27FEDA198, MEMORY[0x277CC9578]);
        v68 = v118;
        v69 = sub_261D005F4();
        v71 = v70;
        v72 = v67;
        v59 = v113;
        (*v108)(v72, v68);
        v73 = sub_261B879C8(v69, v71, &v124);

        v74 = v101;
        *(v101 + 1) = v73;
        *(v74 + 6) = 2112;
        v75 = [v112 objectID];
        *(v74 + 14) = v75;
        v76 = v103;
        *v103 = v75;
        v77 = v102;
        _os_log_impl(&dword_261AE2000, v102, v105, "RemindersInCalendar: editing specific occurrence {dueDate: %s, reminderID: %@}", v74, 0x16u);
        sub_261AE6A40(v76, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v76, -1, -1);
        v78 = v104;
        __swift_destroy_boxed_opaque_existential_0(v104);
        MEMORY[0x26671D560](v78, -1, -1);
        v79 = v74;
        v80 = v118;
        MEMORY[0x26671D560](v79, -1, -1);
      }

      else
      {

        v80 = v118;
      }

      v81 = v48;
      v82 = [v59 date];
      v83 = v111;
      sub_261CFD7C4();

      v84 = *v114;
      (*v114)(v115, v83, v80);
      v85 = v122;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v85;
      v87 = sub_261B37CA4(v81);
      v89 = *(v85 + 16);
      v90 = (v88 & 1) == 0;
      v30 = __OFADD__(v89, v90);
      v91 = v89 + v90;
      if (v30)
      {
        goto LABEL_72;
      }

      v92 = v88;
      if (*(v85 + 24) >= v91)
      {
        if ((v86 & 1) == 0)
        {
          v99 = v87;
          sub_261CA45C8();
          v87 = v99;
        }
      }

      else
      {
        sub_261CA2944(v91, v86);
        v87 = sub_261B37CA4(v81);
        if ((v92 & 1) != (v93 & 1))
        {
          goto LABEL_74;
        }
      }

      v36 = i;
      v94 = v124;
      v122 = v124;
      if (v92)
      {
        (*(v116 + 40))(v124[7] + *(v116 + 72) * v87, v115, v118);

        v95 = v112;
      }

      else
      {
        v96 = v124;
        v124[(v87 >> 6) + 8] |= 1 << v87;
        *(*(v94 + 48) + 8 * v87) = v81;
        v84((*(v94 + 56) + *(v116 + 72) * v87), v115, v118);
        v97 = *(v96 + 16);
        v30 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v30)
        {
          goto LABEL_73;
        }

        *(v96 + 16) = v98;
        v81 = v112;
        v95 = v113;
      }

      v42 = v110;
    }

    else
    {
    }

LABEL_40:
    v40 &= v40 - 1;
    sub_261B04F78(v120);
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v41)
    {

      return v122;
    }

    v40 = *(v37 + 8 * v46);
    ++v44;
    if (v40)
    {
      v44 = v46;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261B04F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B04F78(uint64_t a1)
{
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_261B05020(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_261B05068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MoveRemindersToSectionAppIntent.reminders.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B050E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersToSectionAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B0525C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t MoveRemindersToSectionAppIntent.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*MoveRemindersToSectionAppIntent.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B053D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261B05584(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261B05584(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B055F4(v10);
}

uint64_t MoveRemindersToSectionAppIntent.targetSection.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_261B05584(a1, &v8 - v6);
  sub_261CFCBC4();
  return sub_261B055F4(a1);
}

uint64_t sub_261B05584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B055F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*MoveRemindersToSectionAppIntent.targetSection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B056F4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDA1C0);
  __swift_project_value_buffer(v9, qword_27FEDA1C0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static MoveRemindersToSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9818 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveRemindersToSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t static MoveRemindersToSectionAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDA1D8 = a1;
  return result;
}

uint64_t MoveRemindersToSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v47 - v3;
  v66 = sub_261CFD184();
  v68 = *(v66 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v47 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v59 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v51 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v52 = *MEMORY[0x277CC9110];
  v27 = v52;
  v54 = v14;
  v28(v18, v52, v14);
  v53 = v28;
  v55 = v15 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v57;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v58 = v24 + 56;
  v60 = v30;
  v30(v29, 0, 1, v23);
  v70 = 0;
  v31 = sub_261CFC834();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v56 = v32 + 56;
  v33(v63, 1, 1, v31);
  v33(v64, 1, 1, v31);
  v61 = *MEMORY[0x277CBA308];
  v34 = *(v68 + 104);
  v68 += 104;
  v62 = v34;
  v34(v65);
  sub_261B07F90(&qword_280D22358, type metadata accessor for ReminderEntity);
  *v67 = sub_261CFCC34();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v52;
  v36 = v54;
  v37 = v53;
  v53(v18, v52, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v18, v35, v36);
  v38 = v57;
  sub_261CFD6C4();
  v60(v38, 0, 1, v59);
  LOBYTE(v70) = 2;
  v48 = v31;
  v33(v63, 1, 1, v31);
  v33(v64, 1, 1, v31);
  v62(v65, v61, v66);
  sub_261B07F3C();
  v67[1] = sub_261CFCC04();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v52;
  v40 = v54;
  v41 = v53;
  v53(v18, v52, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v18, v39, v40);
  sub_261CFD6C4();
  v60(v38, 0, 1, v59);
  v42 = type metadata accessor for SectionEntity();
  (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
  v43 = v48;
  v33(v63, 1, 1, v48);
  v33(v64, 1, 1, v43);
  v62(v65, v61, v66);
  sub_261B07F90(&qword_280D224E0, type metadata accessor for SectionEntity);
  v44 = sub_261CFCC34();
  v45 = v67;
  v67[2] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA210, &qword_261D02330);
  v69 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[3] = result;
  return result;
}

uint64_t MoveRemindersToSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B06864, v5, v4);
}

uint64_t sub_261B06864()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C4ED90)(v10, "MoveRemindersToSectionAppIntent", 31, 2, v8, v9, v6, v7);
}

uint64_t sub_261B06958()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_261B08560;
  }

  else
  {
    v7 = sub_261B08564;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B06A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261B06B34, v7, v6);
}

uint64_t sub_261B06B34()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B0E400(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_261B06CB8;
  v10 = v0[11];

  return (v12)(v10, v0 + 7, v5, v6);
}

uint64_t sub_261B06CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 136);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_261B06E38;
  }

  else
  {
    v6 = sub_261B06DCC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261B06DCC()
{
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261B06E38()
{
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_261B06EA4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v64 = a3;
  v63 = a1;
  v82 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v57 - v10;
  v81 = sub_261CFD184();
  v83 = *(v81 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v79 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v72 = v57 - v20;
  v21 = sub_261CFD674();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_261CFD884();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = sub_261CFFA44();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = sub_261CFD6A4();
  v74 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v66 = v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = *(v22 + 104);
  v68 = *MEMORY[0x277CC9110];
  v34 = v68;
  v69 = v21;
  v35(v25, v68, v21);
  v67 = v35;
  v70 = v22 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v25, v34, v21);
  v36 = v72;
  sub_261CFD6C4();
  v37 = *(v31 + 56);
  v73 = v31 + 56;
  v75 = v37;
  v37(v36, 0, 1, v30);
  v85 = 0;
  v38 = sub_261CFC834();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v71 = v39 + 56;
  v40(v78, 1, 1, v38);
  v40(v79, 1, 1, v38);
  v76 = *MEMORY[0x277CBA308];
  v41 = *(v83 + 104);
  v83 += 104;
  v77 = v41;
  v41(v80);
  sub_261B07F90(&qword_280D22358, type metadata accessor for ReminderEntity);
  v59 = sub_261CFCC34();
  *v82 = v59;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v68;
  v43 = v69;
  v44 = v67;
  v67(v25, v68, v69);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v44(v25, v42, v43);
  v45 = v72;
  sub_261CFD6C4();
  v75(v45, 0, 1, v74);
  LOBYTE(v85) = 2;
  v57[0] = v38;
  v40(v78, 1, 1, v38);
  v40(v79, 1, 1, v38);
  v77(v80, v76, v81);
  sub_261B07F3C();
  v58 = sub_261CFCC04();
  v82[1] = v58;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v46 = v68;
  v47 = v69;
  v48 = v67;
  v67(v25, v68, v69);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v48(v25, v46, v47);
  sub_261CFD6C4();
  v75(v45, 0, 1, v74);
  v49 = type metadata accessor for SectionEntity();
  v50 = v61;
  (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
  v51 = v57[0];
  v40(v78, 1, 1, v57[0]);
  v40(v79, 1, 1, v51);
  v77(v80, v76, v81);
  sub_261B07F90(&qword_280D224E0, type metadata accessor for SectionEntity);
  v52 = sub_261CFCC34();
  v53 = v82;
  v82[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA210, &qword_261D02330);
  v84[0] = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v53[3] = sub_261CFC684();
  v85 = v63;
  sub_261CFCBC4();
  LOBYTE(v85) = v60;
  sub_261CFCBC4();
  v54 = v64;
  sub_261B05584(v64, v50);
  sub_261B05584(v50, v62);
  sub_261CFCBC4();
  sub_261B055F4(v50);
  v55 = v65;
  sub_261AE498C(v65, &v85);
  sub_261AE498C(&v85, v84);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v55);
  sub_261B055F4(v54);
  return __swift_destroy_boxed_opaque_existential_0(&v85);
}

uint64_t sub_261B07A60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9818 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B07B60(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B07C04, v5, v4);
}

uint64_t sub_261B07C04()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C4ED90)(v10, "MoveRemindersToSectionAppIntent", 31, 2, v8, v9, v6, v7);
}

uint64_t sub_261B07CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_261B07E98;
  }

  else
  {
    v7 = sub_261B07E34;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B07E34()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261B07E98()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_261B07F00(uint64_t a1)
{
  v2 = sub_261B0810C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B07F3C()
{
  result = qword_27FEDA200;
  if (!qword_27FEDA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA200);
  }

  return result;
}

uint64_t sub_261B07F90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B07FDC()
{
  result = qword_27FEDA218;
  if (!qword_27FEDA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA218);
  }

  return result;
}

unint64_t sub_261B08034()
{
  result = qword_27FEDA220;
  if (!qword_27FEDA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA220);
  }

  return result;
}

unint64_t sub_261B0810C()
{
  result = qword_27FEDA228;
  if (!qword_27FEDA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA228);
  }

  return result;
}

uint64_t destroy for MoveRemindersToSectionAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];
}

void *initializeWithCopy for MoveRemindersToSectionAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for MoveRemindersToSectionAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for MoveRemindersToSectionAppIntent(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for MoveRemindersToSectionAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MoveRemindersToSectionAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MoveRemindersToSectionIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_261B084B8()
{
  result = qword_27FEDA230;
  if (!qword_27FEDA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA238, &qword_261D02480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA230);
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

uint64_t AppIntentsServicesRefresher.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t static AppIntentsServicesRefresher.sendNotificationIfNeeded()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_261CFFD44();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_261B08680(0, 0, v3, &unk_261D024A0, v5);
}

uint64_t sub_261B08680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_261AF4808(a3, v23 - v9);
  v11 = sub_261CFFD44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_261CFCDA4();
  if (v13 == 1)
  {
    sub_261AE7E50(v10);
  }

  else
  {
    sub_261CFFD34();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_261CFFCF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_261CFFAD4() + 32;
      sub_261CFCDA4();
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_261AE7E50(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_261AE7E50(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t AppIntentsServicesRefresher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AppIntentsServicesRefresher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_261B08978()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  sub_261AE7BF8("AppIntentsServicesRefresher.send", 32, 2);
  if (qword_280D21E70 != -1)
  {
    swift_once();
  }

  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_280D21E78);
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261AE2000, v4, v5, "AppIntentsServicesRefresher did receive store change notification", v6, 2u);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v7 = sub_261CFFD44();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_261B08680(0, 0, v2, &unk_261D024E0, v8);
}

uint64_t sub_261B08B38()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261AF43A8;

  return sub_261AE7F64();
}

uint64_t sub_261B08BE4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA250);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA250);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CreateSectionAppIntent.title.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B08CE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  v8 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*CreateSectionAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CreateSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v64 = &v53 - v3;
  v66 = sub_261CFD674();
  v78 = *(v66 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD6A4();
  v75 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_261CFD184();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v72);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v63 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v53 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v53 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  v34 = *(v13 + 56);
  v74 = v13 + 56;
  v76 = v34;
  v34(v33, 1, 1, v12);
  v56 = sub_261CFF994();
  v80 = 0;
  v81 = 0;
  v35 = *(v56 - 8);
  v57 = *(v35 + 56);
  v58 = v35 + 56;
  v53 = v29;
  v57(v29, 1, 1, v56);
  v68 = sub_261CFC834();
  v36 = *(v68 - 8);
  v67 = *(v36 + 56);
  v69 = v36 + 56;
  v54 = v25;
  v67(v25, 1, 1, v68);
  v70 = *MEMORY[0x277CBA308];
  v37 = *(v16 + 104);
  v71 = v16 + 104;
  v73 = v37;
  v65 = v19;
  v37(v19);
  *v77 = sub_261CFCD04();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = *MEMORY[0x277CC9110];
  v40 = v78 + 104;
  v39 = *(v78 + 104);
  v41 = v62;
  v42 = v66;
  v39(v62, v38, v66);
  v78 = v40;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v41, v38, v42);
  v43 = v33;
  v44 = v41;
  sub_261CFD6C4();
  v76(v33, 0, 1, v75);
  v80 = 0;
  v81 = 0;
  v57(v53, 1, 1, v56);
  v45 = v54;
  v67(v54, 1, 1, v68);
  v73(v65, v70, v72);
  v77[1] = sub_261CFCD24();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v46 = v66;
  v39(v44, v38, v66);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v44, v38, v46);
  sub_261CFD6C4();
  v76(v43, 0, 1, v75);
  v47 = type metadata accessor for ListEntity();
  (*(*(v47 - 8) + 56))(v64, 1, 1, v47);
  v49 = v67;
  v48 = v68;
  v67(v45, 1, 1, v68);
  v49(v63, 1, 1, v48);
  v73(v65, v70, v72);
  sub_261B09804();
  sub_261B0AD68(&qword_280D227A0, type metadata accessor for ListEntity);
  v50 = sub_261CFCC24();
  v51 = v77;
  v77[2] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA2A8, &qword_261D02538);
  v79 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v51[3] = result;
  return result;
}

unint64_t sub_261B09804()
{
  result = qword_27FEDA2A0;
  if (!qword_27FEDA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2A0);
  }

  return result;
}

uint64_t sub_261B09858()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDA268);
  __swift_project_value_buffer(v9, qword_27FEDA268);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9830 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA268);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t CreateSectionAppIntent.name.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

double sub_261B09E18@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261B09E54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  v8 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*CreateSectionAppIntent.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B09FF0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261B0A18C(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t CreateSectionAppIntent.list.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t sub_261B0A18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B0A1F0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*CreateSectionAppIntent.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t CreateSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B0A388, v5, v4);
}

uint64_t sub_261B0A388()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C51AD4)(v10, "CreateSectionAppIntent", 22, 2, v8, v9, v6, v7);
}

uint64_t sub_261B0A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261B0A51C, v7, v6);
}

uint64_t sub_261B0A51C()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B0F1CC(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_261B06CB8;
  v10 = v0[11];

  return (v12)(v10, v0 + 7, v5, v6);
}

uint64_t static CreateSectionAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA2B0, &qword_261D02568);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA2B8, &qword_261D02570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B0A88C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA2C8, &qword_261D025A0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA2D0, &qword_261D025D0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

unint64_t sub_261B0A88C()
{
  result = qword_27FEDA2C0;
  if (!qword_27FEDA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2C0);
  }

  return result;
}

unint64_t sub_261B0A8E4()
{
  result = qword_27FEDA2D8;
  if (!qword_27FEDA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2D8);
  }

  return result;
}

unint64_t sub_261B0A93C()
{
  result = qword_27FEDA2E0;
  if (!qword_27FEDA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2E0);
  }

  return result;
}

unint64_t sub_261B0A994()
{
  result = qword_27FEDA2E8;
  if (!qword_27FEDA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2E8);
  }

  return result;
}

uint64_t sub_261B0AA38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9830 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA268);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B0AAEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B0AB90, v5, v4);
}

uint64_t sub_261B0AB90()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return (sub_261C51AD4)(v10, "CreateSectionAppIntent", 22, 2, v8, v9, v6, v7);
}

uint64_t sub_261B0AC8C(uint64_t a1)
{
  v2 = sub_261B0A88C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B0ACCC()
{
  result = qword_27FEDA2F0;
  if (!qword_27FEDA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2F0);
  }

  return result;
}

uint64_t sub_261B0AD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261B0AE14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 48) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 24) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0AF4C;
  v3 = *(v0 + 16);

  return sub_261C51EBC(v3, "ListEntityQuery.suggestedEntities", 33, 2, v1, 2);
}

uint64_t sub_261B0AF4C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261B0B088, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_261B0B088()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_261B0B10C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 80) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 56) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_261B0B244;
  v3 = *(v0 + 48);

  return sub_261C533E4(v3, "ListEntityQuery.defaultListEntity", 33, 2, v1, 2);
}

uint64_t sub_261B0B244()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261B0B380, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_261B0B380()
{
  v22 = v0;
  v1 = v0[7];

  if (qword_27FED9828 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDA250);
  v4 = v2;
  v5 = sub_261CFF784();
  v6 = sub_261CFFE64();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_261D00674();
    v16 = sub_261B879C8(v14, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_261AE2000, v5, v6, "[CreateSectionAppIntent] Failed to fetch default list entity with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26671D560](v10, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[6];
  v18 = type metadata accessor for ListEntity();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_261B0B58C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return sub_261B0ADF4(a1);
}

uint64_t sub_261B0B624(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return sub_261B0B0EC(a1);
}

uint64_t dispatch thunk of CreateSectionIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t AppIntentsError.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO13SmartListTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t sub_261B0BA38()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t AppIntentsError.localizedStringResource.getter()
{
  v1 = sub_261CFD674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_261CFFA44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *v0;
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return sub_261CFD6C4();
}

unint64_t sub_261B0CA50()
{
  result = qword_27FEDA330;
  if (!qword_27FEDA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppIntentsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ListBadgeEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA338, &qword_261D02AE0);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t ListBadgeEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B0CCA8, 0, 0);
}

uint64_t sub_261B0CCA8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0E3F8;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5D098)("ListBadgeEntityQuery.entitiesForIdentifiers", 43, 2, v4, v5);
}

uint64_t sub_261B0CD9C()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_261B0CE60;
  v3 = *(v0 + 16);

  return sub_261C5D5F4("ListBadgeEntityQuery.suggestedEntities", 38, 2, v3);
}

uint64_t sub_261B0CE60(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_261B0CF84@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA338, &qword_261D02AE0);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261B0D010(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B0D034, 0, 0);
}

uint64_t sub_261B0D034()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0D104;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5D098)("ListBadgeEntityQuery.entitiesForIdentifiers", 43, 2, v4, v5);
}

uint64_t sub_261B0D104(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_261B0D244(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B0D268, 0, 0);
}

uint64_t sub_261B0D268()
{
  v1 = *(v0 + 24);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0D32C;
  v3 = *(v0 + 24);

  return sub_261C5D5F4("ListBadgeEntityQuery.suggestedEntities", 38, 2, v3);
}

uint64_t sub_261B0D32C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *v2;

  if (v1)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_261B0D4A0, 0, 0);
  }
}

uint64_t sub_261B0D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_261B0D584;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_261B0D584(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_261B0D684(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261B0DEC4();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_261B0D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_261AF43A8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t ListBadgeEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_261B0D814, 0, 0);
}

uint64_t sub_261B0D814()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_261B0D8E8;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return (sub_261C5DE08)("ListBadgeEntityQuery.entitiesMatchingString", 43, 2, v4, v6, v5);
}

uint64_t sub_261B0D8E8(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_261B0DA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261B0DA50, 0, 0);
}

uint64_t sub_261B0DA50()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_261B0DB24;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  return (sub_261C5DE08)("ListBadgeEntityQuery.entitiesMatchingString", 43, 2, v4, v6, v5);
}

uint64_t sub_261B0DB24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;

  if (v1)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_261B0DCB4, 0, 0);
  }
}

unint64_t sub_261B0DCDC()
{
  result = qword_27FEDA340;
  if (!qword_27FEDA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA340);
  }

  return result;
}

unint64_t sub_261B0DD34()
{
  result = qword_27FEDA348;
  if (!qword_27FEDA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA348);
  }

  return result;
}

unint64_t sub_261B0DD90()
{
  result = qword_27FEDA350;
  if (!qword_27FEDA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA350);
  }

  return result;
}

unint64_t sub_261B0DDE4()
{
  result = qword_280D22218;
  if (!qword_280D22218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22218);
  }

  return result;
}

unint64_t sub_261B0DE3C()
{
  result = qword_27FEDA358;
  if (!qword_27FEDA358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA360, qword_261D02B78);
    sub_261B0DDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA358);
  }

  return result;
}

unint64_t sub_261B0DEC4()
{
  result = qword_27FEDA368;
  if (!qword_27FEDA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA368);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ListBadgeEntityQuery(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ListBadgeEntityQuery(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ListBadgeEntityQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B0E3FC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ListBadgeEntityQueryPerforming.suggestedEntities(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ListBadgeEntityQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261B0E3FC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_261B0E400(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B0810C();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD00000000000001FLL, 0x8000000261D17790, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD00000000000001FLL;
  v88[1] = 0x8000000261D17790;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B0F1CC(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B0A88C();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000016, 0x8000000261D17770, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000016;
  v88[1] = 0x8000000261D17770;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B0FF98(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B30F14();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000021, 0x8000000261D02EC0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000021;
  v87[1] = 0x8000000261D02EC0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B10D54(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v114[3] = v112;
  v114[4] = v113;
  v111 = sub_261B31D38();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD00000000000001ALL, 0x8000000261D17700, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD00000000000001ALL;
  v88[1] = 0x8000000261D17700;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B11B20(int a1)
{
  v106 = a1;
  v109 = sub_261CFED34();
  v108 = *(v109 - 8);
  v2 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v94[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = sub_261CFCF24();
  v99 = *(v110 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v110);
  v96 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v94[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v105 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v104 = &v94[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v97 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v94[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v102 = &v94[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v94[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v94[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v94[-v32];
  v34 = sub_261CFCFA4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v103 = &v94[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v101 = &v94[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v100 = &v94[-v42];
  MEMORY[0x28223BE20](v41);
  v44 = &v94[-v43];
  v45 = v1[11];
  v128 = v1[10];
  v129 = v45;
  v46 = v1[13];
  v130 = v1[12];
  v131 = v46;
  v47 = v1[7];
  v124 = v1[6];
  v125 = v47;
  v48 = v1[9];
  v126 = v1[8];
  v127 = v48;
  v49 = v1[3];
  v120 = v1[2];
  v121 = v49;
  v50 = v1[5];
  v122 = v1[4];
  v123 = v50;
  v51 = v1[1];
  v118 = *v1;
  v119 = v51;
  v114 = sub_261B31CE4();
  sub_261CFC754();
  sub_261CFCF94();
  v52 = *(v35 + 8);
  v116 = v34;
  v115 = v35 + 8;
  v113 = v52;
  v52(v44, v34);
  (*(v15 + 104))(v31, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v53 = *(v19 + 56);
  sub_261AFB668(v33, v22, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v31, &v22[v53], &qword_27FEDA428, &qword_261D02F28);
  v111 = v15;
  v54 = *(v15 + 48);
  if (v54(v22, 1, v14) == 1)
  {
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
    if (v54(&v22[v53], 1, v14) == 1)
    {
      return sub_261AE6A40(v22, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v22, v112, &qword_27FEDA428, &qword_261D02F28);
  if (v54(&v22[v53], 1, v14) == 1)
  {
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
    (*(v111 + 8))(v112, v14);
LABEL_6:
    sub_261AE6A40(v22, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v75 = v111;
  v76 = v97;
  (*(v111 + 32))(v97, &v22[v53], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v77 = v112;
  v95 = sub_261CFF974();
  v78 = *(v75 + 8);
  v78(v76, v14);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v33, &qword_27FEDA428, &qword_261D02F28);
  v78(v77, v14);
  result = sub_261AE6A40(v22, &qword_27FEDA428, &qword_261D02F28);
  if (v95)
  {
    return result;
  }

LABEL_7:
  v56 = v100;
  sub_261CFC754();
  v57 = v102;
  sub_261CFCF94();
  v113(v56, v116);
  if (v54(v57, 1, v14) == 1)
  {
    sub_261AE6A40(v57, &qword_27FEDA428, &qword_261D02F28);
    v58 = 0xEE00656372756F73;
    v112 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v112 = sub_261B876C4();
    v58 = v59;
    (*(v111 + 8))(v57, v14);
  }

  v60 = v105;
  v61 = v104;
  v62 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v113(v62, v116);
  v63 = sub_261CFCF54();
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  if (v65(v61, 1, v63) == 1)
  {
    sub_261AE6A40(v61, &qword_27FEDA418, &qword_261D02F18);
    v111 = 0;
    v105 = 0;
  }

  else
  {
    v111 = sub_261CFCF44();
    v105 = v66;
    (*(v64 + 8))(v61, v63);
  }

  v67 = v103;
  sub_261CFC754();
  sub_261CFCF64();
  v113(v67, v116);
  if (v65(v60, 1, v63) == 1)
  {
    v68 = &qword_27FEDA418;
    v69 = &qword_261D02F18;
    v70 = v60;
  }

  else
  {
    v71 = v98;
    sub_261CFCF34();
    (*(v64 + 8))(v60, v63);
    v72 = v99;
    if ((*(v99 + 48))(v71, 1, v110) != 1)
    {
      v79 = v96;
      v80 = v110;
      (*(v72 + 16))(v96, v71, v110);
      v81 = (*(v72 + 88))(v79, v80);
      if (v81 == *MEMORY[0x277CBA0B8])
      {
        v74 = 0xEE0064726177726FLL;
        v73 = 0x4679616C70736964;
      }

      else if (v81 == *MEMORY[0x277CBA0A8])
      {
        v74 = 0xEB00000000796C6ELL;
        v73 = 0x4F79616C70736964;
      }

      else if (v81 == *MEMORY[0x277CBA0C0])
      {
        v74 = 0xE900000000000079;
        v73 = 0x6C6E4F6563696F76;
      }

      else if (v81 == *MEMORY[0x277CBA0B0])
      {
        v74 = 0xEC00000064726177;
        v73 = 0x726F466563696F76;
      }

      else
      {
        (*(v72 + 8))(v79, v110);
        v74 = 0xE700000000000000;
        v73 = 0x6E776F6E6B6E75;
      }

      (*(v72 + 8))(v71, v110);
      goto LABEL_30;
    }

    v68 = &qword_27FEDA410;
    v69 = &qword_261D02F10;
    v70 = v71;
  }

  sub_261AE6A40(v70, v68, v69);
  v73 = 0;
  v74 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v82 = sub_261CFF7A4();
  __swift_project_value_buffer(v82, qword_27FEDB1E0);
  sub_261CFD104();
  v83 = sub_261CFF784();
  v84 = sub_261CFFE84();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v117 = v86;
    *v85 = 136315394;
    *(v85 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D176E0, &v117);
    *(v85 + 12) = 2080;
    v87 = v112;
    *(v85 + 14) = sub_261B879C8(v112, v58, &v117);
    _os_log_impl(&dword_261AE2000, v83, v84, "Posting Analytics: %s.%s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v86, -1, -1);
    MEMORY[0x26671D560](v85, -1, -1);
  }

  else
  {

    v87 = v112;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v88 = 0x8000000261D14240;
  v89 = 0xD000000000000011;
  if ((v106 & 1) == 0)
  {
    v89 = 0x704163696C627570;
    v88 = 0xEF746E65746E4970;
  }

  v90 = v107;
  *v107 = 0xD000000000000017;
  v90[1] = 0x8000000261D176E0;
  v90[2] = v87;
  v90[3] = v58;
  v90[4] = v89;
  v90[5] = v88;
  v91 = v105;
  v90[6] = v111;
  v90[7] = v91;
  v90[8] = v73;
  v90[9] = v74;
  v92 = v108;
  v93 = v109;
  (*(v108 + 104))(v90, *MEMORY[0x277D44E90], v109);
  sub_261CFED84();

  return (*(v92 + 8))(v90, v93);
}

uint64_t sub_261B12A4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31C90();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD00000000000001BLL, 0x8000000261D176C0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD00000000000001BLL;
  v87[1] = 0x8000000261D176C0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B13808(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31C3C();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D176A0, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000017;
  v88[1] = 0x8000000261D176A0;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B145E0(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31BE8();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD00000000000001FLL, 0x8000000261D17680, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD00000000000001FLL;
  v88[1] = 0x8000000261D17680;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B153B8(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31B94();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD00000000000001DLL, 0x8000000261D17660, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD00000000000001DLL;
  v88[1] = 0x8000000261D17660;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B16190(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31B40();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000021, 0x8000000261D17630, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000021;
  v87[1] = 0x8000000261D17630;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B16F4C(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31AEC();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000019, 0x8000000261D17610, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000019;
  v88[1] = 0x8000000261D17610;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B17D24(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31A98();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D175F0, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000018;
  v88[1] = 0x8000000261D175F0;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B18AFC(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v112) = a4;
  v111 = a3;
  v104 = a1;
  v6 = sub_261CFED34();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v6);
  v105 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_261CFCF24();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v91[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v102 = &v91[-v18];
  v19 = sub_261CFCF84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v94 = &v91[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v91[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v91[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v91[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v91[-v37];
  v39 = sub_261CFCFA4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v101 = &v91[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v99 = &v91[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v98 = &v91[-v47];
  MEMORY[0x28223BE20](v46);
  v49 = &v91[-v48];
  v114[1] = a2;
  v114[2] = v111;
  v115 = v112;
  v116 = v113;
  v111 = sub_261B31A44();
  sub_261CFC754();
  sub_261CFCF94();
  v50 = *(v40 + 8);
  v112 = v40 + 8;
  v113 = v39;
  v110 = v50;
  v50(v49, v39);
  (*(v20 + 104))(v36, *MEMORY[0x277CBA158], v19);
  (*(v20 + 56))(v36, 0, 1, v19);
  v51 = *(v24 + 56);
  sub_261AFB668(v38, v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v36, &v27[v51], &qword_27FEDA428, &qword_261D02F28);
  v108 = v20;
  v52 = *(v20 + 48);
  if (v52(v27, 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    if (v52(&v27[v51], 1, v19) == 1)
    {
      return sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v27, v109, &qword_27FEDA428, &qword_261D02F28);
  if (v52(&v27[v51], 1, v19) == 1)
  {
    sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
    (*(v108 + 8))(v109, v19);
LABEL_6:
    sub_261AE6A40(v27, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v74 = v108;
  v75 = v94;
  (*(v108 + 32))(v94, &v27[v51], v19);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v92 = sub_261CFF974();
  v76 = *(v74 + 8);
  v76(v75, v19);
  sub_261AE6A40(v36, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v38, &qword_27FEDA428, &qword_261D02F28);
  v76(v109, v19);
  result = sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  if (v92)
  {
    return result;
  }

LABEL_7:
  v54 = v98;
  sub_261CFC754();
  v55 = v100;
  sub_261CFCF94();
  v110(v54, v113);
  if (v52(v55, 1, v19) == 1)
  {
    sub_261AE6A40(v55, &qword_27FEDA428, &qword_261D02F28);
    v56 = 0xEE00656372756F73;
    v109 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v109 = sub_261B876C4();
    v56 = v57;
    (*(v108 + 8))(v55, v19);
  }

  v59 = v102;
  v58 = v103;
  v60 = v99;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v60, v113);
  v61 = sub_261CFCF54();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v59, 1, v61) == 1)
  {
    sub_261AE6A40(v59, &qword_27FEDA418, &qword_261D02F18);
    v108 = 0;
    v103 = 0;
  }

  else
  {
    v108 = sub_261CFCF44();
    v103 = v64;
    (*(v62 + 8))(v59, v61);
  }

  v65 = v101;
  sub_261CFC754();
  sub_261CFCF64();
  v110(v65, v113);
  if (v63(v58, 1, v61) == 1)
  {
    v66 = &qword_27FEDA418;
    v67 = &qword_261D02F18;
    v68 = v58;
  }

  else
  {
    v69 = v95;
    sub_261CFCF34();
    (*(v62 + 8))(v58, v61);
    v70 = v96;
    v71 = v97;
    if ((*(v96 + 48))(v69, 1, v97) != 1)
    {
      v77 = v93;
      (*(v70 + 16))(v93, v69, v71);
      v78 = (*(v70 + 88))(v77, v71);
      if (v78 == *MEMORY[0x277CBA0B8])
      {
        v73 = 0xEE0064726177726FLL;
        v72 = 0x4679616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0A8])
      {
        v73 = 0xEB00000000796C6ELL;
        v72 = 0x4F79616C70736964;
      }

      else if (v78 == *MEMORY[0x277CBA0C0])
      {
        v73 = 0xE900000000000079;
        v72 = 0x6C6E4F6563696F76;
      }

      else if (v78 == *MEMORY[0x277CBA0B0])
      {
        v73 = 0xEC00000064726177;
        v72 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v77, v71);
        v73 = 0xE700000000000000;
        v72 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v69, v71);
      goto LABEL_30;
    }

    v66 = &qword_27FEDA410;
    v67 = &qword_261D02F10;
    v68 = v69;
  }

  sub_261AE6A40(v68, v66, v67);
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v79 = sub_261CFF7A4();
  __swift_project_value_buffer(v79, qword_27FEDB1E0);
  sub_261CFD104();
  v80 = sub_261CFF784();
  v81 = sub_261CFFE84();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v114[0] = v83;
    *v82 = 136315394;
    *(v82 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D175D0, v114);
    *(v82 + 12) = 2080;
    v84 = v109;
    *(v82 + 14) = sub_261B879C8(v109, v56, v114);
    _os_log_impl(&dword_261AE2000, v80, v81, "Posting Analytics: %s.%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v83, -1, -1);
    MEMORY[0x26671D560](v82, -1, -1);
  }

  else
  {

    v84 = v109;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v85 = 0x8000000261D14240;
  v86 = 0xD000000000000011;
  if ((v104 & 1) == 0)
  {
    v86 = 0x704163696C627570;
    v85 = 0xEF746E65746E4970;
  }

  v88 = v105;
  v87 = v106;
  *v105 = 0xD000000000000018;
  v88[1] = 0x8000000261D175D0;
  v88[2] = v84;
  v88[3] = v56;
  v88[4] = v86;
  v88[5] = v85;
  v89 = v107;
  v90 = v103;
  v88[6] = v108;
  v88[7] = v90;
  v88[8] = v72;
  v88[9] = v73;
  (*(v87 + 104))(v88, *MEMORY[0x277D44E90], v89);
  sub_261CFED84();

  return (*(v87 + 8))(v88, v89);
}

uint64_t sub_261B198D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B319F0();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D175B0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000017;
  v87[1] = 0x8000000261D175B0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B1A690(int a1)
{
  v101 = a1;
  v2 = sub_261CFED34();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  MEMORY[0x28223BE20](v2);
  v102 = &v88[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_261CFCF24();
  v93 = *(v94 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v88[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v100 = &v88[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v99 = &v88[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v88[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v88[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v97 = &v88[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v88[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v88[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v88[-v33];
  v35 = sub_261CFCFA4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v98 = &v88[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v96 = &v88[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v95 = &v88[-v43];
  MEMORY[0x28223BE20](v42);
  v45 = &v88[-v44];
  v46 = v1[1];
  v112 = *v1;
  v113 = v46;
  v114 = v1[2];
  v108 = sub_261B3199C();
  sub_261CFC754();
  sub_261CFCF94();
  v47 = *(v36 + 8);
  v109 = v36 + 8;
  v110 = v35;
  v107 = v47;
  v47(v45, v35);
  (*(v16 + 104))(v32, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v48 = *(v20 + 56);
  sub_261AFB668(v34, v23, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v32, &v23[v48], &qword_27FEDA428, &qword_261D02F28);
  v105 = v16;
  v49 = *(v16 + 48);
  if (v49(v23, 1, v15) == 1)
  {
    sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    if (v49(&v23[v48], 1, v15) == 1)
    {
      return sub_261AE6A40(v23, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v23, v106, &qword_27FEDA428, &qword_261D02F28);
  if (v49(&v23[v48], 1, v15) == 1)
  {
    sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    (*(v105 + 8))(v106, v15);
LABEL_6:
    sub_261AE6A40(v23, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v71 = v105;
  v72 = v91;
  (*(v105 + 32))(v91, &v23[v48], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v89 = sub_261CFF974();
  v73 = *(v71 + 8);
  v73(v72, v15);
  sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
  v73(v106, v15);
  result = sub_261AE6A40(v23, &qword_27FEDA428, &qword_261D02F28);
  if (v89)
  {
    return result;
  }

LABEL_7:
  v51 = v95;
  sub_261CFC754();
  v52 = v97;
  sub_261CFCF94();
  v107(v51, v110);
  if (v49(v52, 1, v15) == 1)
  {
    sub_261AE6A40(v52, &qword_27FEDA428, &qword_261D02F28);
    v53 = 0xEE00656372756F73;
    v106 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v106 = sub_261B876C4();
    v53 = v54;
    (*(v105 + 8))(v52, v15);
  }

  v56 = v99;
  v55 = v100;
  v57 = v96;
  sub_261CFC754();
  sub_261CFCF64();
  v107(v57, v110);
  v58 = sub_261CFCF54();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(v56, 1, v58) == 1)
  {
    sub_261AE6A40(v56, &qword_27FEDA418, &qword_261D02F18);
    v105 = 0;
    v100 = 0;
  }

  else
  {
    v105 = sub_261CFCF44();
    v100 = v61;
    (*(v59 + 8))(v56, v58);
  }

  v62 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v107(v62, v110);
  if (v60(v55, 1, v58) == 1)
  {
    v63 = &qword_27FEDA418;
    v64 = &qword_261D02F18;
    v65 = v55;
  }

  else
  {
    v66 = v92;
    sub_261CFCF34();
    (*(v59 + 8))(v55, v58);
    v67 = v93;
    v68 = v94;
    if ((*(v93 + 48))(v66, 1, v94) != 1)
    {
      v74 = v90;
      (*(v67 + 16))(v90, v66, v68);
      v75 = (*(v67 + 88))(v74, v68);
      if (v75 == *MEMORY[0x277CBA0B8])
      {
        v70 = 0xEE0064726177726FLL;
        v69 = 0x4679616C70736964;
      }

      else if (v75 == *MEMORY[0x277CBA0A8])
      {
        v70 = 0xEB00000000796C6ELL;
        v69 = 0x4F79616C70736964;
      }

      else if (v75 == *MEMORY[0x277CBA0C0])
      {
        v70 = 0xE900000000000079;
        v69 = 0x6C6E4F6563696F76;
      }

      else if (v75 == *MEMORY[0x277CBA0B0])
      {
        v70 = 0xEC00000064726177;
        v69 = 0x726F466563696F76;
      }

      else
      {
        (*(v67 + 8))(v74, v68);
        v70 = 0xE700000000000000;
        v69 = 0x6E776F6E6B6E75;
      }

      (*(v67 + 8))(v66, v68);
      goto LABEL_30;
    }

    v63 = &qword_27FEDA410;
    v64 = &qword_261D02F10;
    v65 = v66;
  }

  sub_261AE6A40(v65, v63, v64);
  v69 = 0;
  v70 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v76 = sub_261CFF7A4();
  __swift_project_value_buffer(v76, qword_27FEDB1E0);
  sub_261CFD104();
  v77 = sub_261CFF784();
  v78 = sub_261CFFE84();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v111 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_261B879C8(0xD000000000000015, 0x8000000261D17590, &v111);
    *(v79 + 12) = 2080;
    v81 = v106;
    *(v79 + 14) = sub_261B879C8(v106, v53, &v111);
    _os_log_impl(&dword_261AE2000, v77, v78, "Posting Analytics: %s.%s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v80, -1, -1);
    MEMORY[0x26671D560](v79, -1, -1);
  }

  else
  {

    v81 = v106;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v82 = 0x8000000261D14240;
  v83 = 0xD000000000000011;
  if ((v101 & 1) == 0)
  {
    v83 = 0x704163696C627570;
    v82 = 0xEF746E65746E4970;
  }

  v85 = v102;
  v84 = v103;
  *v102 = 0xD000000000000015;
  v85[1] = 0x8000000261D17590;
  v85[2] = v81;
  v85[3] = v53;
  v85[4] = v83;
  v85[5] = v82;
  v86 = v104;
  v87 = v100;
  v85[6] = v105;
  v85[7] = v87;
  v85[8] = v69;
  v85[9] = v70;
  (*(v84 + 104))(v85, *MEMORY[0x277D44E90], v86);
  sub_261CFED84();

  return (*(v84 + 8))(v85, v86);
}

uint64_t sub_261B1B468(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a3;
  v112 = a4;
  v103 = a1;
  v5 = sub_261CFED34();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v104 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_261CFCF24();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v111;
  v113[3] = v112;
  v110 = sub_261B31948();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v69 = v95;
    v70 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v69 + 16))(v92, v68, v70);
      v77 = (*(v69 + 88))(v76, v70);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v69 + 8))(v76, v70);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v69 + 8))(v68, v70);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D17570, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000018;
  v87[1] = 0x8000000261D17570;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B1C224(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B318F4();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000016, 0x8000000261D17550, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000016;
  v87[1] = 0x8000000261D17550;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B1CFCC(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B318A0();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D17530, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000017;
  v87[1] = 0x8000000261D17530;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}

uint64_t sub_261B1DD74(int a1)
{
  v101 = a1;
  v2 = sub_261CFED34();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  MEMORY[0x28223BE20](v2);
  v102 = &v88[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_261CFCF24();
  v93 = *(v94 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v88[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v100 = &v88[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v99 = &v88[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v88[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v88[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v97 = &v88[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v88[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v88[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v88[-v33];
  v35 = sub_261CFCFA4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v98 = &v88[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v96 = &v88[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v95 = &v88[-v43];
  MEMORY[0x28223BE20](v42);
  v45 = &v88[-v44];
  v46 = v1[1];
  v112 = *v1;
  v113 = v46;
  v114 = *(v1 + 4);
  v108 = sub_261B3184C();
  sub_261CFC754();
  sub_261CFCF94();
  v47 = *(v36 + 8);
  v109 = v36 + 8;
  v110 = v35;
  v107 = v47;
  v47(v45, v35);
  (*(v16 + 104))(v32, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v48 = *(v20 + 56);
  sub_261AFB668(v34, v23, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v32, &v23[v48], &qword_27FEDA428, &qword_261D02F28);
  v105 = v16;
  v49 = *(v16 + 48);
  if (v49(v23, 1, v15) == 1)
  {
    sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    if (v49(&v23[v48], 1, v15) == 1)
    {
      return sub_261AE6A40(v23, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v23, v106, &qword_27FEDA428, &qword_261D02F28);
  if (v49(&v23[v48], 1, v15) == 1)
  {
    sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
    (*(v105 + 8))(v106, v15);
LABEL_6:
    sub_261AE6A40(v23, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v71 = v105;
  v72 = v91;
  (*(v105 + 32))(v91, &v23[v48], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v89 = sub_261CFF974();
  v73 = *(v71 + 8);
  v73(v72, v15);
  sub_261AE6A40(v32, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v34, &qword_27FEDA428, &qword_261D02F28);
  v73(v106, v15);
  result = sub_261AE6A40(v23, &qword_27FEDA428, &qword_261D02F28);
  if (v89)
  {
    return result;
  }

LABEL_7:
  v51 = v95;
  sub_261CFC754();
  v52 = v97;
  sub_261CFCF94();
  v107(v51, v110);
  if (v49(v52, 1, v15) == 1)
  {
    sub_261AE6A40(v52, &qword_27FEDA428, &qword_261D02F28);
    v53 = 0xEE00656372756F73;
    v106 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v106 = sub_261B876C4();
    v53 = v54;
    (*(v105 + 8))(v52, v15);
  }

  v56 = v99;
  v55 = v100;
  v57 = v96;
  sub_261CFC754();
  sub_261CFCF64();
  v107(v57, v110);
  v58 = sub_261CFCF54();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  if (v60(v56, 1, v58) == 1)
  {
    sub_261AE6A40(v56, &qword_27FEDA418, &qword_261D02F18);
    v105 = 0;
    v100 = 0;
  }

  else
  {
    v105 = sub_261CFCF44();
    v100 = v61;
    (*(v59 + 8))(v56, v58);
  }

  v62 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v107(v62, v110);
  if (v60(v55, 1, v58) == 1)
  {
    v63 = &qword_27FEDA418;
    v64 = &qword_261D02F18;
    v65 = v55;
  }

  else
  {
    v66 = v92;
    sub_261CFCF34();
    (*(v59 + 8))(v55, v58);
    v67 = v93;
    v68 = v94;
    if ((*(v93 + 48))(v66, 1, v94) != 1)
    {
      v74 = v90;
      (*(v67 + 16))(v90, v66, v68);
      v75 = (*(v67 + 88))(v74, v68);
      if (v75 == *MEMORY[0x277CBA0B8])
      {
        v70 = 0xEE0064726177726FLL;
        v69 = 0x4679616C70736964;
      }

      else if (v75 == *MEMORY[0x277CBA0A8])
      {
        v70 = 0xEB00000000796C6ELL;
        v69 = 0x4F79616C70736964;
      }

      else if (v75 == *MEMORY[0x277CBA0C0])
      {
        v70 = 0xE900000000000079;
        v69 = 0x6C6E4F6563696F76;
      }

      else if (v75 == *MEMORY[0x277CBA0B0])
      {
        v70 = 0xEC00000064726177;
        v69 = 0x726F466563696F76;
      }

      else
      {
        (*(v67 + 8))(v74, v68);
        v70 = 0xE700000000000000;
        v69 = 0x6E776F6E6B6E75;
      }

      (*(v67 + 8))(v66, v68);
      goto LABEL_30;
    }

    v63 = &qword_27FEDA410;
    v64 = &qword_261D02F10;
    v65 = v66;
  }

  sub_261AE6A40(v65, v63, v64);
  v69 = 0;
  v70 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v76 = sub_261CFF7A4();
  __swift_project_value_buffer(v76, qword_27FEDB1E0);
  sub_261CFD104();
  v77 = sub_261CFF784();
  v78 = sub_261CFFE84();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v111 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_261B879C8(0xD00000000000001CLL, 0x8000000261D17510, &v111);
    *(v79 + 12) = 2080;
    v81 = v106;
    *(v79 + 14) = sub_261B879C8(v106, v53, &v111);
    _os_log_impl(&dword_261AE2000, v77, v78, "Posting Analytics: %s.%s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v80, -1, -1);
    MEMORY[0x26671D560](v79, -1, -1);
  }

  else
  {

    v81 = v106;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v82 = 0x8000000261D14240;
  v83 = 0xD000000000000011;
  if ((v101 & 1) == 0)
  {
    v83 = 0x704163696C627570;
    v82 = 0xEF746E65746E4970;
  }

  v85 = v102;
  v84 = v103;
  *v102 = 0xD00000000000001CLL;
  v85[1] = 0x8000000261D17510;
  v85[2] = v81;
  v85[3] = v53;
  v85[4] = v83;
  v85[5] = v82;
  v86 = v104;
  v87 = v100;
  v85[6] = v105;
  v85[7] = v87;
  v85[8] = v69;
  v85[9] = v70;
  (*(v84 + 104))(v85, *MEMORY[0x277D44E90], v86);
  sub_261CFED84();

  return (*(v84 + 8))(v85, v86);
}

uint64_t sub_261B1EB3C(int a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v103 = a1;
  v4 = sub_261CFED34();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_261CFCF24();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = &v90[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v101 = &v90[-v17];
  v18 = sub_261CFCF84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v93 = &v90[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v99 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v90[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v90[-v36];
  v38 = sub_261CFCFA4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v100 = &v90[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v98 = &v90[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-v46];
  MEMORY[0x28223BE20](v45);
  v48 = &v90[-v47];
  v113[1] = a2;
  v113[2] = v112;
  v110 = sub_261B317A4();
  sub_261CFC754();
  sub_261CFCF94();
  v49 = *(v39 + 8);
  v111 = v39 + 8;
  v112 = v38;
  v109 = v49;
  v49(v48, v38);
  (*(v19 + 104))(v35, *MEMORY[0x277CBA158], v18);
  (*(v19 + 56))(v35, 0, 1, v18);
  v50 = *(v23 + 56);
  sub_261AFB668(v37, v26, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v35, &v26[v50], &qword_27FEDA428, &qword_261D02F28);
  v107 = v19;
  v51 = *(v19 + 48);
  if (v51(v26, 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    if (v51(&v26[v50], 1, v18) == 1)
    {
      return sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v26, v108, &qword_27FEDA428, &qword_261D02F28);
  if (v51(&v26[v50], 1, v18) == 1)
  {
    sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
    (*(v107 + 8))(v108, v18);
LABEL_6:
    sub_261AE6A40(v26, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v73 = v107;
  v74 = v93;
  (*(v107 + 32))(v93, &v26[v50], v18);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178]);
  v91 = sub_261CFF974();
  v75 = *(v73 + 8);
  v75(v74, v18);
  sub_261AE6A40(v35, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v37, &qword_27FEDA428, &qword_261D02F28);
  v75(v108, v18);
  result = sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  if (v91)
  {
    return result;
  }

LABEL_7:
  v53 = v97;
  sub_261CFC754();
  v54 = v99;
  sub_261CFCF94();
  v109(v53, v112);
  if (v51(v54, 1, v18) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDA428, &qword_261D02F28);
    v55 = 0xEE00656372756F73;
    v108 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_261B876C4();
    v55 = v56;
    (*(v107 + 8))(v54, v18);
  }

  v58 = v101;
  v57 = v102;
  v59 = v98;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v59, v112);
  v60 = sub_261CFCF54();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_261AE6A40(v58, &qword_27FEDA418, &qword_261D02F18);
    v107 = 0;
    v102 = 0;
  }

  else
  {
    v107 = sub_261CFCF44();
    v102 = v63;
    (*(v61 + 8))(v58, v60);
  }

  v64 = v100;
  sub_261CFC754();
  sub_261CFCF64();
  v109(v64, v112);
  if (v62(v57, 1, v60) == 1)
  {
    v65 = &qword_27FEDA418;
    v66 = &qword_261D02F18;
    v67 = v57;
  }

  else
  {
    v68 = v94;
    sub_261CFCF34();
    (*(v61 + 8))(v57, v60);
    v70 = v95;
    v69 = v96;
    if ((*(v95 + 48))(v68, 1, v96) != 1)
    {
      v76 = v92;
      (*(v70 + 16))(v92, v68, v69);
      v77 = (*(v70 + 88))(v76, v69);
      if (v77 == *MEMORY[0x277CBA0B8])
      {
        v72 = 0xEE0064726177726FLL;
        v71 = 0x4679616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0A8])
      {
        v72 = 0xEB00000000796C6ELL;
        v71 = 0x4F79616C70736964;
      }

      else if (v77 == *MEMORY[0x277CBA0C0])
      {
        v72 = 0xE900000000000079;
        v71 = 0x6C6E4F6563696F76;
      }

      else if (v77 == *MEMORY[0x277CBA0B0])
      {
        v72 = 0xEC00000064726177;
        v71 = 0x726F466563696F76;
      }

      else
      {
        (*(v70 + 8))(v76, v69);
        v72 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }

      (*(v70 + 8))(v68, v69);
      goto LABEL_30;
    }

    v65 = &qword_27FEDA410;
    v66 = &qword_261D02F10;
    v67 = v68;
  }

  sub_261AE6A40(v67, v65, v66);
  v71 = 0;
  v72 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v78 = sub_261CFF7A4();
  __swift_project_value_buffer(v78, qword_27FEDB1E0);
  sub_261CFD104();
  v79 = sub_261CFF784();
  v80 = sub_261CFFE84();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v113[0] = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_261B879C8(0xD000000000000013, 0x8000000261D174D0, v113);
    *(v81 + 12) = 2080;
    v83 = v108;
    *(v81 + 14) = sub_261B879C8(v108, v55, v113);
    _os_log_impl(&dword_261AE2000, v79, v80, "Posting Analytics: %s.%s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v82, -1, -1);
    MEMORY[0x26671D560](v81, -1, -1);
  }

  else
  {

    v83 = v108;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v84 = 0x8000000261D14240;
  v85 = 0xD000000000000011;
  if ((v103 & 1) == 0)
  {
    v85 = 0x704163696C627570;
    v84 = 0xEF746E65746E4970;
  }

  v87 = v104;
  v86 = v105;
  *v104 = 0xD000000000000013;
  v87[1] = 0x8000000261D174D0;
  v87[2] = v83;
  v87[3] = v55;
  v87[4] = v85;
  v87[5] = v84;
  v88 = v106;
  v89 = v102;
  v87[6] = v107;
  v87[7] = v89;
  v87[8] = v71;
  v87[9] = v72;
  (*(v86 + 104))(v87, *MEMORY[0x277D44E90], v88);
  sub_261CFED84();

  return (*(v86 + 8))(v87, v88);
}