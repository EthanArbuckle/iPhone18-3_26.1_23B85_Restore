uint64_t sub_261C82D98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v69 - v5;
  v6 = sub_261CFD894();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFDA84();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v69 - v14;
  v15 = sub_261CFDAC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v72 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v22 = sub_261CFD7E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_261CFD4E4();
  v82 = *(v27 - 8);
  v28 = *(v82 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v71 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v69 - v31;
  v33 = v2;
  v34 = [v2 displayDate];
  if (v34)
  {
    v35 = v34;
    v70 = v27;
    v36 = [v33 allDay];
    v37 = [v35 date];
    sub_261CFD7C4();

    v38 = sub_261CFD794();
    (*(v23 + 8))(v26, v22);
    v39 = [v35 timeZone];
    v40 = v35;
    if (v39)
    {
      v69 = v15;
      v41 = v21;
      v42 = v32;
      v43 = v38;
      v44 = v36;
      v45 = v35;
      v46 = v72;
      v47 = v39;
      sub_261CFDAB4();

      v48 = *(v16 + 32);
      v49 = v73;
      v50 = v46;
      v40 = v45;
      v36 = v44;
      v38 = v43;
      v32 = v42;
      v21 = v41;
      v15 = v69;
      v48(v73, v50, v69);
      (*(v16 + 56))(v49, 0, 1, v15);
      v48(v21, v49, v15);
      v51 = v81;
    }

    else
    {
      v55 = v73;
      (*(v16 + 56))(v73, 1, 1, v15);
      sub_261CFDA94();
      v56 = (*(v16 + 48))(v55, 1, v15);
      v51 = v81;
      if (v56 != 1)
      {
        sub_261AE6A40(v55, &qword_27FEDC888, &qword_261D0B198);
      }
    }

    v57 = objc_opt_self();
    v58 = sub_261CFDAA4();
    (*(v16 + 8))(v21, v15);
    v59 = [v57 rem:v38 dateComponentsWithDate:v58 timeZone:v36 isAllDay:?];

    sub_261CFD484();
    v60 = v70;
    if (v36)
    {
      v61 = v71;
      sub_261CFD454();
      (*(v82 + 8))(v32, v60);
      (*(v82 + 32))(v32, v61, v60);
    }

    v63 = v76;
    v62 = v77;
    v64 = v74;
    (*(v76 + 104))(v74, *MEMORY[0x277CC9830], v77);
    v65 = v75;
    sub_261CFD8A4();
    (*(v63 + 8))(v64, v62);
    v67 = v78;
    v66 = v79;
    v68 = v80;
    (*(v78 + 16))(v80, v65, v79);
    (*(v67 + 56))(v68, 0, 1, v66);
    sub_261CFD4C4();

    (*(v67 + 8))(v65, v66);
    (*(v82 + 32))(v51, v32, v60);
    return (*(v82 + 56))(v51, 0, 1, v60);
  }

  else
  {
    v52 = v81;
    v53 = *(v82 + 56);

    return v53(v52, 1, 1, v27);
  }
}

void sub_261C8350C(uint64_t a1@<X8>)
{
  v3 = [v1 recurrenceRules];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
  v5 = sub_261CFFC64();

  if (v5 >> 62)
  {
    if (sub_261D00274())
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

LABEL_12:
    v7 = sub_261CFDA54();
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
    return;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26671CA10](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v9 = v6;

  REMRecurrenceRule.foundationTypeRecurrenceRule.getter(a1);
}

void sub_261C83674(void *a1@<X8>)
{
  v3 = [v1 alarms];
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = v3;
  sub_261B05020(0, &qword_27FEDA1A0, 0x277D44570);
  v5 = sub_261CFFC64();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = sub_261D00274();
  if (!v6)
  {
LABEL_35:

LABEL_36:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

LABEL_4:
  v21 = a1;
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v9 = MEMORY[0x26671CA10](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    a1 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = [v9 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v7;
    if (a1 == v6)
    {
      goto LABEL_16;
    }
  }

  v12 = [v10 trigger];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_16:
    v15 = 0;
    while (1)
    {
      if (v8)
      {
        v16 = MEMORY[0x26671CA10](v15, v5);
      }

      else
      {
        if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v16 = *(v5 + 8 * v15 + 32);
      }

      v10 = v16;
      a1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_32;
      }

      v17 = [v16 trigger];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v15;
      if (a1 == v6)
      {

LABEL_29:
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        return;
      }
    }

    v18 = [v10 trigger];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      sub_261B53B70(v19, &v22);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v14 = v13;

  sub_261B53780(v14, &v22);
LABEL_27:

  v20 = v23;
  *v21 = v22;
  v21[2] = v20;
}

uint64_t sub_261C83950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261CFD754();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = [v2 contactHandles];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 objectID];
    v16 = [v15 urlRepresentation];

    sub_261CFD734();
    v17 = sub_261CFD6F4();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    sub_261C7D878(v17, v19, v12);

    v20 = sub_261CFC954();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v12, 1, v20) == 1)
    {
      sub_261AE6A40(v12, &unk_27FEDB0B0, &unk_261D035D0);
      if (qword_27FED9C68 != -1)
      {
        swift_once();
      }

      v22 = sub_261CFF7A4();
      __swift_project_value_buffer(v22, qword_27FEDDB50);
      v23 = v2;
      v24 = sub_261CFF784();
      v25 = sub_261CFFE64();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = [v23 objectID];
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_261AE2000, v24, v25, "Failed to convert contact to IntentPerson for {reminderID: %@}", v26, 0xCu);
        sub_261AE6A40(v27, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v27, -1, -1);
        MEMORY[0x26671D560](v26, -1, -1);
      }

      return (*(v21 + 56))(a1, 1, 1, v20);
    }

    else
    {

      (*(v21 + 32))(a1, v12, v20);
      return (*(v21 + 56))(a1, 0, 1, v20);
    }
  }

  else
  {
    v30 = sub_261CFC954();
    v31 = *(*(v30 - 8) + 56);

    return v31(a1, 1, 1, v30);
  }
}

uint64_t sub_261C83D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = [v3 currentAssignment];
  if (!v10)
  {
LABEL_30:
    v39 = sub_261CFC954();
    v40 = *(*(v39 - 8) + 56);

    return v40(a2, 1, 1, v39);
  }

  v11 = v10;
  v12 = [a1 sharees];
  if (!v12)
  {

    goto LABEL_30;
  }

  v13 = v12;
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v14 = sub_261CFFC64();

  v42 = v9;
  v43 = a2;
  v41 = v3;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = sub_261D00274();
  if (!v15)
  {
LABEL_28:

LABEL_29:
    a2 = v43;
    goto LABEL_30;
  }

LABEL_5:
  v16 = 0;
  v44 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v44)
    {
      v17 = MEMORY[0x26671CA10](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v20 = [v18 objectID];
    v21 = v11;
    v22 = [v11 assigneeID];
    v23 = sub_261D000F4();

    if (v23)
    {
      break;
    }

    ++v16;
    v11 = v21;
    if (v19 == v15)
    {
      goto LABEL_28;
    }
  }

  if ([v21 status] != 1)
  {

    goto LABEL_29;
  }

  v24 = v42;
  sub_261B76B88(v42);
  v25 = sub_261CFC954();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_261AE6A40(v24, &unk_27FEDB0B0, &unk_261D035D0);
    if (qword_27FED9C68 != -1)
    {
      swift_once();
    }

    v27 = sub_261CFF7A4();
    __swift_project_value_buffer(v27, qword_27FEDDB50);
    v28 = v41;
    v29 = v18;
    v30 = sub_261CFF784();
    v31 = sub_261CFFE64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412546;
      v34 = [v28 objectID];
      *(v32 + 4) = v34;
      *v33 = v34;
      *(v32 + 12) = 2112;
      v35 = [v29 objectID];
      *(v32 + 14) = v35;
      v33[1] = v35;
      _os_log_impl(&dword_261AE2000, v30, v31, "Failed to convert assignee to IntentPerson for {reminderID: %@, assigneeID: %@}", v32, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v33, -1, -1);
      MEMORY[0x26671D560](v32, -1, -1);
      v36 = v30;
    }

    else
    {
      v36 = v29;
      v29 = v30;
    }

    return (*(v26 + 56))(v43, 1, 1, v25);
  }

  else
  {

    v37 = v43;
    (*(v26 + 32))(v43, v24, v25);
    return (*(v26 + 56))(v37, 0, 1, v25);
  }
}

void *sub_261C8427C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA990, &unk_261D03490);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_261CFD754();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v57 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v55 = sub_261CFC7E4();
  v49 = *(v55 - 8);
  v17 = *(v49 + 64);
  v18 = MEMORY[0x28223BE20](v55);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v41 - v20;
  result = [v0 attachments];
  if (result)
  {
    v22 = result;
    sub_261B05020(0, &qword_27FEDDB78, 0x277D445A0);
    v23 = sub_261CFFC64();

    v61 = v23;
    sub_261B05020(0, &qword_27FEDDB98, 0x277D44658);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB88, &qword_261D0F9E0);
    sub_261B91FF0(&qword_27FEDDB90, &qword_27FEDDB88, &qword_261D0F9E0);
    v24 = sub_261CFFC14();

    if (v24 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
    {
      v25 = 0;
      v58 = v24 & 0xFFFFFFFFFFFFFF8;
      v59 = v24 & 0xC000000000000001;
      v52 = (v9 + 8);
      v53 = (v9 + 32);
      v42 = (v9 + 48);
      v43 = (v9 + 16);
      v9 = i;
      v50 = (v49 + 32);
      v60 = MEMORY[0x277D84F90];
      v44 = v7;
      v45 = v24;
      v51 = v16;
      while (1)
      {
        if (v59)
        {
          v26 = MEMORY[0x26671CA10](v25, v24);
        }

        else
        {
          if (v25 >= *(v58 + 16))
          {
            goto LABEL_24;
          }

          v26 = *(v24 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v29 = [v26 fileURL];
        if (v29)
        {
          v30 = v56;
          v31 = v29;
          sub_261CFD734();

          (*v53)(v16, v30, v8);
          if (sub_261CFD6E4())
          {
            (*v43)(v57, v16, v8);
            sub_261CFD6D4();
            if ((*v42)(v7, 1, v8) == 1)
            {
              sub_261AE6A40(v7, &qword_27FEDB238, &unk_261D056F0);
              v32 = v8;
              v33 = v52;
            }

            else
            {
              sub_261CFD714();
              v33 = v52;
              (*v52)(v7, v8);
              v32 = v8;
            }

            v34 = [v27 uti];
            sub_261CFFA74();

            sub_261CFF6B4();
            v35 = v46;
            sub_261CFC7D4();

            (*v33)(v51, v32);
            v36 = *v50;
            (*v50)(v54, v35, v55);
            v37 = v60;
            v8 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_261B41894(0, v37[2] + 1, 1, v37);
            }

            v7 = v44;
            v24 = v45;
            v9 = i;
            v39 = v37[2];
            v38 = v37[3];
            v60 = v37;
            v16 = v51;
            if (v39 >= v38 >> 1)
            {
              v60 = sub_261B41894(v38 > 1, v39 + 1, 1, v60);
            }

            v40 = v60;
            v60[2] = v39 + 1;
            v36(&v40[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39], v54, v55);
          }

          else
          {

            (*v52)(v16, v8);
          }
        }

        else
        {
        }

        ++v25;
        if (v28 == v9)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_27:

    result = v60;
    if (!v60[2])
    {

      return 0;
    }
  }

  return result;
}

void *sub_261C848F0()
{
  v21 = sub_261CFD754();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 attachments];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sub_261B05020(0, &qword_27FEDDB78, 0x277D445A0);
  v7 = sub_261CFFC64();

  v22 = v7;
  sub_261B05020(0, &qword_27FEDDB80, 0x277D448E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB88, &qword_261D0F9E0);
  sub_261B91FF0(&qword_27FEDDB90, &qword_27FEDDB88, &qword_261D0F9E0);
  v8 = sub_261CFFC14();

  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    v10 = 0;
    v19 = v8 & 0xFFFFFFFFFFFFFF8;
    v20 = v8 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20)
      {
        v12 = MEMORY[0x26671CA10](v10, v8);
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 url];
      sub_261CFD734();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_261B418BC(0, v11[2] + 1, 1, v11);
      }

      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_261B418BC(v16 > 1, v17 + 1, 1, v11);
      }

      v11[2] = v17 + 1;
      (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v4, v21);
      ++v10;
      if (v14 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_20:

  if (!v11[2])
  {

    return 0;
  }

  return v11;
}

char *sub_261C84BF4()
{
  v0 = sub_261CFC8F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = sub_261C851D8();
  v9 = *(v8 + 2);
  if (v9)
  {
    v12 = *(v1 + 16);
    v10 = v1 + 16;
    v11 = v12;
    v13 = *(v10 + 64);
    v32 = v8;
    v14 = &v8[(v13 + 32) & ~v13];
    v39 = *(v10 + 56);
    v15 = (v10 + 72);
    v38 = *MEMORY[0x277CB9D88];
    v16 = (v10 - 8);
    v33 = (v10 + 80);
    v37 = MEMORY[0x277D84F90];
    v34 = v12;
    v35 = v10;
    v12(v7, v14, v0);
    while (1)
    {
      v11(v5, v7, v0);
      v18 = (*v15)(v5, v0);
      if (v18 == v38)
      {
        (*v33)(v5, v0);
        v19 = *v5;
        v20 = *(v5 + 1);
        v21 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v22 = sub_261CFFA54();

        v23 = [v21 initWithStringValue_];

        v24 = [v23 unformattedInternationalStringValue];
        if (v24)
        {
          v36 = sub_261CFFA74();
          v26 = v25;

          (*v16)(v7, v0);
          v27 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v37 : sub_261B41B60(0, *(v37 + 2) + 1, 1, v37);
          v29 = *(v27 + 2);
          v28 = *(v27 + 3);
          if (v29 >= v28 >> 1)
          {
            v27 = sub_261B41B60((v28 > 1), v29 + 1, 1, v27);
          }

          *(v27 + 2) = v29 + 1;
          v37 = v27;
          v30 = &v27[16 * v29];
          *(v30 + 4) = v36;
          *(v30 + 5) = v26;
        }

        else
        {
          (*v16)(v7, v0);
        }

        v11 = v34;
      }

      else
      {
        v17 = *v16;
        (*v16)(v7, v0);
        v17(v5, v0);
      }

      v14 += v39;
      if (!--v9)
      {
        break;
      }

      v11(v7, v14, v0);
    }

    return v37;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

char *sub_261C84F24()
{
  v0 = sub_261CFC8F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = sub_261C851D8();
  v9 = *(v8 + 2);
  if (v9)
  {
    v12 = *(v1 + 16);
    v11 = v1 + 16;
    v10 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v24[1] = v8;
    v14 = &v8[v13];
    v32 = *(v11 + 56);
    v15 = (v11 + 16);
    v16 = (v11 + 72);
    v31 = *MEMORY[0x277CB9D90];
    v25 = (v11 + 80);
    v26 = (v11 - 8);
    v17 = MEMORY[0x277D84F90];
    v27 = v12;
    v28 = v7;
    v29 = v11;
    v12(v7, &v8[v13], v0);
    while (1)
    {
      (*v15)(v5, v7, v0);
      v18 = (*v16)(v5, v0);
      if (v18 == v31)
      {
        (*v25)(v5, v0);
        v19 = v5[1];
        v30 = *v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_261B41B60(0, *(v17 + 2) + 1, 1, v17);
        }

        v21 = *(v17 + 2);
        v20 = *(v17 + 3);
        if (v21 >= v20 >> 1)
        {
          v17 = sub_261B41B60((v20 > 1), v21 + 1, 1, v17);
        }

        *(v17 + 2) = v21 + 1;
        v22 = &v17[16 * v21];
        *(v22 + 4) = v30;
        *(v22 + 5) = v19;
        v7 = v28;
        v10 = v27;
      }

      else
      {
        (*v26)(v5, v0);
      }

      v14 += v32;
      if (!--v9)
      {
        break;
      }

      v10(v7, v14, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v17;
}

id sub_261C851A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

char *sub_261C851D8()
{
  v1 = sub_261CFC914();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_261CFC8F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  sub_261CFC934();
  v23 = (v2[6])(v8, 1, v1);
  v53 = v9;
  v54 = v10;
  if (v23 == 1)
  {
    sub_261AE6A40(v8, &qword_27FEDB0D8, &qword_261D050F0);
  }

  else
  {
    v50 = v0;
    sub_261CFC904();
    v51 = v2;
    (v2[1])(v8, v1);
    v24 = *(v10 + 32);
    v24(v21, v19, v9);
    (*(v10 + 16))(v16, v21, v9);
    v25 = sub_261B41B38(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    v28 = v1;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_261B41B38(v26 > 1, v27 + 1, 1, v25);
    }

    v29 = v54 + 8;
    v30 = v21;
    v31 = v53;
    (*(v54 + 8))(v30, v53);
    *(v25 + 2) = v27 + 1;
    v24(&v25[((*(v29 + 72) + 32) & ~*(v29 + 72)) + *(v29 + 64) * v27], v16, v31);
    v56 = v25;
    v1 = v28;
    v2 = v51;
    v22 = MEMORY[0x277D84F90];
  }

  v32 = sub_261CFC944();
  v33 = *(v32 + 16);
  v34 = v48;
  if (v33)
  {
    v55 = v22;
    sub_261B3A14C(0, v33, 0);
    v36 = v2[2];
    v35 = (v2 + 2);
    v37 = v35[64];
    v47 = v32;
    v38 = v32 + ((v37 + 32) & ~v37);
    v50 = *(v35 + 7);
    v51 = v36;
    v39 = (v35 - 8);
    v40 = v55;
    v49 = v54 + 32;
    do
    {
      v41 = v52;
      v42 = v35;
      (v51)(v52, v38, v1);
      sub_261CFC904();
      v43 = v1;
      (*v39)(v41, v1);
      v55 = v40;
      v45 = *(v40 + 16);
      v44 = *(v40 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_261B3A14C(v44 > 1, v45 + 1, 1);
        v40 = v55;
      }

      *(v40 + 16) = v45 + 1;
      (*(v54 + 32))(v40 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, v34, v53);
      v38 += v50;
      --v33;
      v1 = v43;
      v35 = v42;
    }

    while (v33);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  sub_261BBBA88(v40);
  return v56;
}

uint64_t sub_261C85690(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_261C867F8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_261C8570C(v6);
  return sub_261D00384();
}

void sub_261C8570C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_261D005D4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
        v6 = sub_261CFFCA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_261C85A40(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_261C85820(0, v2, 1, a1);
  }
}

void sub_261C85820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_261CFD7E4();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 creationDate];
      sub_261CFD7C4();

      v23 = [v21 creationDate];
      v24 = v35;
      sub_261CFD7C4();

      LOBYTE(v23) = sub_261CFD7A4();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_261C85A40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_261CFD7E4();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_261C867D8(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_261C862B0((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_261C867D8(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_261C8674C(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 creationDate];
      v25 = v124;
      sub_261CFD7C4();

      v26 = [v23 creationDate];
      v27 = v125;
      sub_261CFD7C4();

      LODWORD(v122) = sub_261CFD7A4();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 creationDate];
        v35 = v124;
        sub_261CFD7C4();

        v36 = [v33 creationDate];
        v37 = v125;
        sub_261CFD7C4();

        LODWORD(v36) = sub_261CFD7A4() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_261B418E4(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_261B418E4((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_261C862B0((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_261C867D8(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_261C8674C(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 creationDate];
    v54 = v124;
    sub_261CFD7C4();

    v55 = [v52 creationDate];
    v56 = v125;
    sub_261CFD7C4();

    LOBYTE(v55) = sub_261CFD7A4();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_261C862B0(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_261CFD7E4();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 creationDate];
        v42 = v55;
        sub_261CFD7C4();

        v43 = [v40 creationDate];
        v44 = v56;
        sub_261CFD7C4();

        LOBYTE(v43) = sub_261CFD7A4();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 creationDate];
        v22 = v55;
        sub_261CFD7C4();

        v23 = [v20 creationDate];
        v24 = v56;
        sub_261CFD7C4();

        LOBYTE(v23) = sub_261CFD7A4();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_261C8674C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261C867D8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_261C8680C()
{
  result = qword_27FEDD490;
  if (!qword_27FEDD490)
  {
    sub_261B05020(255, &qword_27FEDD488, 0x277D44648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD490);
  }

  return result;
}

uint64_t sub_261C86874()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDBA8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDBA8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AppEntityID.entityName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t AppEntityID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityID() + 20);
  v4 = sub_261CFD844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityID.recurrentInstanceSpecifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEntityID() + 24);

  return sub_261AE7A78(v3, a1);
}

uint64_t AppEntityID.init(entityName:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for AppEntityID();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  v11 = *(v8 + 20);
  v12 = sub_261CFD844();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a4[v11], a3, v12);
}

uint64_t AppEntityID.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_261CFFB14();
  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  sub_261CFD844();
  sub_261C88108(&qword_27FEDBEE8, MEMORY[0x277CC95F0]);
  sub_261CFF944();
  sub_261AE7A78(v1 + *(v13 + 24), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_261D006E4();
  }

  sub_261C87F3C(v10, v6);
  sub_261D006E4();
  sub_261CFD4E4();
  sub_261C88108(&qword_27FEDA170, MEMORY[0x277CC8990]);
  sub_261CFF944();
  v16 = v6[*(v2 + 20)];
  sub_261D006E4();
  return sub_261C87BE8(v6);
}

uint64_t AppEntityID.hashValue.getter()
{
  sub_261D006C4();
  AppEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t sub_261C86D90()
{
  sub_261D006C4();
  AppEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t sub_261C86DD4()
{
  sub_261D006C4();
  AppEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t static AppEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_261CFD104();

  return AppEntityID.init(entityIdentifierString:)(a1, a2, a3);
}

uint64_t AppEntityID.init(entityIdentifierString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v121 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v115 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v117 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v111 - v12;
  v14 = sub_261CFD844();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v118 = &v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBC8, &qword_261D0F9F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v111 - v21;
  v23 = sub_261CFD414();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v111 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v111 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v111 - v35;
  sub_261CFD3E4();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_261AE6A40(v22, &qword_27FEDDBC8, &qword_261D0F9F0);
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v37 = sub_261CFF7A4();
    __swift_project_value_buffer(v37, qword_27FEDDBA8);
    sub_261CFD104();
    v38 = sub_261CFF784();
    v39 = sub_261CFFE64();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v122 = v41;
      *v40 = 136315138;
      v42 = sub_261B879C8(a1, a2, &v122);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_261AE2000, v38, v39, "AppEntityID#init(entityIdentifierString:): failed to create URLComponents {input: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x26671D560](v41, -1, -1);
      MEMORY[0x26671D560](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v113 = v23;
  v114 = v24;
  (*(v24 + 32))(v36, v22, v23);
  v43 = sub_261CFD384();
  v45 = v36;
  if (!v44)
  {
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v70 = sub_261CFF7A4();
    __swift_project_value_buffer(v70, qword_27FEDDBA8);
    v60 = v113;
    v71 = v114;
    (*(v114 + 16))(v34, v45, v113);
    v72 = sub_261CFF784();
    v73 = sub_261CFFE64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v122 = v75;
      *v74 = 136315138;
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958]);
      v76 = sub_261D005F4();
      v117 = v45;
      v78 = v77;
      v79 = *(v71 + 8);
      v79(v34, v60);
      v80 = sub_261B879C8(v76, v78, &v122);
      v81 = v121;

      *(v74 + 4) = v80;
      v82 = v73;
      v83 = v81;
      _os_log_impl(&dword_261AE2000, v72, v82, "AppEntityID#init(entityIdentifierString:): missing entityName {urlComponents: %s}", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x26671D560](v75, -1, -1);
      MEMORY[0x26671D560](v74, -1, -1);

      v79(v117, v60);
LABEL_26:
      v90 = type metadata accessor for AppEntityID();
      return (*(*(v90 - 8) + 56))(v83, 1, 1, v90);
    }

    v89 = *(v71 + 8);
    v89(v34, v60);
    goto LABEL_24;
  }

  v111 = v43;
  v112 = v44;
  v46 = sub_261CFD3A4();
  v48 = sub_261C87FA0(1uLL, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  MEMORY[0x26671C1B0](v48, v50, v52, v54);

  sub_261CFD7F4();

  v55 = v119;
  v56 = v120;
  if ((*(v119 + 48))(v13, 1, v120) == 1)
  {

    sub_261AE6A40(v13, &qword_27FEDA988, &unk_261D03480);
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v57 = sub_261CFF7A4();
    __swift_project_value_buffer(v57, qword_27FEDDBA8);
    v58 = v114;
    v45 = v36;
    v59 = v36;
    v60 = v113;
    (*(v114 + 16))(v31, v59, v113);
    v61 = sub_261CFF784();
    v62 = sub_261CFFE64();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v122 = v64;
      *v63 = 136315138;
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958]);
      v65 = sub_261D005F4();
      v117 = v45;
      v67 = v66;
      v68 = *(v58 + 8);
      v68(v31, v60);
      v69 = sub_261B879C8(v65, v67, &v122);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_261AE2000, v61, v62, "AppEntityID#init(entityIdentifierString:): missing uuid {urlComponents: %s}", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x26671D560](v64, -1, -1);
      MEMORY[0x26671D560](v63, -1, -1);

      v68(v117, v60);
LABEL_25:
      v83 = v121;
      goto LABEL_26;
    }

    v89 = *(v58 + 8);
    v89(v31, v60);
LABEL_24:
    v89(v45, v60);
    goto LABEL_25;
  }

  v84 = *(v55 + 32);
  v84(v118, v13, v56);
  v85 = sub_261CFD3C4();
  v83 = v121;
  v87 = v36;
  v88 = v113;
  if (!v86)
  {
    goto LABEL_30;
  }

  if (v85 != 0xD000000000000013 || v86 != 0x8000000261D21590)
  {
    v92 = sub_261D00614();

    if (v92)
    {
      goto LABEL_28;
    }

LABEL_30:

    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v96 = sub_261CFF7A4();
    __swift_project_value_buffer(v96, qword_27FEDDBA8);
    v97 = v114;
    (*(v114 + 16))(v28, v87, v88);
    v98 = sub_261CFF784();
    v99 = sub_261CFFE64();
    if (!os_log_type_enabled(v98, v99))
    {

      v107 = *(v97 + 8);
      v107(v28, v88);
      (*(v119 + 8))(v118, v120);
      v107(v87, v88);
      goto LABEL_26;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v122 = v101;
    *v100 = 136315138;
    sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958]);
    v102 = sub_261D005F4();
    v104 = v103;
    v117 = v87;
    v105 = *(v97 + 8);
    v105(v28, v88);
    v106 = sub_261B879C8(v102, v104, &v122);

    *(v100 + 4) = v106;
    _os_log_impl(&dword_261AE2000, v98, v99, "AppEntityID#init(entityIdentifierString:): invalid scheme {urlComponents: %s}", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x26671D560](v101, -1, -1);
    MEMORY[0x26671D560](v100, -1, -1);

    (*(v119 + 8))(v118, v120);
    v105(v117, v88);
    goto LABEL_25;
  }

LABEL_28:
  v93 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v94 = v117;
  (*(*(v93 - 8) + 56))(v117, 1, 1, v93);
  if (sub_261CFD364())
  {
    v95 = v115;
    sub_261C17A80(v115);
    sub_261AE6A40(v94, &qword_27FEDA108, &unk_261D020C0);
    (*(v114 + 8))(v87, v88);
    sub_261C88050(v95, v94);
  }

  else
  {
    (*(v114 + 8))(v87, v88);
  }

  v108 = v116;
  v84(v116, v118, v56);
  v109 = v112;
  *v83 = v111;
  v83[1] = v109;
  v110 = type metadata accessor for AppEntityID();
  v84(v83 + *(v110 + 20), v108, v56);
  sub_261C88050(v94, v83 + *(v110 + 24));
  return (*(*(v110 - 8) + 56))(v83, 0, 1, v110);
}

uint64_t sub_261C87B94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_261CFD104();

  return AppEntityID.init(entityIdentifierString:)(a1, a2, a3);
}

uint64_t sub_261C87BE8(uint64_t a1)
{
  v2 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBD8, &qword_261D0FAD8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_261D00614() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for AppEntityID();
  v18 = *(v17 + 20);
  if ((sub_261CFD824() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v17 + 24);
  v20 = *(v13 + 48);
  sub_261AE7A78(a1 + v19, v16);
  sub_261AE7A78(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_261AE6A40(v16, &qword_27FEDA108, &unk_261D020C0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_261AE7A78(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_261C87BE8(v12);
LABEL_11:
    v23 = &qword_27FEDDBD8;
    v24 = &qword_261D0FAD8;
LABEL_12:
    sub_261AE6A40(v16, v23, v24);
    return 0;
  }

  sub_261C87F3C(&v16[v20], v8);
  if ((MEMORY[0x266719B40](v12, v8) & 1) == 0)
  {
    sub_261C87BE8(v8);
    sub_261C87BE8(v12);
    v23 = &qword_27FEDA108;
    v24 = &unk_261D020C0;
    goto LABEL_12;
  }

  v25 = *(v4 + 20);
  v26 = v12[v25];
  v27 = v8[v25];
  sub_261C87BE8(v8);
  sub_261C87BE8(v12);
  sub_261AE6A40(v16, &qword_27FEDA108, &unk_261D020C0);
  return v26 == v27;
}

uint64_t sub_261C87F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C87FA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_261CFFB34();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_261CFFBF4();
}

uint64_t sub_261C88050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C88108(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for AppEntityID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
    sub_261CFCDA4();
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    v6 = *(a3 + 20);
    v9 = sub_261CFD844();
    v10 = *(*(v9 - 8) + 16);
    sub_261CFD104();
    v10(&v3[v6], a2 + v6, v9);
    v11 = *(a3 + 24);
    v12 = &v3[v11];
    v13 = a2 + v11;
    v14 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v18 = sub_261CFD4E4();
      (*(*(v18 - 8) + 16))(v12, v13, v18);
      v12[*(v14 + 20)] = v13[*(v14 + 20)];
      (*(v15 + 56))(v12, 0, 1, v14);
    }
  }

  return v3;
}

char *assignWithCopy for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  sub_261CFD104();

  v7 = *(a3 + 20);
  v8 = sub_261CFD844();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      v20 = sub_261CFD4E4();
      (*(*(v20 - 8) + 24))(v10, v11, v20);
      v10[*(v12 + 20)] = v11[*(v12 + 20)];
      return a1;
    }

    sub_261C87BE8(v10);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v10, v11, *(*(v18 - 8) + 64));
    return a1;
  }

  v17 = sub_261CFD4E4();
  (*(*(v17 - 8) + 16))(v10, v11, v17);
  v10[*(v12 + 20)] = v11[*(v12 + 20)];
  (*(v13 + 56))(v10, 0, 1, v12);
  return a1;
}

char *initializeWithTake for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = sub_261CFD4E4();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v9[*(v11 + 20)] = v10[*(v11 + 20)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

char *assignWithTake for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a3 + 20);
  v9 = sub_261CFD844();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 40))(v11, v12, v21);
      v11[*(v13 + 20)] = v12[*(v13 + 20)];
      return a1;
    }

    sub_261C87BE8(v11);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v11, v12, *(*(v19 - 8) + 64));
    return a1;
  }

  v18 = sub_261CFD4E4();
  (*(*(v18 - 8) + 32))(v11, v12, v18);
  v11[*(v13 + 20)] = v12[*(v13 + 20)];
  (*(v14 + 56))(v11, 0, 1, v13);
  return a1;
}

uint64_t sub_261C88918()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDBE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDBE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B4276C;

  return sub_261C8B2D8(a1, a2, a3);
}

uint64_t sub_261C88BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  __swift_allocate_value_buffer(v0, qword_27FEDDBF8);
  __swift_project_value_buffer(v0, qword_27FEDDBF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261B01D28(&qword_27FEDDC28, &qword_27FEDDC10, &qword_261D0FB38);
  return sub_261CFE9A4();
}

uint64_t sub_261C88CD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC38, &qword_261D0FB58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261CFDBB4();
  v8 = sub_261B01D28(&qword_27FEDDC40, &qword_27FEDDC38, &qword_261D0FB58);
  MEMORY[0x26671A1D0](v5, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_261CFDB14();
  return (v9)(v7, v0);
}

uint64_t sub_261C88E74@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v38 - v6;
  v45 = sub_261CFE944();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC48, &qword_261D0FB60);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v26 = sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8);
  sub_261CFE9A4();
  v40 = v25;
  MEMORY[0x26671A1C0](v23, v15, v26);
  v27 = *(v16 + 8);
  v27(v23, v15);
  v41 = v16 + 8;
  v42 = v27;
  sub_261CFE9A4();
  MEMORY[0x26671A1C0](v20, v15, v26);
  v27(v20, v15);
  sub_261CFDB34();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v29 = v43;
  sub_261CFE8E4();
  v39 = *(v7 + 8);
  v30 = v45;
  v39(v10, v45);
  v31 = v44;
  MEMORY[0x26671A270](v29, v28);
  sub_261CFDB34();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261B01D28(&qword_27FEDDC50, &qword_27FEDDC48, &qword_261D0FB60);
  v33 = v48;
  v34 = v31;
  v35 = v46;
  sub_261CFE8F4();
  v39(v10, v30);
  MEMORY[0x26671A270](v33, v32);
  (*(v47 + 8))(v34, v35);
  v36 = v42;
  v42(v23, v15);
  return v36(v40, v15);
}

uint64_t sub_261C893CC@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v74 = a1;
  v75 = a2;
  v73 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  v63 = sub_261CFDB44();
  v70 = *(v63 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v63);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v71 = *(v12 - 8);
  v13 = *(v71 + 8);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v58 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v78 = *(v72 - 8);
  v17 = *(v78 + 64);
  v18 = MEMORY[0x28223BE20](v72);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v68 = &v58 - v24;
  v25 = sub_261CFE944();
  v76 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v60 = &v58 - v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v77 = *(v69 - 8);
  v32 = *(v77 + 64);
  v33 = MEMORY[0x28223BE20](v69);
  v61 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v64 = &v58 - v35;
  v79 = v74;
  v80 = v75;
  v65 = sub_261B426C0();
  MEMORY[0x26671A1D0](v81, &v79, MEMORY[0x277D837D0], v65);
  v36 = sub_261CFDB34();
  a3(v36);
  v37 = sub_261CFE994();
  (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  sub_261CFDB34();
  sub_261C8BBC4(&qword_27FEDA940, MEMORY[0x277D853D0]);
  v38 = MEMORY[0x277D83E40];
  v59 = v20;
  v39 = v63;
  sub_261CFE924();
  v74 = *(v26 + 8);
  v75 = v26 + 8;
  v74(v30, v25);
  sub_261AE6A40(v8, &qword_27FEDA898, &unk_261D08600);
  (*(v70 + 8))(v11, v39);
  v40 = v67;
  MEMORY[0x26671A290](v20, v38);
  v41 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440);
  v42 = v62;
  MEMORY[0x26671A1D0](v40, v12, v41);
  v43 = *(v71 + 1);
  v43(v40, v12);
  v44 = v66;
  sub_261CFDB14();
  v43(v42, v12);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  v46 = v68;
  v70 = v45;
  v47 = v72;
  v48 = v60;
  sub_261CFE914();
  v49 = *(v78 + 8);
  v78 += 8;
  v71 = v49;
  v49(v44, v47);
  v74(v48, v76);
  v50 = v61;
  MEMORY[0x26671A260](v46, v45);
  v51 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620);
  v52 = v64;
  v53 = v69;
  MEMORY[0x26671A1D0](v50, v69, v51);
  v54 = *(v77 + 8);
  v77 += 8;
  v54(v50, v53);
  v79 = v81[0];
  v80 = v81[1];
  sub_261CFDB14();

  sub_261CFDB34();
  v55 = v59;
  sub_261CFE904();
  sub_261CFE8D4();
  v56 = v71;
  v71(v55, v47);
  v74(v48, v76);
  v56(v44, v47);
  return (v54)(v52, v53);
}

uint64_t sub_261C89BD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261B4276C;

  return (sub_261C89DEC)(a1, a2);
}

uint64_t sub_261C89C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261B4276C;

  return sub_261C8ABA8();
}

uint64_t sub_261C89D2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B4276C;

  return sub_261C8B2D8(a1, a2, a3);
}

uint64_t sub_261C89DEC(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  v3 = sub_261CFEC94();
  v2[24] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = sub_261CFD674();
  v2[26] = v5;
  v6 = *(v5 - 8);
  v2[27] = v6;
  v7 = *(v6 + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = *(*(sub_261CFD884() - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = *(*(sub_261CFFA44() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v10 = *(*(sub_261CFD6A4() - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC18, &qword_261D0FB40) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC20, &qword_261D0FB48);
  v2[37] = v15;
  v16 = *(v15 - 8);
  v2[38] = v16;
  v17 = *(v16 + 64) + 15;
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C8A074, 0, 0);
}

uint64_t sub_261C8A074()
{
  v110 = v0;
  if (qword_27FED9C78 != -1)
  {
LABEL_31:
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDDBE0);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v108[0] = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, MEMORY[0x277D837D0]);
    v10 = sub_261B879C8(v8, v9, v108);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v3, v4, "[ListBadgeEntityQueryPerforming] Query list badge entities with identifiers: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = v0[23];
  v12 = *(v11 + 16);
  if (!v12)
  {
    v94 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v13 = 0;
  v14 = v0[33];
  v98 = (v14 + 16);
  v99 = (v14 + 8);
  v15 = v0[38];
  v97 = (v15 + 48);
  v96 = (v15 + 32);
  v94 = MEMORY[0x277D84F90];
  v95 = (v15 + 8);
  v16 = v11 + 40;
  v91 = *MEMORY[0x277CC9110];
  v100 = *(v11 + 16);
  v92 = (v0[27] + 104);
  v93 = v11 + 40;
  do
  {
    v17 = (v16 + 16 * v13);
    while (1)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_30;
      }

      v107 = v13 + 1;
      v18 = *(v17 - 1);
      v19 = *v17;
      v101 = v17;
      v20 = qword_27FED9C80;
      sub_261CFD104();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = v0[35];
      v104 = v0[36];
      v22 = v0[34];
      v23 = v0[32];
      v24 = __swift_project_value_buffer(v23, qword_27FEDDBF8);
      (*v98)(v21, v24, v23);
      sub_261CFFBF4();
      sub_261B01D28(&qword_27FEDDC28, &qword_27FEDDC10, &qword_261D0FB38);
      sub_261CFE984();
      sub_261CFE9B4();
      v25 = v0[34];
      v26 = v0[35];
      v27 = v0[32];

      v28 = *v99;
      (*v99)(v25, v27);
      v28(v26, v27);
      v12 = v100;
      v30 = v0[36];
      v29 = v0[37];
      if ((*v97)(v30, 1, v29) != 1)
      {
        break;
      }

      sub_261AE6A40(v30, &qword_27FEDDC18, &qword_261D0FB40);
LABEL_8:
      ++v13;
      v17 = v101 + 2;
      if (v107 == v100)
      {
        goto LABEL_26;
      }
    }

    (*v96)(v0[39], v30, v29);
    sub_261CFE9C4();
    v31 = v0[5];

    v32 = v0[9];
    v33 = v0[13];
    if (v32)
    {
      v34 = v0[6];
      v35 = v0[7];
      v36 = v0[8];
      v37 = v0[30];
      v39 = v0[28];
      v38 = v0[29];
      v81 = v0[26];
      v82 = v0[31];
      v87 = v0[25];
      v89 = v0[24];

      v40 = MEMORY[0x26671C1B0](v34, v35, v36, v32);
      v84 = v41;
      v42 = v41;

      *&v108[0] = 0x3A6D656C626D65;
      *(&v108[0] + 1) = 0xE700000000000000;
      MEMORY[0x26671C210](v40, v42);
      v102 = *(&v108[0] + 1);
      v105 = *&v108[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
      sub_261CFF9B4();
      sub_261CFD874();
      v79 = *v92;
      (*v92)(v39, v91, v81);
      sub_261CFD6C4();
      v80 = sub_261CFCB14();
      sub_261CFF9B4();
      sub_261CFD874();
      v79(v39, v91, v81);
      sub_261CFD6C4();
      v43 = sub_261CFCB14();
      v0[18] = v40;
      v0[19] = v84;
      sub_261CFD104();
      sub_261CFCA14();
      v0[20] = 0;
      v0[21] = 0;
      sub_261CFCA14();

      v44 = type metadata accessor for AnyListEntityLazyImage();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      v0[22] = MEMORY[0x277D84F90];
      sub_261C8BBC4(&qword_280D22D90, MEMORY[0x277D44D10]);
      v48 = v102;
      sub_261CFD104();
      sub_261CFCDA4();
      sub_261CFCDA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
      v49 = v105;
      v50 = v80;
      sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
      sub_261D001D4();
      v51 = sub_261CFECB4();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      *(v47 + 128) = sub_261CFECA4();
      v54 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
      v55 = sub_261CFD074();
      (*(*(v55 - 8) + 56))(v47 + v54, 1, 1, v55);
      v56 = v108[0];
      *(v47 + 72) = v108[1];
      v57 = v108[3];
      *(v47 + 88) = v108[2];
      *(v47 + 104) = v57;
      *(v47 + 16) = v105;
      *(v47 + 24) = v102;
      *(v47 + 32) = v80;
      *(v47 + 40) = v43;
      *(v47 + 48) = 0;
      *(v47 + 120) = v109;
      *(v47 + 56) = v56;
      *(v47 + 121) = 2;

      goto LABEL_19;
    }

    if (!v33)
    {
      (*v95)(v0[39], v0[37]);

      goto LABEL_8;
    }

    v58 = v0[30];
    v85 = v0[31];
    v60 = v0[28];
    v59 = v0[29];
    v90 = v0[26];
    v61 = MEMORY[0x26671C1B0](v0[10], v0[11], v0[12], v33);
    v86 = v62;
    v88 = v61;
    v63 = v62;

    *&v108[0] = 0x3A696A6F6D65;
    *(&v108[0] + 1) = 0xE600000000000000;
    MEMORY[0x26671C210](v61, v63);
    v103 = *(&v108[0] + 1);
    v106 = *&v108[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
    sub_261CFF9B4();
    sub_261CFD874();
    v83 = *v92;
    (*v92)(v60, v91, v90);
    sub_261CFD6C4();
    v64 = sub_261CFCB14();
    sub_261CFF9B4();
    sub_261CFD874();
    v83(v60, v91, v90);
    v50 = v64;
    v48 = v103;
    v49 = v106;
    sub_261CFD6C4();
    v43 = sub_261CFCB14();
    v0[14] = 0;
    v0[15] = 0;
    sub_261CFCA14();
    v0[16] = v88;
    v0[17] = v86;
    sub_261CFCA14();

    v47 = 0;
LABEL_19:
    (*v95)(v0[39], v0[37]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = sub_261B415B0(0, *(v94 + 2) + 1, 1, v94);
    }

    v66 = *(v94 + 2);
    v65 = *(v94 + 3);
    if (v66 >= v65 >> 1)
    {
      v94 = sub_261B415B0((v65 > 1), v66 + 1, 1, v94);
    }

    *(v94 + 2) = v66 + 1;
    v67 = &v94[40 * v66];
    *(v67 + 4) = v49;
    *(v67 + 5) = v48;
    *(v67 + 6) = v50;
    *(v67 + 7) = v43;
    *(v67 + 8) = v47;
    v13 = v107;
    v16 = v93;
  }

  while (v107 != v100);
LABEL_26:
  v68 = v0[39];
  v69 = v0[35];
  v70 = v0[36];
  v71 = v0[34];
  v73 = v0[30];
  v72 = v0[31];
  v75 = v0[28];
  v74 = v0[29];
  v76 = v0[25];

  v77 = v0[1];

  return v77(v94);
}

uint64_t sub_261C8ABA8()
{
  v1 = sub_261CFEC94();
  v0[7] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v3 = sub_261CFD674();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v0[10] = v4;
  v5 = *(v4 + 64) + 15;
  v0[11] = swift_task_alloc();
  v6 = *(*(sub_261CFD884() - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v7 = *(*(sub_261CFFA44() - 8) + 64) + 15;
  v0[13] = swift_task_alloc();
  v8 = *(*(sub_261CFD6A4() - 8) + 64) + 15;
  v0[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C8AD18, 0, 0);
}

uint64_t sub_261C8AD18()
{
  v1 = sub_261CFFFB4();
  v2 = MEMORY[0x277D84F90];
  v45 = *(v1 + 16);
  if (v45)
  {
    v3 = 0;
    v43 = v1 + 32;
    v42 = (v0[10] + 104);
    v41 = *MEMORY[0x277CC9110];
    v44 = v1;
    while (v3 < *(v1 + 16))
    {
      v4 = v0[13];
      v5 = v0[14];
      v52 = v3;
      v53 = v2;
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[9];
      v46 = v8;
      v49 = v0[8];
      v50 = v0[7];
      v9 = *(v43 + 8 * v3);
      v10 = sub_261CFFA74();
      v47 = v11;
      v48 = v10;
      v12 = v11;
      *&v54 = 0x3A6D656C626D65;
      *(&v54 + 1) = 0xE700000000000000;
      v51 = v9;
      MEMORY[0x26671C210](v10, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
      sub_261CFF9B4();
      sub_261CFD874();
      v13 = *v42;
      (*v42)(v7, v41, v8);
      sub_261CFD6C4();
      v14 = sub_261CFCB14();
      sub_261CFF9B4();
      sub_261CFD874();
      v15 = MEMORY[0x277D84F90];
      v13(v7, v41, v46);
      v2 = v53;
      sub_261CFD6C4();
      v16 = sub_261CFCB14();
      v0[2] = v48;
      v0[3] = v47;
      sub_261CFD104();
      sub_261CFCA14();
      v0[4] = 0;
      v0[5] = 0;
      sub_261CFCA14();

      v17 = type metadata accessor for AnyListEntityLazyImage();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      v20 = swift_allocObject();
      v0[6] = v15;
      sub_261C8BBC4(&qword_280D22D90, MEMORY[0x277D44D10]);
      sub_261CFD104();
      sub_261CFCDA4();
      sub_261CFCDA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
      sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
      sub_261D001D4();
      v21 = sub_261CFECB4();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_261CFECA4();

      *(v20 + 128) = v24;
      v25 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
      v26 = sub_261CFD074();
      (*(*(v26 - 8) + 56))(v20 + v25, 1, 1, v26);
      *(v20 + 72) = v55;
      *(v20 + 88) = v56;
      *(v20 + 104) = v57;
      *(v20 + 16) = 0x3A6D656C626D65;
      *(v20 + 24) = 0xE700000000000000;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      *(v20 + 48) = 0;
      *(v20 + 120) = v58;
      *(v20 + 56) = v54;
      *(v20 + 121) = 2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_261B415B0(0, *(v53 + 2) + 1, 1, v53);
      }

      v28 = *(v2 + 2);
      v27 = *(v2 + 3);
      if (v28 >= v27 >> 1)
      {
        v2 = sub_261B415B0((v27 > 1), v28 + 1, 1, v2);
      }

      ++v3;
      *(v2 + 2) = v28 + 1;
      v29 = &v2[40 * v28];
      *(v29 + 4) = 0x3A6D656C626D65;
      *(v29 + 5) = 0xE700000000000000;
      *(v29 + 6) = v14;
      *(v29 + 7) = v16;
      *(v29 + 8) = v20;
      v1 = v44;
      if (v45 == v52 + 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    if (qword_27FED9C78 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v30 = sub_261CFF7A4();
  __swift_project_value_buffer(v30, qword_27FEDDBE0);
  sub_261CFD104();
  v31 = sub_261CFF784();
  v32 = sub_261CFFE84();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v2 + 2);

    _os_log_impl(&dword_261AE2000, v31, v32, "[ListBadgeEntityQueryPerforming] Query list badge suggested entities, result.count: %ld", v33, 0xCu);
    MEMORY[0x26671D560](v33, -1, -1);
  }

  else
  {
  }

  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[8];

  v39 = v0[1];

  return v39(v2);
}

uint64_t sub_261C8B2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = sub_261CFD6A4();
  v3[14] = v6;
  v7 = *(v6 - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  v3[18] = v9;
  v3[19] = v10;

  return MEMORY[0x2822009F8](sub_261C8B3F0, 0, 0);
}

uint64_t sub_261C8B3F0()
{
  v12 = v0;
  if (qword_27FED9C78 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDDBE0);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_261B879C8(v6, v5, &v11);
    _os_log_impl(&dword_261AE2000, v3, v4, "[ListBadgeEntityQueryPerforming] Query list badge entities with string: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v0[10] = v0[19];
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_261C8B5CC;

  return sub_261C8ABA8();
}

uint64_t sub_261C8B5CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_261C8BB38;
  }

  else
  {
    v5 = sub_261C8B6E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_261C8B6E0()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v44 = v0[15];
    v46 = -v2;
    v4 = MEMORY[0x277D84F90];
    v5 = v1 + 64;
    v38 = v0[21];
    v36 = v1 + 64;
    while (1)
    {
      v37 = v4;
      v6 = (v5 + 40 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 - 3);
        v45 = *(v6 - 4);
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v48 = *v6;
        sub_261CFCDA4();
        sub_261CFD104();
        sub_261CFCDA4();
        v47 = v8;
        sub_261CFCDA4();
        sub_261CFCA04();
        v10 = v0[3];
        if (v10)
        {
          break;
        }

LABEL_5:

        ++v3;
        v6 += 5;
        if (v46 + v3 == 1)
        {
          v4 = v37;
          goto LABEL_21;
        }
      }

      v11 = v0[2];
      if (qword_27FED9C60 != -1)
      {
        v26 = v0[2];
        swift_once();
        v11 = v26;
      }

      v12 = qword_27FEF3EF8;
      if (!*(qword_27FEF3EF8 + 16))
      {
        break;
      }

      v13 = sub_261B37CE8(v11, v10);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      v17 = v0[17];
      v16 = v0[18];
      v18 = v0[14];
      v39 = v0[16];
      v40 = v0[13];
      v43 = v0[12];
      v42 = v0[11];
      v19 = *(v12 + 56) + *(v44 + 72) * v13;
      v20 = *(v44 + 16);
      v20(v17, v19, v18);
      v41 = v18;
      (*(v44 + 32))(v16, v17, v18);
      v20(v39, v16, v18);
      v0[4] = sub_261CFFA94();
      v0[5] = v21;
      sub_261CFD874();
      v22 = sub_261CFD884();
      (*(*(v22 - 8) + 56))(v40, 0, 1, v22);
      sub_261B3BA3C();
      v23 = sub_261D00194();
      v25 = v24;
      sub_261AE6A40(v40, &qword_27FEDA708, &qword_261D03298);

      v0[6] = v23;
      v0[7] = v25;
      v0[8] = v42;
      v0[9] = v43;
      LOBYTE(v23) = sub_261D00184();
      v1 = v38;

      (*(v44 + 8))(v16, v41);
      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }

      v4 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261B39E7C(0, *(v37 + 16) + 1, 1);
        v4 = v37;
      }

      v5 = v36;
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_261B39E7C((v27 > 1), v28 + 1, 1);
        v5 = v36;
        v4 = v37;
      }

      *(v4 + 16) = v28 + 1;
      v29 = (v4 + 40 * v28);
      v29[4] = v45;
      v29[5] = v7;
      v29[6] = v9;
      v29[7] = v47;
      v29[8] = v48;
      if (!(v46 + v3))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_21:
  v30 = v0[21];
  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[16];
  v34 = v0[13];

  v35 = v0[1];

  v35(v4);
}

uint64_t sub_261C8BB38()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_261C8BBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261C8BC0C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D26FF8);
  __swift_project_value_buffer(v0, qword_280D26FF8);
  return sub_261CFF794();
}

uint64_t CreateGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v37 = sub_261CFD184();
  v1 = *(v37 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v37);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v31 = &v30 - v17;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  v19 = sub_261CFD6A4();
  v20 = *(v19 - 8);
  v33 = *(v20 + 56);
  v34 = v20 + 56;
  v33(v18, 1, 1, v19);
  v21 = sub_261CFF994();
  v39 = 0;
  v40 = 0;
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = sub_261CFC834();
  v23 = *(*(v22 - 8) + 56);
  v23(v10, 1, 1, v22);
  v24 = *MEMORY[0x277CBA308];
  v25 = *(v1 + 104);
  v30 = v1 + 104;
  v25(v4, v24, v37);
  v26 = v31;
  *v36 = sub_261CFCD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC400, &qword_261D09DF0);
  v33(v26, 1, 1, v19);
  v39 = MEMORY[0x277D84F90];
  v23(v10, 1, 1, v22);
  v23(v35, 1, 1, v22);
  v25(v4, v24, v37);
  sub_261B80F44(&qword_280D227A0, type metadata accessor for ListEntity);
  v27 = sub_261CFCC14();
  v28 = v36;
  v36[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC70, &qword_261D0FB68);
  v38 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v28[2] = result;
  return result;
}

uint64_t sub_261C8C118()
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
  __swift_allocate_value_buffer(v9, qword_27FEDDC58);
  __swift_project_value_buffer(v9, qword_27FEDDC58);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t CreateGroupAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261C8C748, v4, v3);
}

uint64_t sub_261C8C748()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261C8C82C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_261C5AA7C(v7, "CreateGroupAppIntent", 20, 2, v8, v5, v6);
}

uint64_t sub_261C8C82C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_261C8D330;
  }

  else
  {
    v7 = sub_261C8D334;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

unint64_t sub_261C8C96C()
{
  result = qword_27FEDDC78;
  if (!qword_27FEDDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC78);
  }

  return result;
}

unint64_t sub_261C8C9C4()
{
  result = qword_27FEDDC80;
  if (!qword_27FEDDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC80);
  }

  return result;
}

unint64_t sub_261C8CA1C()
{
  result = qword_27FEDDC88;
  if (!qword_27FEDDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC88);
  }

  return result;
}

uint64_t sub_261C8CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_261CFFD24();
  v4[14] = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_261C8CB90, v6, v5);
}

uint64_t sub_261C8CB90()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_261B258D8(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  v6 = *(v5 + 8);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_261BC2BF8;
  v9 = v0[10];

  return (v11)(v9, v0 + 7, v4, v5);
}

uint64_t sub_261C8CD04@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8CDB0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261C8CE58, v4, v3);
}

uint64_t sub_261C8CE58()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261C8CF3C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_261C5AA7C(v7, "CreateGroupAppIntent", 20, 2, v8, v5, v6);
}

uint64_t sub_261C8CF3C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_261C8D0DC;
  }

  else
  {
    v7 = sub_261C8D078;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261C8D078()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C8D0DC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_261C8D148(uint64_t a1)
{
  v2 = sub_261B31504();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CreateGroupIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_261C8D2C8()
{
  result = qword_27FEDB5D8;
  if (!qword_27FEDB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB588, &qword_261D06AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5D8);
  }

  return result;
}

uint64_t sub_261C8D338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GroupEntity();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  UpdateGroupAppIntent.init()(v22);
  v14 = v22[0];
  v15 = v22[1];
  v16 = v22[2];
  v17 = v22[3];
  sub_261BAB184(a1, v13);
  sub_261BAB184(v13, v11);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v13);

  v18 = *(a1 + *(v7 + 32));
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA04();
  sub_261CFCBC4();
  v19 = *a1;
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261AE498C(a2, v22);
  sub_261AE498C(v22, v21);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v22);

  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  return result;
}

uint64_t UpdateGroupAppIntent.perform()(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261C8D5FC, v5, v4);
}

uint64_t sub_261C8D5FC()
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

  return sub_261C59FE4(v10, "UpdateGroupAppIntent", 20, 2, v8, v9, v6, v7);
}

uint64_t UpdateGroupAppIntent.name.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateGroupAppIntent.name.modify(uint64_t *a1))()
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
  return sub_261AFA230;
}

uint64_t sub_261C8D7E0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GroupEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261BAB184(a1, &v16 - v9);
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261BAB184(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v10);
}

uint64_t UpdateGroupAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  sub_261BAB184(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*UpdateGroupAppIntent.target.modify(uint64_t *a1))()
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

uint64_t UpdateGroupAppIntent.lists.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261C8DA48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
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

uint64_t (*UpdateGroupAppIntent.lists.modify(uint64_t *a1))()
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
  return sub_261B02064;
}

uint64_t sub_261C8DBA4()
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
  __swift_allocate_value_buffer(v9, qword_27FEDDC90);
  __swift_project_value_buffer(v9, qword_27FEDDC90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t UpdateGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v35 - v3;
  v4 = sub_261CFD184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35 - v21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v44 = sub_261CFD6A4();
  v23 = *(v44 - 8);
  v45 = *(v23 + 56);
  v46 = v23 + 56;
  v45(v22, 1, 1, v44);
  v24 = sub_261CFF994();
  v48 = 0;
  v49 = 0;
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  v25 = sub_261CFC834();
  v26 = *(*(v25 - 8) + 56);
  v26(v14, 1, 1, v25);
  v43 = *MEMORY[0x277CBA308];
  v27 = *(v5 + 104);
  v36 = v4;
  v37 = v5 + 104;
  v42 = v27;
  v27(v8);
  v28 = v22;
  v29 = sub_261CFCD04();
  v30 = v40;
  *v40 = v29;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  v45(v22, 1, 1, v44);
  v31 = type metadata accessor for GroupEntity();
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  v32 = v26;
  v26(v14, 1, 1, v25);
  v33 = v39;
  v32(v39, 1, 1, v25);
  v42(v8, v43, v4);
  sub_261C73B88(&qword_280D22670, type metadata accessor for GroupEntity);
  v30[1] = sub_261CFCC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCA8, qword_261D0FD58);
  v45(v28, 1, 1, v44);
  v48 = 0;
  v32(v14, 1, 1, v25);
  v32(v33, 1, 1, v25);
  v42(v8, v43, v36);
  sub_261C73B88(&qword_280D227A0, type metadata accessor for ListEntity);
  v30[2] = sub_261CFCC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB580, &qword_261D06AB0);
  v47 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v30[3] = result;
  return result;
}

unint64_t sub_261C8E6FC()
{
  result = qword_27FEDDCB0;
  if (!qword_27FEDDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCB0);
  }

  return result;
}

unint64_t sub_261C8E754()
{
  result = qword_27FEDDCB8;
  if (!qword_27FEDDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCB8);
  }

  return result;
}

unint64_t sub_261C8E82C()
{
  result = qword_27FEDDCC0;
  if (!qword_27FEDDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCC0);
  }

  return result;
}

uint64_t sub_261C8E880@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8E92C(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261C8E9D0, v5, v4);
}

uint64_t sub_261C8E9D0()
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

  return sub_261C59FE4(v10, "UpdateGroupAppIntent", 20, 2, v8, v9, v6, v7);
}

uint64_t sub_261C8EB10(uint64_t a1)
{
  v2 = sub_261C8E82C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of UpdateGroupIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t CreateCustomSmartListAppIntent.name.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateCustomSmartListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_261CFD184();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v35 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - v12;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD884();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_261CFFA44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFD6A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v14 + 104);
  v26(v17, v25, v13);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v17, v25, v13);
  v27 = v32;
  sub_261CFD6C4();
  (*(v23 + 56))(v27, 0, 1, v22);
  v28 = sub_261CFF994();
  v39 = 0;
  v40 = 0;
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  v29 = sub_261CFC834();
  (*(*(v29 - 8) + 56))(v34, 1, 1, v29);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  result = sub_261CFCD24();
  *v38 = result;
  return result;
}

double sub_261C8F1E0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261C8F21C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t sub_261C8F2A4()
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
  __swift_allocate_value_buffer(v9, qword_27FEDDCC8);
  __swift_project_value_buffer(v9, qword_27FEDDCC8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateCustomSmartListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDCC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateCustomSmartListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

void (*CreateCustomSmartListAppIntent.name.modify(uint64_t *a1))(void *a1)
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
  return sub_261AFA3C4;
}

uint64_t CreateCustomSmartListAppIntent.perform()(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_261CFD754();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;
  sub_261CFFD24();
  v2[7] = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C8F9B8, v9, v8);
}

uint64_t sub_261C8F9B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_261B26694(0, v2);
  sub_261BC07C8(v3);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = v0[5];
    sub_261D00034();
  }

  v7 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_261CFC9A4();

  v8 = v0[1];

  return v8();
}

uint64_t static CreateCustomSmartListAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE0, &qword_261D0FEA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE8, &qword_261D0FEB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B314B0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCF0, &unk_261D0FEE0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

unint64_t sub_261C8FC48()
{
  result = qword_27FEDDCF8;
  if (!qword_27FEDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCF8);
  }

  return result;
}

unint64_t sub_261C8FCA0()
{
  result = qword_27FEDDD00;
  if (!qword_27FEDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD00);
  }

  return result;
}

uint64_t sub_261C8FD2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDCC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8FDD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE0, &qword_261D0FEA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE8, &qword_261D0FEB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCF0, &unk_261D0FEE0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261C8FF70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return CreateCustomSmartListAppIntent.perform()(a1);
}

uint64_t sub_261C9000C(uint64_t a1)
{
  v2 = sub_261B314B0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261C90058@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v76 = a4;
  v75 = a3;
  v74 = a1;
  v93 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v65 - v10;
  v92 = sub_261CFD184();
  v94 = *(v92 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v90 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v65 - v20;
  v89 = sub_261CFD674();
  v21 = *(v89 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v89);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_261CFD884();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFFA44();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_261CFD6A4();
  v86 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = *(v21 + 104);
  v78 = *MEMORY[0x277CC9110];
  v34 = v78;
  v36 = v89;
  v35(v24, v78, v89);
  v77 = v35;
  v79 = v21 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v24, v34, v36);
  v37 = v82;
  sub_261CFD6C4();
  v38 = *(v30 + 56);
  v85 = v30 + 56;
  v87 = v38;
  v38(v37, 0, 1, v29);
  v96 = 0;
  v39 = sub_261CFC834();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v80 = v41;
  v81 = v40 + 56;
  v42 = v83;
  v41(v83, 1, 1, v39);
  v41(v90, 1, 1, v39);
  v84 = *MEMORY[0x277CBA308];
  v43 = *(v94 + 104);
  v94 += 104;
  v88 = v43;
  v43(v91);
  v69 = sub_261B32BE4();
  v65 = v33;
  v44 = v42;
  v70 = sub_261CFCC34();
  *v93 = v70;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v45 = v78;
  v46 = v89;
  v47 = v77;
  v77(v24, v78, v89);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v47(v24, v45, v46);
  v48 = v82;
  sub_261CFD6C4();
  v87(v48, 0, 1, v86);
  LOBYTE(v96) = 2;
  v49 = v44;
  v50 = v39;
  v66 = v39;
  v51 = v39;
  v52 = v80;
  v80(v49, 1, 1, v51);
  v52(v90, 1, 1, v50);
  v88(v91, v84, v92);
  sub_261B07F3C();
  v68 = sub_261CFCC04();
  v93[1] = v68;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v53 = v78;
  v54 = v89;
  v55 = v77;
  v77(v24, v78, v89);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v24, v53, v54);
  sub_261CFD6C4();
  v87(v48, 0, 1, v86);
  v56 = type metadata accessor for ReminderEntity();
  v57 = v72;
  (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
  v58 = v66;
  v59 = v80;
  v80(v83, 1, 1, v66);
  v59(v90, 1, 1, v58);
  v88(v91, v84, v92);
  v60 = sub_261CFCC34();
  v61 = v93;
  v93[2] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDD38, &qword_261D10000);
  v95[0] = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v61[3] = sub_261CFC684();
  v96 = v74;
  sub_261CFCBC4();
  LOBYTE(v96) = v71;
  sub_261CFCBC4();
  v62 = v75;
  sub_261C90F90(v75, v57);
  sub_261C90F90(v57, v73);
  sub_261CFCBC4();
  sub_261C91000(v57);
  v63 = v76;
  sub_261AE498C(v76, &v96);
  sub_261AE498C(&v96, v95);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v63);
  sub_261C91000(v62);
  return __swift_destroy_boxed_opaque_existential_0(&v96);
}

uint64_t MoveRemindersToParentReminderAppIntent.reminders.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t (*MoveRemindersToParentReminderAppIntent.reminders.modify(uint64_t *a1))()
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

uint64_t MoveRemindersToParentReminderAppIntent.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*MoveRemindersToParentReminderAppIntent.position.modify(uint64_t *a1))()
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

uint64_t sub_261C90DE0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261C90F90(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261C90F90(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261C91000(v10);
}

uint64_t MoveRemindersToParentReminderAppIntent.parentReminder.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_261C90F90(a1, &v8 - v6);
  sub_261CFCBC4();
  return sub_261C91000(a1);
}

uint64_t sub_261C90F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C91000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*MoveRemindersToParentReminderAppIntent.parentReminder.modify(uint64_t *a1))()
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

uint64_t sub_261C91100()
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
  __swift_allocate_value_buffer(v9, qword_27FEDDD18);
  __swift_project_value_buffer(v9, qword_27FEDDD18);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static MoveRemindersToParentReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveRemindersToParentReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t static MoveRemindersToParentReminderAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDDD30 = a1;
  return result;
}

uint64_t MoveRemindersToParentReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v55 - v3;
  v4 = sub_261CFD184();
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v75 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v55 - v15;
  v16 = sub_261CFD674();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFD884();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFFA44();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFD6A4();
  v69 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v60 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = *(v17 + 104);
  v61 = *MEMORY[0x277CC9110];
  v29 = v61;
  v63 = v16;
  v30(v20, v61, v16);
  v62 = v30;
  v64 = v17 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v30(v20, v29, v16);
  v31 = v67;
  sub_261CFD6C4();
  v32 = *(v26 + 56);
  v68 = v26 + 56;
  v70 = v32;
  v32(v31, 0, 1, v25);
  v80 = 0;
  v33 = sub_261CFC834();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v65 = v35;
  v66 = v34 + 56;
  v35(v74, 1, 1, v33);
  v35(v75, 1, 1, v33);
  v72 = *MEMORY[0x277CBA308];
  v36 = *(v78 + 104);
  v78 += 104;
  v71 = v36;
  v36(v76);
  v58 = sub_261B32BE4();
  v37 = sub_261CFCC34();
  v38 = v73;
  *v73 = v37;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v61;
  v40 = v63;
  v41 = v62;
  v62(v20, v61, v63);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v20, v39, v40);
  v42 = v67;
  sub_261CFD6C4();
  v70(v42, 0, 1, v69);
  LOBYTE(v80) = 2;
  v43 = v33;
  v56 = v33;
  v44 = v33;
  v45 = v65;
  v65(v74, 1, 1, v44);
  v45(v75, 1, 1, v43);
  v71(v76, v72, v77);
  sub_261B07F3C();
  v38[1] = sub_261CFCC04();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v46 = v61;
  v47 = v63;
  v48 = v62;
  v62(v20, v61, v63);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v48(v20, v46, v47);
  sub_261CFD6C4();
  v70(v42, 0, 1, v69);
  v49 = type metadata accessor for ReminderEntity();
  (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
  v50 = v56;
  v51 = v65;
  v65(v74, 1, 1, v56);
  v51(v75, 1, 1, v50);
  v71(v76, v72, v77);
  v52 = sub_261CFCC34();
  v53 = v73;
  v73[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDD38, &qword_261D10000);
  v79 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v53[3] = result;
  return result;
}

uint64_t MoveRemindersToParentReminderAppIntent.perform()(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261C92214, v5, v4);
}

uint64_t sub_261C92214()
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

  return sub_261C516EC(v10, "MoveRemindersToParentReminderAppIntent", 38, 2, v8, v9, v6, v7);
}

unint64_t sub_261C92310()
{
  result = qword_27FEDDD40;
  if (!qword_27FEDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD40);
  }

  return result;
}

uint64_t sub_261C923E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_261C92488, v7, v6);
}

uint64_t sub_261C92488()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B2742C(0, v4, v3, v1, v2);
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

uint64_t sub_261C9260C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C926FC(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261C927A0, v5, v4);
}

uint64_t sub_261C927A0()
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

  return sub_261C516EC(v10, "MoveRemindersToParentReminderAppIntent", 38, 2, v8, v9, v6, v7);
}

uint64_t sub_261C92898(uint64_t a1)
{
  v2 = sub_261B3145C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of MoveRemindersToParentReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_261C92A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a5;
  v28[2] = a6;
  v28[0] = a4;
  v29 = a1;
  v30 = a2;
  v6 = sub_261CFD884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_261CFD674();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v28 - v21;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_280D27028);
  (*(v9 + 16))(v12, v23, v8);
  sub_261CFD874();
  sub_261CFD6C4();
  (*(v16 + 16))(v20, v22, v15);
  sub_261CFFA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_261D03450;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_261C92DC4();
  v25 = v30;
  *(v24 + 32) = v29;
  *(v24 + 40) = v25;
  sub_261CFD104();
  v26 = sub_261CFFA64();

  (*(v16 + 8))(v22, v15);
  return v26;
}

unint64_t sub_261C92DC4()
{
  result = qword_27FEDDD48;
  if (!qword_27FEDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD48);
  }

  return result;
}

uint64_t sub_261C92E68()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDD50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDD50);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.reminderIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.dueDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() + 20);
  v4 = sub_261CFD4E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest()
{
  result = qword_27FEDDD68;
  if (!qword_27FEDDD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.dueDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() + 20);
  v4 = sub_261CFD4E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *RemindersInCalendarUtilities.SetReminderDueDateRequest.undoManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() + 24));
  v2 = v1;
  return v1;
}

void RemindersInCalendarUtilities.SetReminderDueDateRequest.undoManager.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() + 24);

  *(v1 + v3) = a1;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.init(reminderIDs:dueDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest();
  *&a3[*(v6 + 24)] = 0;
  *a3 = a1;
  v7 = *(v6 + 20);
  v8 = sub_261CFD4E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateResult.SuccessResult.optimisticallyUpdatedReminders.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.perform(_:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_261CFED34();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v2[30] = *(v7 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_261CFFD24();
  v2[33] = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C93414, v9, v8);
}

uint64_t sub_261C93414()
{
  v66 = v0;
  v1 = v0[33];

  if (qword_27FED9CB0 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v3 = v0[24];
  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDDD50);
  sub_261C93C0C(v3, v2);
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v65 = v10;
    *v9 = 136315138;
    v11 = *v8;
    sub_261B57A9C();
    sub_261B3B918();
    v12 = sub_261CFFD74();
    v14 = v13;
    sub_261C93C70(v8);
    v15 = sub_261B879C8(v12, v14, &v65);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_261AE2000, v5, v6, "RemindersInCalendar: set reminder due date {objectIDs: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26671D560](v10, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  else
  {

    sub_261C93C70(v8);
  }

  v16 = v0[26];
  v17 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  sub_261CFF674();
  v20 = *MEMORY[0x277D45908];
  v21 = sub_261CFF644();
  (*(*(v21 - 8) + 104))(v17, v20, v21);
  (*(v16 + 104))(v17, *MEMORY[0x277D44EA8], v18);
  MEMORY[0x26671BD30](v17);
  (*(v16 + 8))(v17, v18);
  v22 = *v19;
  if ((*v19 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *v19;
    }

    v24 = sub_261D00274();
  }

  else
  {
    v24 = *(v22 + 16);
  }

  v25 = sub_261CFF784();
  if (!v24)
  {
    v28 = sub_261CFFE84();
    if (os_log_type_enabled(v25, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261AE2000, v25, v28, "RemindersInCalendar: input reminderIDs is empty", v29, 2u);
      MEMORY[0x26671D560](v29, -1, -1);
    }

    v30 = v0[23];

    *v30 = 0;
    goto LABEL_37;
  }

  v26 = sub_261CFFE54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_261AE2000, v25, v26, "RemindersInCalendar: fetching reminders for setting due date", v27, 2u);
    MEMORY[0x26671D560](v27, -1, -1);
  }

  v31 = sub_261BC6FC4(v22);
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v32 = v0[31];
  v63 = v0[29];
  v64 = v0[30];
  v33 = v0[24];
  v34 = qword_280D21E98;
  _s29RemindersListInteractorHelperCMa();
  swift_initStackObject();
  v35 = v34;
  v36 = sub_261CC1500(v35);
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v62 = v37;
  sub_261CFE524();
  v39 = objc_opt_self();
  sub_261CFE2C4();
  v40 = sub_261CFFA54();

  sub_261AE498C((v0 + 13), (v0 + 18));
  sub_261C93C0C(v33, v32);
  v41 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v42 = swift_allocObject();
  sub_261AE49F0(v0 + 9, v42 + 16);
  sub_261C93E04(v32, v42 + v41);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_261C93E68;
  *(v43 + 24) = v42;
  v0[6] = sub_261C78010;
  v0[7] = v43;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_261C92E40;
  v0[5] = &block_descriptor_3;
  v44 = _Block_copy(v0 + 2);
  v45 = v0[7];
  sub_261CFCDA4();

  [v39 withActionName:v40 block:v44];

  _Block_release(v44);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
LABEL_31:
    v46 = sub_261D00274();
    if (v46)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  sub_261CC11F4(*(v0[24] + *(v0[28] + 24)));
  if (v31 >> 62)
  {
    goto LABEL_31;
  }

  v46 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
LABEL_23:
    v65 = MEMORY[0x277D84F90];
    result = sub_261D003A4();
    if (v46 < 0)
    {
      __break(1u);
      return result;
    }

    v48 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x26671CA10](v48, v31);
      }

      else
      {
        v49 = *(v31 + 8 * v48 + 32);
      }

      v50 = v49;
      ++v48;
      v51 = [v35 refreshReminder_];

      sub_261D00374();
      v52 = v65[2];
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v46 != v48);

    v53 = v65;
    goto LABEL_33;
  }

LABEL_32:

  v53 = MEMORY[0x277D84F90];
LABEL_33:
  v54 = sub_261CFF784();
  v55 = sub_261CFFE84();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_261AE2000, v54, v55, "RemindersInCalendar: set reminder due date request finished", v56, 2u);
    MEMORY[0x26671D560](v56, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v57 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  *v57 = v53;

LABEL_37:
  v59 = v0[31];
  v58 = v0[32];
  v60 = v0[27];

  v61 = v0[1];

  return v61();
}

uint64_t sub_261C93C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C93C70(uint64_t a1)
{
  v2 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C93CCC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() + 20);
  v10 = sub_261CFD4E4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, a2 + v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_261CFE5D4();
  return sub_261C94490(v7);
}

uint64_t sub_261C93E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C93E68()
{
  v1 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_261C93CCC((v0 + 16), v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

char *_s25SetReminderDueDateRequestVwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_261CFD4E4();
    v10 = *(*(v9 - 8) + 16);
    sub_261CFD104();
    v10(&v6[v7], a2 + v7, v9);
    v11 = *(a3 + 24);
    v12 = *(a2 + v11);
    *&v6[v11] = v12;
    v13 = v12;
  }

  return v6;
}

void _s25SetReminderDueDateRequestVwxx(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 20);
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[*(a2 + 24)];
}

char *_s25SetReminderDueDateRequestVwcp(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  v8 = *(*(v7 - 8) + 16);
  sub_261CFD104();
  v8(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = *&a2[v9];
  *&a1[v9] = v10;
  v11 = v10;
  return a1;
}

char *_s25SetReminderDueDateRequestVwca(char *a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;
  sub_261CFD104();

  v7 = *(a3 + 20);
  v8 = sub_261CFD4E4();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = *&a1[v9];
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  v12 = v11;

  return a1;
}

char *_s25SetReminderDueDateRequestVwtk(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *_s25SetReminderDueDateRequestVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_261CFD4E4();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  return a1;
}

uint64_t sub_261C942F0()
{
  result = sub_261CFD4E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s24SetReminderDueDateResultOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _s24SetReminderDueDateResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_261C94438(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_261C94450(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_261C94490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C945DC()
{
  v1 = *(v0 + 176);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.subtasks.getter()
{
  v1 = *(v0 + 176);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.title.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.name.getter()
{
  v1 = *(v0 + 48);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.notes.getter()
{
  v1 = *(v0 + 56);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.urls.getter()
{
  v1 = *(v0 + 152);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.isAllDay.getter()
{
  v1 = *(v0 + 64);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.tags.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.hashtags.getter()
{
  v1 = *(v0 + 144);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateReminderAppIntent.images.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261C949B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261C949F4(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t CreateReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v245 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v223 = &v214[-v3];
  v231 = sub_261CFC894();
  v233 = *(v231 - 8);
  v4 = *(v233 + 64);
  MEMORY[0x28223BE20](v231);
  v230 = &v214[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v222 = &v214[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v221 = &v214[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v220 = &v214[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v219 = &v214[-v17];
  v243 = sub_261CFD674();
  v248 = *(v243 - 8);
  v18 = *(v248 + 64);
  MEMORY[0x28223BE20](v243);
  v228 = &v214[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_261CFD884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v227 = &v214[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_261CFFA44();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v217 = &v214[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_261CFD6A4();
  v252 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v240 = &v214[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA28, &unk_261D035E0);
  v232 = *(v229 - 8);
  v30 = *(v232 + 64);
  MEMORY[0x28223BE20](v229);
  v225 = &v214[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v242 = &v214[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v241 = &v214[-v37];
  v253 = sub_261CFD184();
  v38 = *(v253 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v253);
  v41 = &v214[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v234 = &v214[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v44);
  v47 = &v214[-v46];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v214[-v50];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v214[-v54];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  v56 = *(v27 + 56);
  v249 = v27 + 56;
  v247 = v56;
  v56(v55, 1, 1, v26);
  v236 = sub_261CFF994();
  v259 = 0uLL;
  v57 = *(v236 - 8);
  v238 = *(v57 + 56);
  v237 = v57 + 56;
  v235 = v51;
  v238(v51, 1, 1, v236);
  v58 = sub_261CFC834();
  v59 = *(v58 - 8);
  v255 = *(v59 + 56);
  v256 = v59 + 56;
  v250 = v58;
  v255(v47, 1, 1, v58);
  v257 = *MEMORY[0x277CBA308];
  v60 = *(v38 + 104);
  v254 = v38 + 104;
  v251 = v60;
  v61 = v253;
  v60(v41);
  v239 = v55;
  v62 = v47;
  v63 = sub_261CFCD04();
  v64 = v245;
  *v245 = v63;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA38, &qword_261D10210);
  v65 = v55;
  v66 = v252;
  v67 = v247;
  v247(v65, 1, 1, v252);
  v68 = sub_261CFD524();
  (*(*(v68 - 8) + 56))(v241, 1, 1, v68);
  v69 = v58;
  v70 = v255;
  v255(v62, 1, 1, v69);
  v251(v41, v257, v61);
  v71 = v239;
  v64[1] = sub_261CFCCB4();
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDA8, &qword_261D10218);
  v67(v71, 1, 1, v66);
  *&v259 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD0, &qword_261D10220);
  v72 = *(sub_261CFF6A4() - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  *(swift_allocObject() + 16) = xmmword_261D03450;
  sub_261CFF684();
  v75 = v62;
  v76 = v250;
  v70(v62, 1, 1, v250);
  v246 = v41;
  v251(v41, v257, v253);
  v77 = v71;
  v78 = sub_261CFCC44();
  v79 = v245;
  v245[2] = v78;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDB0, &qword_261D10228);
  v80 = v66;
  v81 = v66;
  v82 = v247;
  v247(v77, 1, 1, v81);
  *&v259 = MEMORY[0x277D84FA0];
  v238(v235, 1, 1, v236);
  v255(v75, 1, 1, v76);
  v251(v246, v257, v253);
  v83 = v77;
  v244 = v75;
  v79[3] = sub_261CFCD04();
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA48, &unk_261D10230);
  v82(v77, 1, 1, v80);
  v84 = sub_261CFD4E4();
  (*(*(v84 - 8) + 56))(v242, 1, 1, v84);
  v85 = v75;
  v86 = v250;
  v87 = v255;
  v255(v85, 1, 1, v250);
  v215 = *MEMORY[0x277CB9EF0];
  v88 = *(v232 + 104);
  v232 += 104;
  v216 = v88;
  v88(v225);
  v89 = v257;
  v90 = v253;
  v91 = v251;
  v251(v246, v257, v253);
  v92 = v244;
  v93 = sub_261CFCC94();
  v94 = v245;
  v245[4] = v93;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA50, &qword_261D03610);
  v247(v83, 1, 1, v252);
  v87(v92, 1, 1, v86);
  v91(v246, v89, v90);
  v94[5] = sub_261CFCCD4();
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v97 = v248 + 104;
  v96 = *(v248 + 104);
  v98 = v228;
  LODWORD(v242) = *MEMORY[0x277CC9110];
  v95 = v242;
  v99 = v243;
  (v96)(v228, v242, v243);
  v241 = v96;
  v248 = v97;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  (v96)(v98, v95, v99);
  v100 = v239;
  v101 = v98;
  sub_261CFD6C4();
  v102 = v247;
  v247(v100, 0, 1, v252);
  v259 = 0uLL;
  v238(v235, 1, 1, v236);
  v255(v244, 1, 1, v250);
  v251(v246, v257, v253);
  v245[6] = sub_261CFCD24();
  sub_261CFF9B4();
  sub_261CFD874();
  v103 = v242;
  v104 = v243;
  v105 = v241;
  (v241)(v101, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v105(v101, v103, v104);
  v106 = v239;
  sub_261CFD6C4();
  v102(v106, 0, 1, v252);
  v259 = 0uLL;
  v238(v235, 1, 1, v236);
  v255(v244, 1, 1, v250);
  v251(v246, v257, v253);
  v245[7] = sub_261CFCD24();
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v242;
  v108 = v243;
  v109 = v241;
  (v241)(v101, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v109(v101, v107, v108);
  sub_261CFD6C4();
  v247(v106, 0, 1, v252);
  LOBYTE(v259) = 2;
  v110 = sub_261CFFCE4();
  (*(*(v110 - 8) + 56))(v219, 1, 1, v110);
  v255(v244, 1, 1, v250);
  v251(v246, v257, v253);
  v111 = sub_261CFCD44();
  v112 = v245;
  v245[8] = v111;
  sub_261CFF9B4();
  sub_261CFD874();
  v113 = v107;
  v114 = v107;
  v115 = v243;
  v116 = v241;
  (v241)(v101, v114, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v116(v101, v113, v115);
  v117 = v239;
  sub_261CFD6C4();
  v247(v117, 0, 1, v252);
  v216(v225, v215, v229);
  v255(v244, 1, 1, v250);
  v251(v246, v257, v253);
  v112[9] = sub_261CFCCA4();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA70, &qword_261D03640);
  sub_261CFF9B4();
  sub_261CFD874();
  v118 = v242;
  v119 = v243;
  v120 = v241;
  (v241)(v101, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v120(v101, v118, v119);
  v121 = v239;
  sub_261CFD6C4();
  v247(v121, 0, 1, v252);
  v259 = 0u;
  v260 = 0u;
  v122 = v250;
  v123 = v255;
  v255(v244, 1, 1, v250);
  v123(v234, 1, 1, v122);
  v124 = v251;
  v251(v246, v257, v253);
  sub_261B51818();
  v125 = sub_261CFCC34();
  v126 = v245;
  v245[10] = v125;
  sub_261CFF9B4();
  sub_261CFD874();
  v127 = v228;
  v128 = v242;
  v129 = v243;
  v130 = v241;
  (v241)(v228, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v130(v127, v128, v129);
  v131 = v239;
  sub_261CFD6C4();
  v247(v131, 0, 1, v252);
  v255(v244, 1, 1, v250);
  v124(v246, v257, v253);
  sub_261C97E08();
  v132 = v131;
  v126[11] = sub_261CFCCE4();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA80, &qword_261D03648);
  sub_261CFF9B4();
  sub_261CFD874();
  v133 = v242;
  v134 = v243;
  v130(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v130(v127, v133, v134);
  sub_261CFD6C4();
  v247(v132, 0, 1, v252);
  *&v260 = 0;
  v259 = 0uLL;
  v135 = v250;
  v136 = v255;
  v255(v244, 1, 1, v250);
  v137 = v234;
  v136(v234, 1, 1, v135);
  v251(v246, v257, v253);
  sub_261C97E5C();
  sub_261B5186C();
  v245[12] = sub_261CFCC24();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA90, &qword_261D10240);
  sub_261CFF9B4();
  sub_261CFD874();
  v138 = v242;
  v139 = v243;
  v140 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v140(v127, v138, v139);
  v141 = v239;
  sub_261CFD6C4();
  v247(v141, 0, 1, v252);
  LOBYTE(v259) = 3;
  v142 = v250;
  v143 = v255;
  v255(v244, 1, 1, v250);
  v143(v137, 1, 1, v142);
  v144 = v253;
  v251(v246, v257, v253);
  sub_261B52470();
  v245[13] = sub_261CFCC04();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAA0, &unk_261D03660);
  sub_261CFF9B4();
  sub_261CFD874();
  v145 = v242;
  v146 = v243;
  v147 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v147(v127, v145, v146);
  v148 = v239;
  sub_261CFD6C4();
  v247(v148, 0, 1, v252);
  LOBYTE(v259) = 4;
  v149 = v244;
  v150 = v250;
  v151 = v255;
  v255(v244, 1, 1, v250);
  v151(v234, 1, 1, v150);
  v251(v246, v257, v144);
  sub_261B524C4();
  v245[14] = sub_261CFCC04();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v152 = v242;
  v153 = v243;
  v154 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v154(v127, v152, v153);
  sub_261CFD6C4();
  v155 = v247;
  v247(v148, 0, 1, v252);
  v156 = type metadata accessor for ListEntity();
  (*(*(v156 - 8) + 56))(v220, 1, 1, v156);
  v157 = v149;
  v158 = v250;
  v159 = v255;
  v255(v157, 1, 1, v250);
  v159(v234, 1, 1, v158);
  v251(v246, v257, v253);
  sub_261C9D3A4();
  sub_261CA001C(&qword_280D227A0, type metadata accessor for ListEntity);
  v160 = v239;
  v245[15] = sub_261CFCC24();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v161 = v242;
  v162 = v243;
  v163 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v163(v127, v161, v162);
  sub_261CFD6C4();
  v155(v160, 0, 1, v252);
  v164 = type metadata accessor for SectionEntity();
  (*(*(v164 - 8) + 56))(v221, 1, 1, v164);
  v165 = v250;
  v166 = v255;
  v255(v244, 1, 1, v250);
  v167 = v234;
  v166(v234, 1, 1, v165);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  v168 = sub_261CFD204();
  swift_getKeyPath();
  v169 = sub_261CFD204();
  *&v259 = v168;
  *(&v259 + 1) = v169;
  v251(v246, v257, v253);
  sub_261C9D3F8();
  sub_261CA001C(&qword_280D224E0, type metadata accessor for SectionEntity);
  v245[16] = sub_261CFCC24();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v170 = v242;
  v171 = v243;
  v172 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v172(v127, v170, v171);
  v173 = v239;
  sub_261CFD6C4();
  v247(v173, 0, 1, v252);
  v174 = type metadata accessor for ReminderEntity();
  (*(*(v174 - 8) + 56))(v222, 1, 1, v174);
  v175 = v250;
  v176 = v255;
  v255(v244, 1, 1, v250);
  v176(v167, 1, 1, v175);
  v177 = v246;
  v251(v246, v257, v253);
  sub_261CA001C(&qword_280D22358, type metadata accessor for ReminderEntity);
  v245[17] = sub_261CFCC34();
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB8, &qword_261D03670);
  sub_261CFF9B4();
  sub_261CFD874();
  v178 = v242;
  v179 = v243;
  v180 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v180(v127, v178, v179);
  v181 = v239;
  sub_261CFD6C4();
  v247(v181, 0, 1, v252);
  v238(v235, 1, 1, v236);
  v255(v244, 1, 1, v250);
  v182 = v251;
  v251(v177, v257, v253);
  sub_261C9D44C();
  v183 = sub_261CFCD14();
  v184 = v245;
  v245[18] = v183;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDE0, &unk_261D10298);
  sub_261CFF9B4();
  sub_261CFD874();
  v185 = v242;
  v186 = v241;
  (v241)(v127, v242, v179);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v186(v127, v185, v179);
  v187 = v186;
  v188 = v239;
  sub_261CFD6C4();
  v189 = v247;
  v247(v188, 0, 1, v252);
  *&v259 = 0;
  v255(v244, 1, 1, v250);
  v182(v246, v257, v253);
  v184[19] = sub_261CFCCC4();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA88, &unk_261D03650);
  sub_261CFF9B4();
  sub_261CFD874();
  v190 = v242;
  v191 = v243;
  v187(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v187(v127, v190, v191);
  sub_261CFD6C4();
  v189(v188, 0, 1, v252);
  v255(v244, 1, 1, v250);
  swift_getKeyPath();
  *&v259 = sub_261CFD204();
  LODWORD(v226) = *MEMORY[0x277CB9CE0];
  v192 = *(v233 + 104);
  v233 += 104;
  v225 = v192;
  v192(v230);
  v193 = v246;
  v194 = v253;
  v251(v246, v257, v253);
  v224 = sub_261C9D4A0();
  v195 = v193;
  v245[20] = sub_261CFCC74();
  sub_261CFF9B4();
  sub_261CFD874();
  v196 = v242;
  v197 = v243;
  v198 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v198(v127, v196, v197);
  v199 = v239;
  sub_261CFD6C4();
  v247(v199, 0, 1, v252);
  v255(v244, 1, 1, v250);
  swift_getKeyPath();
  *&v259 = sub_261CFD204();
  (v225)(v230, v226, v231);
  v251(v195, v257, v194);
  v200 = sub_261CFCC74();
  v201 = v245;
  v245[21] = v200;
  sub_261CFF9B4();
  sub_261CFD874();
  v202 = v242;
  v203 = v243;
  v204 = v241;
  (v241)(v127, v242, v243);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v204(v127, v202, v203);
  v205 = v239;
  sub_261CFD6C4();
  v247(v205, 0, 1, v252);
  *&v259 = 0;
  v238(v235, 1, 1, v236);
  v206 = v244;
  v255(v244, 1, 1, v250);
  v251(v195, v257, v253);
  v201[22] = sub_261CFCD24();
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDF0, &qword_261D102A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v207 = v242;
  v208 = v241;
  (v241)(v127, v242, v203);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v208(v127, v207, v203);
  sub_261CFD6C4();
  v247(v205, 0, 1, v252);
  v209 = sub_261CFC7E4();
  (*(*(v209 - 8) + 56))(v223, 1, 1, v209);
  v255(v206, 1, 1, v250);
  v251(v246, v257, v253);
  v210 = sub_261CFCC54();
  v211 = v245;
  v245[23] = v210;
  v211[24] = 0;
  v211[25] = 0;
  v212 = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDF8, &qword_261D102B0);
  v258 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v212[26] = result;
  return result;
}

unint64_t sub_261C97E08()
{
  result = qword_27FEDDDB8;
  if (!qword_27FEDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDB8);
  }

  return result;
}

unint64_t sub_261C97E5C()
{
  result = qword_27FEDDDC0;
  if (!qword_27FEDDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDC0);
  }

  return result;
}

double sub_261C97EB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261C97EEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t sub_261C97FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.dueDateComponents.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 72);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t sub_261C981F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261C98230(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t CreateReminderAppIntent.priorityLevel.setter(char *a1)
{
  v2 = *(v1 + 112);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t CreateReminderAppIntent.targetList.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 120);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t sub_261C983D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA1E0, &unk_261D02300);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA1E0, &unk_261D02300);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA1E0, &unk_261D02300);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.targetSection.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 128);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t sub_261C98610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &unk_27FEDE110, &unk_261D035B0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &unk_27FEDE110, &unk_261D035B0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE110, &unk_261D035B0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.parentReminder.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 136);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t sub_261C9882C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDD78);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDD78);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C988F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t (*CreateReminderAppIntent.title.modify(uint64_t *a1))()
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

uint64_t sub_261C98A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA9A8, &qword_261D034B0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A8, &qword_261D034B0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.note.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*CreateReminderAppIntent.note.modify(uint64_t *a1))()
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

uint64_t sub_261C98D08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.images.modify(uint64_t *a1))()
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
  return sub_261B02064;
}

uint64_t sub_261C98E64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.tags.modify(uint64_t *a1))()
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
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C98FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.dueDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*CreateReminderAppIntent.dueDate.modify(uint64_t *a1))()
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
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 40);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*CreateReminderAppIntent.recurrence.modify(uint64_t *a1))()
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
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99544()
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
  __swift_allocate_value_buffer(v9, qword_27FEDDD90);
  __swift_project_value_buffer(v9, qword_27FEDDD90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t (*CreateReminderAppIntent.name.modify(uint64_t *a1))()
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
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99B68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t (*CreateReminderAppIntent.notes.modify(uint64_t *a1))()
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
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.isAllDay.modify(uint64_t *a1))()
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
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.dueDateComponents.modify(uint64_t *a1))()
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
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99DD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a2 + 176);
  v18[10] = *(a2 + 160);
  v18[11] = v6;
  v18[12] = *(a2 + 192);
  v19 = *(a2 + 208);
  v7 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v7;
  v8 = *(a2 + 144);
  v18[8] = *(a2 + 128);
  v18[9] = v8;
  v9 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v9;
  v10 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v10;
  v11 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v11;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  sub_261B530B8(v2, v3);
  sub_261B49630(v18, v13);
  sub_261CFCBC4();
  return sub_261B4968C(v18);
}

uint64_t CreateReminderAppIntent.earlyAlert.setter(__int128 *a1)
{
  v2 = *(v1 + 80);
  v4 = *a1;
  v5 = a1[1];
  return sub_261CFCBC4();
}

uint64_t (*CreateReminderAppIntent.earlyAlert.modify(uint64_t *a1))()
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
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.recurrenceRule.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 88);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*CreateReminderAppIntent.recurrenceRule.modify(uint64_t *a1))()
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
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A1FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 + 176);
  v13[10] = *(a2 + 160);
  v13[11] = v5;
  v13[12] = *(a2 + 192);
  v14 = *(a2 + 208);
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v7 = *(a2 + 144);
  v13[8] = *(a2 + 128);
  v13[9] = v7;
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  v9 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v9;
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v12[27] = v2;
  v12[28] = v3;
  v12[29] = v4;
  sub_261B5306C(v2);
  sub_261B49630(v13, v12);
  sub_261CFCBC4();
  return sub_261B4968C(v13);
}

uint64_t CreateReminderAppIntent.spatialEventTrigger.setter(__int128 *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  v5 = *(a1 + 2);
  return sub_261CFCBC4();
}

uint64_t (*CreateReminderAppIntent.spatialEventTrigger.modify(uint64_t *a1))()
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
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A374(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t CreateReminderAppIntent.flags.setter(char *a1)
{
  v2 = *(v1 + 104);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*CreateReminderAppIntent.flags.modify(uint64_t *a1))()
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
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.priorityLevel.modify(uint64_t *a1))()
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
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.targetList.modify(uint64_t *a1))()
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
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.targetSection.modify(uint64_t *a1))()
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
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.parentReminder.modify(uint64_t *a1))()
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
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261C9A730(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.hashtags.modify(uint64_t *a1))()
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
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A88C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.urls.modify(uint64_t *a1))()
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
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.contactPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 160);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*CreateReminderAppIntent.contactPerson.modify(uint64_t *a1))()
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
  v4 = *(v1 + 160);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9AC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.assignedPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 168);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*CreateReminderAppIntent.assignedPerson.modify(uint64_t *a1))()
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
  v4 = *(v1 + 168);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9AF50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.subtasks.modify(uint64_t *a1))()
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
  v4 = *(v1 + 176);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9B0AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261AFB668(a1, &v18 - v9, &qword_27FEDA998, &unk_261D10200);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261AFB668(v10, v8, &qword_27FEDA998, &unk_261D10200);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA998, &unk_261D10200);
  return sub_261B4968C(v20);
}

uint64_t CreateReminderAppIntent.image.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 184);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA998, &unk_261D10200);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA998, &unk_261D10200);
}

uint64_t (*CreateReminderAppIntent.image.modify(uint64_t *a1))()
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
  v4 = *(v1 + 184);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CreateReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 448) = a1;
  v3 = *(v1 + 176);
  *(v2 + 176) = *(v1 + 160);
  *(v2 + 192) = v3;
  *(v2 + 208) = *(v1 + 192);
  *(v2 + 224) = *(v1 + 208);
  v4 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v4;
  v5 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v7;
  v8 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v8;
  sub_261CFFD24();
  *(v2 + 456) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v2 + 464) = v10;
  *(v2 + 472) = v9;

  return MEMORY[0x2822009F8](sub_261C9B440, v10, v9);
}

uint64_t sub_261C9B440()
{
  sub_261B49630(v0 + 16, v0 + 232);
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_261C9B508;
  v2 = *(v0 + 448);

  return sub_261C55A68(v2, "CreateReminderAppIntent", 23, 2, v0 + 16);
}

uint64_t sub_261C9B508()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 472);
  v6 = *(v2 + 464);
  if (v0)
  {
    v7 = sub_261CA0064;
  }

  else
  {
    v7 = sub_261CA0068;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261C9B644(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  sub_261CFFD24();
  v2[36] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[37] = v4;
  v2[38] = v3;

  return MEMORY[0x2822009F8](sub_261C9B6DC, v4, v3);
}

uint64_t sub_261C9B6DC()
{
  v1 = *(v0 + 280);
  sub_261B281F8(0);
  v2 = *(v1 + 208);
  sub_261CFC664();
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1((v0 + 232), v3);
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = *(v1 + 80);
  v8 = *(v1 + 32);
  v7 = *(v1 + 48);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v6;
  *(v0 + 48) = v8;
  *(v0 + 64) = v7;
  v9 = *(v1 + 144);
  v11 = *(v1 + 96);
  v10 = *(v1 + 112);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v9;
  *(v0 + 112) = v11;
  *(v0 + 128) = v10;
  v13 = *(v1 + 176);
  v12 = *(v1 + 192);
  v14 = *(v1 + 160);
  *(v0 + 224) = *(v1 + 208);
  *(v0 + 192) = v13;
  *(v0 + 208) = v12;
  *(v0 + 176) = v14;
  v15 = *(v4 + 8);
  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 312) = v17;
  *v17 = v0;
  v17[1] = sub_261C9B870;
  v18 = *(v0 + 272);

  return v20(v18, v0 + 16, v3, v4);
}

uint64_t sub_261C9B870()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  v4 = *(v2 + 296);
  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_261C9B9F0;
  }

  else
  {
    v6 = sub_261C9B984;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261C9B984()
{
  v1 = v0[36];

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261C9B9F0()
{
  v1 = v0[36];

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  v2 = v0[1];
  v3 = v0[40];

  return v2();
}

uint64_t sub_261C9BA7C()
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

  return sub_261C523B8(v3, "ListEntityQuery.suggestedEntities", 33, 2, v1);
}

uint64_t sub_261C9BBD0()
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
  v2[1] = sub_261C9BD04;
  v3 = *(v0 + 48);

  return sub_261C538B0(v3, "ListEntityQuery.defaultListEntity", 33, 2, v1);
}

uint64_t sub_261C9BD04()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261C9BE40, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_261C9BE40()
{
  v22 = v0;
  v1 = v0[7];

  if (qword_27FED9CB8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDDD78);
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
    _os_log_impl(&dword_261AE2000, v5, v6, "[CreateReminderAppIntent] Failed to fetch default list entity with error: %s", v9, 0xCu);
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

uint64_t sub_261C9C04C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return sub_261C9BA5C(a1);
}

uint64_t sub_261C9C0E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF4BDC;

  return sub_261C9BBB0(a1);
}

uint64_t sub_261C9C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for ListEntity();
  v3[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9C328, 0, 0);
}

uint64_t sub_261C9C328()
{
  v1 = *(v0 + 32);
  if (!sub_261CFD1F4())
  {
    v9 = *(v0 + 24);
    type metadata accessor for SectionEntity();
    sub_261CA001C(&qword_280D224D0, type metadata accessor for SectionEntity);
    sub_261CFCFD4();
    goto LABEL_5;
  }

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 40);
  swift_getKeyPath();
  sub_261C0F51C();
  sub_261CFCD54();

  sub_261B01E2C(v3, v2);
  if (sub_261CFD1F4())
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 24);
    swift_getKeyPath();
    sub_261C0F684();
    sub_261CFCD54();

    v8 = type metadata accessor for ReminderEntity();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    sub_261AE6A40(v6, &unk_27FEDE110, &unk_261D035B0);
    type metadata accessor for SectionEntity();
    sub_261CA001C(&qword_280D224D0, type metadata accessor for SectionEntity);
    sub_261CFCFD4();
    sub_261B0A1F0(v5);
LABEL_5:
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = *(v0 + 64);
  v21 = type metadata accessor for ReminderEntity();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_261AE6A40(v18, &unk_27FEDE110, &unk_261D035B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  *(v0 + 168) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v22 = sub_261CFC684();
  *(v0 + 128) = v22;
  v23 = v17 + *(v19 + 20);
  v24 = AppEntityID.entityIdentifierString.getter();
  v26 = v25;
  v27 = swift_task_alloc();
  *(v0 + 136) = v27;
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  *(v0 + 16) = type metadata accessor for SectionEntity();
  sub_261CFDAE4();

  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v20;
  *(v28 + 32) = 1;
  v29 = swift_task_alloc();
  *(v0 + 152) = v29;
  *v29 = v0;
  v29[1] = sub_261C9C770;
  v30 = *(v0 + 88);

  return sub_261CC1B58(v30, &unk_261D10938, v28, "SectionEntityQuery.entitiesInList", 33, 2);
}

uint64_t sub_261C9C770()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_261C9C99C;
  }

  else
  {
    v3 = sub_261C9C884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C9C884()
{
  v1 = v0[18];
  v18 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[3];

  (*(v8 + 8))(v7, v9);
  sub_261B0A1F0(v3);
  (*(v5 + 32))(v10, v4, v6);

  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_261C9C99C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  sub_261B0A1F0(v4);

  v11 = v0[1];
  v12 = v0[20];

  return v11();
}

uint64_t sub_261C9CA8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261AF4BDC;

  return sub_261C9C17C(a1, v5, v4);
}

uint64_t sub_261C9CB38(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA64E4;

  return sub_261C9E58C();
}

uint64_t sub_261C9CBC8(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for ListEntity();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9CC68, 0, 0);
}

uint64_t sub_261C9CC68()
{
  v1 = v0[3];
  v2 = sub_261CFD1F4();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    swift_getKeyPath();
    sub_261C0F51C();
    sub_261CFCD54();

    sub_261B01E2C(v5, v4);
    v7 = *(v4 + *(v6 + 44));
    sub_261CFCA04();
    if (v0[2])
    {
      v3 = v0[2];
    }

    sub_261B0A1F0(v4);
  }

  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10(v3);
}

uint64_t sub_261C9CD6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_261BA6EA0;

  return sub_261C9CBC8(v3);
}

uint64_t sub_261C9CE04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA6EA0;

  return sub_261C9E958();
}

uint64_t sub_261C9CE94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA6EA0;

  return sub_261C9F908();
}

uint64_t sub_261C9CF24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C9CFD0(uint64_t a1)
{
  *(v2 + 448) = a1;
  v3 = *(v1 + 176);
  *(v2 + 176) = *(v1 + 160);
  *(v2 + 192) = v3;
  *(v2 + 208) = *(v1 + 192);
  *(v2 + 224) = *(v1 + 208);
  v4 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v4;
  v5 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v7;
  v8 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v8;
  sub_261CFFD24();
  *(v2 + 456) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v2 + 464) = v10;
  *(v2 + 472) = v9;

  return MEMORY[0x2822009F8](sub_261C9D0A8, v10, v9);
}

uint64_t sub_261C9D0A8()
{
  sub_261B49630(v0 + 16, v0 + 232);
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_261C9D170;
  v2 = *(v0 + 448);

  return sub_261C55A68(v2, "CreateReminderAppIntent", 23, 2, v0 + 16);
}

uint64_t sub_261C9D170()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 472);
  v6 = *(v2 + 464);
  if (v0)
  {
    v7 = sub_261C9D310;
  }

  else
  {
    v7 = sub_261C9D2AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261C9D2AC()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261C9D310()
{
  v1 = v0[57];

  v2 = v0[1];
  v3 = v0[61];

  return v2();
}

uint64_t sub_261C9D378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

unint64_t sub_261C9D3A4()
{
  result = qword_27FEDDDC8;
  if (!qword_27FEDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDC8);
  }

  return result;
}

unint64_t sub_261C9D3F8()
{
  result = qword_27FEDDDD0;
  if (!qword_27FEDDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDD0);
  }

  return result;
}

unint64_t sub_261C9D44C()
{
  result = qword_27FEDDDD8;
  if (!qword_27FEDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDD8);
  }

  return result;
}

unint64_t sub_261C9D4A0()
{
  result = qword_27FEDDDE8;
  if (!qword_27FEDDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDE8);
  }

  return result;
}

unint64_t sub_261C9D4F8()
{
  result = qword_27FEDDE00;
  if (!qword_27FEDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE00);
  }

  return result;
}

unint64_t sub_261C9D598()
{
  result = qword_27FEDDE08;
  if (!qword_27FEDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE08);
  }

  return result;
}

unint64_t sub_261C9D638()
{
  result = qword_27FEDDE10;
  if (!qword_27FEDDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE10);
  }

  return result;
}

unint64_t sub_261C9D6D8()
{
  result = qword_27FEDDE20;
  if (!qword_27FEDDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE20);
  }

  return result;
}

unint64_t sub_261C9D778()
{
  result = qword_27FEDDE28;
  if (!qword_27FEDDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDDE30, qword_261D104A0);
    sub_261CA001C(&qword_280D22DC8, MEMORY[0x277CB9DB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE28);
  }

  return result;
}

unint64_t sub_261C9D830()
{
  result = qword_27FEDDE38;
  if (!qword_27FEDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE38);
  }

  return result;
}

unint64_t sub_261C9D8D0()
{
  result = qword_27FEDDE40;
  if (!qword_27FEDDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDDE48, qword_261D10538);
    sub_261CA001C(&qword_280D22D98, MEMORY[0x277CC98D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE40);
  }

  return result;
}

unint64_t sub_261C9D988()
{
  result = qword_27FEDDE50;
  if (!qword_27FEDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE50);
  }

  return result;
}

uint64_t sub_261C9DA24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261C9DAA4()
{
  result = qword_27FEDDE68;
  if (!qword_27FEDDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE68);
  }

  return result;
}

unint64_t sub_261C9DAFC()
{
  result = qword_27FEDDE70;
  if (!qword_27FEDDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE70);
  }

  return result;
}

unint64_t sub_261C9DB54()
{
  result = qword_27FEDDE78;
  if (!qword_27FEDDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE78);
  }

  return result;
}

uint64_t destroy for CreateReminderAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];

  v10 = a1[8];

  v11 = a1[9];

  v12 = a1[10];

  v13 = a1[11];

  v14 = a1[12];

  v15 = a1[13];

  v16 = a1[14];

  v17 = a1[15];

  v18 = a1[16];

  v19 = a1[17];

  v20 = a1[18];

  v21 = a1[19];

  v22 = a1[20];

  v23 = a1[21];

  v24 = a1[22];

  v25 = a1[23];

  v26 = a1[25];

  v27 = a1[26];
}

void *initializeWithCopy for CreateReminderAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  v11 = a2[13];
  a1[12] = a2[12];
  a1[13] = v11;
  v12 = a2[15];
  a1[14] = a2[14];
  a1[15] = v12;
  v13 = a2[17];
  a1[16] = a2[16];
  a1[17] = v13;
  v14 = a2[19];
  a1[18] = a2[18];
  a1[19] = v14;
  v15 = a2[21];
  a1[20] = a2[20];
  a1[21] = v15;
  v16 = a2[23];
  a1[22] = a2[22];
  a1[23] = v16;
  v8 = a2[25];
  a1[24] = a2[24];
  a1[25] = v8;
  a1[26] = a2[26];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for CreateReminderAppIntent(uint64_t *a1, uint64_t *a2)
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

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v10 = a1[6];
  a1[6] = a2[6];
  sub_261CFCDA4();

  v11 = a1[7];
  a1[7] = a2[7];
  sub_261CFCDA4();

  v12 = a1[8];
  a1[8] = a2[8];
  sub_261CFCDA4();

  v13 = a1[9];
  a1[9] = a2[9];
  sub_261CFCDA4();

  v14 = a1[10];
  a1[10] = a2[10];
  sub_261CFCDA4();

  v15 = a1[11];
  a1[11] = a2[11];
  sub_261CFCDA4();

  v16 = a1[12];
  a1[12] = a2[12];
  sub_261CFCDA4();

  v17 = a1[13];
  a1[13] = a2[13];
  sub_261CFCDA4();

  v18 = a1[14];
  a1[14] = a2[14];
  sub_261CFCDA4();

  v19 = a1[15];
  a1[15] = a2[15];
  sub_261CFCDA4();

  v20 = a1[16];
  a1[16] = a2[16];
  sub_261CFCDA4();

  v21 = a1[17];
  a1[17] = a2[17];
  sub_261CFCDA4();

  v22 = a1[18];
  a1[18] = a2[18];
  sub_261CFCDA4();

  v23 = a1[19];
  a1[19] = a2[19];
  sub_261CFCDA4();

  v24 = a1[20];
  a1[20] = a2[20];
  sub_261CFCDA4();

  v25 = a1[21];
  a1[21] = a2[21];
  sub_261CFCDA4();

  v26 = a1[22];
  a1[22] = a2[22];
  sub_261CFCDA4();

  v27 = a1[23];
  a1[23] = a2[23];
  sub_261CFCDA4();

  a1[24] = a2[24];
  v28 = a1[25];
  a1[25] = a2[25];
  sub_261CFD104();

  v29 = a2[26];
  v30 = a1[26];
  a1[26] = v29;
  sub_261CFCDA4();

  return a1;
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

void *assignWithTake for CreateReminderAppIntent(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = *(a2 + 32);

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = *(a2 + 48);

  v12 = a1[8];

  v13 = a1[9];
  *(a1 + 4) = *(a2 + 64);

  v14 = a1[10];

  v15 = a1[11];
  *(a1 + 5) = *(a2 + 80);

  v16 = a1[12];

  v17 = a1[13];
  *(a1 + 6) = *(a2 + 96);

  v18 = a1[14];

  v19 = a1[15];
  *(a1 + 7) = *(a2 + 112);

  v20 = a1[16];

  v21 = a1[17];
  *(a1 + 8) = *(a2 + 128);

  v22 = a1[18];

  v23 = a1[19];
  *(a1 + 9) = *(a2 + 144);

  v24 = a1[20];

  v25 = a1[21];
  *(a1 + 10) = *(a2 + 160);

  v26 = a1[22];

  v27 = a1[23];
  *(a1 + 11) = *(a2 + 176);

  a1[24] = *(a2 + 192);
  v28 = a1[25];

  v29 = a1[26];
  *(a1 + 25) = *(a2 + 200);

  return a1;
}

uint64_t getEnumTagSinglePayload for CreateReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t storeEnumTagSinglePayload for CreateReminderAppIntent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of CreateReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF4BDC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261C9E5A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  v1 = sub_261CFD204();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  *(v0 + 56) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v2 = sub_261CFC684();
  *(v0 + 24) = v2;
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_261C9E714;

  return sub_261C60A58("ReminderEntityQuery.suggestedHashtagLabels", 42, 2, v1, v2);
}

uint64_t sub_261C9E714(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v9 = sub_261C9E8EC;
  }

  else
  {
    *(v4 + 48) = a1;
    v9 = sub_261C9E87C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_261C9E87C()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[6];

  return v3(v4);
}

uint64_t sub_261C9E8EC()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

uint64_t sub_261C9E958()
{
  v1 = sub_261CFDA64();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_261CFD8B4();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_261CFD944();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();
  v10 = sub_261CFDA84();
  v0[11] = v10;
  v11 = *(v10 - 8);
  v0[12] = v11;
  v12 = *(v11 + 64) + 15;
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9EB28, 0, 0);
}