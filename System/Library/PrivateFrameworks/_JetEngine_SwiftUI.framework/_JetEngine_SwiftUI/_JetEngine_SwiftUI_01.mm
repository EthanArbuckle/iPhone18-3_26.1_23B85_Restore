uint64_t sub_1B79791AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v7 = sub_1B7A96BF0();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99670();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B7A97040();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x1E697BE30])
  {
    v20 = (a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 44));
    v22 = *(v20 + 1);
    v44 = *v20;
    v21 = v44;
    v45 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
    sub_1B7A986D0();
    v23 = v43;
    v44 = v21;
    v45 = v22;
    sub_1B7A986D0();
    v44 = v21;
    v45 = v22;
    v43 = v43 & 0x100 | v23 & 1 | 0x8000;
    return sub_1B7A986E0();
  }

  else
  {
    v37 = a2;
    if (v19 == *MEMORY[0x1E697BE38])
    {
      v25 = v37 + *(type metadata accessor for ImpressionableViewModifier(0) + 44);
      v26 = *v25;
      v27 = *(v25 + 8);
      v44 = *v25;
      v45 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
      result = sub_1B7A986D0();
      v39 = v7;
      if (v43 < 0)
      {
        v28 = v43;
        v44 = v26;
        v45 = v27;
        v43 &= 0x101u;
        result = sub_1B7A986E0();
        if ((v28 & 0x100) != 0)
        {
          v29 = *v37;
          v30 = *(*v37 + 16);
          if (v30)
          {
            ObjectType = swift_getObjectType();
            v36 = *(v11 + 16);
            v37 = ObjectType;
            v32 = v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
            v33 = *(v11 + 72);
            v34 = (v11 + 8);
            v35 = (v38 + 8);
            do
            {
              v36(v13, v32, v10);
              sub_1B7A96BE0();
              sub_1B7A99700();
              (*v34)(v13, v10);
              result = (*v35)(v9, v39);
              v32 += v33;
              --v30;
            }

            while (v30);
          }
        }
      }
    }

    else
    {
      return (*(v15 + 8))(v18, v14);
    }
  }

  return result;
}

uint64_t sub_1B79795A8(uint64_t a1)
{
  sub_1B7957888(a1, &qword_1EBA45D18);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ImpressionableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  sub_1B7A986D0();
  v2 = sub_1B7A96C20();
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_1B79796CC(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = sub_1B7A96C20();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 28)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
    sub_1B7A986D0();
    sub_1B7A998B0();
    sub_1B7A998E0();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
  }
}

uint64_t sub_1B7979930(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v70 = a3;
  v8 = sub_1B7A96BF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A99670();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v62 - v16;
  v17 = sub_1B7A97880();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ImpressionableViewModifier(0);
  if (a1)
  {
    v62 = v9;
    v63 = v12;
    v21 = a5;
    v67 = v20;
    v22 = a2 + *(v20 + 32);
    v23 = *(v22 + 1);
    v24 = v22[16];
    if (v22[17] == 1)
    {
      v25 = *v22;
      v26 = v22[16];
      sub_1B797DEF0(*v22, v23);
    }

    else
    {
      v40 = *v22;

      LODWORD(ObjectType) = sub_1B7A9AA10();
      v41 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B797D5A0(v40, v23, v24, 0);
      (*(v68 + 8))(v19, v17);
      v25 = v71;
      v23 = v72;
      v26 = v73;
    }

    v42 = v66;
    v43 = v8;
    v44 = v63;
    if (v23 && (v71 = v25, v72 = v23, v73 = v26 & 1, v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8), MEMORY[0x1B8CA9A40](&v74, v45), v46 = v74, , , (v46 & 1) == 0))
    {
      v59 = a2 + *(v67 + 44);
      v60 = *v59;
      v61 = *(v59 + 1);
      LOWORD(v71) = v60;
      v72 = v61;
      LOWORD(v74) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
      return sub_1B7A986E0();
    }

    else
    {
      v47 = a2 + *(v67 + 44);
      v48 = *v47;
      v49 = *(v47 + 1);
      LOWORD(v71) = v48;
      v72 = v49;
      LOWORD(v74) = 257;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
      sub_1B7A986E0();
      v50 = *a2;
      v67 = v43;
      v68 = v21;
      v51 = *(v50 + 16);
      result = v70;
      v52 = v64;
      if (v51)
      {
        ObjectType = swift_getObjectType();
        v55 = *(v52 + 16);
        v53 = v52 + 16;
        v54 = v55;
        v56 = v50 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
        v57 = *(v53 + 56);
        v58 = (v62 + 8);
        do
        {
          v54(v42, v56, v44);
          sub_1B7A96BE0();
          sub_1B7A99700();
          v42 = v66;
          (*(v53 - 8))(v66, v44);
          result = (*v58)(v11, v67);
          v56 += v57;
          --v51;
        }

        while (v51);
      }
    }
  }

  else
  {
    v27 = v9;
    v28 = a2 + *(v20 + 44);
    v29 = *v28;
    v30 = *(v28 + 1);
    LOWORD(v71) = v29;
    v72 = v30;
    LOWORD(v74) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
    sub_1B7A986E0();
    v31 = *a2;
    v67 = v8;
    v68 = a5;
    v32 = *(v31 + 16);
    result = v70;
    v34 = v64;
    if (v32)
    {
      v35 = swift_getObjectType();
      v37 = *(v34 + 16);
      v36 = v34 + 16;
      ObjectType = v37;
      v66 = v35;
      v38 = v31 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
      v39 = *(v36 + 56);
      do
      {
        ObjectType(v14, v38, v12);
        sub_1B7A96BE0();
        sub_1B7A99710();
        (*(v36 - 8))(v14, v12);
        result = (*(v27 + 8))(v11, v67);
        v38 += v39;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t sub_1B7979EAC(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v36[1] = a3;
  v7 = sub_1B7A96BF0();
  v36[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A99670();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  v17 = a2 + *(type metadata accessor for ImpressionableViewModifier(0) + 44);
  v18 = *v17;
  v19 = *(v17 + 1);
  v39 = v7;
  if (a1)
  {
    v43 = v18;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
    result = sub_1B7A986D0();
    if (v42 & 0x80000000) == 0 && (v42 & 0x100) == 0 && (v42)
    {
      v43 = v18;
      v44 = v19;
      v42 = 257;
      result = sub_1B7A986E0();
      v21 = *a2;
      v22 = *(v21 + 16);
      if (v22)
      {
        ObjectType = swift_getObjectType();
        v37 = *(v11 + 16);
        v38 = ObjectType;
        v24 = v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v25 = *(v11 + 72);
        v26 = (v11 + 8);
        v27 = (v36[0] + 8);
        do
        {
          v37(v16, v24, v10);
          sub_1B7A96BE0();
          sub_1B7A99700();
          (*v26)(v16, v10);
          result = (*v27)(v9, v39);
          v24 += v25;
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    v43 = v18;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF0);
    sub_1B7A986D0();
    v43 = v18;
    v44 = v19;
    v42 &= 1u;
    result = sub_1B7A986E0();
    v28 = *a2;
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v10;
      v31 = swift_getObjectType();
      v32 = v11 + 16;
      v37 = *(v11 + 16);
      v38 = v31;
      v33 = v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v34 = *(v11 + 72);
      v35 = (v36[0] + 8);
      do
      {
        v37(v13, v33, v30);
        sub_1B7A96BE0();
        sub_1B7A99710();
        (*(v32 - 8))(v13, v30);
        result = (*v35)(v9, v39);
        v33 += v34;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

uint64_t sub_1B797A258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DC8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D98);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v25 - v16, &qword_1EBA45D60);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45D98);
    swift_storeEnumTagMultiPayload();
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &unk_1B7A9C538, sub_1B797D0E4);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45D98;
  }

  else
  {
    v22 = &v11[*(v9 + 36)];
    v23 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v22[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
    swift_storeEnumTagMultiPayload();
    *v22 = a2;
    *(v22 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45D60);
    sub_1B7957820(v11, v14, &qword_1EBA45DC8);
    swift_storeEnumTagMultiPayload();
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &unk_1B7A9C538, sub_1B797D0E4);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45DC8;
  }

  return sub_1B7957888(v20, v21);
}

uint64_t sub_1B797A588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E70);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E78);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E80);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v25 - v16, &qword_1EBA45E88);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45E80);
    swift_storeEnumTagMultiPayload();
    sub_1B797E1E0();
    sub_1B797E12C(&qword_1EDC0EBB8, &qword_1EBA45E70, &unk_1B7AA2240, sub_1B797E26C);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45E80;
  }

  else
  {
    v22 = &v11[*(v9 + 36)];
    v23 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v22[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
    swift_storeEnumTagMultiPayload();
    *v22 = a2;
    *(v22 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45E88);
    sub_1B7957820(v11, v14, &qword_1EBA45E70);
    swift_storeEnumTagMultiPayload();
    sub_1B797E1E0();
    sub_1B797E12C(&qword_1EDC0EBB8, &qword_1EBA45E70, &unk_1B7AA2240, sub_1B797E26C);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45E70;
  }

  return sub_1B7957888(v20, v21);
}

uint64_t sub_1B797A8B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E10);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E18);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E20);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  if (a1)
  {
    sub_1B7957820(v5, v25 - v16, &qword_1EBA45E28);
    v18 = &v17[*(v15 + 36)];
    *v18 = a2;
    *(v18 + 1) = a3;
    *(v18 + 2) = a1;
    sub_1B7957820(v17, v14, &qword_1EBA45E20);
    swift_storeEnumTagMultiPayload();
    sub_1B797DF30();
    sub_1B797E12C(&qword_1EBA45E68, &qword_1EBA45E10, &unk_1B7A9C5A0, sub_1B797DFBC);
    v19 = a1;

    sub_1B7A97B30();
    v20 = v17;
    v21 = &qword_1EBA45E20;
  }

  else
  {
    v22 = &v11[*(v9 + 36)];
    v23 = *(type metadata accessor for _OnScenePhaseChange(0) + 20);
    *&v22[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
    swift_storeEnumTagMultiPayload();
    *v22 = a2;
    *(v22 + 1) = a3;
    sub_1B7957820(v5, v11, &qword_1EBA45E28);
    sub_1B7957820(v11, v14, &qword_1EBA45E10);
    swift_storeEnumTagMultiPayload();
    sub_1B797DF30();
    sub_1B797E12C(&qword_1EBA45E68, &qword_1EBA45E10, &unk_1B7A9C5A0, sub_1B797DFBC);

    sub_1B7A97B30();
    v20 = v11;
    v21 = &qword_1EBA45E10;
  }

  return sub_1B7957888(v20, v21);
}

double sub_1B797ABFC@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a1;
  v3 = sub_1B7A97540();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A97310();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-2] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, *&v31[0], v11, v13);
  sub_1B7A972E0();
  v17 = v16;
  v19 = v18;
  sub_1B7A97CB0();
  sub_1B7A97300();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E697E668], v3);
  sub_1B7A972D0();
  v30 = v33;
  *v31 = v32;
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  v29 = v30;
  result = v31[0];
  *(a2 + 48) = *v31;
  *(a2 + 64) = v29;
  return result;
}

uint64_t sub_1B797AEBC(double *a1, uint64_t a2)
{
  v4 = sub_1B7A97880();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v32 = a1[1];
  v33 = v8;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[8];
  v30 = a1[9];
  v31 = v13;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a2 + 48);
  v14 = *(a2 + 40);
  v36 = v14;
  v15 = v37;

  if ((v15 & 1) == 0)
  {
    sub_1B7A9AA10();
    v16 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v36, &qword_1EBA45F40);
    (*(v5 + 8))(v7, v4);
    v14 = v35;
  }

  if (v14)
  {
    swift_getKeyPath();
    *&v35 = v14;
    sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
    sub_1B7A96CB0();

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v21 = *(v14 + 48);

    v23 = v30;
    v22 = v31;
    if ((v21 & 1) == 0)
    {
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      v39.origin.x = v9;
      v39.origin.y = v10;
      v39.size.width = v11;
      v39.size.height = v12;
      *(&v22 - 2) = CGRectIntersection(v38, v39);
    }
  }

  else
  {
    v23 = v30;
    v22 = v31;
  }

  if (v22 / v33 >= v23 / v32)
  {
    v24 = v23 / v32;
  }

  else
  {
    v24 = v22 / v33;
  }

  v25 = *a2;
  v26 = *a2 < v24;
  v35 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F48);
  sub_1B7A986D0();
  v27 = *(v34 + 16);

  if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    v35 = *(a2 + 24);
    sub_1B7A986D0();
    *(v34 + 16) = v25 < v24;

    (*(a2 + 8))(v25 < v24);
  }
}

uint64_t sub_1B797B21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 40);
  v15 = *(v2 + 32);
  v8 = v15;
  v16 = v7;
  v17 = *(v2 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = *v2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = *(v2 + 40);
  *(v9 + 48) = v8;
  *(v9 + 56) = v10;
  *(v9 + 64) = *(v2 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F28);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F30) + 36));
  *v12 = sub_1B797ABFC;
  v12[1] = 0;
  v12[2] = sub_1B797EA94;
  v12[3] = v9;

  sub_1B7957820(&v15, v14, &qword_1EBA45F38);
  return sub_1B7957820(&v16, v14, &qword_1EBA45F40);
}

uint64_t sub_1B797B37C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A96C20();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B797B3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B797EA9C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

__n128 sub_1B797B44C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
  sub_1B7A96CB0();

  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1B797B4FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
  sub_1B7A96CB0();

  v4 = *(v3 + 48);
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1B797B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B797B5EC(v3);
}

uint64_t sub_1B797B5EC(uint64_t result)
{
  v2 = result;
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(result + 32))
    {
      goto LABEL_7;
    }

    result = CGRectEqualToRect(*(v1 + 16), *result);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = *(v2 + 16);
    *(v1 + 16) = *v2;
    *(v1 + 32) = v3;
    *(v1 + 48) = *(v2 + 32);
    return result;
  }

  if (*(result + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
  sub_1B7A96CA0();
}

uint64_t sub_1B797B730()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI21ListContainerGeometry___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B797B7CC@<X0>(void *a1@<X8>)
{
  v2 = sub_1B7A97BE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A97CB0();
  sub_1B7A97300();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1B797B8D8(CGFloat *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0);
  sub_1B7A97000();
  v5 = v8;
  *&v9 = v1;
  *(&v9 + 1) = v2;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  if ((*(v5 + 48) & 1) != 0 || (v11.origin.x = v1, v11.origin.y = v2, v11.size.width = v3, v11.size.height = v4, !CGRectEqualToRect(*(v5 + 16), v11)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
    sub_1B7A96CA0();
  }

  else
  {
    *(v5 + 16) = v9;
    *(v5 + 32) = v10;
    *(v5 + 48) = 0;
  }
}

uint64_t sub_1B797BAE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1B797E54C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListContainerGeometryModifier);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1B797E5B4(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ListContainerGeometryModifier);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45ED8);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = sub_1B797B7CC;
  *(v12 + 1) = 0;
  *(v12 + 2) = sub_1B797E61C;
  *(v12 + 3) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0);
  sub_1B7A97000();
  type metadata accessor for ListContainerGeometry(0);
  sub_1B797E68C();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
  sub_1B7A98140();

  return sub_1B7957888(v8, &qword_1EBA45EC0);
}

uint64_t List.impressionListContainer()(uint64_t a1)
{
  v2 = type metadata accessor for ListContainerGeometryModifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListContainerGeometry(0);
  sub_1B7A96FF0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v4, a1, v2, WitnessTable);
  return sub_1B797C6D4(v4, type metadata accessor for ListContainerGeometryModifier);
}

uint64_t sub_1B797BEF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_1B7A97880();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1B7957820(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B797E788(v13, v17, a2);
  }

  sub_1B7A9AA10();
  v15 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B797C0F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1B7A97880();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1B7957820(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1B7A9AA10();
    v17 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1B797C31C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7A97880();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v2, v11, &qword_1EBA45E08);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B797C4E0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1B7A97880();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7957820(v6, v14, a1);
  if (v15 == 1)
  {
    return a2(v14, a3);
  }

  sub_1B7A9AA10();
  v13 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B797C658@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListContainerGeometry(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  result = sub_1B7A96CE0();
  *a1 = v2;
  return result;
}

uint64_t sub_1B797C6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B797C760()
{
  result = sub_1B7A96CF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B797C7FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B797C86C()
{
  sub_1B797CD54(319, &qword_1EBA45CE8, type metadata accessor for ListContainerGeometry, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for ImpressionableViewModifier.ViewState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49153 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49153 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49153;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49153;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFE | (*a1 >> 15) | (*a1 >> 1) & 0x3F00) ^ 0x3FFF;
  if (v6 >= 0x3FFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ImpressionableViewModifier.ViewState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49153 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49153 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFE)
  {
    v6 = ((a2 - 0x3FFF) >> 16) + 1;
    *result = a2 - 0x3FFF;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_1B797CB00()
{
  sub_1B797CD54(319, &qword_1EDC0FC78, MEMORY[0x1E69AB1E8], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B7A99A20();
    if (v1 <= 0x3F)
    {
      sub_1B797CE00(319, &qword_1EDC0FC70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EDC10140, &qword_1EBA45D08);
        if (v3 <= 0x3F)
        {
          sub_1B797CD54(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EDC10A78, &qword_1EBA45D10);
            if (v5 <= 0x3F)
            {
              sub_1B797CE00(319, &qword_1EDC0FCB8, &type metadata for ImpressionableViewModifier.ViewState, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1B797CD54(319, &qword_1EDC10128, MEMORY[0x1E69695A8], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1B797CE50(319, &qword_1EDC10150, &qword_1EBA45D18);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B797CD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1B797CE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B797CE50(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1B7A970E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B797CEE8()
{
  result = qword_1EDC0EB98;
  if (!qword_1EDC0EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D58);
    sub_1B797CFA0();
    sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB98);
  }

  return result;
}

unint64_t sub_1B797CFA0()
{
  result = qword_1EDC0EBA8;
  if (!qword_1EDC0EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D68);
    sub_1B797D058();
    sub_1B797E12C(&qword_1EDC0EBC8, &qword_1EBA45DC8, &unk_1B7A9C538, sub_1B797D0E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBA8);
  }

  return result;
}

unint64_t sub_1B797D058()
{
  result = qword_1EDC0EBC0;
  if (!qword_1EDC0EBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D98);
    sub_1B797D0E4();
    sub_1B797D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBC0);
  }

  return result;
}

unint64_t sub_1B797D0E4()
{
  result = qword_1EDC0EBD8;
  if (!qword_1EDC0EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D60);
    sub_1B797D170();
    sub_1B797D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBD8);
  }

  return result;
}

unint64_t sub_1B797D170()
{
  result = qword_1EDC0EBE8;
  if (!qword_1EDC0EBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DA0);
    sub_1B797D1FC();
    sub_1B797D398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBE8);
  }

  return result;
}

unint64_t sub_1B797D1FC()
{
  result = qword_1EDC0EBF8;
  if (!qword_1EDC0EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DA8);
    sub_1B797D2B4();
    sub_1B797EC34(&qword_1EDC0FCC0, &qword_1EBA45DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBF8);
  }

  return result;
}

unint64_t sub_1B797D2B4()
{
  result = qword_1EDC0EC10;
  if (!qword_1EDC0EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB0);
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
    sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC10);
  }

  return result;
}

unint64_t sub_1B797D398()
{
  result = qword_1EDC0EE90;
  if (!qword_1EDC0EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EE90);
  }

  return result;
}

unint64_t sub_1B797D3EC()
{
  result = qword_1EDC100C8;
  if (!qword_1EDC100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100C8);
  }

  return result;
}

unint64_t sub_1B797D440()
{
  result = qword_1EDC108E0[0];
  if (!qword_1EDC108E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC108E0);
  }

  return result;
}

unint64_t sub_1B797D494()
{
  result = qword_1EDC0EB88;
  if (!qword_1EDC0EB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D80);
    sub_1B797CEE8();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB88);
  }

  return result;
}

unint64_t sub_1B797D54C()
{
  result = qword_1EDC108A0;
  if (!qword_1EDC108A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC108A0);
  }

  return result;
}

uint64_t sub_1B797D5A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1B797D5AC(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1B797D5AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B797D5F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1B7A996F0() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1B79791AC(a1, v1 + v4, v7, v8, v9);
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for ImpressionableViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_1B7A99A20();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_1B797D5A0(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16), *(v2 + v1[8] + 17));
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  j__swift_release();

  v7 = v2 + v1[12];
  v8 = sub_1B7A96C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);

  v10(v2 + v1[13], v8);

  v11 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v9 + 48))(v2 + v11, 1, v8))
    {
      v10(v2 + v11, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B797D9CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for ImpressionableViewModifier(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v18 = sub_1B7A996F0();
  v2 = *(v18 - 8);
  v14 = *(v2 + 80);
  v16 = (v17 + 16) & ~v17;
  v3 = v0 + v16;

  v4 = v1[5];
  v5 = sub_1B7A99A20();
  (*(*(v5 - 8) + 8))(v0 + v16 + v4, v5);
  sub_1B797D5A0(*(v3 + v1[8]), *(v3 + v1[8] + 8), *(v3 + v1[8] + 16), *(v3 + v1[8] + 17));
  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B7A99900();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release();

  v8 = v3 + v1[12];
  v9 = sub_1B7A96C20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);

  v11(v3 + v1[13], v9);

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v10 + 48))(v3 + v12, 1, v9))
    {
      v11(v3 + v12, v9);
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14), v18);

  return swift_deallocObject();
}

uint64_t sub_1B797DDF0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImpressionableViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1B7A996F0() - 8);
  v8 = *(v2 + v6);
  v9 = *(v2 + v6 + 8);
  v10 = v2 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8, v9, v10);
}

uint64_t sub_1B797DEF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B797DF30()
{
  result = qword_1EBA45E30;
  if (!qword_1EBA45E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E20);
    sub_1B797DFBC();
    sub_1B797D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E30);
  }

  return result;
}

unint64_t sub_1B797DFBC()
{
  result = qword_1EBA45E38;
  if (!qword_1EBA45E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E28);
    sub_1B797E048();
    sub_1B797D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E38);
  }

  return result;
}

unint64_t sub_1B797E048()
{
  result = qword_1EBA45E40;
  if (!qword_1EBA45E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E48);
    sub_1B797EC34(&qword_1EBA45E50, &qword_1EBA45E58);
    sub_1B797EC34(&qword_1EDC0EB48, &qword_1EBA45E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45E40);
  }

  return result;
}

uint64_t sub_1B797E12C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1B797C7FC(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B797E1E0()
{
  result = qword_1EDC0EBB0;
  if (!qword_1EDC0EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E80);
    sub_1B797E26C();
    sub_1B797D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBB0);
  }

  return result;
}

unint64_t sub_1B797E26C()
{
  result = qword_1EDC0EBD0;
  if (!qword_1EDC0EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E88);
    sub_1B797E2F8();
    sub_1B797D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBD0);
  }

  return result;
}

unint64_t sub_1B797E2F8()
{
  result = qword_1EDC0EBE0;
  if (!qword_1EDC0EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E90);
    sub_1B797E3B0();
    sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBE0);
  }

  return result;
}

unint64_t sub_1B797E3B0()
{
  result = qword_1EDC0EBF0;
  if (!qword_1EDC0EBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E98);
    sub_1B797E468();
    sub_1B797EC34(&qword_1EDC0FCC0, &qword_1EBA45DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBF0);
  }

  return result;
}

unint64_t sub_1B797E468()
{
  result = qword_1EDC0EC08;
  if (!qword_1EDC0EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EA0);
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8);
    sub_1B797EC34(&qword_1EDC0FCD0, &qword_1EBA45EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC08);
  }

  return result;
}

uint64_t sub_1B797E54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B797E5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B797E61C(CGFloat *a1)
{
  type metadata accessor for ListContainerGeometryModifier(0);

  return sub_1B797B8D8(a1);
}

unint64_t sub_1B797E68C()
{
  result = qword_1EBA45EE0;
  if (!qword_1EBA45EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EC0);
    sub_1B797EC34(&qword_1EBA45EE8, &qword_1EBA45ED8);
    sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45EE0);
  }

  return result;
}

__n128 sub_1B797E770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1B797E788(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B797E7F0()
{
  result = qword_1EDC0FD98;
  if (!qword_1EDC0FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD98);
  }

  return result;
}

unint64_t sub_1B797E844()
{
  result = qword_1EDC10088;
  if (!qword_1EDC10088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10088);
  }

  return result;
}

unint64_t sub_1B797E898()
{
  result = qword_1EDC10080;
  if (!qword_1EDC10080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10080);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B797E918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B797E960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B797E9C0()
{
  result = qword_1EDC0EB78;
  if (!qword_1EDC0EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F20);
    sub_1B797D494();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB78);
  }

  return result;
}

unint64_t sub_1B797EA9C()
{
  result = qword_1EDC100D0;
  if (!qword_1EDC100D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D18);
    sub_1B797C7FC(&qword_1EDC100D8, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100D0);
  }

  return result;
}

unint64_t sub_1B797EB50()
{
  result = qword_1EDC0EC00;
  if (!qword_1EDC0EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F30);
    sub_1B797EC34(&qword_1EDC0EB58, &qword_1EBA45F28);
    sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EC00);
  }

  return result;
}

uint64_t sub_1B797EC34(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShelfPage.init(_:spacing:configuration:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for ShelfPage();
  v16 = (a8 + v15[15]);
  type metadata accessor for ShelfContainerEnvironmentValues();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1B7A96CE0();
  sub_1B7A986C0();
  *v16 = v23;
  v16[1] = v24;
  v18 = *(a7 - 8);
  (*(v18 + 16))(a8, a1, a7);
  v19 = a8 + v15[11];
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  *(a8 + v15[12]) = a4;
  v20 = (a8 + v15[13]);
  *v20 = a5;
  v20[1] = a6;
  result = (*(v18 + 8))(a1, a7);
  *(a8 + v15[14]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t type metadata accessor for ShelfContainerEnvironmentValues()
{
  result = qword_1EBA462C0;
  if (!qword_1EBA462C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfPage.init<A>(_:spacing:configuration:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a2;
  v26 = a4;
  v24 = a3;
  v22 = a1;
  v23 = a9;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a12;
  v20[7] = a5;
  v20[8] = a6;
  v27 = a7;
  v28 = a8;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  type metadata accessor for _ShelfPageStaticContent();
  swift_getWitnessTable();
  ShelfPage.init(_:spacing:configuration:content:)(v19, v25, v24 & 1, v26, sub_1B797F2AC, v20, a7, v23);
  return (*(v16 + 8))(v22, a7);
}

uint64_t sub_1B797F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v34 = a8;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a9;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v21 = type metadata accessor for _ShelfPageStaticContent();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - v27;
  (*(v13 + 16))(v15, v35, a4, v26);
  (*(v13 + 32))(v24, v15, a4);
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = v34;
  v29 = &v24[*(type metadata accessor for _ShelfPageStaticContent() + 60)];
  v30 = v37;
  *v29 = v36;
  *(v29 + 1) = v30;
  swift_getWitnessTable();
  v31 = *(v22 + 16);
  v31(v28, v24, v21);
  v32 = *(v22 + 8);

  v32(v24, v21);
  v31(v38, v28, v21);
  return (v32)(v28, v21);
}

uint64_t _ShelfPageStaticContent.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _ShelfPageStaticContent();
  v9 = (a5 + *(result + 60));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t ShelfPage.init<A, B, C>(_:spacing:configuration:shelfTransaction:shelfWorking:shelfFailed:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v47 = a2;
  v48 = a4;
  v46 = a3;
  v44 = a1;
  v45 = a9;
  v39 = a10;
  v38 = a22;
  v36 = a21;
  v35 = a20;
  v34 = a19;
  v37 = a11;
  v22 = *(a12 - 8);
  v23 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v26 = swift_allocObject();
  *(v26 + 16) = a12;
  *(v26 + 24) = a13;
  *(v26 + 32) = a14;
  *(v26 + 40) = a15;
  *(v26 + 48) = a16;
  *(v26 + 56) = a17;
  v27 = v34;
  *(v26 + 64) = a18;
  *(v26 + 72) = v27;
  v28 = v35;
  v29 = v36;
  *(v26 + 80) = v35;
  *(v26 + 88) = v29;
  v30 = v38;
  v31 = v40;
  *(v26 + 96) = v38;
  *(v26 + 104) = v31;
  *(v26 + 112) = v41;
  *(v26 + 120) = v42;
  *(v26 + 128) = v43;
  *(v26 + 136) = v39;
  *(v26 + 152) = v37;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v56 = v27;
  v57 = v28;
  v58 = v29;
  v59 = v30;
  type metadata accessor for _ShelfPageContinuousContent();
  swift_getWitnessTable();
  ShelfPage.init(_:spacing:configuration:content:)(v25, v47, v46 & 1, v48, sub_1B797F92C, v26, a12, v45);
  return (*(v22 + 8))(v44, a12);
}

uint64_t sub_1B797F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned int (*a10)(char *, uint64_t, uint64_t), unsigned int (*a11)(char *, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v61 = a6;
  v62 = a8;
  v64 = a5;
  v65 = a7;
  v63 = a3;
  v66 = a9;
  v51 = a20;
  v52 = a19;
  v53 = a18;
  v54 = a17;
  v55 = a16;
  v56 = a15;
  v57 = a14;
  v60 = a11;
  v23 = *(a10 - 1);
  v58 = a13;
  v59 = a12;
  MEMORY[0x1EEE9AC00](a16);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a10;
  v68 = v26;
  v69 = v28;
  v70 = v27;
  v71 = v30;
  v72 = v29;
  v73 = v31;
  v74 = v32;
  v75 = v34;
  v76 = v33;
  v77 = v35;
  v36 = type metadata accessor for _ShelfPageContinuousContent();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v51 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v51 - v42;
  (*(v23 + 16))(v25, a1, a10, v41);
  v44 = a2;

  v45 = a4;

  v46 = v61;

  v47 = v62;

  _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)(v25, v44, v63, v45, v64, v46, v65, v47, v39, a10, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51);
  swift_getWitnessTable();
  v48 = *(v37 + 16);
  v48(v43, v39, v36);
  v49 = *(v37 + 8);
  v49(v39, v36);
  v48(v66, v43, v36);
  return (v49)(v43, v36);
}

uint64_t _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int (*a10)(char *, uint64_t, uint64_t), unsigned int (*a11)(char *, uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v37 = *(a10 - 1);
  (*(v37 + 16))(a9, a1, a10);
  v23 = type metadata accessor for _ShelfPageContinuousContent();
  *(a9 + v23[27]) = a2;
  v24 = (a9 + v23[28]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v23[29]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v23[30]);
  *v26 = a7;
  v26[1] = a8;
  v27 = *(*(*(a14 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  sub_1B7997BD4(a1, AssociatedTypeWitness, a10, a18, v27, a20);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  sub_1B7A9A6E0();
  sub_1B7A986C0();

  result = (*(v37 + 8))(a1, a10);
  v30 = (a9 + v23[31]);
  *v30 = a10;
  v30[1] = a11;
  return result;
}

uint64_t ShelfPage.init<A>(_:spacing:configuration:shelfTransaction:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a7;
  v29 = a6;
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = a2;
  v30 = a9;
  v26 = *(a8 - 8);
  v27 = a1;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v16);
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a13;
  v19[7] = a14;
  v19[8] = a15;
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a10;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a13;
  v20[7] = a14;
  v20[8] = a15;
  v21 = sub_1B7988414();
  v22 = sub_1B7988468();
  *&v24 = v20;
  *(&v24 + 1) = v29;
  ShelfPage.init<A, B, C>(_:spacing:configuration:shelfTransaction:shelfWorking:shelfFailed:shelfContent:)(v25, v32, v31 & 1, v33, v34, sub_1B79883C8, v19, sub_1B79883DC, v30, v24, v28, a8, a10, &type metadata for _IntentViewDefaultContinuousWorking, &type metadata for _IntentViewDefaultContinuousFailed, a11, a12, v21, v22, a13, a14, a15);
  return (*(v26 + 8))(v27, a8);
}

uint64_t sub_1B797FE10(uint64_t a1)
{
  v2 = type metadata accessor for ShelfPageContext();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  return (*(v3 + 8))(v6, v2);
}

uint64_t _IntentViewDefaultContinuousWorking.init<A>(context:)(uint64_t a1)
{
  v2 = type metadata accessor for ShelfPageContext();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1B797FF50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ShelfPageContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, a4, v10, v12);
  v15 = a1;

  result = (*(v11 + 8))(v14, v10);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.init<A>(error:retry:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ShelfPageContext();
  result = (*(*(v10 - 8) + 8))(a4, v10);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_1B79800F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46438);
  sub_1B7A986D0();
  return v1;
}

uint64_t sub_1B7980148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = *(a2 + 56);

  *(a3 + v7) = a1;
  return result;
}

uint64_t ShelfPage.onScroll(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(a3 + 56);
  v11 = *(a4 + v10);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B798793C(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1B798793C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1B79884D4;
  v15[5] = v9;
  *(a4 + v10) = v11;
  return result;
}

uint64_t ShelfPage.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = a1[3];
  *(v7 + 2) = a1[2];
  *(v7 + 3) = v8;
  *(v7 + 4) = a1[4];
  (*(v3 + 32))(&v7[v6], &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8);
  sub_1B7A97590();
  sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
  v35 = WitnessTable;
  v36 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
  v33 = v11;
  v34 = v12;
  v31 = swift_getWitnessTable();
  v32 = v11;
  swift_getWitnessTable();
  sub_1B7A97050();
  v13 = sub_1B7A97590();
  v14 = type metadata accessor for ShelfContainerEnvironmentValues();
  v29 = swift_getWitnessTable();
  v30 = v10;
  v15 = swift_getWitnessTable();
  v16 = sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeMetadata2();
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = sub_1B7A973D0();
  v24 = v17;
  v18 = sub_1B7A973E0();
  swift_getWitnessTable();
  v19 = *(*(v18 - 8) + 16);
  v19(&v25, &v23, v18);

  v23 = v25;
  v24 = v26;
  v19(v22, &v23, v18);
}

uint64_t sub_1B7980740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v66 = a3;
  v67 = a2;
  v65 = a1;
  v68 = a6;
  v63 = a5;
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8);
  sub_1B7A97590();
  v7 = sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
  v79 = WitnessTable;
  v80 = v9;
  v77 = swift_getWitnessTable();
  v78 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
  v75 = swift_getWitnessTable();
  v76 = v77;
  v64 = v7;
  v57 = swift_getWitnessTable();
  v10 = sub_1B7A97050();
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v49 - v11;
  v12 = sub_1B7A97590();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = v49 - v13;
  v14 = type metadata accessor for ShelfContainerEnvironmentValues();
  v61 = v10;
  v52 = swift_getWitnessTable();
  v73 = v52;
  v74 = v9;
  v15 = swift_getWitnessTable();
  v16 = sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v62 = v12;
  v69 = v12;
  v70 = v14;
  v55 = v14;
  v54 = v15;
  v71 = v15;
  v72 = v16;
  v53 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v50 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v49 - v21;
  sub_1B7A9A760();
  v49[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v66;
  v23 = v63;
  type metadata accessor for ShelfPage();
  v24 = v67;
  sub_1B79800F0();
  sub_1B7A972E0();
  sub_1B7980E74(v25, v26);

  sub_1B7A972C0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1B7A972E0();
  v36 = v35;
  v38 = v37;
  v39 = sub_1B7A97EC0();
  MEMORY[0x1EEE9AC00](v39);
  v49[-10] = v22;
  v49[-9] = a4;
  v49[-8] = v23;
  v49[-7] = v24;
  v49[-6] = v28;
  v49[-5] = v30;
  v49[-4] = v32;
  v49[-3] = v34;
  v49[-2] = v36;
  v49[-1] = v38;
  v40 = v56;
  sub_1B7A97060();
  v69 = 0xD000000000000023;
  v70 = 0x80000001B7AC4EF0;
  v41 = v58;
  v42 = v61;
  sub_1B7A981B0();
  (*(v59 + 8))(v40, v42);
  sub_1B79800F0();
  swift_checkMetadataState();
  v43 = v50;
  v44 = v62;
  sub_1B7A98140();

  (*(v60 + 8))(v41, v44);
  v45 = *(v18 + 16);
  v46 = v51;
  v45(v51, v43, OpaqueTypeMetadata2);
  v47 = *(v18 + 8);
  v47(v43, OpaqueTypeMetadata2);
  v45(v68, v46, OpaqueTypeMetadata2);
  v47(v46, OpaqueTypeMetadata2);
}

void sub_1B7980E74(double a1, double a2)
{
  if (*(v2 + 16) == a1)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
    sub_1B7A96CA0();
  }

  if (*(v2 + 24) == a2)
  {
    *(v2 + 24) = a2;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
    sub_1B7A96CA0();
  }
}

uint64_t sub_1B7981068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v98 = a5;
  v99 = a2;
  v20 = type metadata accessor for ShelfPage();
  v83 = *(v20 - 8);
  v81 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v78 - v21;
  v22 = a3;
  v23 = a4;
  v24 = sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98);
  v25 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8);
  v26 = sub_1B7A97590();
  v86 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v84 = &v78 - v29;
  v97 = v30;
  v96 = sub_1B7A97B40();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v78 - v31;
  v32 = sub_1B7A97BF0();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v90 = v24;
  v89 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v88 = &v78 - v34;
  v94 = v25;
  v91 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v80 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v79 = &v78 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v100 = &v78 - v40;
  sub_1B7A9A760();
  v92 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = sub_1B7A979A0();
  v87 = &v78;
  MEMORY[0x1EEE9AC00](v41);
  *(&v78 - 4) = v99;
  *(&v78 - 3) = v22;
  *(&v78 - 2) = v23;
  *(&v78 - 1) = a1;
  sub_1B7981D90();
  v42 = v88;
  v43 = v20;
  sub_1B7A97010();
  v115 = 0xD000000000000020;
  v116 = 0x80000001B7AC4EC0;
  v44 = v90;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A981B0();
  (*(v89 + 8))(v42, v44);
  if (*(*(a1 + *(v20 + 56)) + 16))
  {
    v46 = v83;
    v47 = v82;
    (*(v83 + 16))(v82, a1, v43);
    v48 = (*(v46 + 80) + 88) & ~*(v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v99;
    *(v49 + 24) = v22;
    *(v49 + 32) = v23;
    *(v49 + 40) = a6;
    *(v49 + 48) = a7;
    *(v49 + 56) = a8;
    *(v49 + 64) = a9;
    *(v49 + 72) = a10;
    *(v49 + 80) = a11;
    (*(v46 + 32))(v49 + v48, v47, v43);
    type metadata accessor for CGRect(0);
    v50 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
    v113 = WitnessTable;
    v114 = v50;
    v51 = v94;
    v52 = swift_getWitnessTable();
    sub_1B798B0CC(&qword_1EBA46428, type metadata accessor for CGRect);
    v53 = v85;
    sub_1B7A98220();

    v54 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
    v111 = v52;
    v112 = v54;
    v55 = v97;
    swift_getWitnessTable();
    v56 = v86;
    v57 = *(v86 + 16);
    v99 = WitnessTable;
    v58 = v84;
    v57(v84, v53, v55);
    v59 = *(v56 + 8);
    v59(v53, v55);
    v57(v53, v58, v55);
    v60 = v93;
    sub_1B79B5878(v53, v55);
    v59(v53, v55);
    v61 = v58;
    WitnessTable = v99;
    v59(v61, v55);
    (*(v91 + 8))(v100, v51);
  }

  else
  {
    v62 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
    v103 = WitnessTable;
    v104 = v62;
    v63 = v94;
    v64 = swift_getWitnessTable();
    v65 = v91;
    v66 = *(v91 + 16);
    v67 = v79;
    v66(v79, v100, v63);
    v68 = v80;
    v66(v80, v67, v63);
    v69 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
    v101 = v64;
    v102 = v69;
    v70 = v97;
    swift_getWitnessTable();
    v60 = v93;
    sub_1B7959A28(v68, v70, v63);
    v71 = *(v65 + 8);
    v71(v68, v63);
    v71(v67, v63);
    v71(v100, v63);
  }

  v72 = sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
  v109 = WitnessTable;
  v110 = v72;
  v73 = swift_getWitnessTable();
  v74 = sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
  v107 = v73;
  v108 = v74;
  v105 = swift_getWitnessTable();
  v106 = v73;
  v75 = v96;
  swift_getWitnessTable();
  v76 = v95;
  (*(v95 + 16))(v98, v60, v75);
  (*(v76 + 8))(v60, v75);
}

uint64_t sub_1B7981BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v16 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for ShelfPage();
  (*(a1 + *(v11 + 52)))(a1);
  v12 = *(v5 + 16);
  v12(v10, v7, a2);
  v13 = *(v5 + 8);
  v13(v7, a2);
  v12(v16, v10, a2);
  v13(v10, a2);
}

uint64_t sub_1B7981D90()
{
  sub_1B7A97BF0();
  sub_1B798B0CC(&qword_1EBA46430, MEMORY[0x1E697FCB0]);
  return sub_1B7A9AFE0();
}

void sub_1B7981E10(uint64_t a1@<X8>)
{
  *a1 = sub_1B7981E40();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1B7981E40()
{
  if (qword_1EBA45B20 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7A97540();
  __swift_project_value_buffer(v0, qword_1EBA45F50);
  sub_1B7A972F0();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  if (CGRectGetMinX(v6) != 0.0)
  {
    x = -x;
  }

  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMinY(v7);
  return x;
}

uint64_t sub_1B7981EF8(__int128 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v22 = *a1;
  v23 = a1[1];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a2 + *(type metadata accessor for ShelfPage() + 56));
  v16 = *(v15 + 16);
  v18 = v22;
  v17 = v23;
  if (v16)
  {
    v19 = v15 + 40;
    do
    {
      v20 = *(v19 - 8);
      *v24 = a3;
      *&v24[1] = a4;
      *&v24[2] = a5;
      *&v24[3] = a6;
      *&v24[4] = a7;
      *&v24[5] = a8;
      v25 = v18;
      v26 = v17;

      v20(v24);

      v18 = v22;
      v17 = v23;
      v19 += 16;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1B798205C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = *(a4 + 8);
  v9 = *(v52 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = *(v11 + 16);
  v50 = a5;
  v18(a5, a1, AssociatedTypeWitness, v15);
  v53 = a2;
  sub_1B7A9A920();
  v19 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = sub_1B7A9A440();
  v20 = *(v11 + 8);
  v20(v17, AssociatedTypeWitness);
  v48 = type metadata accessor for ShelfPageContext();
  v46 = *(v48 + 36);
  v51 = v19;
  if (a2)
  {
    sub_1B7A9A410();
    v21 = sub_1B7A9A9E0();
    v43 = v22;
    v44 = v21;
    v49 = *(v9 + 8);
    v23 = swift_getAssociatedTypeWitness();
    v24 = *(v23 - 8);
    v25 = *(v24 + 16);
    v26 = v50;
    v45 = v13;
    v27 = v20;
    v28 = v46;
    v25(v50 + v46, v43, v23);
    v44(v54, 0);
    v27(v17, AssociatedTypeWitness);
    v29 = v26 + v28;
    v20 = v27;
    v13 = v45;
    v30 = v23;
    v19 = v51;
    (*(v24 + 56))(v29, 0, 1, v30);
  }

  else
  {
    v49 = *(v9 + 8);
    v31 = swift_getAssociatedTypeWitness();
    v26 = v50;
    (*(*(v31 - 8) + 56))(v50 + v46, 1, 1, v31);
  }

  sub_1B7A9A960();
  sub_1B7A9A410();
  v20(v13, AssociatedTypeWitness);
  v32 = v19;
  v33 = sub_1B7A9A450();
  v20(v17, AssociatedTypeWitness);
  if (v33)
  {
    v34 = *(v48 + 40);
    v35 = v53;
    sub_1B7A9A940();
    v52 = sub_1B7A9A9E0();
    v50 = v36;
    v37 = swift_getAssociatedTypeWitness();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v26 + v34, v50, v37);
    (v52)(v54, 0);
    (*(*(a3 - 8) + 8))(v35, a3);
    v20(v51, AssociatedTypeWitness);
    v20(v17, AssociatedTypeWitness);
    return (*(v38 + 56))(v26 + v34, 0, 1, v37);
  }

  else
  {
    (*(*(a3 - 8) + 8))(v53, a3);
    v20(v32, AssociatedTypeWitness);
    v40 = *(v48 + 40);
    v41 = swift_getAssociatedTypeWitness();
    return (*(*(v41 - 8) + 56))(v26 + v40, 1, 1, v41);
  }
}

uint64_t ShelfPageContext.shelfOffset.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t ShelfPageContext.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfPageContext.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1B7982804(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B7982834@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B7982860@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B7982938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B7982968@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7A45BD4();

  *a1 = v2;
  return result;
}

uint64_t _ShelfPageStaticContent.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v42 = *(a1 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = type metadata accessor for IndexedRandomAccessCollection();
  MEMORY[0x1EEE9AC00](v7);
  v47 = v35 - v8;
  v9 = a1[6];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a1[3];
  v39 = v7;
  WitnessTable = swift_getWitnessTable();
  v38 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v7;
  v53 = AssociatedTypeWitness;
  v13 = v11;
  v35[2] = v11;
  v54 = v11;
  v55 = WitnessTable;
  v56 = AssociatedConformanceWitness;
  v14 = sub_1B7A988E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v36 = v35 - v19;
  v20 = v40;
  RandomAccessCollection.indexed.getter(v5, v47);
  v21 = a1[5];
  *&v22 = v6;
  *(&v22 + 1) = v21;
  *&v23 = v5;
  *(&v23 + 1) = v13;
  v45 = v22;
  v46 = v23;
  v48 = v23;
  v49 = v22;
  v50 = v9;
  v35[1] = swift_getKeyPath();
  v24 = v41;
  v25 = v42;
  (*(v42 + 16))(v41, v20, a1);
  v26 = (*(v25 + 80) + 56) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = v46;
  *(v27 + 32) = v28;
  *(v27 + 48) = v9;
  (*(v25 + 32))(v27 + v26, v24, a1);
  v29 = swift_allocObject();
  v30 = v45;
  *(v29 + 16) = v46;
  *(v29 + 32) = v30;
  *(v29 + 48) = v9;
  *(v29 + 56) = sub_1B79885A4;
  *(v29 + 64) = v27;
  sub_1B7A988B0();
  v51 = v21;
  swift_getWitnessTable();
  v31 = *(v15 + 16);
  v32 = v36;
  v31(v36, v17, v14);
  v33 = *(v15 + 8);
  v33(v17, v14);
  v31(v44, v32, v14);
  return (v33)(v32, v14);
}

uint64_t sub_1B7982E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v41 = a7;
  v42 = a1;
  v44 = a3;
  v45 = a2;
  v46 = a9;
  v43 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v34 - v15;
  v40 = type metadata accessor for ShelfPageContext();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v17;
  v18 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v35 = &v34 - v23;
  sub_1B7A9A760();
  v34 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = v41;
  v51 = a8;
  v24 = type metadata accessor for _ShelfPageStaticContent();
  v25 = a5;
  v26 = v44;
  v27 = *(v44 + *(v24 + 60));
  (*(v14 + 16))(v16, v42, AssociatedTypeWitness);
  v28 = v39;
  (*(v43 + 16))(v39, v26, a4);
  v29 = v36;
  sub_1B798205C(v16, v28, a4, a6, v36);
  v27(v45, v29);
  (*(v38 + 8))(v29, v40);
  v30 = *(v18 + 16);
  v31 = v35;
  v30(v35, v21, v25);
  v32 = *(v18 + 8);
  v32(v21, v25);
  v30(v46, v31, v25);
  v32(v31, v25);
}

uint64_t sub_1B7983280(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1B798334C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  sub_1B7A9A6E0();
  sub_1B7A98700();
  sub_1B7A986D0();
  return v1;
}

uint64_t sub_1B7983428()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  sub_1B7A9A6E0();
  sub_1B7A98700();
  sub_1B7A986F0();
  return v1;
}

uint64_t _ShelfPageContinuousContent.body.getter@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v72 = a2;
  v70 = *(a1 - 8);
  v71 = *(v70 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v68 = &v48.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v5 + 16);
  v3.i64[0] = v6;
  v77 = v3;
  v7 = *(v5 + 48);
  v8 = type metadata accessor for IndexedRandomAccessCollection();
  MEMORY[0x1EEE9AC00](v8);
  v76 = v48.i64 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v62 = *(a1 + 40);
  v94 = v62;
  v10.i64[0] = v7;
  v74 = *(a1 + 24);
  v93 = vextq_s8(v74, v74, 8uLL);
  v52 = vzip1q_s64(v77, v74);
  *&v11 = vdupq_laneq_s64(v74, 1).u64[0];
  *(&v11 + 1) = v62;
  v50 = v11;
  v73 = *(a1 + 56);
  v95 = vextq_s8(v73, v73, 8uLL);
  v49 = vzip1q_s64(v10, v73);
  v67 = vdupq_laneq_s64(v73, 1);
  v12 = *(a1 + 96);
  v77 = *(a1 + 72);
  swift_getAssociatedTypeWitness();
  v92 = swift_getAssociatedTypeWitness();
  v96 = v77.i64[0];
  v48 = vzip1q_s64(v67, v77);
  v55 = type metadata accessor for IntentResultView();
  type metadata accessor for _ContinuousIntentDispatchWorker();
  swift_getWitnessTable();
  v56 = type metadata accessor for _IntentDispatchViewModifier();
  v57 = sub_1B7A97590();
  v61 = type metadata accessor for PageResourceMetricsViewModifier();
  v13 = sub_1B7A97590();
  v59 = v13;
  v65 = v8;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a1 + 88);
  v92 = v8;
  v93.i64[0] = AssociatedTypeWitness;
  v93.i64[1] = v13;
  v94 = WitnessTable;
  v95.i64[0] = v14;
  v15 = v14;
  v53 = sub_1B7A988E0();
  AssociatedTypeWitness = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v48.i8[-v16];
  v17 = type metadata accessor for _PrefetchMediaArtworkAdapter();
  v60 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0);
  v19 = sub_1B79886C8();
  v92 = v17;
  v93.i64[0] = v18;
  v93.i64[1] = &off_1F2F95408;
  v94 = v19;
  v66 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v58 = sub_1B7A97590();
  v67.i64[0] = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = v48.i64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v48.i8[-v22];
  v23 = v75;
  RandomAccessCollection.indexed.getter(v6, v76);
  v79 = v50;
  v78 = v52;
  v81 = v48;
  v80 = v49;
  v82 = v77.i64[1];
  v24 = v15;
  v83 = v15;
  v84 = v12;
  v52.i64[0] = swift_getKeyPath();
  v25 = v70;
  v26 = v68;
  (*(v70 + 16))(v68, v23, a1);
  v27 = (*(v25 + 80) + 104) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v6;
  *(v28 + 24) = v74;
  v29 = v62;
  *(v28 + 40) = v62;
  *(v28 + 48) = v7;
  *(v28 + 56) = v73;
  *&v30 = v24;
  *(&v30 + 1) = v12;
  *(v28 + 88) = v30;
  *(v28 + 72) = v77;
  (*(v25 + 32))(v28 + v27, v26, a1);
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  *(v31 + 24) = v74;
  *(v31 + 40) = v29;
  *(v31 + 48) = v7;
  *(v31 + 56) = v73;
  *(v31 + 72) = v77;
  *(v31 + 88) = v24;
  *(v31 + 96) = v12;
  *(v31 + 104) = sub_1B7988744;
  *(v31 + 112) = v28;
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v90 = v32;
  v91 = v33;
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v88 = v34;
  v89 = v35;
  v47 = swift_getWitnessTable();
  v36 = v54;
  sub_1B7A988B0();
  v92 = sub_1B798334C();
  v87 = v47;
  v37 = v53;
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = v51;
  sub_1B79A1864(&v92, v37, v38, v51);

  (*(AssociatedTypeWitness + 8))(v36, v37);
  v40 = swift_getWitnessTable();
  v85 = v38;
  v86 = v40;
  v41 = v58;
  swift_getWitnessTable();
  v42 = v67.i64[0];
  v43 = *(v67.i64[0] + 16);
  v44 = v63;
  v43(v63, v39, v41);
  v45 = *(v42 + 8);
  v45(v39, v41);
  v43(v72, v44, v41);
  return (v45)(v44, v41);
}

uint64_t sub_1B7983E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v166 = a3;
  v146 = a2;
  v154 = a1;
  v147 = a9;
  v183 = a4;
  v184 = a5;
  v163 = a4;
  v185 = a6;
  v186 = a7;
  v187 = a8;
  v188 = a10;
  v173 = a8;
  v189 = a11;
  v190 = a12;
  v191 = a13;
  v192 = a14;
  v165 = a14;
  v193 = a15;
  v19 = type metadata accessor for _ShelfPageContinuousContent();
  v174 = *(v19 - 8);
  v175 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v160 = v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = v124 - v22;
  v151 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v159 = v124 - v25;
  v157 = *(*(a8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v153 = type metadata accessor for IntentResult();
  v144 = sub_1B7A98870();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v161 = v124 - v28;
  v132 = v27;
  v183 = v27;
  v184 = a6;
  v172 = a6;
  v162 = a5;
  v185 = a5;
  v186 = a7;
  v171 = a7;
  v169 = a11;
  v187 = a11;
  v188 = a10;
  v167 = a10;
  v168 = a12;
  v189 = a12;
  v29 = type metadata accessor for IntentResultView();
  v137 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v133 = v124 - v30;
  v170 = a15;
  type metadata accessor for _ContinuousIntentDispatchWorker();
  swift_getWitnessTable();
  v31 = type metadata accessor for _IntentDispatchViewModifier();
  v139 = v29;
  v138 = v31;
  v32 = sub_1B7A97590();
  v131 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v130 = v124 - v33;
  v145 = AssociatedTypeWitness;
  v176 = a13;
  v34 = type metadata accessor for PageResourceMetricsViewModifier();
  v140 = v32;
  v135 = v34;
  v142 = sub_1B7A97590();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v134 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v136 = v124 - v37;
  v38 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v42;
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v124 - v46;
  v48 = v43;
  v177 = type metadata accessor for ShelfPageContext();
  v158 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v156 = v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v127 = v124 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v125 = v124 - v53;
  v164 = v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = v124 - v56;
  sub_1B7A9A760();
  v128 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v45 + 16))(v47, v154, v44);
  v58 = v166;
  (*(v38 + 16))(v41, v166, v48);
  v155 = v57;
  sub_1B798205C(v47, v41, v48, v173, v57);
  sub_1B7A9A920();
  v59 = sub_1B7A9A900();
  v126 = v59;
  (*(v45 + 8))(v47, v44);
  v60 = v175;
  v183 = sub_1B7983428();
  v184 = v61;
  v185 = v62;
  v182 = v59;
  sub_1B7A9A6E0();
  v124[3] = sub_1B7A98870();
  v124[2] = swift_getWitnessTable();
  sub_1B7A98860();

  v63 = v174;
  v64 = *(v174 + 16);
  v154 = v174 + 16;
  v157 = v64;
  v64(v159, v58, v60);
  v65 = v158;
  v66 = *(v158 + 16);
  v152 = v158 + 16;
  v153 = v66;
  v67 = v125;
  v66(v125, v57, v177);
  v68 = *(v63 + 80);
  v69 = (v68 + 104) & ~v68;
  v70 = *(v65 + 80);
  v149 = v69;
  v71 = (v151 + v70 + v69) & ~v70;
  v72 = v58;
  v151 = v68 | v70;
  v73 = v71;
  v74 = swift_allocObject();
  v75 = v163;
  v76 = v162;
  v74[2] = v163;
  v74[3] = v76;
  v77 = v171;
  v74[4] = v172;
  v74[5] = v77;
  v78 = v173;
  v79 = v167;
  v74[6] = v173;
  v74[7] = v79;
  v80 = v168;
  v74[8] = v169;
  v74[9] = v80;
  v81 = v165;
  v74[10] = v176;
  v74[11] = v81;
  v74[12] = v170;
  v82 = *(v63 + 32);
  v174 = v63 + 32;
  v150 = v82;
  v83 = v74 + v69;
  v84 = v175;
  v82(v83, v159, v175);
  v159 = *(v65 + 32);
  v148 = v73;
  v85 = v177;
  (v159)(v74 + v73, v67, v177);
  v124[1] = v65 + 32;
  v86 = v129;
  v157(v129, v72, v84);
  v87 = v127;
  v88 = v155;
  v153(v127, v155, v85);
  v89 = swift_allocObject();
  v90 = v162;
  *(v89 + 2) = v75;
  *(v89 + 3) = v90;
  v91 = v171;
  *(v89 + 4) = v172;
  *(v89 + 5) = v91;
  v92 = v167;
  *(v89 + 6) = v78;
  *(v89 + 7) = v92;
  v93 = v168;
  *(v89 + 8) = v169;
  *(v89 + 9) = v93;
  v94 = v175;
  v95 = v165;
  *(v89 + 10) = v176;
  *(v89 + 11) = v95;
  v96 = v170;
  *(v89 + 12) = v170;
  v150(&v89[v149], v86, v94);
  v97 = v177;
  (v159)(&v89[v148], v87, v177);
  v157(v160, v166, v94);
  v153(v156, v88, v97);
  v98 = swift_allocObject();
  *(v98 + 2) = v163;
  *(v98 + 3) = v90;
  v99 = v171;
  *(v98 + 4) = v172;
  *(v98 + 5) = v99;
  v100 = v167;
  *(v98 + 6) = v173;
  *(v98 + 7) = v100;
  v101 = v168;
  *(v98 + 8) = v169;
  *(v98 + 9) = v101;
  v102 = v165;
  *(v98 + 10) = v176;
  *(v98 + 11) = v102;
  *(v98 + 12) = v96;
  v150(&v98[v149], v160, v175);
  (v159)(&v98[v148], v156, v177);
  v103 = v133;
  v104 = v161;
  IntentResultView.init(_:empty:success:failure:)(v161, sub_1B798A910, v74, sub_1B798AA58, v89, sub_1B798AEAC, v98, v133);
  v183 = sub_1B7983428();
  v184 = v105;
  v185 = v106;
  v182 = v126;
  v107 = v104;
  sub_1B7A98860();

  v108 = v139;
  WitnessTable = swift_getWitnessTable();
  v110 = v130;
  v111 = v170;
  View.dispatch<A>(_:into:)(v146, v107, v108, v145, WitnessTable, v176, v170, v130);
  (*(v143 + 8))(v107, v144);
  (*(v137 + 8))(v103, v108);
  v112 = swift_getWitnessTable();
  v113 = v134;
  v114 = v140;
  j___s7SwiftUI15ModifiedContentV011_JetEngine_aB0AA4ViewRzAD018_IntentDispatchingG8ModifierR_0eF010ShelfModel5_What_10ReturnTypeRP_rlE19pageResourceMetricsQryF(v140, WitnessTable, v112, v111);
  (*(v131 + 8))(v110, v114);
  (*(v158 + 8))(v155, v177);
  v115 = swift_getWitnessTable();
  v180 = WitnessTable;
  v181 = v115;
  v116 = swift_getWitnessTable();
  v117 = swift_getWitnessTable();
  v178 = v116;
  v179 = v117;
  v118 = v142;
  swift_getWitnessTable();
  v119 = v141;
  v120 = *(v141 + 16);
  v121 = v136;
  v120(v136, v113, v118);
  v122 = *(v119 + 8);
  v122(v113, v118);
  v120(v147, v121, v118);
  v122(v121, v118);
}

uint64_t sub_1B7984EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v27[1] = v15;
  v27[2] = v16;
  v27[3] = v17;
  v27[4] = v18;
  v27[5] = v19;
  v27[6] = v20;
  v28 = v21;
  v29 = v12;
  v30 = v22;
  v23 = type metadata accessor for _ShelfPageContinuousContent();
  (*(a1 + *(v23 + 112)))(a2);
  v24 = *(v8 + 16);
  v24(v14, v10, a3);
  v25 = *(v8 + 8);
  v25(v10, a3);
  v24(a4, v14, a3);
  return (v25)(v14, a3);
}

uint64_t sub_1B798504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  v29[4] = v20;
  v29[5] = v21;
  v30 = v22;
  v31 = v14;
  v32 = v24;
  v33 = v23;
  v25 = type metadata accessor for _ShelfPageContinuousContent();
  (*(a2 + *(v25 + 120)))(a1, a3);
  v26 = *(v10 + 16);
  v26(v16, v12, a4);
  v27 = *(v10 + 8);
  v27(v12, a4);
  v26(a5, v16, a4);
  return (v27)(v16, a4);
}

uint64_t sub_1B79851DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7)
{
  v29[0] = a6;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - v17;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = a7;
  v30 = v22;
  v31 = v23;
  v32 = v16;
  v33 = v24;
  v25 = type metadata accessor for _ShelfPageContinuousContent();
  (*(a4 + *(v25 + 116)))(a1, a2, a3, a5);
  v26 = *(v12 + 16);
  v26(v18, v14, a7);
  v27 = *(v12 + 8);
  v27(v14, a7);
  v26(v29[0], v18, a7);
  return (v27)(v18, a7);
}

uint64_t sub_1B7985388(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t _ShelfPagePaginatedContent.init(content:footer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t _ShelfPagePaginatedContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = a1[3];
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *v2;
  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  v36 = &v33 - v17;
  v37 = v20;
  v19(v16);
  v39 = *(a1[4] + 8);
  v35 = *(v12 + 16);
  v35(v18, v14, v11);
  v22 = *(v12 + 8);
  v40 = v12 + 8;
  v41 = v22;
  v23 = v22(v14, v11);
  v21(v23);
  v34 = a1[5];
  v24 = *(v4 + 16);
  v25 = v38;
  v24(v9, v6, v38);
  v26 = v4 + 8;
  v27 = *(v4 + 8);
  v37 = v26;
  v27(v6, v25);
  v28 = v36;
  v35(v14, v36, v11);
  v46[0] = v14;
  v29 = v9;
  v24(v6, v9, v25);
  v46[1] = v6;
  v45[0] = v11;
  v45[1] = v25;
  v30 = v25;
  v43 = v39;
  v44 = v34;
  sub_1B7959BAC(v46, 2uLL, v45);
  v27(v29, v25);
  v31 = v41;
  v41(v28, v11);
  v27(v6, v30);
  return v31(v14, v11);
}

uint64_t sub_1B7985758()
{
  type metadata accessor for IntentResult();
  sub_1B7A9A6E0();

  swift_getWitnessTable();
  v0 = sub_1B7A9A560();

  return v0;
}

double sub_1B7985810@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = type metadata accessor for IntentResult();
  IntentResult.data.getter(v8, v7);
  if ((*(*(a1 - 8) + 48))(v7, 1, a1) == 1)
  {
    (*(v5 + 8))(v7, v4);
LABEL_6:
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463A8);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (*(&v11 + 1))
  {
    sub_1B795C1E4(&v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1B79859E4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    return result;
  }

LABEL_7:
  sub_1B7957888(&v10, &qword_1EBA463A0);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B79859E4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9AE10();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t sub_1B7985B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IntentResult();
  v4 = sub_1B7A9A6E0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CAB7E0](&v8, v4, WitnessTable);
  *(swift_allocObject() + 16) = a3;
  sub_1B7A9AC70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46380);
  swift_getWitnessTable();
  sub_1B7A9ADE0();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46388);
  sub_1B7A9AD40();
  swift_getWitnessTable();
  sub_1B7A9AD80();
  swift_getWitnessTable();
  sub_1B7A9AD40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46390);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46398, &qword_1EBA46390);
  v6 = sub_1B7A9A5E0();

  return v6;
}

double sub_1B7985DC8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = type metadata accessor for IntentResult();
  IntentResult.data.getter(v8, v7);
  if ((*(*(a1 - 8) + 48))(v7, 1, a1) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46380);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B7985F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7985758();
  *a1 = result;
  return result;
}

uint64_t sub_1B7985F64()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA45F50);
  v1 = __swift_project_value_buffer(v0, qword_1EBA45F50);
  sub_1B7A9AC20();
  return (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E697E660], v0);
}

uint64_t sub_1B798604C()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA45F68);
  v1 = __swift_project_value_buffer(v0, qword_1EBA45F68);
  sub_1B7A9AC20();
  return (*(*(v0 - 8) + 104))(v1, *MEMORY[0x1E697E660], v0);
}

uint64_t sub_1B7986134@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7A97540();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

double sub_1B79861CC()
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  sub_1B7A96CB0();

  return *(v0 + 16);
}

double sub_1B798626C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  sub_1B7A96CB0();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1B798633C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
    sub_1B7A96CA0();
  }
}

double sub_1B7986454()
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  sub_1B7A96CB0();

  return *(v0 + 24);
}

double sub_1B79864F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  sub_1B7A96CB0();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_1B79865C4(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
    sub_1B7A96CA0();
  }
}

uint64_t sub_1B79866DC()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI31ShelfContainerEnvironmentValues___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double EnvironmentValues.shelfContainerSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v2;
}

uint64_t sub_1B79868A8(double a1, double a2)
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  if (sub_1B7A978B0())
  {
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_1B7A96CE0();
    sub_1B7A978C0();
  }

  result = sub_1B7A978B0();
  if (result)
  {
    sub_1B7980E74(a1, a2);
  }

  return result;
}

double EnvironmentValues.shelfContainerWidth.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);

  return v2;
}

double EnvironmentValues.shelfContainerHeight.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t View.shelfContentMaxWidth(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t EnvironmentValues.shelfContentMaxWidth.getter()
{
  sub_1B79888A8();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7986C4C@<X0>(uint64_t a1@<X8>)
{
  sub_1B79888A8();
  result = sub_1B7A97890();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B7986D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798B124(&qword_1EBA463B0, &qword_1EBA463B8, &unk_1B7A9D080, sub_1B798A714);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double EnvironmentValues.shelfContentPadding.getter()
{
  sub_1B79888A8();
  sub_1B7A97890();
  if ((v1 & 1) == 0)
  {
    type metadata accessor for ShelfContainerEnvironmentValues();
    sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
    if (sub_1B7A978B0())
    {
      swift_getKeyPath();
      sub_1B7A96CB0();

      swift_getKeyPath();
      sub_1B7A96CB0();
    }
  }

  return 0.0;
}

uint64_t View.shelfContentPrefersCompactLayouts(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7986F68()
{
  sub_1B79888FC();
  sub_1B7A97890();
  return v1;
}

uint64_t sub_1B7986FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798A768();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.shelfContentPrefersCompactLayouts.getter()
{
  v0 = sub_1B7A97C90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FC8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14];
  sub_1B79888FC();
  sub_1B7A97890();
  v16 = v23;
  if (v23 == 2)
  {
    sub_1B7A977F0();
    (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
    (*(v1 + 56))(v12, 0, 1, v0);
    v17 = *(v4 + 48);
    sub_1B7988950(v15, v6);
    sub_1B7988950(v12, &v6[v17]);
    v18 = *(v1 + 48);
    if (v18(v6, 1, v0) == 1)
    {
      sub_1B7957888(v12, &qword_1EBA45FD0);
      sub_1B7957888(v15, &qword_1EBA45FD0);
      if (v18(&v6[v17], 1, v0) == 1)
      {
        sub_1B7957888(v6, &qword_1EBA45FD0);
        v16 = 0;
        return v16 & 1;
      }
    }

    else
    {
      sub_1B7988950(v6, v9);
      if (v18(&v6[v17], 1, v0) != 1)
      {
        (*(v1 + 32))(v3, &v6[v17], v0);
        sub_1B798B0CC(&qword_1EBA45FE0, MEMORY[0x1E697FF50]);
        v19 = sub_1B7A9A470();
        v20 = *(v1 + 8);
        v20(v3, v0);
        sub_1B7957888(v12, &qword_1EBA45FD0);
        sub_1B7957888(v15, &qword_1EBA45FD0);
        v20(v9, v0);
        sub_1B7957888(v6, &qword_1EBA45FD0);
        v16 = v19 ^ 1;
        return v16 & 1;
      }

      sub_1B7957888(v12, &qword_1EBA45FD0);
      sub_1B7957888(v15, &qword_1EBA45FD0);
      (*(v1 + 8))(v9, v0);
    }

    sub_1B7957888(v6, &qword_1EBA45FC8);
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t ShelfGridVerticalLayoutLonelyItemSpan.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79874DC()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7987524()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7987568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B798B124(&qword_1EBA46458, &qword_1EBA46460, &unk_1B7A9D160, sub_1B7988D24);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.verticalShelfGridLonelyItemSupport(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  v5 = sub_1B7A97590();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v13 = v9 != 2;
  sub_1B7A98150();

  swift_getKeyPath();
  v13 = v9;
  v10 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8);
  v12[1] = a3;
  v12[2] = v10;
  swift_getWitnessTable();
  sub_1B7A98150();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B79877BC@<X0>(_BYTE *a1@<X8>)
{
  sub_1B798A858();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7987858()
{
  sub_1B798A804();

  return sub_1B7A97890();
}

uint64_t sub_1B79878A0@<X0>(_BYTE *a1@<X8>)
{
  sub_1B798A804();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

void *sub_1B798793C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46440);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46448);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7987A98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7987BE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7987D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7987E34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1B7987F68(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_1B7988144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

BOOL sub_1B7988250(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  sub_1B7A96CB0();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1B7A96CB0();

  v5 = *(a1 + 24);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v5 == *(a2 + 24);
}

unint64_t sub_1B7988414()
{
  result = qword_1EBA45F88;
  if (!qword_1EBA45F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45F88);
  }

  return result;
}

unint64_t sub_1B7988468()
{
  result = qword_1EBA45F90;
  if (!qword_1EBA45F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45F90);
  }

  return result;
}

uint64_t sub_1B79884FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for ShelfPage() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1B7980740(a1, v9, v5, v6, v7, a2);
}

uint64_t sub_1B79885A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = *(type metadata accessor for _ShelfPageStaticContent() - 8);
  v13 = v3 + ((*(v12 + 80) + 56) & ~*(v12 + 80));

  return sub_1B7982E80(a1, a2, v13, v7, v8, v9, v10, v11, a3);
}

unint64_t sub_1B79886C8()
{
  result = qword_1EBA45FB8;
  if (!qword_1EBA45FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FB8);
  }

  return result;
}

uint64_t sub_1B7988744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = v3[3];
  v16 = v3[2];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v13 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  return sub_1B7983E54(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v16, v15, v4, v5, v6, a3, v7, v8, v9, v11, v10, v12);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B79888A8()
{
  result = qword_1EBA45FC0;
  if (!qword_1EBA45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FC0);
  }

  return result;
}

unint64_t sub_1B79888FC()
{
  result = qword_1EBA45FD8;
  if (!qword_1EBA45FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FD8);
  }

  return result;
}

uint64_t sub_1B7988950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7988A60()
{
  result = qword_1EBA45FF8;
  if (!qword_1EBA45FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FF8);
  }

  return result;
}

unint64_t sub_1B7988AB8()
{
  result = qword_1EBA46000;
  if (!qword_1EBA46000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46000);
  }

  return result;
}

unint64_t sub_1B7988B10()
{
  result = qword_1EBA46008;
  if (!qword_1EBA46008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46008);
  }

  return result;
}

unint64_t sub_1B7988B68()
{
  result = qword_1EBA46010;
  if (!qword_1EBA46010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46010);
  }

  return result;
}

uint64_t sub_1B7988BBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7988C44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B7988D24()
{
  result = qword_1EBA46018[0];
  if (!qword_1EBA46018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA46018);
  }

  return result;
}

void sub_1B7988D78()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B7989190();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        sub_1B79891E0();
        if (v3 <= 0x3F)
        {
          sub_1B7989244();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B7988E50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B7988FAC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 23] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1B7989190()
{
  if (!qword_1EBA460A0)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA460A0);
    }
  }
}

void sub_1B79891E0()
{
  if (!qword_1EBA460A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA460B0);
    v0 = sub_1B7A9A6E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA460A8);
    }
  }
}

void sub_1B7989244()
{
  if (!qword_1EBA460B8[0])
  {
    type metadata accessor for ShelfContainerEnvironmentValues();
    v0 = sub_1B7A98700();
    if (!v1)
    {
      atomic_store(v0, qword_1EBA460B8);
    }
  }
}

uint64_t sub_1B798929C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1B7A9AB60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7989370(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  if (v9)
  {
    v13 = *(*(v7 - 8) + 64);
  }

  else
  {
    v13 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v15 = ((v13 + v12 + (v14 & ~v12)) & ~v12) + v13;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v11)
      {
LABEL_34:
        if (v6 >= v10)
        {
          v24 = *(v5 + 48);

          return v24(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = (*(v8 + 48))((a1 + v14) & ~v12);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1B798962C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80);
  v15 = *(v7 + 64) + v14;
  if (v11)
  {
    v16 = *(v10 + 64);
  }

  else
  {
    v16 = *(v10 + 64) + 1;
  }

  v17 = ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16;
  if (a3 <= v13)
  {
    goto LABEL_20;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v13 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v13 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v13 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v8 >= v12)
      {
        v27 = *(v7 + 56);

        v27(a1, a2, v8, AssociatedTypeWitness);
      }

      else
      {
        v23 = (&a1[v15] & ~v14);
        if (v12 >= a2)
        {
          v28 = *(v10 + 56);

          v28(v23, (a2 + 1));
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v12 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v20 = ~v13 + a2;
  if (v17 >= 4)
  {
    bzero(a1, ((v16 + v14 + (v15 & ~v14)) & ~v14) + v16);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_58;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v17] = v21;
  }
}

unint64_t sub_1B7989A28()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7989AB0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B7989BEC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1B7989DAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResult();
      sub_1B7A9A6E0();
      result = sub_1B7A98700();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B7989EF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B798A05C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B798A248()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B798A284(uint64_t *a1, int a2)
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

uint64_t sub_1B798A2CC(uint64_t result, int a2, int a3)
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

uint64_t sub_1B798A32C()
{
  result = sub_1B7A96CF0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfGridVerticalLayoutLonelyItemSpan(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShelfGridVerticalLayoutLonelyItemSpan(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1B7A97590();
  sub_1B797EC34(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_1B798A5E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B798A630@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = v4;
  result = (*(v6 + 8))(&v8, v5, v6);
  *a2 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1B798A714()
{
  result = qword_1EBA463C0;
  if (!qword_1EBA463C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA463C0);
  }

  return result;
}

unint64_t sub_1B798A768()
{
  result = qword_1EBA463C8;
  if (!qword_1EBA463C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA463D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA463C8);
  }

  return result;
}

double sub_1B798A7E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

double sub_1B798A7F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

unint64_t sub_1B798A804()
{
  result = qword_1EBA46418;
  if (!qword_1EBA46418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46418);
  }

  return result;
}

unint64_t sub_1B798A858()
{
  result = qword_1EBA46420;
  if (!qword_1EBA46420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46420);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B798A910@<X0>(char *a1@<X8>)
{
  v7 = *(v1 + 32);
  v2 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(type metadata accessor for ShelfPageContext() - 8);
  return sub_1B7984EC8(v1 + v3, v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80)), v7, a1);
}

uint64_t sub_1B798AA58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *(v2 + 24);
  v3 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for ShelfPageContext() - 8);
  return sub_1B798504C(a1, v2 + v4, v2 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)), v8, a2);
}

uint64_t objectdestroy_98Tm()
{
  v14 = *(v0 + 16);
  v1 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = type metadata accessor for ShelfPageContext();
  v5 = (v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  (*(*(v14 - 8) + 8))(v0 + v2, v14);

  v6 = v0 + v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
  v8 = *(v4 + 36);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v12 = *(v4 + 40);
  if (!v11(v6 + v12, 1, v9))
  {
    (*(v10 + 8))(v6 + v12, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1B798AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *(v4 + 40);
  v5 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for ShelfPageContext() - 8);
  return sub_1B79851DC(a1, a2, a3, v4 + v6, v4 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), a4, v10);
}

uint64_t sub_1B798B020(__int128 *a1)
{
  v3 = *(type metadata accessor for ShelfPage() - 8);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));

  return sub_1B7981EF8(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B798B0CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B798B124(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  *a2 = *v2;
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1B797D54C();

  v7 = sub_1B7A9A6F0();

  *a2 = v7;
  return result;
}

uint64_t MediaArtwork.BundleImageProtocol.Configuration.addingAllowedBundle(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  *a2 = *v3;

  v6 = a1;
  MEMORY[0x1B8CAB860]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7A9A660();
  }

  return sub_1B7A9A6B0();
}

uint64_t sub_1B798B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v68 = sub_1B7A993E0();
  v3 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 24);
  v16 = sub_1B7A98660();
  v66 = *(v16 - 8);
  v17 = *(v66 + 56);
  v70 = v66 + 56;
  v71 = v16;
  v69 = v17;
  (v17)(v13 + v15, 1, 1);
  v18 = *(v11 + 28);
  v19 = sub_1B7A98610();
  v67 = *(v19 - 8);
  v20 = *(v67 + 56);
  v73 = v19;
  v74 = v20;
  v75 = v67 + 56;
  (v20)(v13 + v18, 1, 1);
  v21 = sub_1B7A99030();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v43 = sub_1B7A99050();
    (*(*(v43 - 8) + 8))(a1, v43);
    sub_1B7957888(v13 + v15, &qword_1EBA464A8);
    sub_1B7957888(v13 + v18, &qword_1EBA464B0);
    return (*(v76 + 56))(v77, 1, 1, v11);
  }

  v63 = v15;
  v64 = v18;
  v65 = v11;
  *v13 = sub_1B7A99030();
  v13[1] = v25;
  sub_1B7A99040();
  v26 = sub_1B7A993F0();
  v28 = v27;
  v29 = *(v3 + 8);
  v30 = v68;
  v29(v10, v68);
  v13[2] = v26;
  v13[3] = v28;
  v31 = v13;
  v32 = a1;
  sub_1B7A99040();
  v33 = sub_1B7A993F0();
  v35 = v34;
  v29(v7, v30);
  v36 = v76;
  v37 = v73;
  if (v35)
  {
    if (v33 == 0x6C616E696769726FLL && v35 == 0xE800000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v38 = v31;
      v39 = v63;
      sub_1B7957888(v31 + v63, &qword_1EBA464A8);
      v40 = MEMORY[0x1E6981688];
LABEL_9:
      v41 = v71;
      (*(v66 + 104))(v31 + v39, *v40, v71);
      v42 = 0;
      goto LABEL_17;
    }

    if (v33 == 0x6574616C706D6574 && v35 == 0xE800000000000000)
    {

LABEL_15:
      v38 = v31;
      v39 = v63;
      sub_1B7957888(v31 + v63, &qword_1EBA464A8);
      v40 = MEMORY[0x1E6981698];
      goto LABEL_9;
    }

    v45 = sub_1B7A9AE80();

    if (v45)
    {
      goto LABEL_15;
    }
  }

  v38 = v31;
  v39 = v63;
  sub_1B7957888(v31 + v63, &qword_1EBA464A8);
  v42 = 1;
  v41 = v71;
LABEL_17:
  v69(v38 + v39, v42, 1, v41);
  v46 = v72;
  sub_1B7A99040();
  v47 = sub_1B7A993F0();
  v49 = v48;
  v29(v46, v30);
  if (!v49)
  {
    v55 = sub_1B7A99050();
    (*(*(v55 - 8) + 8))(v32, v55);
    v50 = v77;
    goto LABEL_24;
  }

  v50 = v77;
  if ((v47 != 1701736302 || v49 != 0xE400000000000000) && (sub_1B7A9AE80() & 1) == 0)
  {
    if (v47 == 7827308 && v49 == 0xE300000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v57 = sub_1B7A99050();
      (*(*(v57 - 8) + 8))(v32, v57);
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0);
      v53 = MEMORY[0x1E6981640];
      goto LABEL_22;
    }

    if (v47 == 0x6D756964656DLL && v49 == 0xE600000000000000 || (sub_1B7A9AE80() & 1) != 0)
    {

      v58 = sub_1B7A99050();
      (*(*(v58 - 8) + 8))(v32, v58);
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0);
      v53 = MEMORY[0x1E6981658];
      goto LABEL_22;
    }

    if (v47 == 1751607656 && v49 == 0xE400000000000000)
    {

      v59 = sub_1B7A99050();
      (*(*(v59 - 8) + 8))(v32, v59);
LABEL_39:
      v52 = v64;
      sub_1B7957888(v38 + v64, &qword_1EBA464B0);
      v53 = MEMORY[0x1E6981648];
      goto LABEL_22;
    }

    v60 = sub_1B7A9AE80();

    v61 = sub_1B7A99050();
    (*(*(v61 - 8) + 8))(v32, v61);
    if (v60)
    {
      goto LABEL_39;
    }

LABEL_24:
    v52 = v64;
    sub_1B7957888(v38 + v64, &qword_1EBA464B0);
    v54 = 1;
    goto LABEL_25;
  }

  v51 = sub_1B7A99050();
  (*(*(v51 - 8) + 8))(v32, v51);
  v52 = v64;
  sub_1B7957888(v38 + v64, &qword_1EBA464B0);
  v53 = MEMORY[0x1E6981650];
LABEL_22:
  (*(v67 + 104))(v38 + v52, *v53, v37);
  v54 = 0;
LABEL_25:
  v56 = v65;
  v74(v38 + v52, v54, 1, v37);
  sub_1B798D484(v38, v50);
  (*(v36 + 56))(v50, 0, 1, v56);
  return sub_1B798D4E8(v38);
}

uint64_t sub_1B798BC80()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA46468);
  __swift_project_value_buffer(v0, qword_1EBA46468);
  return sub_1B7A99060();
}

id _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE19BundleImageProtocolV13ConfigurationVAHycfC_0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7A9D170;
  result = [objc_opt_self() mainBundle];
  *(v2 + 32) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1B798BDD0(uint64_t a1)
{
  v5 = sub_1B7A96C60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A96C90();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A96D70();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
  MEMORY[0x1EEE9AC00](v90);
  v94 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v81 - v14;
  v93 = sub_1B7A98610();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v85 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v81 - v19;
  v89 = sub_1B7A98660();
  v88 = *(v89 - 8);
  v20 = MEMORY[0x1EEE9AC00](v89);
  v84 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 24);
  *&v103 = *v1;
  v23 = v103 >> 62;
  v96 = a1;
  if (v22)
  {
    v24 = *(a1 + 16);
    v25 = v22;
LABEL_3:
    v101 = v24;
    v102 = v25;
    v83 = v2;
    v82 = v9;
    v81 = v10;
    v26 = v103;
    if (v23)
    {
      v27 = sub_1B7A9AD90();
    }

    else
    {
      v27 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v28 = 0;
      v29 = v26 & 0xC000000000000001;
      v30 = v26 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v29)
        {
          v31 = MEMORY[0x1B8CABED0](v28, v26);
        }

        else
        {
          if (v28 >= *(v30 + 16))
          {
            goto LABEL_45;
          }

          v31 = *(v26 + 8 * v28 + 32);
        }

        v32 = v31;
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v34 = [v31 bundleIdentifier];
        if (v34)
        {
          v35 = v34;
          v9 = sub_1B7A9A4B0();
          v37 = v36;

          if (v9 == v101 && v37 == v102)
          {

LABEL_29:
            v43 = sub_1B7A9A480();
            v44 = [objc_opt_self() bundleWithIdentifier_];

            if (!v44)
            {
              break;
            }

            v45 = v96;

            v3 = v44;
            v9 = sub_1B7A985D0();
            v46 = v90;
            v47 = v45 + *(v90 + 24);
            v48 = v87;
            sub_1B7957820(v47, v87, &qword_1EBA464A8);
            v49 = v88;
            v50 = v89;
            if ((*(v88 + 48))(v48, 1, v89) == 1)
            {
              sub_1B7957888(v48, &qword_1EBA464A8);
            }

            else
            {
              v58 = v84;
              (*(v49 + 32))(v84, v48, v50);
              v59 = v85;
              (*(v49 + 16))(v85, v58, v50);
              (*(v49 + 56))(v59, 0, 1, v50);
              v60 = sub_1B7A98630();

              sub_1B7957888(v59, &qword_1EBA464A8);
              (*(v49 + 8))(v58, v50);
              v9 = v60;
            }

            a1 = v95;
            v22 = v94;
            v61 = v93;
            v62 = v92;
            v63 = v91;
            sub_1B7957820(v96 + *(v46 + 28), v91, &qword_1EBA464B0);
            if ((*(v62 + 48))(v63, 1, v61) == 1)
            {
              sub_1B7957888(v63, &qword_1EBA464B0);
            }

            else
            {
              v64 = v86;
              (*(v62 + 32))(v86, v63, v61);
              v65 = sub_1B7A98620();

              (*(v62 + 8))(v64, v61);
              v9 = v65;
            }

            if (qword_1EBA45B80 == -1)
            {
LABEL_41:
              v66 = sub_1B7A96DA0();
              __swift_project_value_buffer(v66, qword_1EBA507B8);
              sub_1B798D484(v96, v22);
              v67 = v102;

              sub_1B7A96D60();
              v68 = sub_1B7A96D90();
              v69 = sub_1B7A9AAA0();

              if (sub_1B7A9AB50())
              {
                v70 = swift_slowAlloc();
                LODWORD(v100) = v69;
                v71 = v70;
                v72 = swift_slowAlloc();
                *&v103 = v3;
                v73 = v72;
                v104 = v72;
                *v71 = 136315394;
                v74 = v22;
                v75 = *v22;
                v76 = v22[1];

                sub_1B798D4E8(v74);
                v77 = sub_1B79A6340(v75, v76, &v104);

                *(v71 + 4) = v77;
                *(v71 + 12) = 2080;
                v78 = sub_1B79A6340(v101, v67, &v104);

                *(v71 + 14) = v78;
                v79 = v95;
                v80 = sub_1B7A96D50();
                _os_signpost_emit_with_name_impl(&dword_1B7954000, v68, v100, v80, "Image.BundleImageLoad", "name=%s,bundleID=%s", v71, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1B8CACB70](v73, -1, -1);
                MEMORY[0x1B8CACB70](v71, -1, -1);

                (*(v81 + 8))(v79, v82);
              }

              else
              {

                (*(v81 + 8))(a1, v82);
                sub_1B798D4E8(v22);
              }

              return v9;
            }

LABEL_52:
            swift_once();
            goto LABEL_41;
          }

          v9 = sub_1B7A9AE80();

          v26 = v103;
          if (v9)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        ++v28;
      }

      while (v33 != v27);
    }

    goto LABEL_33;
  }

  if (v23)
  {
    if (!sub_1B7A9AD90())
    {
      goto LABEL_33;
    }
  }

  else if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  if ((v103 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1B8CABED0](0, v20);
  }

  else
  {
    if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v39 = *(v103 + 32);
  }

  v40 = v39;
  v41 = [v39 bundleIdentifier];

  if (v41)
  {
    v24 = sub_1B7A9A4B0();
    v25 = v42;

    goto LABEL_3;
  }

LABEL_33:
  if (qword_1EBA45B78 != -1)
  {
LABEL_46:
    swift_once();
  }

  v51 = sub_1B7A9A280();
  __swift_project_value_buffer(v51, qword_1EBA507A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  v52 = swift_allocObject();
  v103 = xmmword_1B7A9C180;
  *(v52 + 16) = xmmword_1B7A9C180;
  sub_1B7A98C40();
  sub_1B7A99E50();

  sub_1B7A96C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0);
  inited = swift_initStackObject();
  *(inited + 16) = v103;
  *(inited + 32) = sub_1B7A9A4B0();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v54;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001B7AC4FA0;
  sub_1B798FF28(inited);
  swift_setDeallocating();
  sub_1B7957888(inited + 32, &qword_1EBA464E8);
  sub_1B798D42C();
  v55 = v97;
  v56 = v100;
  sub_1B7A96AF0();
  sub_1B7A96C70();
  (*(v99 + 8))(v55, v56);
  swift_willThrow();
  return v9;
}

uint64_t MediaArtwork.BundleImageProtocol.match(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46488);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1B7A99050();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  if (qword_1EBA45B30 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7A99080();
  __swift_project_value_buffer(v12, qword_1EBA46468);
  sub_1B7A99070();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B7957888(v4, &qword_1EBA46488);
    v13 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_1B798B374(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource()
{
  result = qword_1EBA464B8;
  if (!qword_1EBA464B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaArtwork.BundleImageProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46490);
  sub_1B798BDD0(a1 + *(v2 + 28));
  return sub_1B7A98BE0();
}

uint64_t sub_1B798CDF4()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B798CE6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B798CDD4(a1, v4);
}

unint64_t sub_1B798CF1C()
{
  result = qword_1EBA46498;
  if (!qword_1EBA46498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA464A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46498);
  }

  return result;
}

uint64_t sub_1B798CFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46490);
  sub_1B798BDD0(a1 + *(v2 + 28));
  return sub_1B7A98BE0();
}

uint64_t getEnumTagSinglePayload for JetStartUpCoordinator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JetStartUpCoordinator(uint64_t result, int a2, int a3)
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

void sub_1B798D160()
{
  sub_1B7958EAC();
  if (v0 <= 0x3F)
  {
    sub_1B798D244(319, &qword_1EBA464C8, MEMORY[0x1E69816A0]);
    if (v1 <= 0x3F)
    {
      sub_1B798D244(319, &qword_1EBA464D0, MEMORY[0x1E6981660]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B798D244(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7A9AB60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B798D298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B798CDD4(a1, v4);
}

uint64_t sub_1B798D338()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B798D42C()
{
  result = qword_1EBA464F0;
  if (!qword_1EBA464F0)
  {
    sub_1B7A96C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA464F0);
  }

  return result;
}

uint64_t sub_1B798D484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B798D4E8(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.BundleImageProtocol.MatchedResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV14formattedCountyACSiFZ_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  sub_1B7A9AC20();
  v5 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  a2[2] = v6;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_1B7991598;
  a2[1] = result;
  return result;
}

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV8fileSize8forBytesACSd_tFZ_0@<X0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x7365747962;
  *(inited + 40) = 0xE500000000000000;
  sub_1B7A9AC20();
  v5 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  a1[2] = v6;
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = sub_1B7991548;
  a1[1] = result;
  return result;
}

uint64_t sub_1B798D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v28 = sub_1B7A99B70();
  v26 = *(v28 - 8);
  v29 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A96BF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 32) = 1702125924;
  *(inited + 16) = xmmword_1B7A9D270;
  *(inited + 40) = 0xE400000000000000;
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530]);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6;
  sub_1B7A9AC20();
  strcpy((inited + 88), "lookupStrategy");
  *(inited + 103) = -18;
  v30 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v10 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  v12 = v27;
  v27[2] = v11;
  v13 = *(v7 + 32);
  v13(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = v26 + 32;
  v15 = *(v26 + 32);
  v16 = v25;
  v17 = v28;
  v15(v25, a2, v28);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v8 + *(v14 + 48) + v18) & ~*(v14 + 48);
  v20 = swift_allocObject();
  v13((v20 + v18), v24, v23);
  result = (v15)(v20 + v19, v16, v17);
  *v12 = sub_1B799145C;
  v12[1] = v20;
  return result;
}

uint64_t static LocalizerRequest.string(forKey:with:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v27 = a3;
  v28 = a2;
  v25 = a1;
  v26 = a5;
  v7 = sub_1B7A99B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = *(v8 + 16);
  v15(&v25 - v13, a4, v7, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  v29 = a1;
  v30 = v28;

  sub_1B7A9AC20();
  strcpy((inited + 88), "replacements");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v29 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 144), "lookupStrategy");
  *(inited + 159) = -18;
  (v15)(v10, v14, v7);
  sub_1B79907AC(&qword_1EBA46520, MEMORY[0x1E69AB390]);
  sub_1B7A9AC20();
  v17 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v17;
  v19 = v26;
  v26[2] = v18;
  v20 = *(v8 + 32);
  v20(v10, v14, v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 2) = v25;
  *(v22 + 3) = v23;
  *(v22 + 4) = v27;
  v20(&v22[v21], v10, v7);
  *v19 = sub_1B7990190;
  v19[1] = v22;
}

unint64_t sub_1B798DEDC()
{
  result = qword_1EBA46508;
  if (!qword_1EBA46508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46500);
    sub_1B798DF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46508);
  }

  return result;
}

unint64_t sub_1B798DF60()
{
  result = qword_1EBA46510;
  if (!qword_1EBA46510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46510);
  }

  return result;
}

uint64_t static LocalizerRequest.string(forKey:with:defaultValue:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = a3;
  v52 = a2;
  v45 = a1;
  v53 = a6;
  v9 = sub_1B7A99B70();
  v54 = *(v9 - 8);
  v10 = v54;
  v49 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v46 = sub_1B7A99A50();
  v44 = *(v46 - 8);
  v48 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  (*(v20 + 16))(&v42 - v18, a4, v17);
  v21 = *(v10 + 16);
  v43 = v14;
  v21(v14, a5, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  v55 = a1;
  v56 = v52;

  sub_1B7A9AC20();
  strcpy((inited + 88), "replacements");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v55 = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 144), "defaultValue");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v55 = sub_1B7A99A40();
  v56 = v23;
  sub_1B7A9AC20();
  strcpy((inited + 200), "lookupStrategy");
  *(inited + 215) = -18;
  v24 = v50;
  v21(v50, v14, v9);
  sub_1B79907AC(&qword_1EBA46520, MEMORY[0x1E69AB390]);
  v25 = v24;
  v26 = v9;
  v42 = v9;
  sub_1B7A9AC20();
  v27 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = v27;
  v53[2] = v28;
  v29 = v44 + 32;
  v44 = *(v44 + 32);
  v30 = v46;
  v31 = v47;
  (v44)(v47, v19, v46);
  v33 = *(v54 + 32);
  v54 += 32;
  v32 = v54;
  v33(v25, v43, v26);
  v34 = (*(v29 + 48) + 40) & ~*(v29 + 48);
  v35 = (v48 + *(v32 + 48) + v34) & ~*(v32 + 48);
  v36 = swift_allocObject();
  v37 = v44;
  v38 = v51;
  v39 = v52;
  *(v36 + 2) = v45;
  *(v36 + 3) = v39;
  *(v36 + 4) = v38;
  v37(&v36[v34], v31, v30);
  v33(&v36[v35], v50, v42);
  v40 = v53;
  *v53 = sub_1B799023C;
  v40[1] = v36;
}

id sub_1B798E568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v46 = a11;
  v45 = a10;
  v42 = sub_1B7A99570();
  v17 = *(v42 - 8);
  v44 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v37[-v21];
  (*(v17 + 16))(&v37[-v21], a6, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = a7;
  *(inited + 40) = a8;
  v48 = a1;
  sub_1B799034C();
  sub_1B79907AC(&qword_1EBA46540, sub_1B799034C);
  v47 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x80000001B7AC5090;
  v48 = a2;
  v38 &= 1u;
  LOBYTE(v49) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548);
  sub_1B7990398();
  sub_1B7A9AC20();
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x80000001B7AC50B0;
  v24 = v40;
  v48 = v40;
  LOBYTE(a1) = v41 & 1;
  LOBYTE(v49) = v41 & 1;
  sub_1B7A9AC20();
  *(inited + 200) = 0x747865746E6F63;
  *(inited + 208) = 0xE700000000000000;
  v48 = sub_1B7A99560();
  v49 = v25;
  sub_1B7A9AC20();
  v26 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  v28 = a9;
  a9[2] = v27;
  v29 = *(v17 + 32);
  v30 = v42;
  v31 = v43;
  v29(v43, v22, v42);
  v32 = (*(v17 + 80) + 49) & ~*(v17 + 80);
  v33 = swift_allocObject();
  v34 = v39;
  *(v33 + 16) = v47;
  *(v33 + 24) = v34;
  *(v33 + 32) = v38;
  *(v33 + 40) = v24;
  *(v33 + 48) = a1;
  v29((v33 + v32), v31, v30);
  v35 = v47;
  *v28 = v46;
  v28[1] = v33;

  return v35;
}

uint64_t static LocalizerRequest.string(withCount:forKey:with:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a4;
  v31 = a2;
  v32 = a1;
  v34 = a6;
  v10 = sub_1B7A99B70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  (*(v11 + 16))(&v28 - v15, a5, v10, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D290;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  v35 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 7955819;
  *(inited + 96) = 0xE300000000000000;
  v35 = a2;
  v36 = a3;
  v30 = a3;

  sub_1B7A9AC20();
  strcpy((inited + 144), "replacements");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v18 = v29;
  v35 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 200), "lookupStrategy");
  *(inited + 215) = -18;
  v35 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v19 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v21 = v33;
  v22 = v34;
  v34[2] = v20;
  v23 = *(v11 + 32);
  v23(v21, v16, v10);
  v24 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 2) = v32;
  *(v25 + 3) = v26;
  *(v25 + 4) = v30;
  *(v25 + 5) = v18;
  v23(&v25[v24], v21, v10);
  *v22 = sub_1B79905E0;
  v22[1] = v25;
}

uint64_t static LocalizerRequest.string(withCount:forKey:with:defaultValue:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42 = a2;
  v43 = a1;
  v52 = a7;
  v11 = sub_1B7A99B70();
  v44 = v11;
  v12 = *(v11 - 8);
  v48 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v45 = sub_1B7A99A50();
  v17 = *(v45 - 8);
  v46 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  (*(v17 + 16))(&v39 - v21, a5, v20);
  (*(v12 + 16))(v16, a6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D2A0;
  *(inited + 32) = 0x746E756F63;
  *(inited + 40) = 0xE500000000000000;
  v53 = a1;
  sub_1B7A9AC20();
  *(inited + 88) = 7955819;
  *(inited + 96) = 0xE300000000000000;
  v53 = a2;
  v54 = v50;

  sub_1B7A9AC20();
  strcpy((inited + 144), "replacements");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v53 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46500);
  sub_1B798DEDC();
  sub_1B7A9AC20();
  strcpy((inited + 200), "defaultValue");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v53 = sub_1B7A99A40();
  v54 = v24;
  sub_1B7A9AC20();
  strcpy((inited + 256), "lookupStrategy");
  *(inited + 271) = -18;
  v53 = sub_1B7A99B60();
  sub_1B7A9AC20();
  v25 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  v52[2] = v26;
  v41 = *(v17 + 32);
  v27 = v45;
  v41(v51, v22, v45);
  v29 = v12 + 32;
  v28 = *(v12 + 32);
  v39 = v12 + 32;
  v40 = v28;
  v30 = v47;
  v31 = v44;
  v28(v47, v16, v44);
  v32 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v33 = (v46 + *(v29 + 48) + v32) & ~*(v29 + 48);
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 2) = v43;
  *(v34 + 3) = v35;
  v36 = v49;
  *(v34 + 4) = v50;
  *(v34 + 5) = v36;
  v41(&v34[v32], v51, v27);
  v40(&v34[v33], v30, v31);
  v37 = v52;
  *v52 = sub_1B7990698;
  v37[1] = v34;
}

uint64_t static LocalizerRequest.formattedDate(format:date:withContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v42 = a4;
  v50 = a2;
  v44 = a1;
  v48 = a5;
  v7 = sub_1B7A99570();
  v45 = v7;
  v51 = *(v7 - 8);
  v8 = v51;
  v49 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1B7A96BF0();
  v43 = *(v13 - 8);
  v14 = v43;
  v46 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = *(v14 + 16);
  v21(&v40 - v19, a3, v13, v18);
  (*(v8 + 16))(v12, v42, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 0x74616D726F66;
  *(inited + 40) = 0xE600000000000000;
  v52 = a1;
  v53 = v50;

  sub_1B7A9AC20();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  v23 = v13;
  (v21)(v16, v20, v13);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530]);
  v41 = v16;
  v40 = v13;
  sub_1B7A9AC20();
  *(inited + 144) = 0x747865746E6F63;
  *(inited + 152) = 0xE700000000000000;
  v24 = v12;
  v52 = sub_1B7A99560();
  v53 = v25;
  sub_1B7A9AC20();
  v26 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  v28 = v48;
  v48[2] = v27;
  v30 = v43 + 32;
  v29 = *(v43 + 32);
  v29(v16, v20, v23);
  v32 = *(v51 + 32);
  v51 += 32;
  v31 = v51;
  v33 = v47;
  v34 = v45;
  v32(v47, v24, v45);
  v35 = (*(v30 + 48) + 32) & ~*(v30 + 48);
  v36 = (v46 + *(v31 + 48) + v35) & ~*(v31 + 48);
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v44;
  *(v37 + 24) = v38;
  v29((v37 + v35), v41, v40);
  v32((v37 + v36), v33, v34);
  *v28 = sub_1B79907F4;
  v28[1] = v37;
}

uint64_t static LocalizerRequest.formattedDate(format:date:inSentence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v33 = a5;
  v30 = a4;
  v34 = a2;
  v31 = a1;
  v32 = a6;
  v8 = sub_1B7A96BF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a3, v8, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D280;
  *(inited + 32) = 0x74616D726F66;
  *(inited + 40) = 0xE600000000000000;
  v35 = a1;
  v36 = v34;

  sub_1B7A9AC20();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  (v16)(v11, v15, v8);
  sub_1B79907AC(&qword_1EBA46558, MEMORY[0x1E6969530]);
  sub_1B7A9AC20();
  *(inited + 144) = 0x65636E65746E6573;
  *(inited + 152) = 0xE800000000000000;
  v18 = v30;
  v35 = v30;
  v36 = v33;

  sub_1B7A9AC20();
  v19 = sub_1B7990058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v21 = v32;
  v32[2] = v20;
  v22 = *(v9 + 32);
  v22(v11, v15, v8);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  v22((v24 + v23), v11, v8);
  v26 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v33;
  *v26 = v18;
  v26[1] = v27;
  *v21 = sub_1B79908F4;
  v21[1] = v24;
}

uint64_t static LocalizerRequest.relativeDate(_:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1B7A99B70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A96BF0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return sub_1B798D784(v13, v9, a3);
}

uint64_t static LocalizerRequest.verbatim(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  swift_bridgeObjectRetain_n();
  sub_1B7A9AC20();
  v8 = sub_1B7990058(inited);
  swift_setDeallocating();
  sub_1B7990A08(inited + 32);
  *a3 = sub_1B79909D8;
  a3[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v8;
  a3[2] = result;
  return result;
}

uint64_t static LocalizerRequest.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1B7990058(MEMORY[0x1E69E7CC0]);
  *a3 = a1;
  a3[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46530);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  a3[2] = v7;
}

uint64_t sub_1B798FCF0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B79913AC(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1B79948B8(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1B7991408(&v24);
      return 0;
    }

    sub_1B79913AC(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1B8CABE40](v23, &v24);
    sub_1B7991408(v23);
    result = sub_1B7991408(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s18_JetEngine_SwiftUI16LocalizerRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  os_unfair_lock_lock((v3 + 24));
  v5 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  if (*(v4 + 16))
  {
    v6 = sub_1B798FCF0(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B798FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46588);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, &v13, &qword_1EBA464E8);
      v5 = v13;
      v6 = v14;
      result = sub_1B79948B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7957D54(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7990058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A0);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, &v16, &qword_1EBA46528);
      v5 = v16;
      v6 = v17;
      result = sub_1B79948B8(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7990190(void *a1)
{
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2F0();
}

uint64_t sub_1B799023C(void *a1)
{
  sub_1B7A99A50();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2E0();
}

unint64_t sub_1B799034C()
{
  result = qword_1EBA46538;
  if (!qword_1EBA46538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA46538);
  }

  return result;
}

unint64_t sub_1B7990398()
{
  result = qword_1EBA46550;
  if (!qword_1EBA46550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46550);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1B7A99570();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7990508(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1B7A99570() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  return a2(v6, v7, v8, v9, v10, v2 + v5, v11, v12);
}

uint64_t sub_1B79905E0(void *a1)
{
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A310();
}

uint64_t sub_1B7990698(void *a1)
{
  sub_1B7A99A50();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A300();
}

uint64_t sub_1B79907AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B79907F4(void *a1)
{
  sub_1B7A96BF0();
  sub_1B7A99570();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2B0();
}

uint64_t sub_1B79908F4(void *a1)
{
  sub_1B7A96BF0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A2A0();
}

uint64_t sub_1B79909D8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B7990A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B7990A84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B7990ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7990B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, v15, &qword_1EBA46598);
      result = sub_1B7994ACC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7990C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8);
    v7 = sub_1B7A9ADC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7957820(v9, v5, &qword_1EBA465B0);
      result = sub_1B7995D44(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B7A991E0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1B7957D54(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7990E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8);
    v3 = sub_1B7A9ADC0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1B79948B8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7990F54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560);
  v4 = sub_1B7A9ADC0();
  v5 = *(a1 + 32);
  v19 = *(a1 + 40);
  result = sub_1B7994C28(v5);
  v7 = v19;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v7;
    v18 = v1;
    return v4;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 16 * result) = v7;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    v1 = *(&v7 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v5 = *(v9 - 1);
    v20 = *v9;
    v14 = v7;
    v15 = v1;
    result = sub_1B7994C28(v5);
    v9 = v13;
    v7 = v20;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7991080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46580);
    v7 = sub_1B7A9ADC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7957820(v9, v5, &qword_1EBA46578);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B79948B8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1B7A96B90();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B799126C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, v15, &qword_1EBA46570);
      result = sub_1B7994ACC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B799145C(void *a1)
{
  sub_1B7A96BF0();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A290();
}

uint64_t ClickLocationConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A995F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ClickLocationConfiguration.init(pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1B7A96C20();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1B7A98E30();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ClickLocationConfiguration(0);
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1B7957820(a1, v8, &qword_1EBA465C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7957888(v8, &qword_1EBA465C0);
LABEL_10:
    v21 = v29;
    sub_1B7A99720();
    sub_1B7957888(v28, &qword_1EBA465C0);
    v22 = 1;
    return (*(v13 + 56))(v21, v22, 1, v27);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = sub_1B7A98DC0();
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  if (!*(v16 + 16) || (v18 = sub_1B7994BA4(0x644965676170, 0xE600000000000000, sub_1B7994C6C), (v19 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B79948D0(*(v17 + 56) + 32 * v18, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v24 = v30;
  sub_1B7A98E20();
  sub_1B7A96C10();
  sub_1B7A96C00();
  (*(v25 + 8))(v5, v26);
  sub_1B7A995E0();
  sub_1B7957888(v28, &qword_1EBA465C0);
  (*(v10 + 8))(v12, v9);
  v20 = sub_1B7A995F0();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  v21 = v29;
  sub_1B7994A64(v15, v29, type metadata accessor for ClickLocationConfiguration);
  v22 = 0;
  return (*(v13 + 56))(v21, v22, 1, v27);
}

uint64_t sub_1B7991B00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A99900();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1B7A99360();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = sub_1B7A98E30();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1B7A998F0();
  sub_1B7A99990();
  swift_allocObject();

  return sub_1B7A99930();
}

uint64_t sub_1B7991CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a1;
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46620);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - v4;
  v5 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v6 = *(v5 - 8);
  v53 = v5 - 8;
  v51 = v6;
  v50 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46628);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v42 - v8;
  v10 = sub_1B7A99900();
  v11 = *(v10 - 8);
  v57 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v45 = v3;
  sub_1B7992210(v3, &v42 - v15);
  KeyPath = swift_getKeyPath();
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46630) + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46638);
  v20 = *(v11 + 16);
  v21 = v18 + *(v19 + 28);
  v58 = v16;
  v20(v21, v16, v10);
  v46 = v20;
  *v18 = KeyPath;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46640);
  v23 = *(*(v22 - 8) + 16);
  v47 = v9;
  v23(v9, v52, v22);
  v24 = v3;
  v25 = v48;
  sub_1B7995508(v24, v48);
  v43 = v10;
  v20(v13, v16, v10);
  v26 = *(v51 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = *(v11 + 80);
  v29 = v11;
  v49 = v11;
  v30 = (v50 + v28 + v27) & ~v28;
  v52 = v26 | v28;
  v31 = swift_allocObject();
  v51 = type metadata accessor for PageMetricsViewModifier.Instrumentation;
  sub_1B7994A64(v25, v31 + v27, type metadata accessor for PageMetricsViewModifier.Instrumentation);
  v32 = *(v29 + 32);
  v33 = v44;
  v32(v31 + v30, v44, v10);
  v34 = swift_getKeyPath();
  v35 = &v9[*(v59 + 36)];
  *v35 = sub_1B799556C;
  *(v35 + 1) = v31;
  *(v35 + 2) = v34;
  *(v35 + 3) = 0;
  *(v35 + 16) = 0;
  v36 = v54;
  v37 = v45;
  sub_1B7957820(v45 + *(v53 + 40), v54, &qword_1EBA465C0);
  sub_1B7995508(v37, v25);
  v38 = v43;
  v46(v33, v58, v43);
  v39 = swift_allocObject();
  sub_1B7994A64(v25, v39 + v27, v51);
  v32(v39 + v30, v33, v38);
  sub_1B7995B64();
  sub_1B797EC34(&qword_1EDC0FC98, &qword_1EBA46620);
  v40 = v47;
  sub_1B7A984B0();

  sub_1B7957888(v36, &qword_1EBA46620);
  sub_1B7957888(v40, &qword_1EBA46628);
  return (*(v49 + 8))(v58, v38);
}

uint64_t sub_1B7992210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46650);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46658);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  sub_1B797BE80(a2);
  v17 = (a1 + v16[9]);
  v18 = *v17;
  if (*v17)
  {
    v19 = v17[1];
    *&v31 = v18;
    *(&v31 + 1) = v19;
    swift_unknownObjectRetain();
    sub_1B7A99890();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88);
    sub_1B7A998E0();
    (*(v13 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  sub_1B7957820(a1 + v16[8], v11, &qword_1EBA465C0);
  v20 = sub_1B7A98E30();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_1B7957888(v11, &qword_1EBA465C0);
  }

  else
  {
    v22 = sub_1B7A98DC0();
    (*(v21 + 8))(v11, v20);
    if (v22)
    {
      *&v31 = v22;
      sub_1B7A998D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46668);
      sub_1B7A998E0();
      (*(v25 + 8))(v8, v26);
    }
  }

  v31 = *(a1 + v16[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46660);
  result = sub_1B7A986D0();
  if (v30)
  {
    *&v31 = v30;
    v24 = v27;
    sub_1B7A998A0();
    sub_1B7A99850();
    sub_1B7A998E0();
    (*(v28 + 8))(v24, v29);
  }

  return result;
}

uint64_t sub_1B799264C(char a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
  v82 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - v6;
  v7 = sub_1B7A99BB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_1B7A97880();
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v76 - v17;
  v18 = sub_1B7A99900();
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A9A280();
  v88 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B7A97480();
  v80 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08);
  MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v76 - v29;
  if ((a1 & 1) == 0)
  {
    v76 = v28;
    v77 = v8;
    v83 = v7;
    v40 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
    v41 = a2 + v40[10];
    v42 = *v41;
    if (*(v41 + 8) == 1)
    {
      if (*v41 != 4)
      {
LABEL_10:
        v47 = a2 + v40[13];
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        v98 = v48;
        LOBYTE(v99) = v49;
        v100 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8);
        sub_1B7A986D0();
        v88 = v96;
        LODWORD(v93) = v97;
        sub_1B797BECC(v94);
        v51 = v40[12];
        v84 = a2;
        v52 = a2 + v51;
        v53 = *v52;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (*(v52 + 17) == 1)
        {
          sub_1B797DEF0(*v52, v54);
          if (!v54)
          {
            goto LABEL_15;
          }
        }

        else
        {

          sub_1B7A9AA10();
          v56 = sub_1B7A97E70();
          sub_1B7A96D30();

          v57 = v85;
          sub_1B7A97870();
          swift_getAtKeyPath();
          sub_1B797D5A0(v53, v54, v55, 0);
          (*(v86 + 8))(v57, v87);
          v53 = v98;
          v54 = v99;
          LOBYTE(v55) = v100;
          if (!v99)
          {
            goto LABEL_15;
          }
        }

        v98 = v53;
        v99 = v54;
        LOBYTE(v100) = v55 & 1;

        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8);
        MEMORY[0x1B8CA9A40](&v96, v58);
        v59 = v96;

        if ((v59 & 1) == 0)
        {
          sub_1B7A99B90();
          goto LABEL_30;
        }

LABEL_15:
        if ((v93 & 1) == 0)
        {
          v60 = v76;
          sub_1B7957820(v94, v76, &qword_1EBA45F08);
          if ((*(v82 + 48))(v60, 1, v5) == 1)
          {
            v61 = &qword_1EBA45F08;
            v62 = v60;
          }

          else
          {
            v69 = v78;
            sub_1B7995CD4(v60, v78);
            v70 = v79;
            v71 = v5;
            v72 = v69;
            MEMORY[0x1B8CA9A40](v71);
            v73 = sub_1B7A97440();
            result = (*(v80 + 8))(v70, v22);
            if (__OFSUB__(v88, 1))
            {
              __break(1u);
              return result;
            }

            if (v73 == v88 - 1)
            {
              sub_1B7A99BA0();
              sub_1B797D5AC(v53, v54);
              sub_1B7957888(v72, &qword_1EBA46648);
LABEL_31:
              sub_1B7957888(v94, &qword_1EBA45F08);
              v74 = v77;
              (*(v77 + 32))(v13, v10, v83);
              v75 = v84;
              v94 = v40;
              sub_1B7A99990();
              sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8]);
              sub_1B7A97120();
              sub_1B7A99950();

              sub_1B7A97120();
              (*(v90 + 16))(v89, v95, v91);
              sub_1B7A99980();

              sub_1B7A97120();
              sub_1B7957820(v75 + *(v94 + 32), v92, &qword_1EBA465C0);
              sub_1B7A99970();

              return (*(v74 + 8))(v13, v83);
            }

            v61 = &qword_1EBA46648;
            v62 = v72;
          }

          sub_1B7957888(v62, v61);
        }

        sub_1B7A99B80();
LABEL_30:
        sub_1B797D5AC(v53, v54);
        goto LABEL_31;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v43 = sub_1B7A97E70();
      sub_1B7A96D30();

      v44 = v85;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v42, 0);
      (*(v86 + 8))(v44, v87);
      if (v98 != 4)
      {
        goto LABEL_10;
      }
    }

    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    v81 = v20;
    *(swift_allocObject() + 16) = xmmword_1B7A9D290;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    v45 = v81;
    v46 = v93;
    sub_1B7A99E60();

    (*(v88 + 8))(v46, v45);
    goto LABEL_10;
  }

  v81 = v20;
  v31 = v5;
  v32 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v33 = a2 + *(v32 + 52);
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v98 = *v33;
  LOBYTE(v99) = v35;
  v100 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8);
  sub_1B7A986D0();
  v94 = v32;
  if (v97)
  {
    sub_1B797BECC(v30);
    v37 = v31;
    v38 = (*(v82 + 48))(v30, 1, v31);
    if (v38 == 1)
    {
      sub_1B7957888(v30, &qword_1EBA45F08);
      v39 = 0;
    }

    else
    {
      v63 = v79;
      MEMORY[0x1B8CA9A40](v37);
      sub_1B7957888(v30, &qword_1EBA46648);
      v39 = sub_1B7A97440();
      (*(v80 + 8))(v63, v22);
    }

    v98 = v34;
    LOBYTE(v99) = v35;
    v100 = v36;
    v96 = v39;
    v97 = v38 == 1;
    sub_1B7A986E0();
  }

  sub_1B7A99990();
  sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8]);
  sub_1B7A97120();
  v64 = sub_1B7A99960();

  v65 = v95;
  if ((v64 & 1) == 0)
  {
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    v84 = a2;
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    a2 = v84;
    sub_1B7A98C40();
    v65 = v95;
    sub_1B7A98C40();
    v66 = v81;
    v67 = v93;
    sub_1B7A99E60();

    (*(v88 + 8))(v67, v66);
  }

  sub_1B7A97120();
  (*(v90 + 16))(v89, v65, v91);
  sub_1B7A99980();

  sub_1B7A97120();
  sub_1B7957820(a2 + *(v94 + 32), v92, &qword_1EBA465C0);
  sub_1B7A99970();

  sub_1B7A97120();
  sub_1B7A99940();
}

uint64_t sub_1B7993558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v55 = sub_1B7A99900();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1B7A98E10();
  v69 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v52 - v9;
  v10 = sub_1B7A98DE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v27 = sub_1B7A9A760();
  v73 = sub_1B7A9A750();
  v74 = v27;
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7957820(a1, v26, &qword_1EBA465C0);
  sub_1B7957820(a2, v23, &qword_1EBA465C0);
  sub_1B7957820(v26, v20, &qword_1EBA465C0);
  v28 = sub_1B7A98E30();
  v29 = *(v28 - 8);
  v71 = *(v29 + 48);
  v72 = v29 + 48;
  v30 = v71(v20, 1, v28);
  v76 = v26;
  if (v30 == 1)
  {
    sub_1B7957888(v20, &qword_1EBA465C0);
    v31 = v70;
  }

  else
  {
    v32 = sub_1B7A98DF0();
    (*(v29 + 8))(v20, v28);
    result = v32;
    v59 = *(v32 + 16);
    if (!v59)
    {
LABEL_20:

      v47 = v71;
      v71(v26, 1, v28);
      v31 = v70;
      goto LABEL_21;
    }

    v34 = 0;
    v61 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v60 = v11 + 16;
    v78 = v69 + 16;
    v80 = (v69 + 8);
    v62 = (v11 + 8);
    v67 = v10;
    v68 = v23;
    v66 = v13;
    v58 = v11;
    v64 = v29;
    v65 = v28;
    v63 = result;
    while (1)
    {
      if (v34 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v35 = *(v11 + 72);
      v75 = v34;
      (*(v11 + 16))(v13, v61 + v35 * v34, v10);
      v77 = sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v36 = sub_1B7A98DD0();
      sub_1B7A98E00();
      if (*(v36 + 16))
      {
        sub_1B7957B74(&qword_1EDC0EB18, MEMORY[0x1E69AAF70]);
        v37 = sub_1B7A9A3E0();
        v38 = -1 << *(v36 + 32);
        v39 = v37 & ~v38;
        if ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          break;
        }
      }

LABEL_7:
      v34 = v75 + 1;

      (*v80)(v82, v81);
      v13 = v66;
      v10 = v67;
      (*v62)(v66, v67);

      v26 = v76;
      v23 = v68;
      v11 = v58;
      v29 = v64;
      v28 = v65;
      result = v63;
      if (v34 == v59)
      {
        goto LABEL_20;
      }
    }

    v40 = ~v38;
    v41 = *(v69 + 72);
    v42 = *(v69 + 16);
    while (1)
    {
      v43 = v79;
      v44 = v81;
      v42(v79, *(v36 + 48) + v41 * v39, v81);
      sub_1B7957B74(&qword_1EDC0EB10, MEMORY[0x1E69AAF70]);
      v45 = sub_1B7A9A470();
      v46 = *v80;
      (*v80)(v43, v44);
      if (v45)
      {
        break;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v46(v82, v81);
    (*v62)(v66, v67);

    v26 = v76;
    v23 = v68;
    v31 = v70;
    v29 = v64;
    v28 = v65;
  }

  v47 = v71;
  if (v71(v26, 1, v28) != 1)
  {
    goto LABEL_25;
  }

LABEL_21:
  sub_1B7957820(v23, v31, &qword_1EBA465C0);
  if (v47(v31, 1, v28) == 1)
  {
    sub_1B7957888(v23, &qword_1EBA465C0);
  }

  else
  {
    v48 = sub_1B7A98DF0();
    (*(v29 + 8))(v31, v28);
    v49 = *(v48 + 16);

    if (!v49)
    {
LABEL_25:
      v31 = v23;
      goto LABEL_26;
    }

    v50 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
    v51 = v57;
    sub_1B7A99990();
    v31 = v23;
    sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8]);
    sub_1B7A97120();
    (*(v54 + 16))(v53, v56, v55);
    sub_1B7A99980();

    v26 = v76;
    sub_1B7A97120();
    sub_1B7957820(v51 + *(v50 + 32), v52, &qword_1EBA465C0);
    sub_1B7A99970();
  }

LABEL_26:
  sub_1B7957888(v31, &qword_1EBA465C0);
  sub_1B7957888(v26, &qword_1EBA465C0);
}