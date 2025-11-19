char *sub_20B6011E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_20C1341A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  v15 = *(v3 + v53[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v58 = v11;
  if (!v16)
  {
LABEL_8:
    v29 = sub_20B527580(v17);

    if (v50)
    {
      v31 = v52;
      v30 = v53;
    }

    else
    {
      v30 = v53;
      v29 = sub_20B604F74(*(v3 + v53[10]), v29, sub_20B605F68, sub_20B605F68);
      v31 = v52;
    }

    v32 = v51;
    sub_20B52F9E8(v3 + v30[12], v51, &qword_27C7627B8);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      sub_20B520158(v32, &qword_27C7627B8);
    }

    else
    {
      (*(v11 + 32))(v31, v32, v10);
      v33 = v11;
      v34 = sub_20C1362C4();
      v36 = sub_20B8D7150(v34, v35, v29);

      if (v36)
      {
        v37 = *(v3 + v53[11]);
        v38 = sub_20C1362C4();
        LOBYTE(v37) = sub_20B8D7150(v38, v39, v37);

        if (v37)
        {
          v40 = v58;
          (*(v58 + 16))(v9, v31, v10);
          (*(v40 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C1362C4();
          *(inited + 40) = v42;
          v43 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          (*(v40 + 8))(v31, v10);
          v44 = v43;
LABEL_20:
          *a2 = v15;
          a2[1] = v29;
          a2[2] = v44;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0);
          sub_20B5DF134(v9, a2 + *(v46 + 44), &qword_27C7627B8);
        }

        v11 = v58;
        (*(v58 + 8))(v31, v10);
      }

      else
      {
        (*(v33 + 8))(v31, v10);
        v11 = v33;
      }

      v30 = v53;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v45 = *(v3 + v30[11]);

    v44 = sub_20B604F74(v45, v29, sub_20B605F68, sub_20B605F68);
    goto LABEL_20;
  }

  v47 = v3;
  v48 = v9;
  v49 = a2;
  v59 = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v16, 0);
  v11 = v58;
  v19 = 0;
  v17 = v59;
  v56 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v54 = v58 + 8;
  v55 = v58 + 16;
  while (v19 < *(v15 + 16))
  {
    v20 = v15;
    v21 = v57;
    (*(v11 + 16))(v57, v56 + *(v11 + 72) * v19, v10);
    v22 = sub_20C1362C4();
    v11 = v58;
    v23 = v22;
    v25 = v24;
    result = (*(v58 + 8))(v21, v10);
    v59 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_20B526D44((v26 > 1), v27 + 1, 1);
      v11 = v58;
      v17 = v59;
    }

    ++v19;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v15 = v20;
    if (v16 == v19)
    {
      v9 = v48;
      a2 = v49;
      v3 = v47;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B6017C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_20C1382B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  v15 = *(v3 + v53[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v58 = v11;
  if (!v16)
  {
LABEL_8:
    v29 = sub_20B527580(v17);

    if (v50)
    {
      v31 = v52;
      v30 = v53;
    }

    else
    {
      v30 = v53;
      v29 = sub_20B604F74(*(v3 + v53[10]), v29, sub_20B605F68, sub_20B605F68);
      v31 = v52;
    }

    v32 = v51;
    sub_20B52F9E8(v3 + v30[12], v51, &qword_27C7627E8);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      sub_20B520158(v32, &qword_27C7627E8);
    }

    else
    {
      (*(v11 + 32))(v31, v32, v10);
      v33 = v11;
      v34 = sub_20C1362C4();
      v36 = sub_20B8D7150(v34, v35, v29);

      if (v36)
      {
        v37 = *(v3 + v53[11]);
        v38 = sub_20C1362C4();
        LOBYTE(v37) = sub_20B8D7150(v38, v39, v37);

        if (v37)
        {
          v40 = v58;
          (*(v58 + 16))(v9, v31, v10);
          (*(v40 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C1362C4();
          *(inited + 40) = v42;
          v43 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          (*(v40 + 8))(v31, v10);
          v44 = v43;
LABEL_20:
          *a2 = v15;
          a2[1] = v29;
          a2[2] = v44;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0);
          sub_20B5DF134(v9, a2 + *(v46 + 44), &qword_27C7627E8);
        }

        v11 = v58;
        (*(v58 + 8))(v31, v10);
      }

      else
      {
        (*(v33 + 8))(v31, v10);
        v11 = v33;
      }

      v30 = v53;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v45 = *(v3 + v30[11]);

    v44 = sub_20B604F74(v45, v29, sub_20B605F68, sub_20B605F68);
    goto LABEL_20;
  }

  v47 = v3;
  v48 = v9;
  v49 = a2;
  v59 = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v16, 0);
  v11 = v58;
  v19 = 0;
  v17 = v59;
  v56 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v54 = v58 + 8;
  v55 = v58 + 16;
  while (v19 < *(v15 + 16))
  {
    v20 = v15;
    v21 = v57;
    (*(v11 + 16))(v57, v56 + *(v11 + 72) * v19, v10);
    v22 = sub_20C1362C4();
    v11 = v58;
    v23 = v22;
    v25 = v24;
    result = (*(v58 + 8))(v21, v10);
    v59 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_20B526D44((v26 > 1), v27 + 1, 1);
      v11 = v58;
      v17 = v59;
    }

    ++v19;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v15 = v20;
    if (v16 == v19)
    {
      v9 = v48;
      a2 = v49;
      v3 = v47;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B601DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_20C1334D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  v15 = *(v3 + v53[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v58 = v11;
  if (!v16)
  {
LABEL_8:
    v29 = sub_20B527580(v17);

    if (v50)
    {
      v31 = v52;
      v30 = v53;
    }

    else
    {
      v30 = v53;
      v29 = sub_20B604F74(*(v3 + v53[10]), v29, sub_20B605F68, sub_20B605F68);
      v31 = v52;
    }

    v32 = v51;
    sub_20B52F9E8(v3 + v30[12], v51, &qword_27C762758);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      sub_20B520158(v32, &qword_27C762758);
    }

    else
    {
      (*(v11 + 32))(v31, v32, v10);
      v33 = v11;
      v34 = sub_20C1362C4();
      v36 = sub_20B8D7150(v34, v35, v29);

      if (v36)
      {
        v37 = *(v3 + v53[11]);
        v38 = sub_20C1362C4();
        LOBYTE(v37) = sub_20B8D7150(v38, v39, v37);

        if (v37)
        {
          v40 = v58;
          (*(v58 + 16))(v9, v31, v10);
          (*(v40 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C1362C4();
          *(inited + 40) = v42;
          v43 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          (*(v40 + 8))(v31, v10);
          v44 = v43;
LABEL_20:
          *a2 = v15;
          a2[1] = v29;
          a2[2] = v44;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760);
          sub_20B5DF134(v9, a2 + *(v46 + 44), &qword_27C762758);
        }

        v11 = v58;
        (*(v58 + 8))(v31, v10);
      }

      else
      {
        (*(v33 + 8))(v31, v10);
        v11 = v33;
      }

      v30 = v53;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v45 = *(v3 + v30[11]);

    v44 = sub_20B604F74(v45, v29, sub_20B605F68, sub_20B605F68);
    goto LABEL_20;
  }

  v47 = v3;
  v48 = v9;
  v49 = a2;
  v59 = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v16, 0);
  v11 = v58;
  v19 = 0;
  v17 = v59;
  v56 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v54 = v58 + 8;
  v55 = v58 + 16;
  while (v19 < *(v15 + 16))
  {
    v20 = v15;
    v21 = v57;
    (*(v11 + 16))(v57, v56 + *(v11 + 72) * v19, v10);
    v22 = sub_20C1362C4();
    v11 = v58;
    v23 = v22;
    v25 = v24;
    result = (*(v58 + 8))(v21, v10);
    v59 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_20B526D44((v26 > 1), v27 + 1, 1);
      v11 = v58;
      v17 = v59;
    }

    ++v19;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v15 = v20;
    if (v16 == v19)
    {
      v9 = v48;
      a2 = v49;
      v3 = v47;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B60238C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v45 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  v15 = *(v3 + v52[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v55 = v11;
  if (!v16)
  {
LABEL_8:
    v29 = sub_20B527580(v17);

    if (v49)
    {
      v31 = v51;
      v30 = v52;
    }

    else
    {
      v30 = v52;
      v29 = sub_20B604F74(*(v3 + v52[10]), v29, sub_20B605F68, sub_20B605F68);
      v31 = v51;
    }

    v32 = v50;
    sub_20B52F9E8(v3 + v30[12], v50, &qword_27C762788);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      sub_20B520158(v32, &qword_27C762788);
    }

    else
    {
      sub_20B6069D4(v32, v31);
      v33 = sub_20C133A34();
      v35 = sub_20B8D7150(v33, v34, v29);

      if (v35)
      {
        v36 = *(v3 + v52[11]);
        v37 = sub_20C133A34();
        LOBYTE(v36) = sub_20B8D7150(v37, v38, v36);

        if (v36)
        {
          sub_20B6068D8(v31, v9);
          (*(v55 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C133A34();
          *(inited + 40) = v40;
          v41 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          sub_20B60693C(v31);
          v42 = v41;
LABEL_18:
          *a2 = v15;
          a2[1] = v29;
          a2[2] = v42;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790);
          sub_20B5DF134(v9, a2 + *(v44 + 44), &qword_27C762788);
        }
      }

      sub_20B60693C(v31);
      v11 = v55;
      v30 = v52;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v43 = *(v3 + v30[11]);

    v42 = sub_20B604F74(v43, v29, sub_20B605F68, sub_20B605F68);
    goto LABEL_18;
  }

  v46 = v3;
  v47 = v9;
  v48 = a2;
  v56 = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v16, 0);
  v11 = v55;
  v19 = 0;
  v17 = v56;
  v53 = v15 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  while (v19 < *(v15 + 16))
  {
    v20 = v15;
    v21 = v54;
    sub_20B6068D8(v53 + *(v11 + 72) * v19, v54);
    v22 = v10;
    v23 = sub_20C133A34();
    v25 = v24;
    result = sub_20B60693C(v21);
    v56 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_20B526D44((v26 > 1), v27 + 1, 1);
      v17 = v56;
    }

    ++v19;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v15 = v20;
    v10 = v22;
    v11 = v55;
    if (v16 == v19)
    {
      v9 = v47;
      a2 = v48;
      v3 = v46;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B602898()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1365F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v14, &qword_27C762720);
  sub_20B5F8C78(v9);
  sub_20B520158(v14, &qword_27C762720);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v20 = &qword_27C771090;
    v21 = v9;
    return sub_20B520158(v21, v20);
  }

  (*(v16 + 32))(v18, v9, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v1[3];
    sub_20B52F9E8(v1 + v19, v11, &qword_27C762720);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = v24;
      sub_20B5DF134(v11, v48, &qword_27C762728);
      v26 = v45;
      v27 = sub_20B600BFC(*(v1 + *(*v1 + 112)), v45);
      v28 = *v26;
      MEMORY[0x28223BE20](v27);
      *(&v43 - 2) = v26;

      sub_20B5F85A4(sub_20B606C74, (&v43 - 4), v28, MEMORY[0x277D53E10], sub_20BB5D648);
      v30 = v29;
      v47 = v18;
      v31 = v26[2];
      v32 = v46;
      v33 = sub_20B52F9E8(v26 + *(v44 + 11), v46, &qword_27C762710);
      v44 = &v43;
      MEMORY[0x28223BE20](v33);
      *(&v43 - 8) = v31;
      *(&v43 - 7) = v32;
      *(&v43 - 6) = v23;
      *(&v43 - 5) = v25;
      *(&v43 - 4) = v1;
      *(&v43 - 3) = v34;
      v35 = v48;
      *(&v43 - 2) = v48;
      v36 = sub_20B6142C0(sub_20B606670, (&v43 - 10), v30);

      ObjectType = swift_getObjectType();
      v38 = v1;
      v39 = v47;
      (*(v25 + 64))(v38, v36, v47, ObjectType, v25);
      swift_unknownObjectRelease();

      (*(v16 + 8))(v39, v15);
      sub_20B520158(v26, &qword_27C762718);
      sub_20B520158(v32, &qword_27C762710);
      v21 = v35;
      v20 = &qword_27C762728;
      return sub_20B520158(v21, v20);
    }

    swift_unknownObjectRelease();
    sub_20B520158(v11, &qword_27C762720);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v1[3];
    v42 = swift_getObjectType();
    (*(v41 + 64))(v1, MEMORY[0x277D84F90], v18, v42, v41);
    swift_unknownObjectRelease();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B602EB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1365F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v14, &qword_27C7627C8);
  sub_20B5F9000(v9);
  sub_20B520158(v14, &qword_27C7627C8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v20 = &qword_27C771090;
    v21 = v9;
    return sub_20B520158(v21, v20);
  }

  (*(v16 + 32))(v18, v9, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v1[3];
    sub_20B52F9E8(v1 + v19, v11, &qword_27C7627C8);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = v24;
      sub_20B5DF134(v11, v48, &qword_27C7627D0);
      v26 = v45;
      v27 = sub_20B6011E0(*(v1 + *(*v1 + 112)), v45);
      v28 = *v26;
      MEMORY[0x28223BE20](v27);
      *(&v43 - 2) = v26;

      sub_20B5F85A4(sub_20B606D38, (&v43 - 4), v28, MEMORY[0x277D50618], sub_20BB5D57C);
      v30 = v29;
      v47 = v18;
      v31 = v26[2];
      v32 = v46;
      v33 = sub_20B52F9E8(v26 + *(v44 + 11), v46, &qword_27C7627B8);
      v44 = &v43;
      MEMORY[0x28223BE20](v33);
      *(&v43 - 8) = v31;
      *(&v43 - 7) = v32;
      *(&v43 - 6) = v23;
      *(&v43 - 5) = v25;
      *(&v43 - 4) = v1;
      *(&v43 - 3) = v34;
      v35 = v48;
      *(&v43 - 2) = v48;
      v36 = sub_20B614608(sub_20B606AB0, (&v43 - 10), v30);

      ObjectType = swift_getObjectType();
      v38 = v1;
      v39 = v47;
      (*(v25 + 64))(v38, v36, v47, ObjectType, v25);
      swift_unknownObjectRelease();

      (*(v16 + 8))(v39, v15);
      sub_20B520158(v26, &qword_27C7627C0);
      sub_20B520158(v32, &qword_27C7627B8);
      v21 = v35;
      v20 = &qword_27C7627D0;
      return sub_20B520158(v21, v20);
    }

    swift_unknownObjectRelease();
    sub_20B520158(v11, &qword_27C7627C8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v1[3];
    v42 = swift_getObjectType();
    (*(v41 + 64))(v1, MEMORY[0x277D84F90], v18, v42, v41);
    swift_unknownObjectRelease();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B6034D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1365F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v14, &qword_27C7627F8);
  sub_20B5F9388(v9);
  sub_20B520158(v14, &qword_27C7627F8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v20 = &qword_27C771090;
    v21 = v9;
    return sub_20B520158(v21, v20);
  }

  (*(v16 + 32))(v18, v9, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v1[3];
    sub_20B52F9E8(v1 + v19, v11, &qword_27C7627F8);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = v24;
      sub_20B5DF134(v11, v48, &qword_27C762800);
      v26 = v45;
      v27 = sub_20B6017C4(*(v1 + *(*v1 + 112)), v45);
      v28 = *v26;
      MEMORY[0x28223BE20](v27);
      *(&v43 - 2) = v26;

      sub_20B5F85A4(sub_20B606D70, (&v43 - 4), v28, MEMORY[0x277D53E88], sub_20BB5D68C);
      v30 = v29;
      v47 = v18;
      v31 = v26[2];
      v32 = v46;
      v33 = sub_20B52F9E8(v26 + *(v44 + 11), v46, &qword_27C7627E8);
      v44 = &v43;
      MEMORY[0x28223BE20](v33);
      *(&v43 - 8) = v31;
      *(&v43 - 7) = v32;
      *(&v43 - 6) = v23;
      *(&v43 - 5) = v25;
      *(&v43 - 4) = v1;
      *(&v43 - 3) = v34;
      v35 = v48;
      *(&v43 - 2) = v48;
      v36 = sub_20B614634(sub_20B606BD4, (&v43 - 10), v30);

      ObjectType = swift_getObjectType();
      v38 = v1;
      v39 = v47;
      (*(v25 + 64))(v38, v36, v47, ObjectType, v25);
      swift_unknownObjectRelease();

      (*(v16 + 8))(v39, v15);
      sub_20B520158(v26, &qword_27C7627F0);
      sub_20B520158(v32, &qword_27C7627E8);
      v21 = v35;
      v20 = &qword_27C762800;
      return sub_20B520158(v21, v20);
    }

    swift_unknownObjectRelease();
    sub_20B520158(v11, &qword_27C7627F8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v1[3];
    v42 = swift_getObjectType();
    (*(v41 + 64))(v1, MEMORY[0x277D84F90], v18, v42, v41);
    swift_unknownObjectRelease();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B603AEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1365F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v14, &qword_27C762768);
  sub_20B5F9710(v9);
  sub_20B520158(v14, &qword_27C762768);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v20 = &qword_27C771090;
    v21 = v9;
    return sub_20B520158(v21, v20);
  }

  (*(v16 + 32))(v18, v9, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v1[3];
    sub_20B52F9E8(v1 + v19, v11, &qword_27C762768);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = v24;
      sub_20B5DF134(v11, v48, &qword_27C762770);
      v26 = v45;
      v27 = sub_20B601DA8(*(v1 + *(*v1 + 112)), v45);
      v28 = *v26;
      MEMORY[0x28223BE20](v27);
      *(&v43 - 2) = v26;

      sub_20B5F85A4(sub_20B606CC8, (&v43 - 4), v28, MEMORY[0x277D4FF18], sub_20BB5D714);
      v30 = v29;
      v47 = v18;
      v31 = v26[2];
      v32 = v46;
      v33 = sub_20B52F9E8(v26 + *(v44 + 11), v46, &qword_27C762758);
      v44 = &v43;
      MEMORY[0x28223BE20](v33);
      *(&v43 - 8) = v31;
      *(&v43 - 7) = v32;
      *(&v43 - 6) = v23;
      *(&v43 - 5) = v25;
      *(&v43 - 4) = v1;
      *(&v43 - 3) = v34;
      v35 = v48;
      *(&v43 - 2) = v48;
      v36 = sub_20B614660(sub_20B606854, (&v43 - 10), v30);

      ObjectType = swift_getObjectType();
      v38 = v1;
      v39 = v47;
      (*(v25 + 64))(v38, v36, v47, ObjectType, v25);
      swift_unknownObjectRelease();

      (*(v16 + 8))(v39, v15);
      sub_20B520158(v26, &qword_27C762760);
      sub_20B520158(v32, &qword_27C762758);
      v21 = v35;
      v20 = &qword_27C762770;
      return sub_20B520158(v21, v20);
    }

    swift_unknownObjectRelease();
    sub_20B520158(v11, &qword_27C762768);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v1[3];
    v42 = swift_getObjectType();
    (*(v41 + 64))(v1, MEMORY[0x277D84F90], v18, v42, v41);
    swift_unknownObjectRelease();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B604108()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v43 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1365F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v14, &qword_27C762798);
  sub_20B5F9A98(v9);
  sub_20B520158(v14, &qword_27C762798);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v20 = &qword_27C771090;
    v21 = v9;
    return sub_20B520158(v21, v20);
  }

  (*(v16 + 32))(v18, v9, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = v1[3];
    sub_20B52F9E8(v1 + v19, v11, &qword_27C762798);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = v24;
      sub_20B5DF134(v11, v48, &qword_27C7627A0);
      v26 = v45;
      v27 = sub_20B60238C(*(v1 + *(*v1 + 112)), v45);
      v28 = *v26;
      MEMORY[0x28223BE20](v27);
      *(&v43 - 2) = v26;

      sub_20B5F88B8(sub_20B606D00, (&v43 - 4), v28);
      v30 = v29;
      v47 = v18;
      v31 = v26[2];
      v32 = v46;
      v33 = sub_20B52F9E8(v26 + *(v44 + 11), v46, &qword_27C762788);
      v44 = &v43;
      MEMORY[0x28223BE20](v33);
      *(&v43 - 8) = v31;
      *(&v43 - 7) = v32;
      *(&v43 - 6) = v23;
      *(&v43 - 5) = v25;
      *(&v43 - 4) = v1;
      *(&v43 - 3) = v34;
      v35 = v48;
      *(&v43 - 2) = v48;
      v36 = sub_20B61468C(sub_20B606998, (&v43 - 10), v30);

      ObjectType = swift_getObjectType();
      v38 = v1;
      v39 = v47;
      (*(v25 + 64))(v38, v36, v47, ObjectType, v25);
      swift_unknownObjectRelease();

      (*(v16 + 8))(v39, v15);
      sub_20B520158(v26, &qword_27C762790);
      sub_20B520158(v32, &qword_27C762788);
      v21 = v35;
      v20 = &qword_27C7627A0;
      return sub_20B520158(v21, v20);
    }

    swift_unknownObjectRelease();
    sub_20B520158(v11, &qword_27C762798);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v1[3];
    v42 = swift_getObjectType();
    (*(v41 + 64))(v1, MEMORY[0x277D84F90], v18, v42, v41);
    swift_unknownObjectRelease();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B6046FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t (*a11)(void, __n128))
{
  v35 = a7;
  v36 = a8;
  v33 = a6;
  v34 = a4;
  v37 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v18 = a11(0, v15);
  v19 = sub_20C1362C4();
  LOBYTE(a2) = sub_20B8D7150(v19, v20, a2);

  if (a2)
  {
    sub_20B52F9E8(a3, v17, a9);
    v21 = *(v18 - 8);
    if ((*(v21 + 48))(v17, 1, v18) == 1)
    {
      sub_20B520158(v17, a9);
      sub_20C1362C4();
LABEL_12:

LABEL_13:
      v22 = 0;
      goto LABEL_14;
    }

    v23 = sub_20C1362C4();
    v25 = v24;
    (*(v21 + 8))(v17, v18);
    v26 = sub_20C1362C4();
    if (!v25)
    {
      goto LABEL_12;
    }

    if (v23 == v26 && v25 == v27)
    {

      v22 = 1;
      goto LABEL_14;
    }

    v29 = sub_20C13DFF4();

    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }

    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

LABEL_14:
  ObjectType = swift_getObjectType();
  return (*(v37 + 56))(v33, a1, v22, v35, v36, ObjectType);
}

uint64_t sub_20B60495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v29 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v16 = sub_20C133A34();
  LOBYTE(a2) = sub_20B8D7150(v16, v17, a2);

  if (a2)
  {
    sub_20B52F9E8(a3, v14, &qword_27C762788);
    if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
    {
      sub_20B520158(v14, &qword_27C762788);
      sub_20C133A34();
LABEL_12:

LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    v19 = sub_20C133A34();
    v21 = v20;
    sub_20B60693C(v14);
    v22 = sub_20C133A34();
    if (!v21)
    {
      goto LABEL_12;
    }

    if (v19 == v22 && v21 == v23)
    {

      v18 = 1;
      goto LABEL_14;
    }

    v25 = sub_20C13DFF4();

    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

LABEL_14:
  ObjectType = swift_getObjectType();
  return (*(a5 + 56))(v29, a1, v18, v30, v31, ObjectType, a5);
}

uint64_t sub_20B604C08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *(a2 + 8);
  a3(0);
  v4 = sub_20C1362C4();
  v6 = sub_20B8D7150(v4, v5, v3);

  return v6 & 1;
}

uint64_t sub_20B604C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v3 = sub_20C133A34();
  LOBYTE(v2) = sub_20B8D7150(v3, v4, v2);

  return v2 & 1;
}

uint64_t sub_20B604D10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *(a2 + 16);
  a3(0);
  v4 = sub_20C1362C4();
  v6 = sub_20B8D7150(v4, v5, v3);

  return v6 & 1;
}

uint64_t sub_20B604D78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v3 = sub_20C133A34();
  LOBYTE(v2) = sub_20B8D7150(v3, v4, v2);

  return v2 & 1;
}

void *sub_20B604DDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_20B604E74(uint64_t a1, uint64_t a2)
{

  return sub_20B604F74(a1, a2, sub_20B6051D0, sub_20B6051D0);
}

void *sub_20B604EF4(uint64_t a1, uint64_t a2)
{

  return sub_20B604F74(a1, a2, sub_20B605F68, sub_20B605F68);
}

void *sub_20B604F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_20B604DDC(v15, v10, a2, a1, a4);

    MEMORY[0x20F2F6A40](v15, -1, -1);
  }

  return v13;
}

void *sub_20B605150(uint64_t a1, uint64_t a2)
{

  return sub_20B604F74(a1, a2, sub_20B606344, sub_20B606344);
}

uint64_t sub_20B6051D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v56 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v60 = 0;
    v29 = 0;
    v30 = 0xED000073676E6952;
    v31 = 0x7974697669746361;
    v54 = a3 + 56;
    v32 = 1 << *(a3 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v62 = v33 & *(a3 + 56);
    v52 = (v32 + 63) >> 6;
    v64 = a4 + 56;
LABEL_69:
    if (v62)
    {
      v34 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      goto LABEL_76;
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_131;
      }

      if (v29 >= v52)
      {
        break;
      }

      v36 = *(v54 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v62 = (v36 - 1) & v36;
LABEL_76:
        v58 = v34 | (v29 << 6);
        v37 = *(*(v5 + 48) + v58);
        sub_20C13E164();
        sub_20C13CA64();

        result = sub_20C13E1B4();
        v38 = -1 << *(v4 + 32);
        v39 = result & ~v38;
        if (((*(v64 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_69;
        }

        v40 = ~v38;
        v41 = v37;
        while (2)
        {
          v42 = v30;
          v43 = v31;
          switch(*(*(a4 + 48) + v39))
          {
            case 1:
              v42 = 0xE700000000000000;
              v43 = 0x7261426E727562;
              break;
            case 2:
              v42 = 0xE700000000000000;
              v44 = 0x636E65646163;
              goto LABEL_92;
            case 3:
              v42 = 0xE800000000000000;
              v43 = 0x65636E6174736964;
              break;
            case 4:
              v42 = 0xE600000000000000;
              v43 = 0x796772656E65;
              break;
            case 5:
              v43 = 0x7461527472616568;
              v42 = 0xE900000000000065;
              break;
            case 6:
              v42 = 0xE900000000000074;
              v43 = 0x6867696C68676968;
              break;
            case 7:
              v42 = 0xE900000000000079;
              v43 = 0x7469736E65746E69;
              break;
            case 8:
              v42 = 0xE700000000000000;
              v44 = 0x6E696C636E69;
LABEL_92:
              v43 = v44 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 9:
              v42 = 0xE300000000000000;
              v43 = 7172210;
              break;
            case 0xA:
              v42 = 0xE900000000000072;
              v43 = 0x6F74617261706573;
              break;
            case 0xB:
              v43 = 7172211;
              v42 = 0xE300000000000000;
              break;
            case 0xC:
              v42 = 0xE800000000000000;
              v43 = 0x73736572676F7270;
              break;
            case 0xD:
              v42 = 0xE500000000000000;
              v43 = 0x72656D6974;
              break;
            default:
              break;
          }

          v45 = v31;
          v46 = v31;
          v47 = v30;
          switch(v41)
          {
            case 1:
              v30 = 0xE700000000000000;
              if (v43 == 0x7261426E727562)
              {
                goto LABEL_117;
              }

              goto LABEL_118;
            case 2:
              v30 = 0xE700000000000000;
              v48 = 0x636E65646163;
              goto LABEL_122;
            case 3:
              v30 = 0xE800000000000000;
              if (v43 != 0x65636E6174736964)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 4:
              v30 = 0xE600000000000000;
              if (v43 != 0x796772656E65)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 5:
              v30 = 0xE900000000000065;
              if (v43 != 0x7461527472616568)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 6:
              v30 = 0xE900000000000074;
              if (v43 != 0x6867696C68676968)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 7:
              v30 = 0xE900000000000079;
              if (v43 != 0x7469736E65746E69)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 8:
              v30 = 0xE700000000000000;
              v48 = 0x6E696C636E69;
LABEL_122:
              if (v43 != (v48 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 9:
              v30 = 0xE300000000000000;
              if (v43 != 7172210)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 10:
              v30 = 0xE900000000000072;
              v46 = 0x6F74617261706573;
              goto LABEL_116;
            case 11:
              v30 = 0xE300000000000000;
              if (v43 != 7172211)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 12:
              v30 = 0xE800000000000000;
              if (v43 != 0x73736572676F7270)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            case 13:
              v30 = 0xE500000000000000;
              if (v43 != 0x72656D6974)
              {
                goto LABEL_118;
              }

              goto LABEL_117;
            default:
LABEL_116:
              if (v43 != v46)
              {
                goto LABEL_118;
              }

LABEL_117:
              if (v42 != v30)
              {
LABEL_118:
                v49 = sub_20C13DFF4();

                if (v49)
                {
                  goto LABEL_125;
                }

                v39 = (v39 + 1) & v40;
                v30 = v47;
                v31 = v45;
                if (((*(v64 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                {
                  v5 = a3;
                  v4 = a4;
                  goto LABEL_69;
                }

                continue;
              }

LABEL_125:
              *(v56 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
              v50 = __OFADD__(v60++, 1);
              v5 = a3;
              v4 = a4;
              v30 = v47;
              v31 = v45;
              if (!v50)
              {
                goto LABEL_69;
              }

              goto LABEL_133;
          }
        }
      }
    }

    v6 = v60;
LABEL_129:

    return sub_20BC0EA58(v56, a2, v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xED000073676E6952;
    v9 = 1 << *(a4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v57 = v10 & *(a4 + 56);
    v51 = (v9 + 63) >> 6;
    v53 = a4 + 56;
    v63 = a3 + 56;
LABEL_6:
    if (v57)
    {
      v11 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v12 = v11 | (v7 << 6);
      v13 = a4;
      goto LABEL_13;
    }

    v14 = v7;
    v13 = a4;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v51)
      {
        goto LABEL_129;
      }

      v15 = *(v53 + 8 * v7);
      ++v14;
      if (v15)
      {
        v57 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) | (v7 << 6);
LABEL_13:
        v16 = *(*(v13 + 48) + v12);
        sub_20C13E164();
        sub_20C13CA64();

        result = sub_20C13E1B4();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v63 + 8 * (v18 >> 6))) == 0)
        {
          goto LABEL_6;
        }

        v59 = v6;
        v61 = ~v17;
        v21 = v16;
        while (2)
        {
          v22 = v8;
          v23 = 0x7974697669746361;
          switch(*(*(v5 + 48) + v18))
          {
            case 1:
              v22 = 0xE700000000000000;
              v23 = 0x7261426E727562;
              break;
            case 2:
              v22 = 0xE700000000000000;
              v24 = 0x636E65646163;
              goto LABEL_29;
            case 3:
              v22 = 0xE800000000000000;
              v23 = 0x65636E6174736964;
              break;
            case 4:
              v22 = 0xE600000000000000;
              v23 = 0x796772656E65;
              break;
            case 5:
              v23 = 0x7461527472616568;
              v22 = 0xE900000000000065;
              break;
            case 6:
              v22 = 0xE900000000000074;
              v23 = 0x6867696C68676968;
              break;
            case 7:
              v22 = 0xE900000000000079;
              v23 = 0x7469736E65746E69;
              break;
            case 8:
              v22 = 0xE700000000000000;
              v24 = 0x6E696C636E69;
LABEL_29:
              v23 = v24 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 9:
              v22 = 0xE300000000000000;
              v23 = 7172210;
              break;
            case 0xA:
              v22 = 0xE900000000000072;
              v23 = 0x6F74617261706573;
              break;
            case 0xB:
              v23 = 7172211;
              v22 = 0xE300000000000000;
              break;
            case 0xC:
              v22 = 0xE800000000000000;
              v23 = 0x73736572676F7270;
              break;
            case 0xD:
              v22 = 0xE500000000000000;
              v23 = 0x72656D6974;
              break;
            default:
              break;
          }

          v25 = 0x7974697669746361;
          v26 = v8;
          switch(v21)
          {
            case 1:
              v8 = 0xE700000000000000;
              if (v23 == 0x7261426E727562)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            case 2:
              v8 = 0xE700000000000000;
              v27 = 0x636E65646163;
              goto LABEL_59;
            case 3:
              v8 = 0xE800000000000000;
              if (v23 != 0x65636E6174736964)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 4:
              v8 = 0xE600000000000000;
              if (v23 != 0x796772656E65)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 5:
              v8 = 0xE900000000000065;
              if (v23 != 0x7461527472616568)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 6:
              v8 = 0xE900000000000074;
              if (v23 != 0x6867696C68676968)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 7:
              v8 = 0xE900000000000079;
              if (v23 != 0x7469736E65746E69)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 8:
              v8 = 0xE700000000000000;
              v27 = 0x6E696C636E69;
LABEL_59:
              if (v23 != (v27 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 9:
              v8 = 0xE300000000000000;
              if (v23 != 7172210)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 10:
              v8 = 0xE900000000000072;
              v25 = 0x6F74617261706573;
              goto LABEL_53;
            case 11:
              v8 = 0xE300000000000000;
              if (v23 != 7172211)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 12:
              v8 = 0xE800000000000000;
              if (v23 != 0x73736572676F7270)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 13:
              v8 = 0xE500000000000000;
              if (v23 != 0x72656D6974)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            default:
LABEL_53:
              if (v23 != v25)
              {
                goto LABEL_55;
              }

LABEL_54:
              if (v22 != v8)
              {
LABEL_55:
                v28 = sub_20C13DFF4();

                if (v28)
                {
                  goto LABEL_62;
                }

                v18 = (v18 + 1) & v61;
                v19 = v18 >> 6;
                v5 = a3;
                v20 = 1 << v18;
                v8 = v26;
                if ((*(v63 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
                {
                  v6 = v59;
                  goto LABEL_6;
                }

                continue;
              }

LABEL_62:
              v56[v19] |= v20;
              v6 = v59 + 1;
              v5 = a3;
              v8 = v26;
              if (!__OFADD__(v59, 1))
              {
                goto LABEL_6;
              }

              goto LABEL_132;
          }
        }
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B605F68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_20C13E164();

      sub_20C13CA64();
      v26 = sub_20C13E1B4();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_20BC0FA28(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_20C13E164();

      sub_20C13CA64();
      v39 = sub_20C13E1B4();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_20C13DFF4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B606344(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + v31);
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v32);
      result = sub_20C13E1B4();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_20BC11458(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v15);
      result = sub_20C13E1B4();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_20B6066B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B5F7B24(a1, v4, v5, v6);
}

unint64_t sub_20B606778()
{
  result = qword_27C762750;
  if (!qword_27C762750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762750);
  }

  return result;
}

uint64_t sub_20B6068D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B60693C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B606998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20B60495C(a1, v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20B6069D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B606B6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B606C18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, __n128)@<X3>, uint64_t *a5@<X8>)
{
  result = sub_20B6046FC(a1, v5[2], v5[3], v5[4], v5[5], v5[6], v5[7], v5[8], a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MyLibraryEntryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MyLibraryEntryType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20B606EFC()
{
  result = qword_27C762818;
  if (!qword_27C762818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762818);
  }

  return result;
}

char *sub_20B606FA8()
{
  *&v0[OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_panGestureRecognizer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  v2 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_tapGestureRecognizer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PalettePresentationInteraction();
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_panGestureRecognizer;
  v5 = *&v3[OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_panGestureRecognizer];
  v6 = v3;
  [v5 addTarget:v6 action:sel_tapGestureRecognized_];
  [*&v3[v4] setDelegate_];
  [*&v3[v4] _setHysteresis_];
  [*&v3[v4] setMaximumNumberOfTouches_];
  v7 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_tapGestureRecognizer;
  [*&v6[OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_tapGestureRecognizer] addTarget:v6 action:sel_tapGestureRecognized_];
  [*&v6[v7] setDelegate_];

  return v6;
}

id sub_20B607140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B607214(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view);
  if (v5)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view) = 0;
      v13 = 0;

      v11 = *(v1 + v4);
      if (!v11)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_20B5E5C28();
    v6 = v5;
    v7 = a1;
    v8 = sub_20C13D5F4();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
  }

  *(v2 + v4) = a1;
  v10 = a1;

  [v10 addGestureRecognizer_];
  v11 = *(v2 + v4);
  if (!v11)
  {
    return;
  }

LABEL_8:
  v12 = *(v2 + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_tapGestureRecognizer);

  [v11 addGestureRecognizer_];
}

void sub_20B607390(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_view);
  if (v4)
  {
    if (!a1 || (sub_20B5E5C28(), v6 = v4, v7 = a1, v8 = sub_20C13D5F4(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      [v4 removeGestureRecognizer_];
      v9 = *(v2 + v3);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI30PalettePresentationInteraction_tapGestureRecognizer);

        [v9 removeGestureRecognizer_];
      }
    }
  }
}

char *sub_20B6074E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 4.0;
  }

  v14 = &v4[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
  v15 = [v12 layer];
  [v15 setCornerRadius_];

  [v12 setClipsToBounds_];
  *v14 = v12;
  *(v14 + 1) = &off_2822B63E8;
  v16 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton;
  v17 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v18) = v117;
  [v17 setContentCompressionResistancePriority:1 forAxis:v18];
  v115 = 1065353216;
  v116 = 1144750080;
  sub_20C13BB94();
  LODWORD(v19) = v117;
  [v17 setContentHuggingPriority:0 forAxis:v19];

  *&v5[v16] = v17;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v21 = *MEMORY[0x277D76968];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_subtitleLabel;
  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v23 size:0.0];

  [v20 setFont_];
  v29 = objc_opt_self();
  v30 = [v29 whiteColor];
  [v20 setTextColor_];

  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  v31 = [v29 systemBackgroundColor];
  [v20 setBackgroundColor_];

  *&v5[v26] = v20;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  v33 = [v22 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v34 = [v33 fontDescriptorWithSymbolicTraits_];
  if (v34)
  {
    v35 = v34;

    v33 = v35;
  }

  v36 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_titleLabel;
  v37 = [v27 fontWithDescriptor:v33 size:0.0];

  [v32 setFont_];
  [v32 setAllowsDefaultTighteningForTruncation_];
  v38 = [v29 whiteColor];
  [v32 setTextColor_];

  v116 = 1144750080;
  v115 = 1065353216;
  sub_20C13BB94();
  LODWORD(v39) = v117;
  [v32 setContentCompressionResistancePriority:1 forAxis:v39];
  [v32 setLineBreakMode_];
  [v32 setNumberOfLines_];
  v40 = [v29 systemBackgroundColor];
  [v32 setBackgroundColor_];

  *&v5[v36] = v32;
  v41 = &v5[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_layout];
  *v41 = xmmword_20C150920;
  *(v41 + 2) = 0x3FE2000000000000;
  v114.receiver = v5;
  v114.super_class = type metadata accessor for ActionBrickItemCell();
  v42 = objc_msgSendSuper2(&v114, sel_initWithFrame_, a1, a2, a3, a4);
  v43 = *&v42[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton];
  v44 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton;
  v112 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton;
  v45 = v42;
  [v43 addTarget:v45 action:sel_downloadButtonTapped_ forControlEvents:64];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView;
  [v46 addSubview_];

  v48 = [v45 &selRef_setMaximumFractionDigits_];
  v110 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_titleLabel;
  [v48 addSubview_];

  v49 = [v45 &selRef_setMaximumFractionDigits_];
  v111 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_subtitleLabel;
  [v49 addSubview_];

  v50 = [v45 &selRef_setMaximumFractionDigits_];
  [v50 addSubview_];

  v113 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C150930;
  v52 = [*&v45[v47] leadingAnchor];
  v53 = [v45 &selRef_setMaximumFractionDigits_];
  v54 = [v53 leadingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v51 + 32) = v55;
  v56 = [*&v45[v47] trailingAnchor];
  v57 = [v45 &selRef_setMaximumFractionDigits_];
  v58 = [v57 trailingAnchor];

  v59 = [v56 &selRef:v58 alertControllerReleasedDictationButton:? + 5];
  *(v51 + 40) = v59;
  v60 = [*&v45[v47] topAnchor];
  v61 = [v45 &selRef_setMaximumFractionDigits_];
  v62 = [v61 &selRef_setLineBreakMode_];

  v63 = [v60 &selRef:v62 alertControllerReleasedDictationButton:? + 5];
  *(v51 + 48) = v63;
  v64 = [*&v45[v47] widthAnchor];
  v65 = [v45 &selRef_setMaximumFractionDigits_];
  v66 = [v65 widthAnchor];

  v67 = [v64 &selRef:v66 alertControllerReleasedDictationButton:? + 5];
  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v68) = v117;
  [v67 setPriority_];
  *(v51 + 56) = v67;
  v69 = [*&v45[v47] heightAnchor];
  v70 = [*&v45[v47] widthAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 multiplier:0.5625];

  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v72) = v117;
  [v71 setPriority_];
  *(v51 + 64) = v71;
  v73 = [*&v45[v110] leadingAnchor];
  v74 = [*&v45[v47] leadingAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v51 + 72) = v75;
  v76 = [*&v45[v110] trailingAnchor];
  v77 = [*&v45[v47] trailingAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v79) = v117;
  [v78 setPriority_];
  *(v51 + 80) = v78;
  v80 = [*&v45[v110] topAnchor];
  v81 = [*&v45[v47] bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:10.0];

  *(v51 + 88) = v82;
  v83 = [*&v45[v111] leadingAnchor];
  v84 = [*&v45[v110] leadingAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v51 + 96) = v85;
  v86 = [*&v45[v111] trailingAnchor];
  v87 = [*&v45[v110] trailingAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v89) = v117;
  [v88 setPriority_];
  *(v51 + 104) = v88;
  v90 = [*&v45[v111] topAnchor];
  v91 = [*&v45[v110] bottomAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v51 + 112) = v92;
  v93 = [*&v42[v112] leadingAnchor];
  v94 = [*&v45[v111] leadingAnchor];
  v95 = [v93 &selRef:v94 alertControllerReleasedDictationButton:? + 5];

  *(v51 + 120) = v95;
  v96 = [*&v42[v112] trailingAnchor];
  v97 = [*&v45[v111] trailingAnchor];
  v98 = [v96 constraintLessThanOrEqualToAnchor_];

  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v99) = v117;
  [v98 setPriority_];
  *(v51 + 128) = v98;
  v100 = [*&v42[v112] topAnchor];
  v101 = [*&v45[v111] bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:24.0];

  *(v51 + 136) = v102;
  v103 = [*&v42[v112] bottomAnchor];
  v104 = [v45 contentView];

  v105 = [v104 bottomAnchor];
  v106 = [v103 constraintEqualToAnchor_];

  v115 = 1065353216;
  v116 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v107) = v117;
  [v106 setPriority_];
  *(v51 + 144) = v106;
  sub_20B51C88C(0, &qword_281100500);
  v108 = sub_20C13CC54();

  [v113 activateConstraints_];

  return v45;
}

uint64_t sub_20B60848C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ActionBrickItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

id sub_20B608738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActionBrickItemCell()
{
  result = qword_281102EE8;
  if (!qword_281102EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B608860()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B608930(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v222 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v205 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v206 = &v176 - v10;
  v204 = v11;
  MEMORY[0x28223BE20](v12);
  v207 = &v176 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v216 = &v176 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v219 = *(v16 - 8);
  v220 = v16;
  MEMORY[0x28223BE20](v16);
  v203 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v17;
  MEMORY[0x28223BE20](v18);
  v217 = &v176 - v19;
  v214 = sub_20C1391C4();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v215 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_20C138A64();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v218 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v212 = &v176 - v23;
  v24 = sub_20C13C554();
  v224 = *(v24 - 8);
  v225 = v24;
  MEMORY[0x28223BE20](v24);
  v223 = (&v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = sub_20C137C24();
  v228 = *(v230 - 1);
  MEMORY[0x28223BE20](v230);
  v226 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = v26;
  MEMORY[0x28223BE20](v27);
  v229 = &v176 - v28;
  v29 = sub_20C136CD4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134E44();
  MEMORY[0x28223BE20](v33 - 8);
  v227 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C134014();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v40 == 33)
  {
    sub_20BA1D9BC();
    sub_20B60A000(3, 3u, a2 & 1, &OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton);
    [*&v2[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_titleLabel] setText_];
    [*&v2[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_subtitleLabel] setText_];
    v119 = *&v2[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
    v120 = [v119 layer];
    [v120 setBorderColor_];

    v230 = [v119 layer];
    [v230 setBorderWidth_];
    v121 = v230;
  }

  else if (v40 == 32)
  {
    v190 = v30;
    v198 = v29;
    v200 = v2;
    v197 = a2;
    v41 = v37;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v43 = swift_projectBox();
    v44 = v43 + *(v42 + 64);
    v45 = *v44;
    v46 = *(v44 + 8);
    v48 = *(v44 + 16);
    v47 = *(v44 + 24);
    v201 = v32;
    v49 = *(v44 + 32);
    v50 = *(v44 + 40);
    v51 = v43 + *(v42 + 96);
    v189 = *v51;
    v188 = *(v51 + 8);
    v195 = v36;
    v52 = *(v36 + 16);
    v196 = v41;
    v52(v39, v43, v41);
    v192 = v45;
    v53 = v46;
    v54 = v48;
    v193 = v47;

    v191 = v50;

    v55 = v227;
    v194 = v39;
    sub_20C133F04();
    v185 = sub_20C138054();
    v222 = v56;
    sub_20C134E34();
    v57 = v229;
    sub_20C136CB4();
    v184 = sub_20C136CC4();
    v59 = v58;
    sub_20B51C88C(0, &qword_281100530);
    v60 = sub_20C13D374();
    v62 = v223;
    v61 = v224;
    *v223 = v60;
    v63 = v225;
    (*(v61 + 104))(v62, *MEMORY[0x277D85200], v225);
    LOBYTE(v42) = sub_20C13C584();
    (*(v61 + 8))(v62, v63);
    if (v42)
    {
      v199 = v59;
      v187 = v54;
      v223 = v53;
      v64 = v200;
      v66 = *&v200[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
      v65 = *&v200[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v66 setContentMode_];
      v68 = sub_20BA66C54(v57, v66, v65, 0);
      v186 = v66;
      v224 = ObjectType;
      v225 = v65;
      if (v68)
      {
        v183 = v49;
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v70 = v228;
        v71 = *(v228 + 16);
        v72 = v57;
        v73 = v230;
        v181 = v228 + 16;
        v179 = v71;
        v71(v226, v72, v230);
        v74 = *(v70 + 80);
        v75 = (v74 + 24) & ~v74;
        v176 = v221 + 7;
        v76 = (v221 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v182 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v180 = v74;
        v79 = swift_allocObject();
        *(v79 + 16) = v69;
        v80 = v70;
        v81 = v185;
        v82 = *(v80 + 32);
        v178 = v80 + 32;
        v177 = v82;
        v82(v79 + v75, v226, v73);
        v83 = (v79 + v76);
        v84 = v199;
        *v83 = v184;
        v83[1] = v84;
        v85 = (v79 + v77);
        v86 = v222;
        *v85 = v81;
        v85[1] = v86;
        *(v79 + v78) = 2;
        v87 = v79 + v182;
        *v87 = MEMORY[0x277D84F90];
        *(v87 + 8) = 0;
        v88 = (v79 + ((v78 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v88 = 0;
        v88[1] = 0;
        v89 = v225;
        v90 = *(v225 + 152);

        v91 = v224;
        v90(sub_20B60A514, v79, v224, v89);

        [v66 bounds];
        if (v92 <= 0.0)
        {

          v64 = v200;
          v134 = v198;
          v57 = v229;
          v96 = v201;
        }

        else
        {
          v94 = v93;
          v95 = v89;
          v96 = v201;
          if (v93 <= 0.0)
          {

            v64 = v200;
          }

          else
          {
            v97 = v92;
            v182 = ~v180;
            (*(v95 + 120))(0, v91, v95);
            v98 = v212;
            v100 = v229;
            v99 = v230;
            v179(v212, v229, v230);
            (*(v228 + 56))(v98, 0, 1, v99);
            (*(v95 + 16))(v98, v91, v95);
            sub_20B51C88C(0, &qword_27C762070);
            v101 = v100;
            sub_20C137BC4();
            v102 = sub_20C13D5A4();
            [v66 setBackgroundColor_];

            (*(v95 + 176))(COERCE_DOUBLE(*&v97), COERCE_DOUBLE(*&v94), 0, v91, v95);
            v103 = swift_allocObject();
            v64 = v200;
            swift_unknownObjectWeakInit();
            v104 = v226;
            v105 = v101;
            v106 = v179;
            v179(v226, v105, v99);
            v107 = (v180 + 16) & v182;
            v108 = (v176 + v107) & 0xFFFFFFFFFFFFFFF8;
            v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
            v110 = swift_allocObject();
            v111 = v110 + v107;
            v112 = v230;
            v177(v111, v104, v230);
            *(v110 + v108) = v103;
            v113 = (v110 + v109);
            *v113 = v97;
            v113[1] = v94;
            v212 = v110;
            v114 = (v110 + ((v109 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v114 = 0;
            v114[1] = 0;
            v106(v104, v229, v112);
            (*(v213 + 104))(v215, *MEMORY[0x277D542A8], v214);

            v115 = v218;
            sub_20C138A54();
            v116 = v216;
            sub_20B5F1910(v115, v216);
            v118 = v219;
            v117 = v220;
            if ((*(v219 + 48))(v116, 1, v220) != 1)
            {
              v145 = v118;
              v215 = *(v118 + 32);
              (v215)(v217, v116, v117);
              v146 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v179(v104, v229, v230);
              v147 = v117;
              v148 = (v180 + 40) & v182;
              v149 = v148 + v221;
              v150 = v104;
              v151 = (v148 + v221) & 0xFFFFFFFFFFFFFFF8;
              v152 = swift_allocObject();
              *(v152 + 2) = v146;
              v152[3] = v97;
              v152[4] = v94;
              v177(v152 + v148, v150, v230);
              *(v152 + v149) = 0;
              v153 = v152 + v151;
              *(v153 + 1) = 0;
              *(v153 + 2) = 0;
              v154 = swift_allocObject();
              *(v154 + 16) = sub_20B60A6A8;
              *(v154 + 24) = v152;
              v155 = v203;
              (*(v145 + 16))(v203, v217, v147);
              v156 = (*(v145 + 80) + 16) & ~*(v145 + 80);
              v157 = (v202 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
              v158 = swift_allocObject();
              (v215)(v158 + v156, v155, v147);
              v159 = (v158 + v157);
              *v159 = sub_20B5F67A4;
              v159[1] = v154;
              v160 = v206;
              sub_20C137C94();
              v161 = swift_allocObject();
              v162 = v212;
              *(v161 + 16) = sub_20B60A5EC;
              *(v161 + 24) = v162;
              v163 = swift_allocObject();
              *(v163 + 16) = sub_20B5F67D4;
              *(v163 + 24) = v161;
              v164 = v208;
              v165 = v205;
              v166 = v209;
              (*(v208 + 16))(v205, v160, v209);
              v167 = (*(v164 + 80) + 16) & ~*(v164 + 80);
              v168 = (v204 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
              v169 = swift_allocObject();
              (*(v164 + 32))(v169 + v167, v165, v166);
              v170 = (v169 + v168);
              *v170 = sub_20B5DF204;
              v170[1] = v163;

              v171 = v207;
              sub_20C137C94();
              v172 = *(v164 + 8);
              v172(v160, v166);
              v173 = sub_20C137CB4();
              v174 = swift_allocObject();
              *(v174 + 16) = 0;
              *(v174 + 24) = 0;
              v173(sub_20B52347C, v174);

              v175 = v230;

              v172(v171, v166);
              v96 = v201;
              (*(v219 + 8))(v217, v220);
              (*(v210 + 8))(v218, v211);
              v133 = v175;
              v134 = v198;
              v57 = v229;
              v55 = v227;
              goto LABEL_20;
            }

            sub_20B520158(v116, &unk_27C766670);
            sub_20BA1D9BC();

            (*(v210 + 8))(v115, v211);
          }

          v134 = v198;
          v57 = v229;
        }

        v55 = v227;
        v133 = v230;
      }

      else
      {

        v133 = v230;
        v134 = v198;
        v96 = v201;
      }

LABEL_20:
      (*(v228 + 8))(v57, v133);
      (*(v190 + 8))(v96, v134);

      sub_20B60B124(v55, MEMORY[0x277D51268]);
      v135 = v223;
      [*&v64[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_subtitleLabel] setAttributedText_];
      v136 = v192;
      [*&v64[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_titleLabel] setAttributedText_];
      v137 = v194;
      v138 = sub_20C133EB4() > 0;
      v139 = v225;
      (*(v225 + 264))(v138, v224, v225);
      v140 = sub_20C133E54();
      (*(v139 + 296))(v140);

      sub_20B60A000(v189, v188, v197 & 1, &OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton);
      v141 = sub_20C133FF4();
      v143 = v142;
      LOBYTE(v139) = v144;
      sub_20B5F09BC(v141, v142, v144);
      sub_20B584078(v141, v143, v139);

      (*(v195 + 8))(v137, v196);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v122 = v2;
    v123 = sub_20C13BB74();
    v124 = sub_20C13D1D4();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v231 = a1;
      v232 = v127;
      *v125 = 138543618;
      *(v125 + 4) = v122;
      *v126 = v122;
      *(v125 + 12) = 2082;
      v128 = sub_20B5F66D0();
      v129 = v122;
      v130 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v128);
      v132 = sub_20B51E694(v130, v131, &v232);

      *(v125 + 14) = v132;
      _os_log_impl(&dword_20B517000, v123, v124, "Attempted to configure %{public}@ with item: %{public}s", v125, 0x16u);
      sub_20B520158(v126, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v126, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x20F2F6A40](v127, -1, -1);
      MEMORY[0x20F2F6A40](v125, -1, -1);
    }

    (*(v222 + 8))(v7, v5);
  }
}

uint64_t sub_20B60A000(uint64_t a1, unsigned __int8 a2, char a3, void *a4)
{
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v13 = v4;
  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v46 = v9;
    v17 = v16;
    v45 = swift_slowAlloc();
    v48 = v45;
    *v17 = 136446466;
    v18 = [v13 description];
    HIDWORD(v43) = v15;
    v19 = v18;
    v20 = sub_20C13C954();
    v44 = v10;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = v20;
    v47 = a4;
    v26 = v25;

    v27 = v24;
    a3 = v23;
    a2 = v22;
    a1 = v21;
    v28 = sub_20B51E694(v27, v26, &v48);

    *(v17 + 4) = v28;
    *(v17 + 12) = 2082;
    v29 = sub_20BCFF494(v21, a2);
    v31 = sub_20B51E694(v29, v30, &v48);

    *(v17 + 14) = v31;
    a4 = v47;
    _os_log_impl(&dword_20B517000, v14, BYTE4(v43), "[DownloadButton] Updating download button state in %{public}s to %{public}s", v17, 0x16u);
    v32 = v45;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v32, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);

    result = (*(v44 + 8))(v12, v46);
  }

  else
  {

    result = (*(v10 + 8))(v12, v9);
  }

  v34 = *&v13[*a4];
  v35 = &v34[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
  v36 = *&v34[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
  v37 = v34[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
  if (v37 <= 1)
  {
    if (v34[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
    {
      if (a2 != 1 || ((LODWORD(v36) ^ a1) & 1) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (a2 || LOBYTE(v36) != a1)
    {
      goto LABEL_22;
    }
  }

  else if (v37 == 2)
  {
    if (a2 != 2 || v36 != *&a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v37 == 255)
    {
LABEL_22:
      *v35 = *&a1;
      v35[8] = a2;
      sub_20C010054(a1, a2, 2.0);
      v39 = v38;
      v41 = v40;
      ObjectType = swift_getObjectType();
      sub_20C0DC2BC(v39, a3 & 1, v34, ObjectType, v41);
      return swift_unknownObjectRelease();
    }

    if (*&v36 <= 1)
    {
      if (v36 == 0.0)
      {
        if (a2 != 3 || *&a1 != 0.0)
        {
          goto LABEL_22;
        }
      }

      else if (a2 != 3 || a1 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (*&v36 == 2)
    {
      if (a2 != 3 || a1 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (*&v36 == 3)
    {
      if (a2 != 3 || a1 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (a2 != 3 || a1 != 4)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_20B60A3E8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B60A434@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B60A48C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B60A514()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3995C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B60A5EC(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62FE0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B60A6A8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F26E8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20B60A784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B60A84C(void *a1)
{
  v2 = sub_20C1380F4();
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v3 = 5;
  }

  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();

  return sub_20B72097C(v3, 1.0, v5);
}

void sub_20B60A938()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v5 = 16.0;
  }

  else
  {
    v5 = 4.0;
  }

  v6 = (v1 + OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView);
  v7 = [v4 layer];
  [v7 setCornerRadius_];

  [v4 setClipsToBounds_];
  *v6 = v4;
  v6[1] = &off_2822B63E8;
  v8 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_downloadButton;
  v9 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v10) = v34;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  sub_20C13BB94();
  LODWORD(v11) = v34;
  [v9 setContentHuggingPriority:0 forAxis:v11];

  *(v1 + v8) = v9;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v13 = *MEMORY[0x277D76968];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_subtitleLabel;
  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v15 size:0.0];

  [v12 setFont_];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v12 setTextColor_];

  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  v23 = [v21 systemBackgroundColor];
  [v12 setBackgroundColor_];

  *(v1 + v18) = v12;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = [v14 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_titleLabel;
  v29 = [v19 fontWithDescriptor:v25 size:0.0];

  [v24 setFont_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  v30 = [v21 whiteColor];
  [v24 setTextColor_];

  sub_20C13BB94();
  LODWORD(v31) = v34;
  [v24 setContentCompressionResistancePriority:1 forAxis:v31];
  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  v32 = [v21 systemBackgroundColor];
  [v24 setBackgroundColor_];

  *(v1 + v28) = v24;
  v33 = v1 + OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_layout;
  *v33 = xmmword_20C150920;
  *(v33 + 16) = 0x3FE2000000000000;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B60AF2C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

uint64_t sub_20B60B124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20B60B184()
{
  result = qword_27C768270;
  if (!qword_27C768270)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768270);
  }

  return result;
}

id sub_20B60B1DC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 112);
    v15[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 96);
    v15[7] = v4;
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 128);
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 48);
    v15[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 32);
    v15[3] = v5;
    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 80);
    v15[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 64);
    v15[5] = v6;
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout + 16);
    v15[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout);
    v15[1] = v7;
    v8 = objc_allocWithZone(type metadata accessor for VideoBrickContentView());
    sub_20B60C224(v15, v14);
    v9 = v0;
    v10 = sub_20BCFA32C(v15, 0.0, 0.0, 0.0, 0.0);
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v9 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_20B60B2D0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView] = 0;
  v11 = sub_20C1380F4();
  v12 = 10.0;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 == 1)
  {
    v12 = 15.0;
LABEL_4:
    v13 = *MEMORY[0x277CDA138];
    v14 = &v4[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout];
    __asm { FMOV            V2.2D, #5.0 }

    *v14 = xmmword_20C150A50;
    *(v14 + 1) = _Q2;
    *(v14 + 4) = 0x4014000000000000;
    *(v14 + 5) = v13;
    *(v14 + 6) = 0x4020000000000000;
    *(v14 + 7) = v12;
    *(v14 + 8) = v12;
    *(v14 + 9) = v12;
    *(v14 + 5) = xmmword_20C150A60;
    *(v14 + 6) = _Q2;
    *(v14 + 7) = _Q2;
    *(v14 + 16) = 0x4014000000000000;
    v31.receiver = v4;
    v31.super_class = type metadata accessor for VideoBrickRowCell();
    v20 = v13;
    v21 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
    sub_20B60BAC8();
    v22 = sub_20B60B1DC();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = &v22[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
    v25 = *&v22[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
    *v24 = sub_20B60C40C;
    v24[1] = v23;

    sub_20B583ECC(v25);

    v26 = *&v21[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView];

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v28 = &v26[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler];
    v29 = *&v26[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler];
    *v28 = sub_20B60C414;
    v28[1] = v27;

    sub_20B583ECC(v29);

    return v21;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B60B598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 168))(v7, a1, ObjectType, v9);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B5F6F04();
        v12 = swift_allocError();
        *(swift_allocObject() + 16) = v12;
        v13 = v12;
        sub_20B51C88C(0, &qword_27C7626E8);
        sub_20C137CA4();

        swift_unknownObjectRelease();
      }

      v11 = 0;
    }

    else
    {

      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  return (*(*(v14 - 8) + 56))(a2, v11, 1, v14);
}

uint64_t sub_20B60B778@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = v8 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 176))(v9, ObjectType, v11, a2, a3);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B5F6F04();
        v14 = swift_allocError();
        *(swift_allocObject() + 16) = v14;
        v15 = v14;
        sub_20B51C88C(0, &qword_27C7626E8);
        sub_20C137CA4();

        swift_unknownObjectRelease();
      }

      v13 = 0;
    }

    else
    {

      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  return (*(*(v16 - 8) + 56))(a1, v13, 1, v16);
}

void sub_20B60BAC8()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 setClipsToBounds_];

  v3 = [v0 contentView];
  v4 = [v3 layer];

  v5 = &v1[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout];
  [v4 setCornerCurve_];

  v6 = [v1 contentView];
  v7 = [v6 layer];

  [v7 setCornerRadius_];
  v8 = [v1 contentView];
  v9 = sub_20B60B1DC();
  [v8 addSubview_];

  v10 = objc_opt_self();
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView];
  v12 = [v1 contentView];
  v14 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v15 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v17 = [v11 leadingAnchor];
  v18 = [v12 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v13];

  LODWORD(v20) = 1148846080;
  [v19 setPriority_];
  v21 = v19;
  v22 = [v11 trailingAnchor];
  v23 = [v12 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v16];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  v26 = v24;
  v27 = [v11 topAnchor];
  v28 = [v12 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v14];

  LODWORD(v30) = 1148846080;
  [v29 setPriority_];
  v31 = [v11 bottomAnchor];
  v32 = [v12 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-v15];

  LODWORD(v34) = 1148846080;
  [v33 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14FE90;
  *(v35 + 32) = v21;
  *(v35 + 40) = v26;
  *(v35 + 48) = v29;
  *(v35 + 56) = v33;
  v36 = v29;

  sub_20B51C88C(0, &qword_281100500);
  v37 = sub_20C13CC54();

  [v10 activateConstraints_];
}

id sub_20B60BEFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoBrickRowCell()
{
  result = qword_2811032A0;
  if (!qword_2811032A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B60C01C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B60C0CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B60C118@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B60C170(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B60C1D0(unint64_t a1)
{
  v2 = sub_20B60B1DC();
  sub_20BCFB208(a1);
}

void sub_20B60C280()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell____lazy_storage___videoBrickContentView) = 0;
  v3 = sub_20C1380F4();
  if ((v3 - 2) >= 2)
  {
    v4 = *MEMORY[0x277CDA138];
    if (v3)
    {
      v5 = 15.0;
    }

    else
    {
      v5 = 10.0;
    }

    v6 = v0 + OBJC_IVAR____TtC9SeymourUI17VideoBrickRowCell_layout;
    __asm { FMOV            V2.2D, #5.0 }

    *v6 = xmmword_20C150A50;
    *(v6 + 16) = _Q2;
    *(v6 + 32) = 0x4014000000000000;
    *(v6 + 40) = v4;
    *(v6 + 48) = 0x4020000000000000;
    *(v6 + 56) = v5;
    *(v6 + 64) = v5;
    *(v6 + 72) = v5;
    *(v6 + 80) = xmmword_20C150A60;
    *(v6 + 96) = _Q2;
    *(v6 + 128) = 0x4014000000000000;
    *(v6 + 112) = _Q2;
  }

  sub_20C13DE24();
  __break(1u);
}

char *sub_20B60C478(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_layout] = 0x4050000000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_metadataEntriesView;
  type metadata accessor for MetadataEntriesView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setAlpha_];
  type metadata accessor for UILayoutPriority(0);
  v68 = 1144750080;
  v67 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v16) = v69;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle_];
  [v18 pointSize];
  v20 = v19;

  v21 = [v17 systemFontOfSize:v20 weight:*MEMORY[0x277D743F8]];
  [v15 setFont_];

  [v15 setAllowsDefaultTighteningForTruncation_];
  v22 = sub_20BD518BC();

  [v22 setLineBreakMode_];
  [v22 setNumberOfLines_];
  *&v5[v14] = v22;
  v66.receiver = v5;
  v66.super_class = type metadata accessor for TVMetadataSectionCell();
  v23 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = [v23 contentView];
  v25 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_titleLabel;
  [v24 addSubview_];

  v26 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_metadataEntriesView;
  v27 = *&v23[OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_metadataEntriesView];
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  v29 = &v27[OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_actionHandler];
  v30 = *&v27[OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_actionHandler];
  *v29 = sub_20B60E370;
  v29[1] = v28;
  v31 = v23;
  v32 = v27;
  sub_20B583ECC(v30);

  v33 = [v31 &selRef_setMaximumFractionDigits_];
  [v33 addSubview_];

  v65 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C150AE0;
  v35 = [*&v23[v25] leadingAnchor];
  v36 = [v31 &selRef_setMaximumFractionDigits_];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v38;
  v39 = [*&v23[v25] trailingAnchor];
  v40 = [v31 &selRef_setMaximumFractionDigits_];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v34 + 40) = v42;
  v43 = [*&v23[v25] topAnchor];
  v44 = [v31 &selRef_setMaximumFractionDigits_];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v34 + 48) = v46;
  v47 = [*&v23[v26] firstBaselineAnchor];
  v48 = [*&v23[v25] lastBaselineAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:64.0];

  *(v34 + 56) = v49;
  v50 = [*&v23[v26] leadingAnchor];
  v51 = [v31 &selRef_setMaximumFractionDigits_];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v34 + 64) = v53;
  v54 = [*&v23[v26] trailingAnchor];
  v55 = [v31 &selRef_setMaximumFractionDigits_];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v34 + 72) = v57;
  v58 = [*&v23[v26] bottomAnchor];
  v59 = [v31 &selRef_setMaximumFractionDigits_];

  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor_];

  v67 = 1065353216;
  v68 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v62) = v69;
  [v61 setPriority_];
  *(v34 + 80) = v61;
  sub_20B51C88C(0, &qword_281100500);
  v63 = sub_20C13CC54();

  [v65 activateConstraints_];

  return v31;
}

uint64_t sub_20B60CC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MetadataAction();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B60E378(a1, v16, type metadata accessor for MetadataAction);
  sub_20B60E3E0(v16, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_20B60E378(v13, v10, type metadata accessor for MetadataEntry);
    v19 = swift_storeEnumTagMultiPayload();
    *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
    *(&v26 - 4) = 0;
    *(&v26 - 24) = 1;
    *(&v26 - 2) = v10;
    *(&v26 - 1) = v18;
    v21 = [*(v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v21)
    {
      v22 = v21;
      sub_20C1331E4();

      sub_20C0C1CDC(v7, sub_20B5E27BC);
      (*(v5 + 8))(v7, v4);
    }

    swift_unknownObjectRelease();
    sub_20B60E444(v13, type metadata accessor for MetadataEntry);
    v23 = type metadata accessor for ShelfItemAction;
    v24 = v10;
  }

  else
  {
    v23 = type metadata accessor for MetadataEntry;
    v24 = v13;
  }

  return sub_20B60E444(v24, v23);
}

void sub_20B60D0BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v2 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v15 = sub_20B8E9218(v14);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v20 + 2))(v18, a2 & 1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v5;
  v29 = sub_20B60E4A8;
  v30 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v28 = &block_descriptor_21;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v22 animateWithDuration:v24 animations:v21];
  _Block_release(v24);
}

void sub_20B60D3B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v15 = sub_20B8E9218(v14);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20B60E05C;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_1;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20B60D718()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_titleLabel);
}

id sub_20B60D788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVMetadataSectionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVMetadataSectionCell()
{
  result = qword_27C762948;
  if (!qword_27C762948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B60D890()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B60D958(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B60D9A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B60D9FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B60DA60(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetadataEntry();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762958);
  MEMORY[0x28223BE20](v11);
  v13 = (&v58 - v12);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x25)
  {
    sub_20C13B534();

    v22 = v1;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v3;
      v27 = v26;
      v28 = swift_slowAlloc();
      v62[0] = v28;
      *v25 = 138543618;
      *(v25 + 4) = v22;
      *v27 = v22;
      *(v25 + 12) = 2082;
      v62[3] = a1;
      v29 = sub_20B5F66D0();
      v30 = v22;
      v31 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v29);
      v33 = sub_20B51E694(v31, v32, v62);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_20B517000, v23, v24, "Attempted to configure %{public}@ with item: %{public}s", v25, 0x16u);
      sub_20B520158(v27, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);

      (*(v4 + 8))(v6, v61);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    return;
  }

  v59 = v7;
  v60 = v8;
  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_titleLabel];
  v16 = sub_20C13C914();
  [v15 setText_];

  v17 = *(v14 + 16);
  v18 = OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentEntries;
  v61 = *&v1[OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_metadataEntriesView];
  if (v17 != *(*(v61 + OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentEntries) + 16))
  {
LABEL_40:
    sub_20C0FF5A0(v14);
    return;
  }

  if (!v17)
  {
    return;
  }

  v19 = 0;
  v20 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v60 = *(v60 + 72);
  v21 = v14 + v20;
  do
  {
    v37 = (v13 + *(v11 + 48));
    *v13 = v19;
    sub_20B60E378(v14 + v20, v37, type metadata accessor for MetadataEntry);
    v38 = *(v61 + v18);
    if (v19 >= *(v38 + 16))
    {
      __break(1u);
      return;
    }

    v40 = v37[1];
    v39 = v37[2];
    v41 = v37[3];
    v42 = v38 + v20;
    v44 = *(v38 + v20 + 8);
    v43 = *(v42 + 16);
    v45 = *(v42 + 24);
    v46 = v44 >> 62;
    if (v40 >> 62)
    {
      if (v40 >> 62 != 1)
      {
        if (v40 == 0x8000000000000000 && (v41 | v39) == 0)
        {
          v34 = v45 | v43;
          v35 = v46 == 2 && v44 == 0x8000000000000000;
        }

        else
        {
          v34 = v45 | v43;
          v35 = v46 == 2 && v44 == 0x8000000000000001;
        }

        if (!v35 || v34 != 0)
        {
LABEL_39:
          sub_20B520158(v13, &qword_27C762958);
          goto LABEL_40;
        }

LABEL_15:
        sub_20B520158(v13, &qword_27C762958);
        goto LABEL_16;
      }

      if (v46 != 1)
      {
        goto LABEL_39;
      }
    }

    else if (v46)
    {
      goto LABEL_39;
    }

    if ((v44 ^ v40))
    {
      goto LABEL_39;
    }

    if (v39 == v43 && v41 == v45)
    {
      goto LABEL_15;
    }

    v48 = sub_20C13DFF4();
    sub_20B520158(v13, &qword_27C762958);
    if ((v48 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_16:
    ++v19;
    v20 += v60;
  }

  while (v17 != v19);
  v50 = *(v14 + 16);
  if (v50)
  {
    v51 = *(v59 + 28);
    v52 = OBJC_IVAR____TtC9SeymourUI19MetadataEntriesView_currentViews;
    swift_beginAccess();
    do
    {
      sub_20B60E378(v21, v10, type metadata accessor for MetadataEntry);
      v53 = *(v61 + v52);
      if (*(v53 + 16))
      {

        v54 = sub_20B65AAD8(&v10[v51]);
        if (v55)
        {
          v56 = *(*(v53 + 56) + 16 * v54 + 8);
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          (*(v56 + 16))(v10, ObjectType, v56);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      sub_20B60E444(v10, type metadata accessor for MetadataEntry);
      v21 += v60;
      --v50;
    }

    while (v50);
  }
}

id sub_20B60E060()
{
  v1 = *(v0 + 16);
  sub_20C0FF3BC(*(v0 + 24));

  return [v1 layoutIfNeeded];
}

void sub_20B60E0AC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_layout) = 0x4050000000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_metadataEntriesView;
  type metadata accessor for MetadataEntriesView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI21TVMetadataSectionCell_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setAlpha_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v8) = v15;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v10 pointSize];
  v12 = v11;

  v13 = [v9 systemFontOfSize:v12 weight:*MEMORY[0x277D743F8]];
  [v7 setFont_];

  [v7 setAllowsDefaultTighteningForTruncation_];
  v14 = sub_20BD518BC();

  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  *(v1 + v6) = v14;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B60E378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B60E3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B60E444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B60E4B0()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 48) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13A6A4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v2);
  return v0;
}

uint64_t sub_20B60E638()
{
  v0 = sub_20C138184();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A694();
    sub_20B60E88C();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B60E744(double a1, double a2, double a3)
{
  *(v3 + 80) = 0;
  v5 = a1 + a3;
  v6 = a1 + a2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = 0;
  v7 = ceil(v6 - *(v3 + 88));
  v8 = v6 - v5;
  v9 = v6 - v5;
  if (v6 - v5 >= v7)
  {
    v9 = 0.0;
    if (v7 >= 0.0)
    {
      v9 = fabs(v7);
    }
  }

  if (v9 < v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 - v5;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v9 >= v8, ObjectType, v11, a3, v10);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v3 + 40);
    v15 = swift_getObjectType();
    (*(v14 + 24))(v9 >= v8, v15, v14, a3, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B60E88C()
{
  result = sub_20C138174();
  if ((result & 0x100000000) == 0)
  {
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v2 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        (*(v2 + 40))(ObjectType, v2);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v4 = *(v0 + 40);
        v5 = swift_getObjectType();
        (*(v4 + 40))(v5, v4);
LABEL_12:

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v0 + 24);
      v7 = swift_getObjectType();
      (*(v6 + 48))(v7, v6);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v0 + 40);
      v9 = swift_getObjectType();
      (*(v8 + 48))(v9, v8);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_20B60E9C8(double a1)
{
  *(v1 + 88) = a1;
  if ((*(v1 + 72) & 1) == 0 && *(v1 + 80) != a1)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 64);
    v4 = v3 - v2;
    if (v3 - v2 <= 0.0)
    {
      sub_20C13DE24();
      __break(1u);
    }

    else
    {
      *(v1 + 80) = a1;
      v6 = ceil(v3 - a1);
      v7 = v3 - v2;
      if (v4 >= v6)
      {
        v8 = v6 < 0.0;
        v9 = fabs(v6);
        if (v8)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v9;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v10 + 16))(ObjectType, v10, v4, v7);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v1 + 40);
        v13 = swift_getObjectType();
        (*(v12 + 16))(v13, v12, v4, v7);
        swift_unknownObjectRelease();
      }

      v14 = ceil(v3 - (a1 + 0.1));
      v15 = v4;
      if (v4 >= v14)
      {
        v15 = 0.0;
        if (v14 >= 0.0)
        {
          v15 = fabs(v14);
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v1 + 24);
        v17 = swift_getObjectType();
        (*(v16 + 8))(v17, v16, v4, v15);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v1 + 40);
        v19 = swift_getObjectType();
        (*(v18 + 8))(v19, v18, v4, v15);
        swift_unknownObjectRelease();
      }

      if (v7 <= 0.0)
      {
        *(v1 + 56) = 0;
        *(v1 + 64) = 0;
        *(v1 + 72) = 1;
        *(v1 + 80) = 0;
      }
    }
  }
}

uint64_t sub_20B60EBF0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_20B60EC64()
{
  type metadata accessor for SessionInstructionsPresenter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v3)
  {
    v4 = [v3 imageWithRenderingMode_];

    return v4;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

unint64_t LocalizationTable.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x617A696C61636F4CLL;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

SeymourUI::LocalizationTable_optional __swiftcall LocalizationTable.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C13DEA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20B60EED4()
{
  result = qword_27C762960;
  if (!qword_27C762960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762960);
  }

  return result;
}

uint64_t sub_20B60EF28()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20B60F01C()
{
  sub_20C13CA64();
}

uint64_t sub_20B60F0FC()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

void sub_20B60F1F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x617A696C61636F4CLL;
  v5 = 0xD000000000000012;
  v6 = 0x800000020C1916A0;
  v7 = 0x800000020C1916C0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000020C1916E0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000020C191680;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_20B60F2D0()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension_];
  v2 = [v0 absoluteDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  qword_27C7998F8 = v3;
}

uint64_t sub_20B60F388(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v10 = &selRef_widthDimension;
      goto LABEL_7;
    case 2:
LABEL_5:
      v10 = &selRef_heightDimension;
LABEL_7:
      v11 = [v2 *v10];
      [v11 dimension];
      v13 = v12;

      v14 = [a1 *v10];
      [v14 dimension];
      v16 = v15;

      return v16 < v13;
    case 3:
      v4 = [v2 widthDimension];
      [v4 dimension];
      v6 = v5;

      v7 = [a1 widthDimension];
      [v7 dimension];
      v9 = v8;

      if (v9 < v6)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      result = sub_20C13DE24();
      __break(1u);
      break;
  }

  return result;
}

id sub_20B60F500(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v11 = [v1 widthDimension];
      v12 = [v11 isAbsolute];

      if ((v12 & 1) == 0)
      {
        v13 = objc_opt_self();
        v14 = [v32 widthDimension];
        [v14 dimension];
        v16 = v15;

        v4 = [v13 absoluteDimension_];
        v9 = [v32 heightDimension];
        v10 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v9];
        goto LABEL_7;
      }

      break;
    case 2:
      v2 = [v1 heightDimension];
      v3 = [v2 isAbsolute];

      if ((v3 & 1) == 0)
      {
        v4 = [v32 widthDimension];
        v5 = objc_opt_self();
        v6 = [v32 heightDimension];
        [v6 dimension];
        v8 = v7;

        v9 = [v5 absoluteDimension_];
        v10 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v9];
LABEL_7:
        v17 = v10;

        return v17;
      }

      break;
    case 3:
      v18 = [v1 widthDimension];
      v19 = [v18 isAbsolute];

      if (!v19 || (v20 = [v32 heightDimension], v21 = objc_msgSend(v20, sel_isAbsolute), v20, (v21 & 1) == 0))
      {
        v23 = objc_opt_self();
        v24 = [v32 widthDimension];
        [v24 dimension];
        v26 = v25;

        v27 = [v23 absoluteDimension_];
        v28 = [v32 heightDimension];
        [v28 dimension];
        v30 = v29;

        v31 = [v23 absoluteDimension_];
        v17 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v31];

        return v17;
      }

      break;
    default:
      result = sub_20C13DE24();
      __break(1u);
      return result;
  }

  return v32;
}

unint64_t sub_20B60F8D0()
{
  result = qword_27C762968;
  if (!qword_27C762968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762968);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterOptionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FilterOptionState(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_20B60FAA8(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_title);
  *v2 = 0;
  v2[1] = 0;

  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon);
  *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_icon) = 0;

  sub_20BCE6EB8(0, 0);
  sub_20BCE71E4(0, 0, *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets), *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 8), *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 16), *(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_contentInsets + 24));
  [*(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_titleLabel) setText_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI25DownloadButtonContentView_imageView) setImage_];
  return sub_20BCE8210(*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
}

id sub_20B60FB7C(double a1, double a2, double a3, double a4)
{
  v8 = CGRectGetHeight(*&a1) * 0.5;
  v9 = [objc_opt_self() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, v8}];
  v10 = [v9 CGPath];

  return v10;
}

id sub_20B60FC44(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetWidth(*&a1) * 0.5 + a1;
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v9 = v8 - CGRectGetHeight(v19) * 0.5;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  Height = CGRectGetHeight(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v22.size.height = CGRectGetHeight(v21);
  v22.origin.x = v9;
  v22.origin.y = a2;
  v22.size.width = Height;
  v23 = CGRectInset(v22, v22.size.height / 2.8, v22.size.height / 2.8);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  v14 = v23.size.height;
  v15 = CGRectGetWidth(v23) * 0.25;
  v16 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, v14, v15}];
  v17 = [v16 CGPath];

  return v17;
}

uint64_t sub_20B60FD8C()
{
  type metadata accessor for ProgressConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(v0 + 24) == *(result + 24) && *(v0 + 32) == *(result + 32);
  }

  return result;
}

uint64_t sub_20B60FDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C150DB0;
  v2 = *MEMORY[0x277CDA130];
  *(v1 + 32) = *MEMORY[0x277CDA130];
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = *(v0 + 32);
  *(v1 + 72) = 4;
  *(v1 + 80) = 0x3FF0000000000000;
  *(v1 + 88) = 6;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 lightGrayColor];
  v6 = [v5 CGColor];

  *(v1 + 96) = v6;
  *(v1 + 104) = 7;
  *(v1 + 112) = 0;
  *(v1 + 120) = 8;
  return v1;
}

uint64_t sub_20B60FEE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_20C150DC0;
  v3 = *MEMORY[0x277CDA130];
  *(v1 + 32) = *MEMORY[0x277CDA130];
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v4 = *MEMORY[0x277CDA780];
  *(v1 + 64) = *MEMORY[0x277CDA780];
  *(v1 + 72) = 2;
  v5 = *MEMORY[0x277CDA7A0];
  *(v1 + 80) = *MEMORY[0x277CDA7A0];
  *(v1 + 88) = 3;
  *(v1 + 96) = *(v0 + 32);
  *(v1 + 104) = 4;
  v6 = *(v0 + 24);
  if (v6 <= 0.0)
  {
    v6 = 0.0;
  }

  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  *(v1 + 112) = v6;
  *(v1 + 120) = 6;
  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = [v7 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v12 = [v11 CGColor];

  *(v2 + 128) = v12;
  *(v2 + 136) = 7;
  *(v2 + 144) = 0;
  *(v2 + 152) = 8;
  return v2;
}

uint64_t sub_20B610044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CDA138];
  *(v0 + 16) = xmmword_20C150DC0;
  v2 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = 0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v2;
  v5 = [v3 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v6 = [v5 CGColor];

  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  v7 = *MEMORY[0x277CDA780];
  *(v0 + 64) = *MEMORY[0x277CDA780];
  *(v0 + 72) = 2;
  v8 = *MEMORY[0x277CDA7A0];
  *(v0 + 80) = *MEMORY[0x277CDA7A0];
  *(v0 + 88) = 3;
  *(v0 + 96) = 0;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0x3FF0000000000000;
  *(v0 + 120) = 6;
  *(v0 + 128) = 0;
  *(v0 + 136) = 7;
  *(v0 + 144) = 0;
  *(v0 + 152) = 8;
  v9 = v7;
  v10 = v8;
  return v0;
}

uint64_t NavigationRequest.init(url:animated:source:routingBehavior:priority:annotation:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a1;
  v100 = a3;
  v87 = a2;
  v92 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v10 - 8);
  v95 = &v77 - v11;
  v12 = type metadata accessor for NavigationSource();
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  MEMORY[0x28223BE20](v12);
  v86 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = &v77 - v16;
  MEMORY[0x28223BE20](v17);
  v96 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v97 = &v77 - v20;
  v21 = sub_20C132C14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v88 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v85 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v85);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v77 - v34;
  v93 = *a4;
  v84 = *a5;
  v94 = *a6;
  v36 = *(v22 + 16);
  v37 = v98;
  v36(v26, v33);
  v38 = v99;
  sub_20BBD6CD8(v26, v35);
  if (v38)
  {
    sub_20B610A98(v100);
    return (*(v22 + 8))(v37, v21);
  }

  v78 = v31;
  v77 = v28;
  v99 = v35;
  v82 = 0;
  v40 = v88;
  v79 = v36;
  v80 = v22 + 16;
  (v36)(v88, v37, v21);
  v41 = type metadata accessor for NavigationSharingURLInfo();
  v42 = v97;
  (*(v22 + 56))(&v97[*(v41 + 20)], 1, 1, v21);
  v83 = v22;
  v43 = *(v22 + 32);
  v81 = v21;
  v43(v42, v40, v21);
  v44 = (v42 + *(v41 + 24));
  *v44 = 0;
  v44[1] = 0;
  v45 = v89;
  swift_storeEnumTagMultiPayload();
  v46 = v100;
  v47 = v95;
  sub_20B610B00(v100, v95);
  v48 = *(v90 + 48);
  v49 = v37;
  if (v48(v47, 1, v45) == 1)
  {
    v50 = v96;
    sub_20B610B70(v42, v96, type metadata accessor for NavigationSource);
    v51 = v48(v47, 1, v45);
    v49 = v37;
    v52 = v91;
    if (v51 != 1)
    {
      sub_20B610A98(v95);
    }
  }

  else
  {
    v50 = v96;
    sub_20B610C38(v47, v96, type metadata accessor for NavigationSource);
    v52 = v91;
  }

  sub_20B610B70(v50, v52, type metadata accessor for NavigationSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v81;
  if (EnumCaseMultiPayload)
  {
    v55 = v46;
    sub_20B610BD8(v52, type metadata accessor for NavigationSource);
    v56 = v92;
    v57 = v97;
    goto LABEL_12;
  }

  sub_20B610BD8(v52, type metadata accessor for NavigationSharingURLInfo);
  v58 = v99;
  v59 = v78;
  sub_20B610B70(v99, v78, type metadata accessor for NavigationResource);
  v60 = swift_getEnumCaseMultiPayload();
  v57 = v97;
  v61 = v83;
  if (v60 != 10)
  {
    sub_20B610BD8(v59, type metadata accessor for NavigationResource);
    v56 = v92;
    v55 = v100;
LABEL_12:
    v65 = v86;
    sub_20B610B70(v50, v86, type metadata accessor for NavigationSource);
    v66 = swift_getEnumCaseMultiPayload();
    v67 = v87;
    if (v66)
    {
      v68 = type metadata accessor for NavigationSource;
    }

    else
    {
      sub_20B610BD8(v65, type metadata accessor for NavigationSharingURLInfo);
      v69 = v99;
      v65 = v77;
      sub_20B610B70(v99, v77, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20B610A98(v55);
        v70 = v54;
        v71 = *(v83 + 8);
        v71(v49, v70);
        sub_20B610BD8(v57, type metadata accessor for NavigationSource);
        v72 = v65;
        v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
        v74 = sub_20C1388F4();
        (*(*(v74 - 8) + 8))(v72 + v73, v74);
        v71(v72, v70);
        sub_20B610C38(v69, v56, type metadata accessor for NavigationResource);
        v63 = type metadata accessor for NavigationRequest();
        *(v56 + v63[5]) = v67 & 1;
        type metadata accessor for NavigationIntent();
        swift_storeEnumTagMultiPayload();
        v64 = 2;
LABEL_18:
        v50 = v96;
        goto LABEL_19;
      }

      v68 = type metadata accessor for NavigationResource;
    }

    sub_20B610BD8(v65, v68);
    v75 = v99;
    sub_20B610B70(v99, v56, type metadata accessor for NavigationResource);
    v79(v40, v49, v54);
    v76 = v54;
    v63 = type metadata accessor for NavigationRequest();
    sub_20BB7F2E8(v40, v67 & 1, v56 + v63[5]);
    sub_20B610A98(v55);
    (*(v83 + 8))(v49, v76);
    sub_20B610BD8(v57, type metadata accessor for NavigationSource);
    sub_20B610BD8(v75, type metadata accessor for NavigationResource);
    v64 = v84;
    goto LABEL_18;
  }

  sub_20B610A98(v100);
  (*(v61 + 8))(v49, v54);
  sub_20B610BD8(v57, type metadata accessor for NavigationSource);
  v62 = v58;
  v56 = v92;
  sub_20B610C38(v62, v92, type metadata accessor for NavigationResource);
  v63 = type metadata accessor for NavigationRequest();
  *(v56 + v63[5]) = 0;
  type metadata accessor for NavigationIntent();
  v64 = 2;
  swift_storeEnumTagMultiPayload();
LABEL_19:
  result = sub_20B610C38(v50, v56 + v63[6], type metadata accessor for NavigationSource);
  *(v56 + v63[7]) = v93;
  *(v56 + v63[8]) = v64;
  *(v56 + v63[9]) = v94;
  return result;
}

uint64_t sub_20B610A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B610B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B610B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B610BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B610C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20B610CA0()
{
  if ([v0 _activityMoveMode] == 2)
  {
    return 0;
  }

  result = [v0 totalEnergyBurned];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() kilocalorieUnit];
    [v2 doubleValueForUnit_];
    v5 = v4;

    return v5;
  }

  return result;
}

id sub_20B610D80()
{
  result = [*v0 totalDistance];
  v2 = result;
  if (result)
  {
    v3 = [objc_opt_self() meterUnit];
    [v2 doubleValueForUnit_];
    v5 = v4;

    return v5;
  }

  return result;
}

void sub_20B610F30()
{
  v1 = v0;
  v58.receiver = v0;
  v58.super_class = type metadata accessor for TVFilterOptionsListViewController();
  objc_msgSendSuper2(&v58, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_menuButtonTapped];
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v3 = sub_20C13CC54();

  [v2 setAllowedPressTypes_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 addGestureRecognizer_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setOpaque_];

  sub_20B793920(0);
  sub_20B795E74();
  [v1 setRestoresFocusAfterTransition_];
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider];
  [*(*(v10 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setClipsToBounds_];
  [*(*(v10 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  v11 = &v1[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout];
  [*(*(v10 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v10 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setRemembersLastFocusedIndexPath_];
  v12 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView;
  LODWORD(v13) = 1112014848;
  LODWORD(v14) = 1112014848;
  [*&v1[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView] systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v13, v14}];
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionsHeightConstraint];
  [v15 setConstant_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  [v17 addSubview_];

  [*&v1[v12] smu:1 setSpeedBumpEdges:?];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v57 = v2;
  v21 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel;
  [v19 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C150AE0;
  *(v22 + 32) = v15;
  v23 = *&v1[v12];
  v24 = v15;
  v25 = [v23 leadingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v22 + 40) = v29;
  v30 = [*&v1[v12] trailingAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v22 + 48) = v34;
  v35 = [*&v1[v12] bottomAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v22 + 56) = v39;
  v40 = [*&v1[v21] leadingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:v11[5]];
  *(v22 + 64) = v44;
  v45 = [*&v1[v21] trailingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48 constant:-v11[7]];
  *(v22 + 72) = v49;
  v50 = [*&v1[v21] topAnchor];
  v51 = [v1 view];
  if (v51)
  {
    v52 = v51;
    v53 = objc_opt_self();
    v54 = [v52 topAnchor];

    v55 = [v50 constraintEqualToAnchor:v54 constant:v11[4]];
    *(v22 + 80) = v55;
    sub_20B51C88C(0, &qword_281100500);
    v56 = sub_20C13CC54();

    [v53 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_20B61168C()
{
  v1 = [v0 navigationController];
  if (!v1 || (v2 = v1, v9 = [v1 popViewControllerAnimated_], v2, (v3 = v9) == 0))
  {
    v4 = [v0 parentViewController];
    if (v4)
    {
      v10 = v4;
      v5 = [v4 navigationController];
      if (!v5 || (v6 = v5, v7 = [v5 popViewControllerAnimated_], v6, !v7))
      {
        [v0 dismissViewControllerAnimated:1 completion:0];
LABEL_10:
        v3 = v10;
        goto LABEL_11;
      }
    }

    v8 = [v0 presentingViewController];
    if (!v8)
    {
      return;
    }

    v10 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_10;
  }

LABEL_11:
}

id sub_20B611914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterOptionsListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterOptionsListViewController()
{
  result = qword_27C7629A0;
  if (!qword_27C7629A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B611A7C()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
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

uint64_t sub_20B611B84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B611BA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

id sub_20B611BF0()
{
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 8];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 16];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 24];
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 64];
  [*&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel] intrinsicContentSize];
  if (v5 > v6)
  {
    v6 = v5;
  }

  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider];
  v8 = v6 + v1[4] + *v1;
  v9 = *(v7 + 16) + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row;
  v11 = *(v9 + 16);
  v10 = *(v9 + 32);
  v65[0] = *v9;
  v65[1] = v11;
  v65[2] = v10;
  v12 = *(v9 + 96);
  v14 = *(v9 + 48);
  v13 = *(v9 + 64);
  v65[5] = *(v9 + 80);
  v65[6] = v12;
  v65[3] = v14;
  v65[4] = v13;
  v16 = *(v9 + 128);
  v15 = *(v9 + 144);
  v17 = *(v9 + 112);
  v66 = *(v9 + 160);
  v65[8] = v16;
  v65[9] = v15;
  v65[7] = v17;
  v18 = *(v9 + 128);
  v19 = *(v9 + 96);
  v61 = *(v9 + 112);
  v62 = v18;
  v20 = *(v9 + 128);
  v63 = *(v9 + 144);
  v21 = *(v9 + 64);
  v22 = *(v9 + 32);
  v57 = *(v9 + 48);
  v58 = v21;
  v23 = *(v9 + 64);
  v24 = *(v9 + 96);
  v59 = *(v9 + 80);
  v60 = v24;
  v25 = *(v9 + 32);
  v55 = *(v9 + 16);
  v56 = v25;
  v73 = v61;
  v74 = v20;
  v75 = *(v9 + 144);
  v69 = v57;
  v70 = v23;
  v26 = *(v9 + 160);
  v71 = v59;
  v72 = v19;
  v67 = v55;
  v68 = v22;
  v77[1] = v55;
  v77[2] = v22;
  v77[5] = v59;
  v77[6] = v19;
  v27 = *(&v65[0] + 1);
  v64 = v26;
  v76 = v26;
  v77[0] = v65[0];
  v77[3] = v57;
  v77[4] = v23;
  v78 = v26;
  v77[8] = v20;
  v77[9] = v75;
  v77[7] = v61;
  if (sub_20B5EAF8C(v77) == 1)
  {
    v44 = v65[0];
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v45 = v55;
    v46 = v56;
    sub_20B52F9E8(v65, v43, &qword_27C762340);
    sub_20B520158(&v44, &qword_27C762340);
LABEL_8:
    [*&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView] setAlpha_];
    [*(*(v7 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
    return [v0 setNeedsFocusUpdate];
  }

  v44 = v65[0];
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v45 = v55;
  v46 = v56;
  sub_20B52F9E8(v65, v43, &qword_27C762340);

  sub_20B520158(&v44, &qword_27C762340);
  if (!v27)
  {
    goto LABEL_8;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView;
  v29 = *(*&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView] + OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button);
  v30 = OBJC_IVAR____TtC9SeymourUI8TVButton_contentView;
  swift_beginAccess();
  v31 = *(v29 + v30);
  type metadata accessor for TVButtonTextContentView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v34 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
    v35 = *(v32 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel);
    v36 = v31;
    v37 = v35;
    v38 = sub_20C13C914();

    [v37 setText_];

    [*(v33 + v34) setTextAlignment_];
    [*&v0[v28] setAlpha_];
    [*&v0[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionsHeightConstraint] constant];
    v40 = v3 + v39;
    v41 = *(*(v7 + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    [v41 setContentInset_];

    return [v0 setNeedsFocusUpdate];
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B6120DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  sub_20B51CC64(*(*(*v4 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider) + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = a4(a1, v7, *(v8 + 8));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_20B6121A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0);
}

uint64_t sub_20B612210(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B6122F8(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_metricPublishingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_20B612354(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5++;
    v19 = v8;
    result = a1(&v18, &v19);
    if (v3)
    {

      return v6;
    }

    v9 = v18;
    v10 = *(v18 + 16);
    v11 = v6[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= v6[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_20BC06608(result, v13, 1, v6);
      v6 = result;
      if (*(v9 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v10)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675D0);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_20B6124DC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v18[0] = *(v5 - 1);
    v18[1] = v8;

    a1(&v19, v18);
    if (v3)
    {

      return v6;
    }

    v9 = v19;
    v10 = *(v19 + 16);
    v11 = v6[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= v6[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_20BC083E0(result, v13, 1, v6);
      v6 = result;
      if (*(v9 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v10)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629D8);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = v6[2];
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          v6[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_20B612680()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout;
  *v1 = xmmword_20C150E40;
  *(v1 + 16) = xmmword_20C150E50;
  *(v1 + 32) = xmmword_20C150E60;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0x4046800000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_visibility) = 2;
  v2 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_settlingTimer) = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView;
  v5 = [objc_allocWithZone(type metadata accessor for TVOptionsShelfActionView()) initWithFrame_];
  [v5 setAlpha_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v7 setNumberOfLines_];
  v8 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v7 setFont_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_metricPublishingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_20C13DE24();
  __break(1u);
}

void sub_20B6128A8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), void (*a3)(char *, char *, uint64_t), char *a4, objc_class *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v98 = a8;
  v97 = a7;
  v94 = a6;
  v92 = a5;
  v91 = a4;
  v88 = a3;
  v87 = a2;
  v96 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v82 - v11;
  v12 = sub_20C135914();
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = &v82 - v15;
  v113 = sub_20C134EC4();
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v108 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v82 - v23;
  v107 = &v82 - v23;
  v25 = sub_20C135524();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v100 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = &v82 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  v104 = &v82 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v82 - v34;
  v106 = &v82 - v34;
  v36 = sub_20C133E24();
  v105 = v36;
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v89 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v82 - v40;
  v103 = &v82 - v40;
  v84 = *&v9[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dependencies];
  v99 = v9;
  sub_20B51CC64(&v9[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_pageNavigator], v116);
  v95 = v37;
  v86 = *(v37 + 16);
  (v86)(v41, v96, v36);
  v96 = v26;
  v42 = *(v26 + 16);
  v42(v35, v87, v25);
  v85 = v42;
  sub_20B52F9E8(v88, v24, &unk_27C7710A0);
  v88 = *(v109 + 16);
  v88(v19, v91, v113);
  v42(v32, v92, v25);
  v87 = *(v110 + 16);
  v87(v112, v94, v111);
  v92 = type metadata accessor for TVFilterOptionsViewController();
  v43 = objc_allocWithZone(v92);
  v44 = &v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_layout];
  *v44 = xmmword_20C150E40;
  *(v44 + 1) = xmmword_20C150E50;
  *(v44 + 2) = xmmword_20C150E60;
  *(v44 + 3) = xmmword_20C150E70;
  v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_visibility] = 2;
  v45 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_lastFocusedIndexPath;
  v46 = sub_20C133244();
  (*(*(v46 - 8) + 56))(&v43[v45], 1, 1, v46);
  *&v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_settlingTimer] = 0;
  *&v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_metricPublishingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v47 = OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_titleLabel;
  v48 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v48 setNumberOfLines_];
  v49 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v48 setFont_];

  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v43[v47] = v48;
  v50 = v84;
  *&v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_dependencies] = v84;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v115, &v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_timerProvider]);
  v91 = v43;
  sub_20B51CC64(v116, &v43[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_pageNavigator]);
  v51 = v89;
  v86();
  v52 = v85;
  v85(v102, v106, v25);
  sub_20B52F9E8(v107, v101, &unk_27C7710A0);
  v53 = v90;
  v88(v90, v108, v113);
  v94 = v25;
  v54 = v93;
  v52(v100, v104, v25);
  v55 = v111;
  (v87)(v54, v112);
  type metadata accessor for TVFilterOptionsPageDataProvider();
  v56 = swift_allocObject();
  v56[5] = MEMORY[0x277D84F90];
  v56[6] = 0;
  v56[2] = v50;

  v57 = v53;
  v58 = sub_20C134EB4();
  if (v58)
  {
    v59 = v83;
    sub_20C134E84();
    v60 = sub_20C135C84();
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      v58 = sub_20B520158(v59, &unk_27C7629B0);
      v61 = 0xEE00736E6F697470;
      v62 = 0x6F5F7265746C6966;
    }

    else
    {
      v62 = sub_20B9492AC();
      v61 = v63;
      v58 = sub_20B6134F0(v59);
    }
  }

  else
  {
    v61 = 0xEC00000073706974;
    v62 = 0x5F72656E69617274;
  }

  v56[3] = v62;
  v56[4] = v61;
  MEMORY[0x28223BE20](v58);
  *(&v82 - 8) = v56;
  *(&v82 - 7) = v51;
  v64 = v51;
  v65 = v102;
  v66 = v101;
  *(&v82 - 6) = v102;
  *(&v82 - 5) = v66;
  v67 = v57;
  *(&v82 - 4) = v57;
  v68 = v100;
  *(&v82 - 3) = v100;
  *(&v82 - 2) = v54;
  v56[5] = sub_20B612354(sub_20B6134C8, (&v82 - 10), &unk_282287438);

  v110 = *(v110 + 8);
  (v110)(v54, v55);
  v69 = *(v96 + 8);
  v70 = v68;
  v71 = v94;
  v69(v70, v94);
  v109 = *(v109 + 8);
  (v109)(v67, v113);
  sub_20B520158(v66, &unk_27C7710A0);
  v69(v65, v71);
  v102 = *(v95 + 8);
  v72 = v64;
  v73 = v105;
  (v102)(v72, v105);
  v74 = v91;
  *&v91[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_dataProvider] = v56;
  v114.receiver = v74;
  v114.super_class = v92;
  v75 = objc_msgSendSuper2(&v114, sel_initWithNibName_bundle_, 0, 0);
  v76 = *&v75[OBJC_IVAR____TtC9SeymourUI29TVFilterOptionsViewController_titleLabel];
  v77 = v75;
  v78 = v76;
  v79 = sub_20C13C914();
  [v78 setText_];

  sub_20BA9B62C();
  (v110)(v112, v111);
  v69(v104, v71);
  (v109)(v108, v113);
  sub_20B520158(v107, &unk_27C7710A0);
  v69(v106, v71);
  (v102)(v103, v73);
  __swift_destroy_boxed_opaque_existential_1(v116);
  v80 = [v99 navigationController];
  if (v80)
  {
    v81 = v80;
    [v80 pushViewController:v77 animated:1];
  }
}

uint64_t sub_20B6134F0(uint64_t a1)
{
  v2 = sub_20C135C84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_20B61354C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v29[3] = a5;
  v29[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout];
  *v12 = xmmword_20C150E40;
  *(v12 + 1) = xmmword_20C150E50;
  *(v12 + 2) = xmmword_20C150E60;
  *(v12 + 6) = 0;
  *(v12 + 7) = 0;
  *(v12 + 8) = 0x4046800000000000;
  a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_visibility] = 2;
  v13 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_lastFocusedIndexPath;
  v14 = sub_20C133244();
  (*(*(v14 - 8) + 56))(&a4[v13], 1, 1, v14);
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_settlingTimer] = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView;
  v16 = [objc_allocWithZone(type metadata accessor for TVOptionsShelfActionView()) initWithFrame_];
  [v16 setAlpha_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  *&a4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setNumberOfLines_];
  v19 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v18 setFont_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v17] = v18;
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_metricPublishingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v28, &a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_timerProvider]);
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider] = a2;
  sub_20B51CC64(v29, &a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_pageNavigator]);
  v20 = *&a4[v15];

  v21 = [v20 heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *&a4[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionsHeightConstraint] = v22;
  v27.receiver = a4;
  v27.super_class = type metadata accessor for TVFilterOptionsListViewController();
  v23 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  *(*&v23[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider] + 80) = &off_282297F20;
  swift_unknownObjectWeakAssign();
  v24 = *(*&v23[OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_optionsActionView] + OBJC_IVAR____TtC9SeymourUI24TVOptionsShelfActionView_button);
  v25 = v23;
  [v24 addTarget:v25 action:sel_handleActionButtonTapped forControlEvents:0x2000];
  sub_20BA9B3F4();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

void *sub_20B613908(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_20C137254();
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v30 = v12;
  v32 = (v12 + 32);
  v17 = MEMORY[0x277D84F90];
  v28 = v9;
  v29 = a1;
  v27 = (v12 + 48);
  while (1)
  {
    v18 = *v15++;
    v35 = v18;
    a1(&v35);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_20B520158(v8, &unk_27C762A60);
    }

    else
    {
      v19 = v31;
      v20 = *v32;
      (*v32)(v31, v8, v9);
      v20(v33, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_20BC05754(0, v17[2] + 1, 1, v17);
      }

      v22 = v17[2];
      v21 = v17[3];
      v23 = v30;
      if (v22 >= v21 >> 1)
      {
        v25 = sub_20BC05754(v21 > 1, v22 + 1, 1, v17);
        v23 = v30;
        v17 = v25;
      }

      v17[2] = v22 + 1;
      v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22;
      v9 = v28;
      v20(v24, v33, v28);
      a1 = v29;
      v16 = v27;
    }

    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

uint64_t sub_20B613BDC(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_20C132E94();
  MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v27 = &v26 - v15;
  v28 = v16;
  v17 = (v16 + 48);
  v31 = (v16 + 32);
  v18 = MEMORY[0x277D84F90];
  v29 = a1;
  v30 = a4;
  while (1)
  {
    v34 = a3;
    a1(&v34, v14);
    if (v4)
    {
      break;
    }

    if ((*v17)(v10, 1, v11) == 1)
    {
      result = sub_20B520158(v10, &qword_27C762AC0);
    }

    else
    {
      v20 = v17;
      v21 = *v31;
      v22 = v27;
      (*v31)(v27, v10, v11);
      v21(v32, v22, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_20BC05F60(0, v18[2] + 1, 1, v18);
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = sub_20BC05F60(v23 > 1, v24 + 1, 1, v18);
      }

      v18[2] = v24 + 1;
      result = (v21)(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v32, v11);
      a1 = v29;
      a4 = v30;
      v17 = v20;
    }

    if (a4 == a3)
    {
      return v18;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v18;
}

void *sub_20B613EA0(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6++;
    v16 = v10;
    a1(&v15, &v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20BC06120(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      v9 = v14;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_20BC06120((v11 > 1), v12 + 1, 1, v7);
        v9 = v14;
        v7 = v8;
      }

      v7[2] = v12 + 1;
      *&v7[2 * v12 + 4] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_20B613FF8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ButtonAction(0);
  v11 = MEMORY[0x28223BE20](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = (a3 + 32);
  v25 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    v19 = *v16++;
    v30 = v19;
    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_20B520158(v9, &qword_27C770330);
    }

    else
    {
      v20 = v28;
      sub_20B622774(v9, v28, type metadata accessor for ButtonAction);
      sub_20B622774(v20, v29, type metadata accessor for ButtonAction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_20BC05920(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_20BC05920(v21 > 1, v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_20B622774(v29, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ButtonAction);
      v10 = v26;
    }

    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_20B6142EC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ButtonAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_20C137254() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_20B520158(v9, &qword_27C770330);
    }

    else
    {
      v20 = v28;
      sub_20B622774(v9, v28, type metadata accessor for ButtonAction);
      sub_20B622774(v20, v30, type metadata accessor for ButtonAction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_20BC05920(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_20BC05920(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_20B622774(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ButtonAction);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_20B6146B8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v23 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v12 = a4(0);
      v14 = *(v12 - 8);
      result = (v12 - 8);
      v13 = v14;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v24, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i);
      if (v4)
      {

        return v23;
      }

      v15 = v24;
      if ((~v24 & 0xF000000000000007) != 0)
      {
        break;
      }

      if (v9 == v5)
      {
        return v23;
      }
    }

    v16 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_20BC05D3C(0, *(v23 + 2) + 1, 1, v23);
    }

    v17 = v16;
    v18 = *(v16 + 2);
    v19 = v17;
    v20 = *(v17 + 3);
    v21 = v18 + 1;
    if (v18 >= v20 >> 1)
    {
      v22 = sub_20BC05D3C((v20 > 1), v18 + 1, 1, v19);
      v21 = v18 + 1;
      v19 = v22;
    }

    *(v19 + 2) = v21;
    result = v19;
    *&v19[8 * v18 + 32] = v15;
  }

  while (v9 != v5);
  return result;
}

void *sub_20B614878(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x20F2F43B0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

void *sub_20B614A04(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_20C134014();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v11;
  v12 = sub_20C138204();
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_20B520158(v7, &unk_27C769C20);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_20BC06C30(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_20BC06C30(v29 > 1, v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_20B614E50(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6;
    v16[0] = *(v6 - 1);
    v16[1] = v8;

    a1(&v15, v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20BC083E0(0, v7[2] + 1, 1, v7);
      }

      v10 = v7[2];
      v9 = v7[3];
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        v12 = sub_20BC083E0((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
        v7 = v12;
      }

      v7[2] = v10 + 1;
      *&v7[2 * v10 + 4] = v11;
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_20B614F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20B52F9E8(a3, v22 - v9, &unk_27C762220);
  v11 = sub_20C13CDF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20B520158(v10, &unk_27C762220);
  }

  else
  {
    sub_20C13CDE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20C13CD24();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20C13CA14() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20B520158(a3, &unk_27C762220);

      return v20;
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

  sub_20B520158(a3, &unk_27C762220);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20B615254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20B52F9E8(a3, v22 - v9, &unk_27C762220);
  v11 = sub_20C13CDF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20B520158(v10, &unk_27C762220);
  }

  else
  {
    sub_20C13CDE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20C13CD24();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_20C13CA14() + 32;
      sub_20C133954();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_20B520158(a3, &unk_27C762220);

      return v20;
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

  sub_20B520158(a3, &unk_27C762220);
  sub_20C133954();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20B615520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_20B52F9E8(a3, v24 - v11, &unk_27C762220);
  v13 = sub_20C13CDF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20B520158(v12, &unk_27C762220);
  }

  else
  {
    sub_20C13CDE4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20C13CD24();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20C13CA14() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20B520158(a3, &unk_27C762220);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20B520158(a3, &unk_27C762220);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20B6157F8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan;
  v5 = sub_20C133954();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row;
  sub_20B5D8060(v18);
  v7 = v18[9];
  *(v6 + 128) = v18[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v19;
  v8 = v18[5];
  *(v6 + 64) = v18[4];
  *(v6 + 80) = v8;
  v9 = v18[7];
  *(v6 + 96) = v18[6];
  *(v6 + 112) = v9;
  v10 = v18[1];
  *v6 = v18[0];
  *(v6 + 16) = v10;
  v11 = v18[3];
  *(v6 + 32) = v18[2];
  *(v6 + 48) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_bag) = *&v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_configurationClient);
  *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_eventHub) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_subscriptionCache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanStringBuilder) = *&v17[0];
  type metadata accessor for ShelfLazyLockupFetcher();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 152) = MEMORY[0x277D84F90];

  v14 = sub_20B6B0C04(v13);
  v15 = MEMORY[0x277D84FA0];
  *(v12 + 160) = v14;
  *(v12 + 168) = v15;
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v12 + 136) = 1;
  *(v12 + 144) = 42;
  *(v2 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_lazyLockupFetcher) = v12;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_subscriptionToken) = sub_20C13A914();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B5237AC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B621B88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  return v2;
}

uint64_t sub_20B616000(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_20C13CDF4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    a4(0, 0, v8, a3, v12);
  }

  return result;
}

uint64_t sub_20B61612C()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6161EC, 0, 0);
}

uint64_t sub_20B6161EC()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B6162B0;

  return MEMORY[0x2821B5680](v3, v2);
}

uint64_t sub_20B6162B0(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20B616408, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_20B616408()
{
  v20 = v0;
  v1 = *(v0 + 88);
  sub_20C13B454();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Unexpected error occurred fetching subscription: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_20B6165E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_20C13BB84();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B616710, 0, 0);
}

uint64_t sub_20B616710()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_archivedSessionClient), *(v0[6] + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_archivedSessionClient + 24));
  sub_20C139B74();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "SeymourUI/ScheduledWorkoutPlanShelf.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 108;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_20C134D54();
  v0[15] = v4;
  *v3 = v0;
  v3[1] = sub_20B616874;
  v5 = v0[3];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B62258C, v2, v4);
}

uint64_t sub_20B616874()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20B616A68;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_20B6169C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6169C4()
{
  (*(*(v0[15] - 8) + 56))(v0[3], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B616A68()
{
  v23 = v0;
  v1 = *(v0 + 128);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  sub_20C13B454();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 64);
    v21 = *(v0 + 72);
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20B51E694(v9, v8, &v22);
    *(v10 + 12) = 2082;
    *(v0 + 16) = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v13 = sub_20C13C9D4();
    v15 = sub_20B51E694(v13, v14, &v22);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to fetch resumable session for %s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);
  }

  (*(*(*(v0 + 120) - 8) + 56))(*(v0 + 24), 1, 1);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_20B616CF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 776) = v6;
  *(v7 + 768) = a6;
  *(v7 + 760) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 1216) = a2;
  *(v7 + 736) = a1;
  v8 = type metadata accessor for ButtonAction(0);
  *(v7 + 784) = v8;
  *(v7 + 792) = *(v8 - 8);
  *(v7 + 800) = swift_task_alloc();
  v9 = sub_20C134734();
  *(v7 + 808) = v9;
  *(v7 + 816) = *(v9 - 8);
  *(v7 + 824) = swift_task_alloc();
  v10 = sub_20C1344C4();
  *(v7 + 832) = v10;
  *(v7 + 840) = *(v10 - 8);
  *(v7 + 848) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  *(v7 + 856) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  *(v7 + 864) = v11;
  *(v7 + 872) = *(v11 - 8);
  *(v7 + 880) = swift_task_alloc();
  v12 = sub_20C135AE4();
  *(v7 + 888) = v12;
  v13 = *(v12 - 8);
  *(v7 + 896) = v13;
  *(v7 + 904) = *(v13 + 64);
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  *(v7 + 928) = v14;
  *(v7 + 936) = *(v14 - 8);
  *(v7 + 944) = swift_task_alloc();
  v15 = sub_20C134104();
  *(v7 + 952) = v15;
  *(v7 + 960) = *(v15 - 8);
  *(v7 + 968) = swift_task_alloc();
  v16 = sub_20C133154();
  *(v7 + 976) = v16;
  *(v7 + 984) = *(v16 - 8);
  *(v7 + 992) = swift_task_alloc();
  v17 = sub_20C132E94();
  *(v7 + 1000) = v17;
  *(v7 + 1008) = *(v17 - 8);
  *(v7 + 1016) = swift_task_alloc();
  v18 = sub_20C13BB84();
  *(v7 + 1024) = v18;
  *(v7 + 1032) = *(v18 - 8);
  *(v7 + 1040) = swift_task_alloc();
  *(v7 + 1048) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B617174, 0, 0);
}

uint64_t sub_20B617174()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 776);
  v23 = *(v0 + 944);
  sub_20C13B454();
  sub_20C13BB64();
  v9 = *(v2 + 8);
  *(v0 + 1056) = v9;
  *(v0 + 1064) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  sub_20C133014();
  sub_20C132D64();
  v10 = *(v6 + 8);
  v10(v5, v7);
  sub_20C133014();
  v11 = sub_20B621E08(v4, v5);
  *(v0 + 1217) = v12;
  v10(v5, v7);
  *(v0 + 1072) = v11;
  v13 = *(v8 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanStringBuilder);
  *(v0 + 1080) = v13;
  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  *(v0 + 1088) = sub_20B5E107C();
  *(v0 + 1096) = v14;
  sub_20C133014();
  sub_20BAB1928(v4, v5);
  *(v0 + 1104) = v15;
  *(v0 + 1112) = v16;
  v10(v5, v7);
  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  *(v0 + 1120) = sub_20B5E107C();
  *(v0 + 1128) = v17;
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_configurationClient), *(v8 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_configurationClient + 24));
  sub_20C1398E4();
  v18 = swift_task_alloc();
  *(v0 + 1136) = v18;
  *(v18 + 16) = "SeymourUI/ScheduledWorkoutPlanShelf.swift";
  *(v18 + 24) = 41;
  *(v18 + 32) = 2;
  *(v18 + 40) = 131;
  *(v18 + 48) = v23;
  v19 = swift_task_alloc();
  *(v0 + 1144) = v19;
  *v19 = v0;
  v19[1] = sub_20B617494;
  v20 = *(v0 + 968);
  v21 = *(v0 + 952);

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B62213C, v18, v21);
}

uint64_t sub_20B617494()
{
  v2 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {

    v3 = sub_20B617974;
  }

  else
  {
    v4 = v2[118];
    v5 = v2[117];
    v6 = v2[116];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B617620;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B617620()
{
  v1 = v0[110];
  __swift_project_boxed_opaque_existential_1((v0[97] + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient), *(v0[97] + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient + 24));
  sub_20C13A0B4();
  v2 = swift_task_alloc();
  v0[145] = v2;
  *(v2 + 16) = "SeymourUI/ScheduledWorkoutPlanShelf.swift";
  *(v2 + 24) = 41;
  *(v2 + 32) = 2;
  *(v2 + 40) = 132;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[146] = v3;
  *v3 = v0;
  v3[1] = sub_20B61777C;
  v4 = v0[115];
  v5 = v0[111];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B622154, v2, v5);
}

uint64_t sub_20B61777C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 1176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B617F24, 0, 0);
  }

  else
  {
    v4 = v2[110];
    v5 = v2[109];
    v6 = v2[108];

    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v2[148] = v7;
    *v7 = v3;
    v7[1] = sub_20B617ADC;
    v8 = v2[107];
    v9 = v2[96];
    v10 = v2[95];

    return sub_20B6165E4(v8, v10, v9);
  }
}

uint64_t sub_20B617974()
{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  (*(v0[117] + 8))(v0[118], v0[116]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B617ADC()
{

  return MEMORY[0x2822009F8](sub_20B617BD8, 0, 0);
}

uint64_t sub_20B617BD8()
{
  v1 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_mediaTagStringBuilder + 24));
  sub_20C1359E4();
  *(v0 + 1192) = sub_20C138544();

  sub_20C135AA4();
  v2 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_storefrontLocalizer;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform);
  v4 = sub_20C1344B4();
  if (v6)
  {
    v7 = *(v0 + 968);
    v8 = *(v0 + 848);
    v9 = *(v0 + 824);
    v10 = *(v0 + 816);
    v30 = *(v0 + 808);
    v31 = *(v0 + 776) + v2;
    v32 = *(v0 + 856);
    v11 = v4;
    sub_20C134484();
    v12 = sub_20C1346F4();
    v13 = swift_task_alloc();
    *(v13 + 16) = v7;
    *(v13 + 24) = v11;
    if ((v11 & 0xFE) != 0)
    {
      v14 = sub_20B622280;
    }

    else
    {
      v14 = sub_20B6222C8;
    }

    v15 = sub_20B613908(v14, v13, v12);

    (*(v10 + 8))(v9, v30);
    v16 = swift_task_alloc();
    *(v16 + 16) = v11;
    *(v16 + 24) = v31;
    *(v16 + 32) = v8;
    *(v16 + 40) = v15;
    *(v16 + 48) = v32;
    *(v16 + 56) = v3;
    v17 = sub_20B6142EC(sub_20B6222A0, v16, v15);
  }

  else
  {
    sub_20B583F4C(v4, v5, 0);
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v0 + 1072);
  v19 = *(v0 + 1217);
  (*(*(v0 + 840) + 8))(*(v0 + 848), *(v0 + 832));
  if ((v19 & 1) != 0 || v18)
  {

    v17 = MEMORY[0x277D84F90];
  }

  *(v0 + 1200) = v17;
  v20 = *(v0 + 800);
  v21 = *(v0 + 784);
  v22 = *(v0 + 744);
  __swift_project_boxed_opaque_existential_1((*(v0 + 1080) + 48), *(*(v0 + 1080) + 72));
  v23 = sub_20B5E107C();
  v25 = v24;
  v26 = *(v21 + 28);
  v27 = sub_20C133954();
  (*(*(v27 - 8) + 16))(v20 + v26, v22, v27);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v28 = swift_task_alloc();
  *(v0 + 1208) = v28;
  *v28 = v0;
  v28[1] = sub_20B6180A8;

  return sub_20B61612C();
}

uint64_t sub_20B617F24()
{
  (*(v0[109] + 8))(v0[110], v0[108]);
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];
  (*(v0[126] + 8))(v0[127], v0[125]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B6180A8(char a1)
{
  *(*v1 + 1218) = a1;

  return MEMORY[0x2822009F8](sub_20B6181A8, 0, 0);
}

uint64_t sub_20B6181A8()
{
  v80 = v0;
  v1 = *(v0 + 1218);
  if (v1 == 1)
  {
    v75 = *(v0 + 760);
    v77 = *(v0 + 768);

    v73 = 1;
  }

  else
  {
    v75 = 0;
    v77 = 0;
    v73 = 0;
  }

  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F980;
  sub_20B622C38(v2, v6 + v5, type metadata accessor for ButtonAction);
  *(inited + 40) = v6;
  v7 = sub_20B6B2348(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762A50);
  if (v1)
  {
    v8 = *(v0 + 1200);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v7;
    sub_20B91D5AC(v8, 0, isUniquelyReferenced_nonNull_native);
  }

  v61 = v7;
  v10 = *(v0 + 1192);
  v65 = *(v0 + 1120);
  v67 = *(v0 + 1128);
  v63 = *(v0 + 1112);
  v58 = *(v0 + 1200);
  v59 = *(v0 + 1104);
  v69 = *(v0 + 1088);
  v71 = *(v0 + 1096);
  v11 = *(v0 + 912);
  v12 = *(v0 + 904);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 776);
  v56 = *(v0 + 1216);
  v16 = *(v15 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_lazyLockupFetcher);
  (*(v13 + 16))(v11, *(v0 + 920), v14);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v15;
  *(v19 + 3) = v58;
  *(v19 + 4) = v61;
  *(v19 + 5) = v10;
  (*(v13 + 32))(&v19[v17], v11, v14);
  v20 = &v19[v18];
  *v20 = v59;
  *(v20 + 1) = v63;
  v20[16] = v56;
  v21 = swift_task_alloc();
  v21[2] = v16;
  v21[3] = sub_20B62216C;
  v21[4] = v19;

  v22 = v10;
  v23 = sub_20C02AE88(sub_20B622218, v21);

  *(v0 + 16) = v65;
  *(v0 + 24) = v67;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 384;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = v75;
  *(v0 + 88) = v77;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v73;
  v24 = MEMORY[0x277D84F90];
  *(v0 + 120) = v23;
  *(v0 + 128) = v24;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = v69;
  *(v0 + 160) = v71;
  *(v0 + 168) = xmmword_20C150190;
  sub_20C13B454();
  sub_20B622224(v0 + 16, v0 + 184);
  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();
  sub_20B621D00(v0 + 16);
  v27 = os_log_type_enabled(v25, v26);
  v70 = *(v0 + 1192);
  v72 = *(v0 + 1056);
  v66 = *(v0 + 1024);
  v68 = *(v0 + 1040);
  v28 = *(v0 + 1016);
  v29 = *(v0 + 1008);
  v30 = *(v0 + 1000);
  v31 = *(v0 + 968);
  v32 = *(v0 + 960);
  v33 = *(v0 + 952);
  v76 = *(v0 + 920);
  v34 = *(v0 + 896);
  v74 = *(v0 + 888);
  v78 = *(v0 + 856);
  v64 = *(v0 + 800);
  if (v27)
  {
    v62 = *(v0 + 968);
    v35 = swift_slowAlloc();
    v60 = v33;
    v36 = swift_slowAlloc();
    v79 = v36;
    *v35 = 136315138;
    v37 = *(v0 + 160);
    *(v0 + 480) = *(v0 + 144);
    *(v0 + 496) = v37;
    *(v0 + 512) = *(v0 + 176);
    v38 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v38;
    v39 = *(v0 + 128);
    *(v0 + 448) = *(v0 + 112);
    *(v0 + 464) = v39;
    v40 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v40;
    v41 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v41;
    sub_20B622224(v0 + 16, v0 + 520);
    v42 = sub_20C13C9D4();
    v57 = v30;
    v44 = sub_20B51E694(v42, v43, &v79);

    *(v35 + 4) = v44;
    _os_log_impl(&dword_20B517000, v25, v26, "[ScheduledWorkoutPlanShelf] row created: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x20F2F6A40](v36, -1, -1);
    MEMORY[0x20F2F6A40](v35, -1, -1);

    v72(v68, v66);
    sub_20B622CA0(v64, type metadata accessor for ButtonAction);
    (*(v34 + 8))(v76, v74);
    (*(v29 + 8))(v28, v57);
    sub_20B520158(v78, &unk_27C7623D0);
    (*(v32 + 8))(v62, v60);
  }

  else
  {

    v72(v68, v66);
    sub_20B622CA0(v64, type metadata accessor for ButtonAction);
    (*(v34 + 8))(v76, v74);
    (*(v29 + 8))(v28, v30);
    sub_20B520158(v78, &unk_27C7623D0);
    (*(v32 + 8))(v31, v33);
  }

  v45 = *(v0 + 736);
  v46 = *(v0 + 112);
  v48 = *(v0 + 64);
  v47 = *(v0 + 80);
  *(v45 + 80) = *(v0 + 96);
  *(v45 + 96) = v46;
  *(v45 + 48) = v48;
  *(v45 + 64) = v47;
  v50 = *(v0 + 144);
  v49 = *(v0 + 160);
  v51 = *(v0 + 128);
  *(v45 + 160) = *(v0 + 176);
  *(v45 + 128) = v50;
  *(v45 + 144) = v49;
  *(v45 + 112) = v51;
  v52 = *(v0 + 16);
  v53 = *(v0 + 48);
  *(v45 + 16) = *(v0 + 32);
  *(v45 + 32) = v53;
  *v45 = v52;

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_20B6188AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v101 = a7;
  v102 = a8;
  v99 = a6;
  v100 = a5;
  v13 = type metadata accessor for ButtonAction(0);
  v98 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  v18 = sub_20C134014();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x20)
  {

    return a1;
  }

  v90 = a9;
  v22 = swift_projectBox();
  sub_20B52F9E8(v22, v17, &unk_27C772250);
  v23 = &v17[v15[16]];
  v24 = *(v23 + 1);
  v89 = *v23;
  v91 = v24;
  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  v28 = *(v23 + 4);
  v27 = *(v23 + 5);
  v95 = v28;
  v96 = v25;
  v94 = v27;
  sub_20B6222E8(*&v17[v15[20]], *&v17[v15[20] + 8]);
  v29 = &v17[v15[24]];
  v88 = *v29;
  v87 = v29[8];
  v93 = v17[v15[28]];
  v92 = *&v17[v15[32]];
  (*(v19 + 32))(v21, v17, v18);
  v30 = *(a2 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform);
  v104 = v21;
  v97 = v26;
  if (v30 >= 2)
  {
    v38 = v102;
    if (v30 != 3)
    {
      goto LABEL_13;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
    v103 = swift_allocBox();
    v41 = v40;
    v42 = v39[12];
    (*(v19 + 16))(v40, v104, v18);
    *(v41 + v42) = v90;

    v43 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v43;
    sub_20B622330(a4, sub_20B6219F8, 0, isUniquelyReferenced_nonNull_native, &v105);

    v45 = v39[16];
    v46 = (v41 + v39[20]);
    v47 = v41 + v39[24];
    v48 = v39[28];
    v100 = v39[32];
    v49 = v39[36];
    v50 = v105;
    (*(v19 + 8))(v104, v18);
    *(v41 + v45) = v50;
    v51 = v91;
    *v46 = v89;
    v46[1] = v51;
    v52 = v96;
    v46[2] = v97;
    v46[3] = v52;
    v53 = v94;
    v46[4] = v95;
    v46[5] = v53;
    *v47 = v101;
    *(v47 + 8) = v38;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 16) = 0;
    *(v47 + 40) = 513;
    *(v41 + v48) = v93;
    a1 = v103 | 0x9000000000000002;
    *(v100 + v41) = 0;
    *(v41 + v49) = 0;
    return a1;
  }

  __swift_project_boxed_opaque_existential_1((*(a2 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanStringBuilder) + 48), *(*(a2 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanStringBuilder) + 72));
  v31 = sub_20B5E107C();
  v33 = v32;
  v34 = *(v19 + 16);
  v35 = v103;
  v36 = v103 + *(v13 + 28);
  v85 = v19 + 16;
  v84 = v34;
  v34(v36, v104, v18);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = v31;
  *(v35 + 40) = v33;
  if (*(a3 + 16))
  {
    v37 = sub_20B6B2348(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A40);
    inited = swift_initStackObject();
    v86 = xmmword_20C14F980;
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
    v55 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v86;
    sub_20B622C38(v35, v56 + v55, type metadata accessor for ButtonAction);
    *(inited + 40) = v56;
    v37 = sub_20B6B2348(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &unk_27C762A50);
  }

  *&v86 = v19;
  v98 = v18;

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v105 = a4;
  sub_20B622330(v37, sub_20B6219F8, 0, v57, &v105);

  v83 = v105;
  v82 = 0;
  v58 = v89;
  v59 = v91;
  v60 = v96;

  v61 = v95;

  v91 = sub_20C1359E4();
  v99 = swift_allocBox();
  v62 = v15;
  v64 = v63;
  v65 = v62[12];
  v66 = (v63 + v62[16]);
  v67 = v63 + v62[20];
  v68 = v63 + v62[24];
  v89 = v62[28];
  v84(v63, v104, v98);
  *(v64 + v65) = v90;
  *v66 = v58;
  v66[1] = v59;
  v69 = v100;
  v66[2] = v100;
  v66[3] = v60;
  v70 = v91;
  v66[4] = v61;
  v66[5] = v70;
  v71 = v102;
  *v67 = v101;
  *(v67 + 8) = v71;
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 16) = 0;
  *(v67 + 40) = 513;
  *v68 = v88;
  *(v68 + 8) = v87;
  v101 = v64;
  *(v89 + v64) = v93;

  v72 = v69;
  v73 = v58;
  v74 = v59;
  v75 = v72;

  v76 = v92;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v76;
  v78 = v82;
  sub_20B622330(v83, sub_20B6219F8, 0, v77, &v105);

  if (!v78)
  {
    v79 = v62[32];

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v80 = v105;
    sub_20B622CA0(v103, type metadata accessor for ButtonAction);
    (*(v86 + 8))(v104, v98);
    *(v101 + v79) = v80;
    return v99 | 0x4000000000000000;
  }

  __break(1u);

  __break(1u);
LABEL_13:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B619178(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_lazyLockupFetcher;
  v4 = sub_20C135184();
  v6 = v5;
  if (v4 == sub_20C135184() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_20C13DFF4();

    if ((v9 & 1) == 0)
    {
      type metadata accessor for ShelfLazyLockupFetcher();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D84F90];
      *(v11 + 152) = MEMORY[0x277D84F90];
      v13 = sub_20B6B0C04(v12);
      v14 = MEMORY[0x277D84FA0];
      *(v11 + 160) = v13;
      *(v11 + 168) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
      sub_20C133AA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
      sub_20C133AA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
      sub_20C133AA4();
      *(v11 + 136) = 1;
      *(v11 + 144) = a1;
      *(v11 + 145) = 0;
      *(v1 + v3) = v11;
    }
  }

  return result;
}

uint64_t sub_20B619338(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 144);
  v30[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 128);
  v30[9] = v8;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 160);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 80);
  v30[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 64);
  v30[5] = v9;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 112);
  v30[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 96);
  v30[7] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 16);
  v30[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row);
  v30[1] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 48);
  v30[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 32);
  v30[3] = v12;
  v13 = *(a1 + 144);
  *(v7 + 128) = *(a1 + 128);
  *(v7 + 144) = v13;
  *(v7 + 160) = *(a1 + 160);
  v14 = *(a1 + 80);
  *(v7 + 64) = *(a1 + 64);
  *(v7 + 80) = v14;
  v15 = *(a1 + 112);
  *(v7 + 96) = *(a1 + 96);
  *(v7 + 112) = v15;
  v16 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = v16;
  v17 = *(a1 + 48);
  *(v7 + 32) = *(a1 + 32);
  *(v7 + 48) = v17;
  sub_20B52F9E8(a1, &v29, &qword_27C762340);
  sub_20B520158(v30, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v20 = sub_20B61C91C(v1, result, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_identifier, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row, sub_20B5EAFA4);
      if (v21)
      {
        v23 = v20;
        v24 = v21;
        v25 = v22;
        v26 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v27 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v27 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B61F8F0(v23, v24, v25, v26, 0, v19, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_identifier, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B6195D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[91] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4[92] = v5;
  v4[93] = *(v5 - 8);
  v4[94] = swift_task_alloc();
  v6 = sub_20C136594();
  v4[95] = v6;
  v4[96] = *(v6 - 8);
  v4[97] = swift_task_alloc();
  v7 = sub_20C135214();
  v4[98] = v7;
  v4[99] = *(v7 - 8);
  v4[100] = swift_task_alloc();
  v8 = sub_20C135C54();
  v4[101] = v8;
  v4[102] = *(v8 - 8);
  v4[103] = swift_task_alloc();
  v9 = sub_20C133154();
  v4[104] = v9;
  v4[105] = *(v9 - 8);
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v10 = sub_20C132E94();
  v4[108] = v10;
  v4[109] = *(v10 - 8);
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[113] = swift_task_alloc();
  v11 = sub_20C133954();
  v4[114] = v11;
  v4[115] = *(v11 - 8);
  v4[116] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B619928, 0, 0);
}

uint64_t sub_20B619928()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[91];
  v5 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v4 + v5, v3, &unk_27C76A970);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_20B520158(v0[113], &unk_27C76A970);
    v6 = sub_20C134E24();
    sub_20B6225C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51188], v6);
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[111];
    v11 = v0[109];
    v12 = v0[108];
    v13 = v0[107];
    v14 = v0[105];
    v15 = v0[104];
    v16 = v0[91];
    (*(v0[115] + 32))(v0[116], v0[113], v0[114]);
    sub_20C132E84();
    sub_20C133014();
    sub_20C132D64();
    v17 = *(v14 + 8);
    v0[117] = v17;
    v0[118] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v13, v15);
    v18 = *(v11 + 8);
    v0[119] = v18;
    v0[120] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v12);
    v19 = *(v16 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient + 24);
    v20 = *(v16 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient), v19);
    v21 = swift_task_alloc();
    v0[121] = v21;
    *v21 = v0;
    v21[1] = sub_20B619CA0;
    v22 = v0[112];
    v23 = v0[103];

    return MEMORY[0x2821ADEB8](v23, v22, v19, v20);
  }
}

uint64_t sub_20B619CA0()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_20B61ABF0;
  }

  else
  {
    v2 = sub_20B619DB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B619DB4()
{
  if (*(sub_20C133814() + 16))
  {
    sub_20B65B0BC(*(v0 + 824));
    if (v1)
    {
      v2 = *(v0 + 880);
      v3 = *(v0 + 848);
      v4 = *(v0 + 800);
      v5 = *(v0 + 792);
      v45 = *(v0 + 784);
      v47 = *(v0 + 728);

      v6 = sub_20C1367E4();
      v8 = v7;

      *(v0 + 984) = v6;
      *(v0 + 992) = v8;
      sub_20C135C04();
      sub_20C133894();
      (*(v5 + 8))(v4, v45);
      sub_20C133014();
      v9 = sub_20B621E08(v2, v3);
      if (*(v47 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform) > 1u)
      {
        if (*(v47 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform) == 2)
        {
          return sub_20C13DE24();
        }
      }

      else if (!*(v47 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_platform))
      {
        v11 = v9;
        v12 = v10;
        (*(v0 + 936))(*(v0 + 848), *(v0 + 832));
        if (v12 & 1 | (v11 != 0))
        {
          v13 = 46;
        }

        else
        {
          v13 = 42;
        }

LABEL_14:
        *(v0 + 1056) = v13;
        sub_20B619178(v13);

        v25 = sub_20C02A560();

        *(v0 + 712) = v6;
        *(v0 + 720) = v8;
        v26 = swift_task_alloc();
        *(v26 + 16) = v0 + 712;
        v27 = sub_20B79692C(sub_20B6220E4, v26, v25);

        if (v27)
        {
          v28 = swift_task_alloc();
          *(v0 + 1032) = v28;
          *v28 = v0;
          v28[1] = sub_20B61A798;
          v29 = *(v0 + 992);
          v30 = *(v0 + 984);
          v31 = *(v0 + 928);
          v32 = *(v0 + 880);
          v33 = *(v0 + 1056);

          return sub_20B616CF0(v0 + 184, v33, v31, v32, v30, v29);
        }

        else
        {
          v34 = *(v0 + 776);
          v35 = *(v0 + 768);
          v36 = *(v0 + 760);
          v37 = *(v0 + 752);

          sub_20C136554();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A20);
          v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_20C14F980;
          (*(v35 + 16))(v39 + v38, v34, v36);

          sub_20C02BC6C(v39, v37);

          swift_setDeallocating();
          v40 = *(v35 + 8);
          *(v0 + 1000) = v40;
          *(v0 + 1008) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v40(v39 + v38, v36);
          swift_deallocClassInstance();
          v41 = swift_task_alloc();
          *(v0 + 1016) = v41;
          *(v41 + 16) = "SeymourUI/ScheduledWorkoutPlanShelf.swift";
          *(v41 + 24) = 41;
          *(v41 + 32) = 2;
          *(v41 + 40) = 267;
          *(v41 + 48) = v37;
          v42 = swift_task_alloc();
          *(v0 + 1024) = v42;
          *v42 = v0;
          v42[1] = sub_20B61A48C;
          v43 = MEMORY[0x277D84F78] + 8;

          return MEMORY[0x2822008A0](v42, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5269D4, v41, v43);
        }
      }

      (*(v0 + 936))(*(v0 + 848), *(v0 + 832));
      v13 = 42;
      goto LABEL_14;
    }
  }

  v14 = *(v0 + 952);
  v46 = *(v0 + 928);
  v15 = *(v0 + 920);
  v44 = *(v0 + 912);
  v16 = *(v0 + 896);
  v17 = *(v0 + 864);
  v18 = *(v0 + 824);
  v19 = *(v0 + 816);
  v20 = *(v0 + 808);

  v21 = sub_20C134E24();
  sub_20B6225C4(&unk_27C762270, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51180], v21);
  swift_willThrow();
  (*(v19 + 8))(v18, v20);
  v14(v16, v17);
  (*(v15 + 8))(v46, v44);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20B61A48C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B61A6BC;
  }

  else
  {
    v4 = v2[94];
    v5 = v2[93];
    v6 = v2[92];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B61A5FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B61A5FC()
{
  (*(v0 + 1000))(*(v0 + 776), *(v0 + 760));
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_20B61A798;
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  v4 = *(v0 + 928);
  v5 = *(v0 + 880);
  v6 = *(v0 + 1056);

  return sub_20B616CF0(v0 + 184, v6, v4, v5, v3, v2);
}

uint64_t sub_20B61A6BC()
{
  (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));
  (*(v0 + 1000))(*(v0 + 776), *(v0 + 760));
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_20B61A798;
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  v4 = *(v0 + 928);
  v5 = *(v0 + 880);
  v6 = *(v0 + 1056);

  return sub_20B616CF0(v0 + 184, v6, v4, v5, v3, v2);
}

uint64_t sub_20B61A798()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {

    v3 = sub_20B61AD2C;
  }

  else
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 248);
    v6 = *(v2 + 200);
    *(v2 + 520) = *(v2 + 184);
    *(v2 + 536) = v6;
    *(v2 + 552) = *(v2 + 216);
    *(v2 + 568) = v4;
    v7 = *(v2 + 296);
    v8 = *(v2 + 328);
    *(v2 + 648) = *(v2 + 312);
    *(v2 + 664) = v8;
    v9 = *(v2 + 264);
    v10 = *(v2 + 280);
    *(v2 + 584) = v5;
    *(v2 + 600) = v9;
    *(v2 + 680) = *(v2 + 344);
    *(v2 + 616) = v10;
    *(v2 + 632) = v7;

    v3 = sub_20B61A900;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B61A900()
{
  *(v0 + 512) = *(v0 + 680);
  v1 = *(v0 + 664);
  *(v0 + 480) = *(v0 + 648);
  *(v0 + 496) = v1;
  v2 = *(v0 + 600);
  *(v0 + 416) = *(v0 + 584);
  *(v0 + 432) = v2;
  v3 = *(v0 + 632);
  *(v0 + 448) = *(v0 + 616);
  *(v0 + 464) = v3;
  v4 = *(v0 + 536);
  *(v0 + 352) = *(v0 + 520);
  *(v0 + 368) = v4;
  v5 = *(v0 + 568);
  *(v0 + 384) = *(v0 + 552);
  *(v0 + 400) = v5;
  nullsub_1(v0 + 352);
  v6 = *(v0 + 496);
  *(v0 + 144) = *(v0 + 480);
  *(v0 + 160) = v6;
  *(v0 + 176) = *(v0 + 512);
  v7 = *(v0 + 432);
  *(v0 + 80) = *(v0 + 416);
  *(v0 + 96) = v7;
  v8 = *(v0 + 464);
  *(v0 + 112) = *(v0 + 448);
  *(v0 + 128) = v8;
  v9 = *(v0 + 368);
  *(v0 + 16) = *(v0 + 352);
  *(v0 + 32) = v9;
  v10 = *(v0 + 400);
  *(v0 + 48) = *(v0 + 384);
  *(v0 + 64) = v10;
  sub_20C13CDA4();
  *(v0 + 1048) = sub_20C13CD94();
  v12 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B61AA00, v12, v11);
}

uint64_t sub_20B61AA00()
{

  sub_20B619338(v0 + 16);
  sub_20B621D00(v0 + 184);

  return MEMORY[0x2822009F8](sub_20B61AA7C, 0, 0);
}

uint64_t sub_20B61AA7C()
{
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[112];
  v11 = v0[114];
  v5 = v0[108];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v1();
  (*(v7 + 8))(v6, v8);
  (v1)(v4, v5);
  (*(v3 + 8))(v2, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B61ABF0()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  (*(v0 + 952))(*(v0 + 896), *(v0 + 864));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20B61AD2C()
{
  v1 = v0[119];
  v11 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[112];
  v5 = v0[108];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v1(v0[110], v5);
  (*(v7 + 8))(v6, v8);
  v1(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B61AEA4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_archivedSessionClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_subscriptionCache);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_mediaTagStringBuilder);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan, &unk_27C76A970);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  return v0;
}

uint64_t sub_20B61B068()
{
  sub_20B61AEA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScheduledWorkoutPlanShelf()
{
  result = qword_27C7629E8;
  if (!qword_27C7629E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B61B114()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B61B238();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B61B238()
{
  if (!qword_27C7629F8)
  {
    sub_20C133954();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7629F8);
    }
  }
}

uint64_t sub_20B61B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[71] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v4[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v4[73] = swift_task_alloc();
  v5 = sub_20C133954();
  v4[74] = v5;
  v4[75] = *(v5 - 8);
  v4[76] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[77] = v6;
  v4[78] = *(v6 - 8);
  v4[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B61B41C, 0, 0);
}

uint64_t sub_20B61B41C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[71];
  sub_20C13B454();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient + 24);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlanClient), v5);
  v7 = swift_task_alloc();
  v0[80] = v7;
  *v7 = v0;
  v7[1] = sub_20B61B548;
  v8 = v0[76];

  return MEMORY[0x2821ADE88](v8, v5, v6);
}

uint64_t sub_20B61B548()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_20B61B830;
  }

  else
  {
    v2 = sub_20B61B65C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B61B65C()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan;
  swift_beginAccess();
  sub_20B621C90(v4, v6 + v7);
  swift_endAccess();
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;

  sub_20B614F94(0, 0, v5, &unk_20C151278, v9);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B61B830()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 568);
  (*(*(v0 + 600) + 56))(v1, 1, 1, *(v0 + 592));
  v3 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan;
  swift_beginAccess();
  sub_20B621C90(v1, v2 + v3);
  swift_endAccess();
  *(v0 + 360) = 0;
  *(v0 + 368) = 1;
  *(v0 + 392) = 128;
  v4 = MEMORY[0x277D84F90];
  *(v0 + 456) = MEMORY[0x277D84F90];
  *(v0 + 464) = v4;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 352) = 0;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 2;
  v5 = *(v0 + 352);
  v6 = *(v0 + 368);
  v7 = *(v0 + 400);
  *(v0 + 216) = *(v0 + 384);
  *(v0 + 200) = v6;
  *(v0 + 184) = v5;
  v8 = *(v0 + 416);
  v9 = *(v0 + 448);
  v10 = *(v0 + 464);
  *(v0 + 264) = *(v0 + 432);
  *(v0 + 280) = v9;
  *(v0 + 248) = v8;
  *(v0 + 232) = v7;
  v11 = *(v0 + 480);
  v12 = *(v0 + 496);
  *(v0 + 344) = 2;
  *(v0 + 312) = v11;
  *(v0 + 328) = v12;
  *(v0 + 296) = v10;
  nullsub_1(v0 + 184);
  v13 = *(v0 + 296);
  v14 = *(v0 + 328);
  *(v0 + 144) = *(v0 + 312);
  *(v0 + 160) = v14;
  *(v0 + 176) = *(v0 + 344);
  v15 = *(v0 + 264);
  v16 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 248);
  *(v0 + 96) = v15;
  v17 = *(v0 + 232);
  *(v0 + 112) = v16;
  *(v0 + 128) = v13;
  v18 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v18;
  *(v0 + 48) = *(v0 + 216);
  *(v0 + 64) = v17;
  sub_20C13CDA4();
  *(v0 + 656) = sub_20C13CD94();
  v20 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B61B9F8, v20, v19);
}