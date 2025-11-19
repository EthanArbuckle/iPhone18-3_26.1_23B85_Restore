uint64_t sub_1BD6AA7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB460);
  __swift_project_value_buffer(v15, qword_1EBDAB460);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD6AAAE4@<X0>(uint64_t a1@<X8>)
{
  v25[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v26 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v27 = v25 - v6;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v22 = *(v10 + 16);
  v22(v13, v21, v9);
  sub_1BE04B0A4();
  v25[1] = v20;
  sub_1BE04A894();
  (*(v17 + 56))(v27, 1, 1, v16);
  v23 = sub_1BE048BB4();
  (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0);
  v25[0] = swift_allocObject();
  *(v25[0] + 16) = xmmword_1BE0B98E0;
  sub_1BE052354();
  v22(v13, v21, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v22(v13, v21, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v22(v13, v21, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v22(v13, v21, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  return sub_1BE048BD4();
}

uint64_t sub_1BD6AB064()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "SavingsAccountEntity:uniqueEntity", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD6AB350(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1BD6AB3FC;

  return sub_1BD6ACE74(v1 + 16);
}

uint64_t sub_1BD6AB3FC()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    v4[1] = *(v2 + 32);
    v4[2] = v6;
    *v4 = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

unint64_t sub_1BD6AB514()
{
  result = qword_1EBD4FB08;
  if (!qword_1EBD4FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB08);
  }

  return result;
}

uint64_t sub_1BD6AB568(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1BD6ABA70();
  *v4 = v2;
  v4[1] = sub_1BD041C28;

  return MEMORY[0x1EEDB3840](a2, v5);
}

unint64_t sub_1BD6AB620()
{
  result = qword_1EBD4FB10;
  if (!qword_1EBD4FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB10);
  }

  return result;
}

unint64_t sub_1BD6AB678()
{
  result = qword_1EBD4FB18;
  if (!qword_1EBD4FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB18);
  }

  return result;
}

unint64_t sub_1BD6AB6CC()
{
  result = qword_1EBD4FB20;
  if (!qword_1EBD4FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB20);
  }

  return result;
}

uint64_t sub_1BD6AB720(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6ABA70();
  *v5 = v2;
  v5[1] = sub_1BD1CDC44;

  return MEMORY[0x1EEDB3850](a1, a2, v6);
}

uint64_t sub_1BD6AB7D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1BD6ABA70();
  *v4 = v2;
  v4[1] = sub_1BD1CDC40;

  return MEMORY[0x1EEDB3848](a2, v5);
}

unint64_t sub_1BD6AB888()
{
  result = qword_1EBD4FB28;
  if (!qword_1EBD4FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB28);
  }

  return result;
}

unint64_t sub_1BD6AB8DC()
{
  result = qword_1EBD4FB30;
  if (!qword_1EBD4FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB30);
  }

  return result;
}

unint64_t sub_1BD6AB934()
{
  result = qword_1EBD4FB38;
  if (!qword_1EBD4FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FB40);
    sub_1BD6AB8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB38);
  }

  return result;
}

uint64_t sub_1BD6AB9B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6AB514();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD6ABA70()
{
  result = qword_1EBD4FB48;
  if (!qword_1EBD4FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB48);
  }

  return result;
}

unint64_t sub_1BD6ABAC8()
{
  result = qword_1EBD4FB50;
  if (!qword_1EBD4FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB50);
  }

  return result;
}

uint64_t sub_1BD6ABB1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36D18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA0);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD6ABBD4()
{
  result = qword_1EBD4FB58;
  if (!qword_1EBD4FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB58);
  }

  return result;
}

unint64_t sub_1BD6ABC2C()
{
  result = qword_1EBD4FB60;
  if (!qword_1EBD4FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB60);
  }

  return result;
}

uint64_t sub_1BD6ABC80()
{
  sub_1BD6ABFD0();
  v1 = sub_1BE048DE4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1BD6ABCF0()
{
  result = qword_1EBD4FB68;
  if (!qword_1EBD4FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB68);
  }

  return result;
}

unint64_t sub_1BD6ABD44()
{
  result = qword_1EBD4FB70;
  if (!qword_1EBD4FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB70);
  }

  return result;
}

unint64_t sub_1BD6ABD9C()
{
  result = qword_1EBD4FB78;
  if (!qword_1EBD4FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB78);
  }

  return result;
}

unint64_t sub_1BD6ABE2C()
{
  result = qword_1EBD4FB80;
  if (!qword_1EBD4FB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB80);
  }

  return result;
}

uint64_t sub_1BD6ABE90(uint64_t a1)
{
  v2 = sub_1BD6AB6CC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD6ABEE0()
{
  result = qword_1EBD4FB90;
  if (!qword_1EBD4FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB90);
  }

  return result;
}

uint64_t sub_1BD6ABF4C()
{
  sub_1BD6ABD9C();

  return sub_1BE048EF4();
}

unint64_t sub_1BD6ABFD0()
{
  result = qword_1EBD4FB98;
  if (!qword_1EBD4FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB98);
  }

  return result;
}

uint64_t sub_1BD6AC024()
{
  v23 = sub_1BE048D74();
  v0 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA8);
  sub_1BE04A864();
  (*(v17 + 56))(v15, 1, 1, v16);
  v19 = sub_1BE048654();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v0 + 104))(v3, *MEMORY[0x1E695A500], v23);
  sub_1BD6AB6CC();
  return sub_1BE0488C4();
}

void sub_1BD6AC324(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a1;
  v76 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v69 - v7;
  v8 = sub_1BE04D214();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v72 = &v69 - v13;
  v14 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE04A874();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49438);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v16, qword_1EBDAB400);
  v26 = *(v17 + 16);
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v80 = sub_1BE0487F4();
  sub_1BE048964();
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v77 = sub_1BE0487F4();
  sub_1BE048964();
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v27 = sub_1BE0487F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740);
  sub_1BE048964();
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v28 = sub_1BE048824();
  sub_1BE048964();
  v29 = v78;
  if ([v78 type] == 4)
  {
    v30 = [v29 accountIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1BE052434();
      v34 = v33;

      v79 = v34;
      sub_1BE048C84();
      v35 = [v29 savingsDetails];
      if (v35)
      {
        v36 = v35;
        v72 = v27;
        v37 = [v35 accountSummary];
        v38 = [v37 formattedAPY];
        if (v38)
        {
          v39 = v38;
          v40 = sub_1BE052434();
          v42 = v41;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        v47 = v75;
        v81 = v40;
        v82 = v42;
        sub_1BE0487D4();
        v48 = [v36 currencyCode];
        if (v48)
        {
          v75 = v32;
          v49 = v48;
          sub_1BE052434();

          v50 = [v37 currentBalance];
          if (v50)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = 1;
            v51 = v50;
            sub_1BE0533E4();

            if ((v84 & 1) == 0)
            {
              sub_1BE048C84();
              v52 = v71;
              v29 = v78;
              sub_1BE048B54();
              v53 = sub_1BE048B74();
              (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
              sub_1BD0DE19C(v52, v70, &qword_1EBD493E0);
              sub_1BE0487D4();
              sub_1BD6AD608(v52);
            }
          }

          v54 = [v37 availableBalance];
          if (v54)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = 1;
            v55 = v54;
            sub_1BE0533E4();

            if (v84 != 1)
            {
              sub_1BE048C84();
              v56 = v71;
              v29 = v78;
              sub_1BE048B54();
              v57 = sub_1BE048B74();
              (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
              sub_1BD0DE19C(v56, v70, &qword_1EBD493E0);
              sub_1BE0487D4();
              sub_1BD6AD608(v56);
            }
          }

          v58 = [v37 interestYTD];
          if (v58 && (v81 = 0, v82 = 0, v83 = 0, v84 = 1, v59 = v58, sub_1BE0533E4(), v59, v84 != 1))
          {
            v64 = v71;
            sub_1BE048B54();
            v65 = sub_1BE048B74();
            (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
            sub_1BD0DE19C(v64, v70, &qword_1EBD493E0);
            v27 = v72;
            sub_1BE0487D4();

            sub_1BD6AD608(v64);

            v60 = v77;
          }

          else
          {

            v27 = v72;

            v60 = v77;
          }

          v32 = v75;
          goto LABEL_28;
        }

        sub_1BE04D074();
        v61 = sub_1BE04D204();
        v62 = sub_1BE052C34();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_1BD026000, v61, v62, "SavingsAccountEntity: Currency code was nil", v63, 2u);
          MEMORY[0x1BFB45F20](v63, -1, -1);
        }

        (*(v73 + 8))(v47, v74);

        v27 = v72;
      }

      else
      {
        v43 = v72;
        sub_1BE04D074();
        v44 = sub_1BE04D204();
        v45 = sub_1BE052C34();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1BD026000, v44, v45, "SavingsAccountEntity: Details were nil", v46, 2u);
          MEMORY[0x1BFB45F20](v46, -1, -1);
        }

        (*(v73 + 8))(v43, v74);
      }

      v60 = v77;

LABEL_28:
      v66 = v76;
      v68 = v79;
      v67 = v80;
      *v76 = v32;
      v66[1] = v68;
      v66[2] = v67;
      v66[3] = v60;
      v66[4] = v27;
      v66[5] = v28;
      return;
    }
  }

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD6ACE74(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_1BE04CFC4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD6ACF9C, 0, 0);
}

uint64_t sub_1BD6ACF9C()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "SavingsAccountEntity:uniqueEntity", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[33] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[34] = v12;
  if (v12)
  {
    v13 = v12;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_1BD6AD2B8;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD16E918;
    v0[13] = &block_descriptor_158;
    v0[14] = v14;
    [v13 defaultAccountForFeature:5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    sub_1BD6AB064();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1BD6AD2B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1BD6AD560;
  }

  else
  {
    v2 = sub_1BD6AD3C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD6AD3C8()
{
  v1 = *(v0 + 192);

  if (v1)
  {
    if ([v1 state] - 1 < 3)
    {
      v2 = *(v0 + 200);
      sub_1BD6AC324(v1, (v0 + 144));
      sub_1BD6AB064();

      v3 = *(v0 + 144);
      v4 = *(v0 + 176);
      v2[1] = *(v0 + 160);
      v2[2] = v4;
      *v2 = v3;

      v5 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_1BD135218();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  sub_1BD6AB064();

  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_1BD6AD560()
{
  v1 = *(v0 + 272);
  swift_willThrow();

  sub_1BD6AB064();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD6AD608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6AD670()
{
  result = qword_1EBD4FBB0;
  if (!qword_1EBD4FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBB0);
  }

  return result;
}

unint64_t sub_1BD6AD6C4()
{
  result = qword_1EBD4FBB8;
  if (!qword_1EBD4FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBB8);
  }

  return result;
}

uint64_t sub_1BD6AD760@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v45 = a1;
  v46 = a3;
  v44 = sub_1BE04F434();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC8);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD0);
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v41 = &v37 - v18;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD8);
  MEMORY[0x1EEE9AC00](v40, v19);
  v21 = &v37 - v20;
  sub_1BD6ADC8C();
  sub_1BE0504E4();
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80E0], v7);
  v22 = PKPassKitBundle();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v8 + 8))(v11, v7);
    v47 = v24;
    v48 = v26;
    v27 = v44;
    (*(v3 + 104))(v6, *MEMORY[0x1E697C438], v44);
    sub_1BD0DE4F4(&qword_1EBD4FBE8, &qword_1EBD4FBC8);
    sub_1BD0DDEBC();
    v28 = v41;
    v29 = v39;
    sub_1BE050C94();
    (*(v3 + 8))(v6, v27);

    (*(v38 + 8))(v15, v29);
    v30 = sub_1BE051D74();
    v31 = v45;
    if (v45)
    {
      v32 = v30;
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v31;
      sub_1BE04D8B4();

      v34 = v47;
      (*(v42 + 32))(v21, v28, v43);
      v35 = &v21[*(v40 + 36)];
      *v35 = v32;
      *(v35 + 1) = v34;
      return sub_1BD098ADC(v21, v46);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD6ADCE0();
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

__n128 sub_1BD6ADC34@<Q0>(uint64_t a1@<X8>)
{
  sub_1BD5CA250(0, 1, v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD6ADC8C()
{
  result = qword_1EBD4FBE0;
  if (!qword_1EBD4FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBE0);
  }

  return result;
}

unint64_t sub_1BD6ADCE0()
{
  result = qword_1EBD3B318;
  if (!qword_1EBD3B318)
  {
    type metadata accessor for SavingsStatementsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B318);
  }

  return result;
}

unint64_t sub_1BD6ADD38()
{
  result = qword_1EBD4FBF0;
  if (!qword_1EBD4FBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBF8);
    sub_1BD6ADDC4();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBF0);
  }

  return result;
}

unint64_t sub_1BD6ADDC4()
{
  result = qword_1EBD4FC00;
  if (!qword_1EBD4FC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBC8);
    sub_1BD0DE4F4(&qword_1EBD4FBE8, &qword_1EBD4FBC8);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4FC08, &qword_1EBD4FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC00);
  }

  return result;
}

uint64_t sub_1BD6ADF00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1BD6ADF5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD6ADFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  *(&v81 + 1) = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](*(&v81 + 1), v3);
  v5 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC20);
  MEMORY[0x1EEE9AC00](v84, v10);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC28);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v85 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC30);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v86 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v81 - v26;
  v82 = a1;
  v28 = a1[4];
  if (!v28)
  {
    (*(v14 + 56))(&v81 - v26, 1, 1, v13);
LABEL_5:
    v48 = v82;
    v49 = v82[1];
    if (v49)
    {
      v90 = *v82;
      v91 = v49;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v85 = sub_1BE0506C4();
      v51 = v50;
      v53 = v52;
      *(&v81 + 1) = v54;
      v55 = sub_1BE0501F4();
      PKOBKHeaderTitleSubtitleVerticalPadding();
      sub_1BE04E1F4();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      LOBYTE(v90) = v53 & 1;
      LOBYTE(v87[0]) = 0;
      *&v81 = v53 & 1;
      v84 = v55;
      v64 = v48[3];
      if (v64)
      {
LABEL_7:
        v90 = v48[2];
        v91 = v64;
        sub_1BD0DDEBC();
        sub_1BE048C84();
        v64 = sub_1BE0506C4();
        v66 = v65;
        v68 = v67;
        v70 = v69 & 1;
        sub_1BD0D7F18(v64, v65, v69 & 1);
        sub_1BE048C84();
LABEL_10:
        v71 = v86;
        sub_1BD0DE19C(v27, v86, &qword_1EBD4FC30);
        v72 = v71;
        v73 = v83;
        sub_1BD0DE19C(v72, v83, &qword_1EBD4FC30);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC38);
        v75 = (v73 + *(v74 + 48));
        *&v87[0] = v85;
        *(&v87[0] + 1) = v51;
        v76 = v81;
        v87[1] = v81;
        *&v88 = v84;
        *(&v88 + 1) = v57;
        *&v89[0] = v59;
        *(&v89[0] + 1) = v61;
        *&v89[1] = v63;
        BYTE8(v89[1]) = 0;
        v77 = v81;
        *v75 = v87[0];
        v75[1] = v77;
        v78 = v89[0];
        v75[2] = v88;
        v75[3] = v78;
        *(v75 + 57) = *(v89 + 9);
        v79 = *(v74 + 64);
        v82 = v51;
        v80 = (v73 + v79);
        sub_1BD0DE19C(v87, &v90, &qword_1EBD4FC40);
        sub_1BD1969AC(v64, v66, v70, v68);
        sub_1BD1969F0(v64, v66, v70, v68);
        *v80 = v64;
        v80[1] = v66;
        v80[2] = v70;
        v80[3] = v68;
        sub_1BD0DE53C(v27, &qword_1EBD4FC30);
        sub_1BD1969F0(v64, v66, v70, v68);
        v90 = v85;
        v91 = v82;
        v92 = v76;
        v93 = v84;
        v94 = v57;
        v95 = v59;
        v96 = v61;
        v97 = v63;
        v98 = 0;
        sub_1BD0DE53C(&v90, &qword_1EBD4FC40);
        return sub_1BD0DE53C(v86, &qword_1EBD4FC30);
      }
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v51 = 0;
      v81 = 0uLL;
      v57 = 0;
      v59 = 0;
      v61 = 0;
      v63 = 0;
      v64 = v82[3];
      if (v64)
      {
        goto LABEL_7;
      }
    }

    v66 = 0;
    v70 = 0;
    v68 = 0;
    goto LABEL_10;
  }

  *&v81 = v14;
  v29 = v28;
  result = [v29 paymentPass];
  if (result)
  {
    *v5 = result;
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v9 + 3) = 0x4061000000000000;
    *(v9 + 4) = v32 / v31 * 136.0;
    sub_1BD6AE768(v5, &v9[v6[6]], type metadata accessor for WrappedPass);
    *v9 = sub_1BD70C870;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v9[v6[7]] = 1;
    *&v9[v6[8]] = 1911;
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD6AE768(v9, v12, type metadata accessor for PassImage);
    v33 = &v12[*(v84 + 36)];
    v34 = v104;
    *(v33 + 4) = v103;
    *(v33 + 5) = v34;
    *(v33 + 6) = v105;
    v35 = v100;
    *v33 = v99;
    *(v33 + 1) = v35;
    v36 = v102;
    *(v33 + 2) = v101;
    *(v33 + 3) = v36;
    v37 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    sub_1BD0DE204(v12, v17, &qword_1EBD4FC20);
    v46 = &v17[*(v13 + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = v85;
    sub_1BD0DE204(v17, v85, &qword_1EBD4FC28);
    sub_1BD0DE204(v47, v27, &qword_1EBD4FC28);
    (*(v81 + 56))(v27, 0, 1, v13);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1BD6AE700@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC18);
  return sub_1BD6ADFE4(v6, a1 + *(v4 + 44));
}

uint64_t sub_1BD6AE768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD6AE7D0()
{
  result = qword_1EBD4FC48;
  if (!qword_1EBD4FC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC48);
  }

  return result;
}

uint64_t sub_1BD6AE834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD6AE8A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD6AE91C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_1BE04D8B4();

    v3 = v10[0];
    if (v10[0] || (v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction), v10[4] = sub_1BD6AF77C, v10[5] = v0, v10[0] = MEMORY[0x1E69E9820], v10[1] = 1107296256, v10[2] = sub_1BD307EA8, v10[3] = &block_descriptor_159, v5 = _Block_copy(v10), v6 = v4, sub_1BE048964(), , v7 = [v2 iconForTransaction:v6 size:0 ignoreLogoURL:0 requestType:v5 iconHandler:{45.0, 45.0}], _Block_release(v5), v6, swift_getKeyPath(), swift_getKeyPath(), v10[0] = v7, sub_1BE048964(), sub_1BE04D8C4(), swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , (v3 = v10[0]) != 0))
    {
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      swift_getKeyPath();
      swift_getKeyPath();
      v10[0] = v8;
      sub_1BE048964();
      v9 = v8;
      sub_1BE04D8C4();
    }
  }
}

uint64_t sub_1BD6AEB94(void *a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1BD6AF784;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_33_5;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BD6AEE50(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;
      return sub_1BE04D8C4();
    }
  }

  return result;
}

uint64_t sub_1BD6AEEEC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__presentationInformation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD407E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionPresentation()
{
  result = qword_1EBD4FC68;
  if (!qword_1EBD4FC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6AF054()
{
  sub_1BD2B01E4();
  if (v0 <= 0x3F)
  {
    sub_1BD2B0248();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1BD6AF138@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransactionPresentation();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD6AF178(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6AF1F0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD6AF270(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v2 = v1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6AF2E8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD6AF368(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD6AF3E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v4 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = [*(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
  if (result)
  {
    v6 = result;
    v7 = sub_1BE052434();
    v9 = v8;

    result = [*(a2 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) identifier];
    if (result)
    {
      v10 = result;
      v11 = sub_1BE052434();
      v13 = v12;

      if (v7 == v11 && v9 == v13)
      {
      }

      else
      {
        v15 = sub_1BE053B84();

        if ((v15 & 1) == 0)
        {
          v16 = 0;
          v17 = v18;
          v4 = v18;
LABEL_11:

          return v16;
        }
      }

      v16 = [v18 isEqual_];
      v17 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6AF5A8(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation__icon;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  sub_1BE04D874();
  (*(v8 + 32))(v3 + v12, v11, v7);
  v13 = OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator;
  *(v3 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_iconGenerator) = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction) = a1;
  *(v3 + v13) = a3;
  swift_beginAccess();
  v18 = a2;
  sub_1BD0E5E8C(0, &qword_1EBD407E0);
  v14 = a1;
  v15 = a3;
  v16 = a2;
  sub_1BE04D874();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = 0;
  sub_1BE048964();
  sub_1BE04D8C4();
  return v3;
}

unint64_t sub_1BD6AF794()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  swift_beginAccess();
  v3 = *(v2 + 72);
  sub_1BE048C84();

  if (v3 >> 62)
  {
LABEL_25:
    v4 = sub_1BE053704();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {
      goto LABEL_17;
    }

    if (v6)
    {
      break;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v3 + 8 * v5 + 32) == v0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_24;
    }
  }

  v8 = MEMORY[0x1BFB40900](v5, v3);
  swift_unknownObjectRelease();
  if (v8 != v0)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (!v5)
  {
LABEL_17:

    return 0;
  }

  result = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6)
  {
    v9 = MEMORY[0x1BFB40900](result, v3);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v9 = *(v3 + 32 + 8 * result);
  sub_1BE048964();
LABEL_21:

  return v9;
}

uint64_t sub_1BD6AF8F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B7020;
  *(v6 + 32) = v2;
  *(v5 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BD12FFE4;
  *(v7 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BD6B0468;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *a2 = v13;
  sub_1BE048964();

  return sub_1BE048964();
}

void sub_1BD6AFAA8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BE053704())
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB40900](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BE053704();
LABEL_13:
      if (v3)
      {
        sub_1BD1DDD20(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1BD6AFB80()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1BE053704())
  {
    if (sub_1BE053704())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        sub_1BE048964();
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1BFB40900](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1BE053704();
LABEL_13:
      if (v3)
      {
        sub_1BD1DE998(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1BD6AFC58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  swift_beginAccess();
  while (1)
  {
    v8 = *(a1 + 16);
    if (v8 >> 62)
    {
      result = sub_1BE053704();
      if (!result)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_45;
      }
    }

    result = swift_beginAccess();
    v10 = *(a1 + 16);
    v11 = v10 >> 62;
    if (!(v10 >> 62))
    {
      break;
    }

    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_53;
    }

    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_54;
    }

LABEL_9:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](0, v10);
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v12 = *(v10 + 32);
      sub_1BE048964();
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      if (!v11)
      {
LABEL_12:
        result = *(v13 + 16);
        if (!result)
        {
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    result = sub_1BE053704();
    if (!result)
    {
      goto LABEL_51;
    }

    result = sub_1BE053704();
    if (result < 1)
    {
      goto LABEL_52;
    }

    result = sub_1BE053704();
LABEL_23:
    v14 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + 16) = v10;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v11)
      {
        if (v14 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_29:
      sub_1BE053704();
      goto LABEL_30;
    }

    if (v11)
    {
      goto LABEL_29;
    }

LABEL_30:
    v10 = sub_1BE053884();
    *(a1 + 16) = v10;
LABEL_31:
    sub_1BD1DE898(0, 1, 0);
    *(a1 + 16) = v10;
    swift_endAccess();
    sub_1BE048964();
    if ([a2 containsObject_])
    {

      goto LABEL_47;
    }

    swift_beginAccess();
    v6 = *(a1 + 16);
    v16 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_1BE053704();
      if (result < 0)
      {
        goto LABEL_55;
      }

      result = sub_1BE053704();
      if (result < 0)
      {
        goto LABEL_56;
      }

      result = sub_1BE053704();
      v17 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        v12 = 0;
LABEL_47:
        *a3 = v12;
        return result;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_44;
      }
    }

    sub_1BE048964();
    v18 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + 16) = v6;
    if (!v18)
    {
      if (v16)
      {
LABEL_2:
        sub_1BE053704();
      }

LABEL_3:
      v6 = sub_1BE053884();
      *(a1 + 16) = v6;
      goto LABEL_4;
    }

    if (v16)
    {
      goto LABEL_2;
    }

    if (v17 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_1BD1DCF24(0, 0, 1, v12);
    *(a1 + 16) = v6;
    swift_endAccess();

    swift_beginAccess();
    v7 = *(v12 + 72);
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD1DE2D8(0, 0, v7);
    swift_endAccess();

    [a2 addObject_];
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
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
  return result;
}

uint64_t sub_1BD6B0020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_beginAccess();
  sub_1BD6AFB80();
  v7 = v6;
  swift_endAccess();
  swift_beginAccess();
  v8 = *(v7 + 72);
  swift_beginAccess();
  sub_1BE048C84();
  sub_1BD1DE2D8(0, 0, v8);
  swift_endAccess();

LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t sub_1BD6B0128@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    sub_1BE053A14();
    result = swift_endAccess();
    if (!v7)
    {
      break;
    }

    if (*(v7 + 16) == *(a1 + 16))
    {

      *(a2 + 16) = 1;
    }

    else
    {
      if (*(a2 + 16))
      {
        break;
      }
    }

    swift_beginAccess();
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BD6B0218@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  swift_beginAccess();
  *(a1 + 16) = Strong;

  *a2 = Strong;
  return sub_1BE048964();
}

uint64_t sub_1BD6B02A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *a2 = v4;
  if (v4)
  {
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  result = swift_beginAccess();
  *(a1 + 16) = Strong;
  return result;
}

uint64_t sub_1BD6B0320(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B7020;
  *(v5 + 32) = a2;
  *(v4 + 16) = v5;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD12F81C;
  *(inited + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90);
  *(swift_initStackObject() + 16) = inited;
  sub_1BE048964();
  sub_1BE048964();
  while (1)
  {
    sub_1BD6B0020(v4, &v9);
    if (!v9)
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (*(v9 + 16) == a1)
    {
      break;
    }
  }

  v7 = v9;
LABEL_7:

  return v7;
}

unint64_t sub_1BD6B0474()
{
  result = qword_1EBD4FC78;
  if (!qword_1EBD4FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC78);
  }

  return result;
}

uint64_t sub_1BD6B04F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BD1B6140(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1BD1DAD20(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1BD0DE53C(a1, &qword_1EBD3EC90);
    sub_1BD6B1E10(a2, a3, v9);

    return sub_1BD0DE53C(v9, &qword_1EBD3EC90);
  }

  return result;
}

void sub_1BD6B05C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1BD1DAE70(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_1BD14BFD0(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_1BD506274();
        v12 = v15;
      }

      sub_1BD505344(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_1BD6B06D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1BD1DB308(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1BD148F70(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1BD5069C0();
        v16 = v18;
      }

      result = sub_1BD50550C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1BD6B07D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1BD1DB7CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1BD148F70(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1BD5071E8();
        v14 = v16;
      }

      result = sub_1BD509760(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1BD6B08D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970);
    sub_1BD6B1FAC(a2, a3, MEMORY[0x1E6969530], sub_1BD5059DC, sub_1BD5079C8, v10);

    return sub_1BD0DE53C(v10, &unk_1EBD39970);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1BD1DBAC4(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1BD6B0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1BD1DBB18(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1BD148F70(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1BD507BC8();
        v14 = v16;
      }

      result = sub_1BD505A0C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1BD6B0BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD3CF70);
    sub_1BD6B1FAC(a2, a3, MEMORY[0x1E6968FB0], sub_1BD505D2C, sub_1BD5085A0, v10);

    return sub_1BD0DE53C(v10, &unk_1EBD3CF70);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1BD1DC1E4(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1BD6B0DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1BD1B6150(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1BD1DC3F4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1BD0DE53C(a1, &qword_1EBD4FCB0);
    v7 = sub_1BD149084(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1BD508850();
        v11 = v13;
      }

      sub_1BD1B6150(*(v11 + 56) + 40 * v9, v14);
      sub_1BD505F38(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1BD0DE53C(v14, &qword_1EBD4FCB0);
  }

  return result;
}

void static Analytics.trackUserEducationDemo(event:pageTag:buttonTag:source:additionalDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v17 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  v18 = *MEMORY[0x1E69BA680];
  *(inited + 56) = *MEMORY[0x1E69BA680];
  *(inited + 64) = a1;
  *(inited + 72) = a2;
  v19 = v17;
  sub_1BE048C84();
  v20 = v18;
  sub_1BE048C84();
  v21 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v35 = v21;
  if ((a8 & 1) == 0)
  {
    v22 = PKApplePayUserEducationDemoSourceToString();
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;

      v27 = *MEMORY[0x1E69BA338];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v21;
      sub_1BD1DAE70(v24, v26, v27, isUniquelyReferenced_nonNull_native);

      v35 = v21;
    }
  }

  if (a6)
  {
    v29 = *MEMORY[0x1E69BA440];
    sub_1BE048C84();
    sub_1BD6B05C0(a5, a6, v29);
    v21 = v35;
  }

  if (a9)
  {
    sub_1BE048C84();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v21;
    sub_1BD6B8B40(a9, sub_1BD6B2140, 0, v30, &v34);

    v35 = v34;
  }

  v31 = objc_opt_self();
  v32 = *MEMORY[0x1E69BB6B0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v33 = sub_1BE052224();

  [v31 subject:v32 sendEvent:v33];
}

uint64_t sub_1BD6B119C()
{
  v0 = sub_1BD6B04D8();
  v2 = v1;
  if (v0 == sub_1BD6B04D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BE053B84();
  }

  return v5 & 1;
}

uint64_t sub_1BD6B1224()
{
  sub_1BE053D04();
  sub_1BD6B04D8();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD6B1288()
{
  sub_1BD6B04D8();
  sub_1BE052524();
}

uint64_t sub_1BD6B12DC()
{
  sub_1BE053D04();
  sub_1BD6B04D8();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD6B133C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD6B9D24();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6B136C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD6B04D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD6B1398(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 <= 9u)
    {
      return sub_1BE052434();
    }

    if (a1 == 10)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    if (a1 < 4u || a1 == 4)
    {
      return sub_1BE052434();
    }

    return 0x41746E756F636361;
  }
}

void sub_1BD6B14D4(uint64_t a1, void *a2)
{
  sub_1BE048C84();
  v3 = [a2 analyticsProductType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    v8 = *MEMORY[0x1E69BAC90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v5, v7, v8, isUniquelyReferenced_nonNull_native);
  }

  v10 = [a2 analyticsSubject];
  if (!v10)
  {
    v10 = *MEMORY[0x1E69BB6E0];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v12 = sub_1BE052224();

  [ObjCClassFromMetadata subject:v10 sendEvent:v12];
}

uint64_t sub_1BD6B1634(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v3 = 2;
      MEMORY[0x1BFB3F8C0](v1, &v3);
    }
  }

  return sub_1BE052434();
}

unint64_t sub_1BD6B16D0(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0x7373696D736964;
      break;
    case 2:
      result = 0x7972616D697270;
      break;
    case 3:
      result = 0x79656E6F4D646461;
      break;
    case 4:
      result = 0x614377654E646461;
      break;
    case 5:
      result = 0x41676E696C6C6962;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x73647261776572;
      break;
    case 9:
      result = 0x7961507075746573;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0x6150656B6F766572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static Analytics.peerPaymentButtonTapAnalyticsEvent(with:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BA680];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v11;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v14);

  return v14;
}

unint64_t static Analytics.peerPaymentAnalyticsEvent(with:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v4;
  v5 = v3;
  v6 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v6;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v9);

  return v9;
}

PassKitUI::Analytics::RemoteNetworkPaymentLoadingViewAnalyticsState_optional __swiftcall Analytics.RemoteNetworkPaymentLoadingViewAnalyticsState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE053A44();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Analytics.RemoteNetworkPaymentLoadingViewAnalyticsState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x466C616974696E69;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0x7369447465656873;
  }

  v4 = 0x46676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1BD6B1CE0(unint64_t *a1@<X8>)
{
  v2 = 0xEE006572756C6961;
  v3 = *v1;
  v4 = 0x466C616974696E69;
  v5 = 0x80000001BE117EB0;
  v6 = 0xD000000000000017;
  if (v3 != 6)
  {
    v6 = 0x7369447465656873;
    v5 = 0xEE0064657373696DLL;
  }

  v7 = 0x46676E6964616F6CLL;
  v8 = 0xED00006465737369;
  if (v3 == 4)
  {
    v8 = 0xEE006572756C6961;
  }

  else
  {
    v7 = 0x6D73694472657375;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000014;
  v10 = 0x80000001BE117E60;
  if (v3 != 2)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001BE117E80;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v2 = 0x80000001BE117E40;
  }

  if (*v1 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v4 = v9;
    v11 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v5;
  }

  *a1 = v12;
  a1[1] = v13;
}

double sub_1BD6B1E10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BD148F70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BD5060D0();
      v10 = v12;
    }

    sub_1BD1B6140((*(v10 + 56) + 32 * v8), a3);
    sub_1BD505194(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BD6B1F0C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1BD149084(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v12;
}

uint64_t sub_1BD6B1FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1BD148F70(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_1BD6B2140@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v2;

  return sub_1BE048C84();
}

uint64_t sub_1BD6B2184(char a1, unsigned __int8 a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  v9 = sub_1BD6B16D0(a1);
  v11 = v10;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v12 = *MEMORY[0x1E69BABE8];
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = sub_1BD6B1398(a2);
  *(inited + 96) = v13;
  v14 = v6;
  v15 = v8;
  v16 = v12;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1BE0B98D0;
  *(v21 + 32) = v17;
  *(v21 + 40) = sub_1BE052434();
  *(v21 + 48) = v22;
  *(v21 + 56) = v18;
  *(v21 + 64) = v9;
  *(v21 + 72) = v11;
  *(v21 + 80) = v19;
  *(v21 + 88) = sub_1BD6B1398(a2);
  *(v21 + 96) = v23;
  v24 = sub_1BD1AAF50(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v20 + 16))
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v24;
    sub_1BD6B8B40(v20, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v33);
  }

  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = *MEMORY[0x1E69BB6E0];
  }

  v27 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v28 = a3;
  v29 = sub_1BE052224();

  [v27 subject:v26 sendEvent:v29];
}

unint64_t sub_1BD6B2434(uint64_t a1)
{
  if (!PKOslo2024UIUpdatesEnabled())
  {
    return 0;
  }

  v2 = sub_1BD1C2074(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v4 = *MEMORY[0x1E69BA4D8];
  *(inited + 32) = *MEMORY[0x1E69BA4D8];
  v5 = inited + 32;
  if (v2 > 3u)
  {
    if (v2 > 5u)
    {
      if (v2 == 6)
      {
        v7 = 0x80000001BE117300;
        v6 = 0xD000000000000019;
      }

      else
      {
        v7 = 0xE800000000000000;
        v6 = 0x797469746E656469;
      }
    }

    else if (v2 == 4)
    {
      v7 = 0xEA00000000006472;
      v6 = 0x614365676E616863;
    }

    else
    {
      v6 = 0xD000000000000010;
      v7 = 0x80000001BE1172E0;
    }
  }

  else if (v2 > 1u)
  {
    if (v2 == 2)
    {
      v7 = 0x80000001BE117290;
      v6 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x80000001BE1172B0;
      v6 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v6 = 0x636972656E6567;
    if (v2)
    {
      v6 = 0xD000000000000013;
      v7 = 0x80000001BE117270;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v9 = inited;
  v10 = v4;
  v11 = sub_1BD1AAF50(v9);
  swift_setDeallocating();
  sub_1BD0DE53C(v5, &qword_1EBD3F590);
  return v11;
}

void sub_1BD6B261C(uint64_t a1)
{
  v2 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v3 = sub_1BD6B2434(a1);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v4 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v2;
      sub_1BD6B8B40(v4, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v112);

      v2 = v112;
    }

    else
    {
    }
  }

  v6 = *(a1 + qword_1EBDAAD68 + 32);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v6 currencyCode];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69BB350]];

  v9 = [v6 totalSummaryItem];
  v10 = [v9 type];

  if (v10)
  {
    v11 = [v6 totalSummaryItem];
    v12 = [v11 type];

    if (v12 == 1)
    {
      v13 = PKAnalyticsReportSwitchToggleResultValue();
      [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BB328]];

      [v7 setObject:@"Amount Pending" forKeyedSubscript:*MEMORY[0x1E69BB338]];
    }
  }

  else
  {
    v14 = [v6 transactionAmount];
    v15 = [v6 totalSummaryItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([MEMORY[0x1E696AB90] zero], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v14, "isEqual:", v17), v17, v18))
    {
      v19 = PKAnalyticsReportSwitchToggleResultValue();
      [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BB328]];

      [v7 setObject:@"Free" forKeyedSubscript:*MEMORY[0x1E69BB338]];
    }

    else
    {
      v20 = [v6 initialTransactionAmount];
      if (v20)
      {
        v21 = [MEMORY[0x1E696AB90] zero];
        v22 = [v20 isEqual:v21];

        if ((v22 & 1) == 0)
        {
          v103 = v2;
          v23 = [v14 decimalNumberBySubtracting:v20];
          v24 = [v20 copy];
          v25 = [MEMORY[0x1E696AB90] zero];
          v26 = [v24 compare:v25];

          if (v26 == -1)
          {
            v27 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"-1"];
            v28 = [v24 decimalNumberByMultiplyingBy:v27];

            v24 = v28;
          }

          v29 = [v23 decimalNumberByDividingBy:v24];
          v30 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"100"];
          v31 = [v29 decimalNumberByMultiplyingBy:v30];

          v32 = MEMORY[0x1E696AEC0];
          [v31 doubleValue];
          v34 = [v32 stringWithFormat:@"%.2lf", v33];
          [v7 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69BB330]];

          v2 = v103;
        }
      }

      v35 = PKAnalyticsReportSwitchToggleResultValue();
      [v7 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69BB328]];
    }
  }

  v111 = v6;
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v111 hasAnyPayLaterOptions];
  if (([v111 fundingMode] | 2) != 2)
  {
    v105 = 0;
    v106 = 0;
    v109 = 0;
    v110 = 0;
    v47 = 0;
    v48 = 0;
    v107 = 0;
    v108 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_53;
  }

  v37 = [v111 mode];
  v104 = v2;
  if (v37 == 2)
  {
    v51 = [v111 remotePaymentInstrument];
    v108 = [v51 organizationName];

    v52 = [v111 remotePaymentInstrument];
    v107 = [v52 issuerCountryCode];

    v53 = [v111 remotePaymentInstrument];
    v110 = [v53 isCobranded];

    v54 = [v111 remotePaymentInstrument];
    v105 = [v54 cobrandName];
    v106 = 0;
    v109 = 0;
    v55 = 0;
    v48 = 0;
LABEL_48:

    goto LABEL_49;
  }

  if (v37 == 1)
  {
    v38 = [v111 pass];
    v39 = [v111 pass];
    v40 = [v39 uniqueID];

    v108 = [v38 organizationName];
    v107 = [v38 issuerCountryCode];
    v110 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v38, "isCobranded")}];
    v105 = [v38 cobrandName];
    v102 = @"payInFull";
    v41 = @"payInFull";
    v95 = [v111 fundingMode] == 2;
    v42 = v111;
    if (!v95)
    {
LABEL_35:
      v57 = [v42 paymentOffersController];
      v58 = [v57 eligiblePaymentOfferCriteriaForPassUniqueID:v40 type:1];
      v106 = [MEMORY[0x1E696AD98] numberWithInt:v58 != 0];
      if (v58)
      {
        v109 = [v57 ineligibleDetailsForCriteria:v58];
        [v58 suppressPayInFull];
      }

      else
      {
        v109 = 0;
      }

      v54 = [v57 eligiblePaymentOfferCriteriaForPassUniqueID:v40 type:2];
      v55 = [MEMORY[0x1E696AD98] numberWithInt:v54 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_47;
      }

      [v111 pass];
      v59 = v40;
      v61 = v60 = v57;
      v62 = [v111 connectedCardStateForPass:v61];

      v57 = v60;
      v40 = v59;
      switch(v62)
      {
        case 0:
          goto LABEL_47;
        case 1:
          v63 = @"true";
          break;
        case 2:
          v63 = @"false";
          break;
        default:
          v63 = 0;
          goto LABEL_46;
      }

      v64 = v63;
LABEL_46:
      [v36 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_47:
      v48 = v102;
      goto LABEL_48;
    }

    v43 = [v111 selectedPaymentOffer];

    if (v43)
    {
      v44 = [v111 selectedPaymentOffer];
      v45 = [v44 type];

      if (v45 == 1)
      {
        v46 = @"installments";
        goto LABEL_33;
      }

      if (v45 == 2)
      {
        v46 = @"rewards";
LABEL_33:
        v102 = v46;
        v56 = v46;

        goto LABEL_34;
      }
    }

    v102 = @"payInFull";
LABEL_34:
    v42 = v111;
    goto LABEL_35;
  }

  v105 = 0;
  v106 = 0;
  v109 = 0;
  v110 = 0;
  v55 = 0;
  v48 = 0;
  v107 = 0;
  v108 = 0;
LABEL_49:
  v65 = [v111 paymentApplication];
  v66 = v65;
  if (v65)
  {
    [v65 paymentNetworkIdentifier];
    v50 = PKPaymentNetworkNameForPaymentCredentialType();
    [v66 paymentType];
    v49 = PKPaymentMethodTypeToString();
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v47 = v55;

  v2 = v104;
LABEL_53:
  [v36 setObject:v50 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
  [v36 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
  [v36 setObject:v108 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
  [v36 setObject:v107 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
  if (v110)
  {
    [v110 BOOLValue];
    v67 = PKAnalyticsReportSwitchToggleResultValue();
    [v36 setObject:v67 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
  }

  [v36 setObject:v105 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
  v68 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v68 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

  v69 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

  PKHideCardBenefitPayLater();
  v70 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v70 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

  PKHidePayLaterOptions();
  v71 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v71 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

  PKHideCardBenefitRewards();
  v72 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

  [v111 hasAnyPayWithRewardsOffers];
  v73 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v73 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

  if (v48)
  {
    [v36 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
  }

  if (v106)
  {
    [v106 BOOLValue];
    v74 = PKAnalyticsReportSwitchToggleResultValue();
    [v36 setObject:v74 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
  }

  if (v109)
  {
    v75 = [v109 analyticsValue];
    [v36 setObject:v75 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
  }

  if (v47)
  {
    [v47 BOOLValue];
    v76 = PKAnalyticsReportSwitchToggleResultValue();
    [v36 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
  }

  [v111 hasAutomaticallyPresentedPass];
  v77 = PKAnalyticsReportSwitchToggleResultValue();
  [v36 setObject:v77 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

  [v7 addEntriesFromDictionary:v36];
  if ([v7 count])
  {
    [v7 setObject:*MEMORY[0x1E69BA798] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  }

  v78 = v7;
  if (v78)
  {
    v79 = v78;
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v80 = sub_1BE052244();

    if (*(v80 + 16))
    {
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v2;
      sub_1BD6B8B40(v80, sub_1BD6B2140, 0, v81, &v112);

      v2 = v112;
    }

    else
    {
    }
  }

  v82 = [v111 selectedPaymentOffer];
  if (v82)
  {
    v83 = v82;
    if ([v111 fundingMode] == 2 && objc_msgSend(v83, sel_type) == 2 && (objc_opt_self(), (v84 = swift_dynamicCastObjCClass()) != 0) && (v85 = objc_msgSend(v84, sel_rewardsRedemptionIntent)) != 0)
    {
      v86 = v85;
      v87 = *MEMORY[0x1E69BAD18];
      [v86 rewardsType];
      v88 = PKPaymentRewardsBalanceTypeToString();
      v89 = sub_1BE052434();
      v91 = v90;

      v92 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v2;
      sub_1BD1DAE70(v89, v91, v87, v92);

      v93 = v112;
      LODWORD(v87) = [v86 hasFullBalanceSelected];
      v94 = *MEMORY[0x1E69BACF0];
      v95 = v87 == 0;
      if (v87)
      {
        v96 = 1819047270;
      }

      else
      {
        v96 = 0x6C616974726170;
      }

      if (v95)
      {
        v97 = 0xE700000000000000;
      }

      else
      {
        v97 = 0xE400000000000000;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v93;
      sub_1BD1DAE70(v96, v97, v94, v98);

      v2 = v112;
    }

    else
    {
    }
  }

  if (*(v2 + 16))
  {
    v99 = objc_opt_self();
    v100 = *MEMORY[0x1E69BB6E0];
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v101 = sub_1BE052224();

    [v99 subject:v100 sendEvent:v101];
  }

  else
  {
  }
}

unint64_t sub_1BD6B3418(uint64_t a1, void *a2, void *a3, id a4)
{
  if (!a4 || (v8 = [a4 uniqueID]) == 0)
  {
    v12 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
    v65 = v12;
    goto LABEL_10;
  }

  v9 = v8;
  sub_1BE052434();
  v11 = v10;

  v12 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v65 = v12;
  if (!v11)
  {
LABEL_10:
    LOBYTE(v17) = 1;
LABEL_11:
    v18 = *MEMORY[0x1E69BA9D0];
    goto LABEL_12;
  }

  if (!a2)
  {
    LOBYTE(v17) = 0;
    goto LABEL_11;
  }

  v13 = a2;
  sub_1BE048C84();
  v14 = sub_1BE052404();
  v15 = [v13 eligiblePaymentOfferCriteriaForPassUniqueID:v14 type:1];

  if (v15)
  {
  }

  v16 = sub_1BE052404();

  v17 = [v13 eligiblePaymentOfferCriteriaForPassUniqueID:v16 type:2];

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = *MEMORY[0x1E69BA9D0];
  LOBYTE(v17) = 0;
LABEL_12:
  v19 = sub_1BE052434();
  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v12;
  sub_1BD1DAE70(v19, v21, v18, isUniquelyReferenced_nonNull_native);

  v65 = v12;
  v23 = *MEMORY[0x1E69BACF8];
  v24 = sub_1BE052434();
  v26 = v25;
  v27 = v23;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v12;
  sub_1BD1DAE70(v24, v26, v27, v28);

  v65 = v12;
  if (a3)
  {
    if (a1 == 2 && [a3 type] == 2)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = [v29 rewardsRedemptionIntent];
        if (v30)
        {
          v31 = v30;
          v32 = *MEMORY[0x1E69BAD18];
          [v31 rewardsType];
          v33 = PKPaymentRewardsBalanceTypeToString();
          v34 = sub_1BE052434();
          v36 = v35;

          v37 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v12;
          sub_1BD1DAE70(v34, v36, v32, v37);

          LODWORD(v32) = [v31 hasFullBalanceSelected];
          v38 = *MEMORY[0x1E69BACF0];
          v39 = v32 == 0;
          if (v32)
          {
            v40 = 1819047270;
          }

          else
          {
            v40 = 0x6C616974726170;
          }

          if (v39)
          {
            v41 = 0xE700000000000000;
          }

          else
          {
            v41 = 0xE400000000000000;
          }

          v42 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v12;
          sub_1BD1DAE70(v40, v41, v38, v42);

          v65 = v12;
        }
      }
    }
  }

  if ((v17 & 1) == 0)
  {
    if (a2)
    {
      v43 = sub_1BE052404();

      v44 = [a2 merchandisingOfferForPassUniqueID_];

      goto LABEL_29;
    }
  }

  v44 = 0;
LABEL_29:
  v45 = [objc_opt_self() analyticsDictionaryForOffer_];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v46 = sub_1BE052244();

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v12;
  sub_1BD6B8B40(v46, sub_1BD6B2140, 0, v47, &v64);

  v48 = v64;
  v65 = v64;
  if (a4)
  {
    v49 = *MEMORY[0x1E69BAC80];
    v50 = a4;
    v51 = [v50 organizationName];
    v52 = sub_1BE052434();
    v54 = v53;

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v48;
    sub_1BD1DAE70(v52, v54, v49, v55);

    v65 = v64;
    v56 = *MEMORY[0x1E69BAD48];
    v57 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v57)
    {
      v58 = v57;
      v59 = sub_1BE052434();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    sub_1BD6B05C0(v59, v61, v56);

    return v65;
  }

  else
  {
  }

  return v48;
}

void sub_1BD6B39C8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v64 = a2;
  v65 = a5;
  v67 = a3;
  v7 = sub_1BE04C614();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v59 - v17;
  v19 = v8[2];
  v19(&v59 - v17, a1, v7);
  v20 = v8[11];
  if (v20(v18, v7) != *MEMORY[0x1E69BC8D8])
  {
    v59 = v8[1];
    v59(v18, v7);
    v19(v15, a1, v7);
    v21 = v20(v15, v7);
    v22 = *MEMORY[0x1E69BC8B8];
    v60 = a4;
    v62 = a1;
    if (v21 == v22)
    {
      v23 = 3;
    }

    else if (v21 == *MEMORY[0x1E69BC8E0])
    {
      v23 = 7;
    }

    else if (v21 == *MEMORY[0x1E69BC8B0])
    {
      v23 = 6;
    }

    else
    {
      v59(v15, v7);
      v23 = 2;
    }

    v61 = v23;
    v63 = *MEMORY[0x1E69BB6E0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v25 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v26;
    v27 = *MEMORY[0x1E69BABE8];
    *(inited + 56) = *MEMORY[0x1E69BABE8];
    *(inited + 64) = sub_1BD6B1398(v61);
    *(inited + 72) = v28;
    v29 = v25;
    v30 = v27;
    v31 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    v32 = v66;
    v19(v66, v62, v7);
    v33 = v20(v32, v7);
    if (v33 == *MEMORY[0x1E69BC8A8])
    {
      v34 = *MEMORY[0x1E69BAA18];
      v35 = v67;
      if (v67)
      {
        v36 = v34;
        [v35 hasAnyEligiblePaymentOfferCriteriaOfType_];
        v47 = sub_1BE052434();
        v49 = v48;
      }

      else
      {
        v47 = sub_1BE052434();
        v49 = v45;
        v46 = v34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v31;
      sub_1BD1DAE70(v47, v49, v34, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v37 = v67;
      if (v33 == *MEMORY[0x1E69BC8E0])
      {
        if (v60)
        {
          if (v67)
          {
            v38 = v60;
            v39 = [v38 criteriaIdentifier];
            if (!v39)
            {
              sub_1BE052434();
              v39 = sub_1BE052404();
            }

            v40 = [v38 passUniqueID];
            if (!v40)
            {
              sub_1BE052434();
              v40 = sub_1BE052404();
            }

            v37 = [v37 paymentOfferCollectionForCriteriaIdentifier:v39 passUniqueID:v40];

            if (v37)
            {
              v41 = [v37 installmentAssessment];

              if (v41)
              {
                v37 = [v41 offers];

                if (v37)
                {
                  sub_1BD0E5E8C(0, &qword_1EBD39018);
                  v42 = sub_1BE052744();

                  if (v42 >> 62)
                  {
                    v37 = sub_1BE053704();
                  }

                  else
                  {
                    v37 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }
                }
              }

              else
              {
                v37 = 0;
              }
            }
          }
        }

        else
        {
          v37 = 0;
        }

        v51 = *MEMORY[0x1E69BA9C8];
        v68 = v37;
        v52 = v51;
        v53 = sub_1BE053B24();
        v55 = v54;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v31;
        sub_1BD1DAE70(v53, v55, v52, v56);
      }

      else if (v33 == *MEMORY[0x1E69BC8B0])
      {
        v43 = sub_1BD6B3418(v64, v67, v60, v65);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v31;
        sub_1BD6B8B40(v43, sub_1BD6B2140, 0, v44, &v68);
      }

      else
      {
        (v59)(v32, v7, v60);
      }
    }

    v57 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v58 = sub_1BE052224();

    [v57 subject:v63 sendEvent:v58];
  }
}

void sub_1BD6B4058(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v5 = sub_1BE04C614();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - v12;
  v14 = v6[2];
  v14(&v38 - v12, a1, v5);
  v15 = v6[11];
  if (v15(v13, v5) != *MEMORY[0x1E69BC8D8])
  {
    v39 = a3;
    v16 = v6[1];
    v16(v13, v5);
    v14(v10, a1, v5);
    v17 = v15(v10, v5);
    if (v17 == *MEMORY[0x1E69BC8B8])
    {
      v18 = 3;
    }

    else if (v17 == *MEMORY[0x1E69BC8E0])
    {
      v18 = 7;
    }

    else if (v17 == *MEMORY[0x1E69BC8B0])
    {
      v18 = 6;
    }

    else
    {
      v16(v10, v5);
      v18 = 2;
    }

    v19 = *MEMORY[0x1E69BB6E0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v21 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v22;
    v23 = *MEMORY[0x1E69BABE8];
    *(inited + 56) = *MEMORY[0x1E69BABE8];
    *(inited + 64) = sub_1BD6B1398(v18);
    *(inited + 72) = v24;
    v25 = v21;
    v26 = v23;
    v27 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    if (v39)
    {
      if (v40 == 2 && [v39 type] == 2)
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = [v28 rewardsRedemptionIntent];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 hasFullBalanceSelected];
            v32 = *MEMORY[0x1E69BACF0];
            if (v31)
            {
              v33 = 1819047270;
            }

            else
            {
              v33 = 0x6C616974726170;
            }

            if (v31)
            {
              v34 = 0xE400000000000000;
            }

            else
            {
              v34 = 0xE700000000000000;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v27;
            sub_1BD1DAE70(v33, v34, v32, isUniquelyReferenced_nonNull_native);
          }
        }
      }
    }

    v36 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v37 = sub_1BE052224();

    [v36 subject:v19 sendEvent:v37];
  }
}

void sub_1BD6B4444(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v76 - v10;
  v12 = _s14PaymentSummaryVMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    if (([v17 isEligible] & 1) == 0)
    {
      v20 = [v17 reason];

      if ((v20 - 7) >= 8)
      {
        LOBYTE(v18) = 6;
      }

      else
      {
        v18 = 0x101060606060602uLL >> (8 * (v20 - 7));
      }

      goto LABEL_31;
    }
  }

  if (a3 && [a3 code] == 40030)
  {
    LOBYTE(v18) = 5;
  }

  else if (a1)
  {
    v19 = a1;
    if ([v19 isValid])
    {
      if ([v19 eligibility] == 1)
      {
        sub_1BD0DE19C(a4, v11, &unk_1EBD43B30);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {
          sub_1BD0DE53C(v11, &unk_1EBD43B30);
        }

        else
        {
          sub_1BD6BB6C0(v11, v16);
          v21 = &v16[*(v12 + 24)];
          v23 = *v21;
          v22 = *(v21 + 1);
          sub_1BE048C84();
          v24 = [v19 monetaryValue];
          v25 = [v24 currency];

          if (!v25)
          {

            sub_1BD6BBDAC(v16, _s14PaymentSummaryVMa);
            LOBYTE(v18) = 2;
            goto LABEL_31;
          }

          v26 = sub_1BE052434();
          v28 = v27;

          if (v23 == v26 && v22 == v28)
          {

            sub_1BD6BBDAC(v16, _s14PaymentSummaryVMa);
          }

          else
          {
            v30 = sub_1BE053B84();

            sub_1BD6BBDAC(v16, _s14PaymentSummaryVMa);
            if ((v30 & 1) == 0)
            {

              LOBYTE(v18) = 2;
              goto LABEL_31;
            }
          }
        }

        v31 = [v19 monetaryValue];
        v32 = [v31 amount];

        if (!v32)
        {
          __break(1u);
          return;
        }

        v33 = sub_1BE0533F4();
        v35 = v34;
        v37 = v36;

        v38 = MEMORY[0x1BFB403C0](0);
        v41 = MEMORY[0x1BFB40440](v33, v35, v37, v38, v39, v40);

        if (v41)
        {
          LOBYTE(v18) = 4;
        }

        else
        {
          LOBYTE(v18) = 7;
        }
      }

      else
      {

        LOBYTE(v18) = 0;
      }
    }

    else
    {

      LOBYTE(v18) = 3;
    }
  }

  else
  {
    LOBYTE(v18) = 3;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v43 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v44 = sub_1BE052434();
  v45 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v44;
  *(inited + 48) = v46;
  v47 = *v45;
  *(inited + 56) = *v45;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v48;
  v49 = v43;
  v50 = v47;
  v51 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v52 = v18;
  v53 = *MEMORY[0x1E69BACF8];
  if (v18 == 7)
  {
    v54 = sub_1BE052434();
    v56 = v55;
    v57 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v51;
  }

  else
  {
    v59 = sub_1BE052434();
    v61 = v60;
    v62 = v53;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v51;
    sub_1BD1DAE70(v59, v61, v62, v63);

    v64 = 0xEE00656C62696769;
    v65 = 0x6C656E4972657375;
    v66 = v77;
    v67 = 0xED00006465726975;
    v68 = 0x7165526E4974706FLL;
    if (v52 != 5)
    {
      v68 = 0x616C696176616E75;
      v67 = 0xEB00000000656C62;
    }

    v69 = 0x80000001BE134D30;
    v70 = 0xD000000000000012;
    if (v52 != 3)
    {
      v70 = 0x5A65636E616C6162;
      v69 = 0xEB000000006F7265;
    }

    if (v52 <= 4)
    {
      v68 = v70;
      v67 = v69;
    }

    v71 = 0xD000000000000010;
    v72 = 0x80000001BE134D70;
    if (v52 != 1)
    {
      v71 = 0xD000000000000014;
      v72 = 0x80000001BE134D50;
    }

    if (v52)
    {
      v65 = v71;
      v64 = v72;
    }

    if (v52 <= 2)
    {
      v54 = v65;
    }

    else
    {
      v54 = v68;
    }

    if (v52 <= 2)
    {
      v56 = v64;
    }

    else
    {
      v56 = v67;
    }

    v57 = *MEMORY[0x1E69BAD08];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v66;
  }

  sub_1BD1DAE70(v54, v56, v57, isUniquelyReferenced_nonNull_native);

  v73 = objc_opt_self();
  v74 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v75 = sub_1BE052224();

  [v73 subject:v74 sendEvent:v75];
}

void _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1BD113234(a1, v28);
  if (v29 <= 2)
  {
    if ((v29 - 1) < 2 || !v29)
    {
      goto LABEL_9;
    }
  }

  else if ((v29 - 3) < 3 || v29 == 6)
  {
LABEL_9:
    v3 = sub_1BE052434();
    v5 = v4;
    goto LABEL_10;
  }

  sub_1BD11326C(v28);
  v3 = 0;
  v5 = 0;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v7 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v8 = sub_1BE052434();
  v9 = MEMORY[0x1E69BAFB0];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = *v9;
  *(inited + 56) = *v9;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v12;
  v13 = v7;
  v14 = v11;
  v15 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v15;
  sub_1BD6B8B40(a2, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, v28);

  v17 = v28[0];
  if (v5)
  {
    sub_1BD6B05C0(v3, v5, *MEMORY[0x1E69BAF88]);
    v17 = v28[0];
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  v19 = *MEMORY[0x1E69BA850];
  *(v18 + 32) = *MEMORY[0x1E69BA850];
  *(v18 + 40) = sub_1BE052434();
  *(v18 + 48) = v20;
  v21 = v19;
  v22 = sub_1BD1AAF50(v18);
  swift_setDeallocating();
  sub_1BD0DE53C(v18 + 32, &qword_1EBD3F590);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v22;
  sub_1BD6B8B40(v17, sub_1BD6B2140, 0, v23, &v27);

  v24 = *MEMORY[0x1E69BB6A8];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v26 = sub_1BE052224();

  [v25 subject:v24 sendEvent:v26];
}

void _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v1 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v2 = v1;
  *(inited + 40) = sub_1BE04B814();
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69BAFB0];
  *(inited + 56) = *MEMORY[0x1E69BAFB0];
  v5 = v4;
  v6 = sub_1BE04B7E4();
  v7 = MEMORY[0x1E69BA850];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = *v7;
  *(inited + 80) = *v7;
  v10 = sub_1BE052434();
  v11 = MEMORY[0x1E69BA680];
  *(inited + 88) = v10;
  *(inited + 96) = v12;
  v13 = *v11;
  *(inited + 104) = *v11;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v14;
  v15 = v9;
  v16 = v13;
  v17 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = v15;
  *(v18 + 40) = sub_1BE052434();
  *(v18 + 48) = v19;
  v20 = sub_1BD1AAF50(v18);
  swift_setDeallocating();
  sub_1BD0DE53C(v18 + 32, &qword_1EBD3F590);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v20;
  sub_1BD6B8B40(v17, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v25);

  v22 = *MEMORY[0x1E69BB6A8];
  v23 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v24 = sub_1BE052224();

  [v23 subject:v22 sendEvent:v24];
}

uint64_t sub_1BD6B50F8(char a1, id a2)
{
  v4 = [a2 analyticsPageTag];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = sub_1BE052434();
    v8 = v9;
  }

  sub_1BD0E5E8C(0, &unk_1EBD35E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v11 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v12;
  v13 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = sub_1BD6B16D0(a1);
  *(inited + 72) = v14;
  v15 = *MEMORY[0x1E69BABE8];
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = v6;
  *(inited + 96) = v8;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BD6B14D4(v19, a2);
}

void sub_1BD6B528C(uint64_t a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v40 - v10;
  v12 = v3[2];
  v12(&v40 - v10, a1, v2, v9);
  v13 = v3[11];
  if (v13(v11, v2) != *MEMORY[0x1E69BC8D8])
  {
    v14 = v3[1];
    v14(v11, v2);
    (v12)(v6, a1, v2);
    v15 = v13(v6, v2);
    if (v15 == *MEMORY[0x1E69BC8D0])
    {
      v16 = 7;
      goto LABEL_26;
    }

    if (v15 == *MEMORY[0x1E69BC8A8])
    {
      if (PKOslo2024UIUpdatesEnabled())
      {
        v16 = 16;
      }

      else
      {
        v16 = 3;
      }

      goto LABEL_26;
    }

    if (v15 == *MEMORY[0x1E69BC8B8])
    {
      v16 = 8;
      goto LABEL_26;
    }

    if (v15 == *MEMORY[0x1E69BC8C0])
    {
      v16 = 6;
      goto LABEL_26;
    }

    if (v15 == *MEMORY[0x1E69BC8C8])
    {
      v16 = 5;
      goto LABEL_26;
    }

    if (v15 == *MEMORY[0x1E69BC890])
    {
      goto LABEL_15;
    }

    if (v15 == *MEMORY[0x1E69BC8A0] || v15 == *MEMORY[0x1E69BC888])
    {
      v16 = 12;
    }

    else if (v15 == *MEMORY[0x1E69BC8E0])
    {
      v16 = 15;
    }

    else
    {
      if (v15 == *MEMORY[0x1E69BC8B0])
      {
LABEL_15:
        v16 = 3;
        goto LABEL_26;
      }

      v14(v6, v2);
      v16 = 0;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v19 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v20 = sub_1BE052434();
    v21 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v20;
    *(inited + 48) = v22;
    v23 = *v21;
    *(inited + 56) = *v21;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v24;
    v25 = *MEMORY[0x1E69BB170];
    *(inited + 80) = *MEMORY[0x1E69BB170];
    v26 = v19;
    v27 = v23;
    v28 = v25;
    v29 = off_1E8010218[v16];
    v30 = off_1E80102A0[v16];
    v31 = v29;
    v32 = v30;
    if (v32)
    {
      v33 = v32;
      v34 = *MEMORY[0x1E69BB6E0];
      v35 = objc_opt_self();
      v36 = sub_1BE052434();
      v38 = v37;

      *(inited + 88) = v36;
      *(inited + 96) = v38;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v39 = sub_1BE052224();

      [v35 subject:v34 sendEvent:v39];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD6B56B4(uint64_t a1, int a2)
{
  v503 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v492 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v492 - v10;
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v492 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v492 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v492 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v492 - v25;
  v27 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v492 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  sub_1BD6BBD44(a1, v30, type metadata accessor for Analytics.StateChange);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v145 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_1BE0B6CA0;
      v147 = *MEMORY[0x1E69BB070];
      *(v146 + 32) = *MEMORY[0x1E69BB070];
      v148 = v147;
      *(v146 + 40) = sub_1BD6B1634(v145);
      *(v146 + 48) = v149;
      v150 = *MEMORY[0x1E69BB050];
      *(v146 + 56) = *MEMORY[0x1E69BB050];
      v151 = v150;
      v152 = @"shippingAddress";
      if (!v152)
      {
        goto LABEL_278;
      }

      v153 = v152;
      v154 = sub_1BE052434();
      v156 = v155;

      *(v146 + 64) = v154;
      *(v146 + 72) = v156;
      v157 = sub_1BD1AAF50(v146);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v506 = v157;
      if (!v145)
      {
        goto LABEL_272;
      }

      v158 = [v145 valueSource];
      if (v158)
      {
        v159 = v158;
        v160 = sub_1BE052434();
        v162 = v161;

        v163 = *MEMORY[0x1E69BB068];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v505 = v157;
        sub_1BD1DAE70(v160, v162, v163, isUniquelyReferenced_nonNull_native);

        v506 = v505;
      }

      v165 = [v145 formattingConstrained];
      v166 = *MEMORY[0x1E69BB060];
      if (v165 == 1)
      {
        v167 = @"true";
      }

      else
      {
        if (v165 != 2)
        {
          v167 = 0;
          goto LABEL_101;
        }

        v167 = @"false";
      }

      v265 = v167;
LABEL_101:
      v266 = v167;
      if (v266)
      {
        v267 = v266;
        v268 = sub_1BE052434();
        v270 = v269;
      }

      else
      {
        v268 = 0;
        v270 = 0;
      }

      sub_1BD6B05C0(v268, v270, v166);

      goto LABEL_272;
    case 2u:
      v108 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v110 = *MEMORY[0x1E69BB070];
      *(inited + 32) = *MEMORY[0x1E69BB070];
      v26 = (inited + 32);
      v111 = v110;
      *(inited + 40) = sub_1BD6B1634(v108);
      *(inited + 48) = v112;
      v113 = *MEMORY[0x1E69BB050];
      *(inited + 56) = *MEMORY[0x1E69BB050];
      v114 = v113;
      v115 = @"shippingMethod";
      if (v115)
      {
        goto LABEL_60;
      }

      __break(1u);
LABEL_31:
      LODWORD(v502) = v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70) + 48)];
      sub_1BD36A448(v30, v26);
      sub_1BD0DE19C(v26, v23, &unk_1EBD52A20);
      v116 = sub_1BE04A704();
      v117 = *(v116 - 8);
      v118 = *(v117 + 48);
      if (v118(v23, 1, v116) == 1)
      {
        sub_1BD0DE53C(v23, &unk_1EBD52A20);
      }

      else
      {
        sub_1BE04A664();
        v194 = v193;
        (*(v117 + 8))(v23, v116);
        if (v194)
        {
        }
      }

      sub_1BD0DE19C(v26, v19, &unk_1EBD52A20);
      if (v118(v19, 1, v116) == 1)
      {
        sub_1BD0DE53C(v19, &unk_1EBD52A20);
      }

      else
      {
        sub_1BE04A684();
        v196 = v195;
        (*(v117 + 8))(v19, v116);
        if (v196)
        {
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_1BE0B98E0;
      v198 = *MEMORY[0x1E69BB070];
      *(v197 + 32) = *MEMORY[0x1E69BB070];
      *(v197 + 40) = sub_1BE052434();
      *(v197 + 48) = v199;
      v200 = *MEMORY[0x1E69BB050];
      *(v197 + 56) = *MEMORY[0x1E69BB050];
      v201 = v198;
      v202 = v200;
      v203 = @"shippingContact";
      if (!v203)
      {
        goto LABEL_279;
      }

      v204 = v203;
      v205 = sub_1BE052434();
      v207 = v206;

      v208 = MEMORY[0x1E69BA868];
      *(v197 + 64) = v205;
      *(v197 + 72) = v207;
      v209 = *v208;
      *(v197 + 80) = *v208;
      *(v197 + 88) = sub_1BE052434();
      *(v197 + 96) = v210;
      v211 = *MEMORY[0x1E69BB068];
      *(v197 + 104) = *MEMORY[0x1E69BB068];
      *(v197 + 112) = sub_1BD6B04D8();
      *(v197 + 120) = v212;
      v213 = v209;
      v214 = v211;
      v215 = sub_1BD1AAF50(v197);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v216 = v26;
LABEL_77:
      sub_1BD0DE53C(v216, &unk_1EBD52A20);
      v506 = v215;
      goto LABEL_272;
    case 3u:
      goto LABEL_31;
    case 4u:
      v67 = *v30;
      if (!*v30)
      {
        goto LABEL_250;
      }

      v68 = [*v30 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
      v69 = sub_1BE052744();

      if (v69 >> 62)
      {
        goto LABEL_248;
      }

      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      goto LABEL_249;
    case 5u:
      v67 = *v30;
      if (!*v30)
      {
        goto LABEL_257;
      }

      v168 = [*v30 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
      v169 = sub_1BE052744();

      if (v169 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_49;
        }

LABEL_256:

LABEL_257:
        v72 = 0;
        goto LABEL_258;
      }

      if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_256;
      }

LABEL_49:
      if ((v169 & 0xC000000000000001) != 0)
      {
        v170 = MEMORY[0x1BFB40900](0, v169);
      }

      else
      {
        if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_274;
        }

        v170 = *(v169 + 32);
      }

      v171 = v170;

      v72 = [v171 value];

LABEL_258:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v457 = swift_initStackObject();
      *(v457 + 16) = xmmword_1BE0B98D0;
      v458 = *MEMORY[0x1E69BB070];
      *(v457 + 32) = *MEMORY[0x1E69BB070];
      v459 = v458;
      *(v457 + 40) = sub_1BD6B1634(v72);
      *(v457 + 48) = v460;
      v461 = *MEMORY[0x1E69BB050];
      *(v457 + 56) = *MEMORY[0x1E69BB050];
      v462 = v461;
      v463 = @"shippingContact";
      if (v463)
      {
        v464 = v463;
        v465 = sub_1BE052434();
        v467 = v466;

        v468 = MEMORY[0x1E69BA868];
        *(v457 + 64) = v465;
        *(v457 + 72) = v467;
        v469 = *v468;
        *(v457 + 80) = *v468;
        *(v457 + 88) = sub_1BE052434();
        *(v457 + 96) = v470;
        v471 = v469;
        v449 = sub_1BD1AAF50(v457);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
        swift_arrayDestroy();
        v506 = v449;
        if (!v67)
        {
LABEL_262:

          goto LABEL_272;
        }

        v450 = [v67 valueSource];
        if (!v450)
        {
LABEL_261:

          goto LABEL_262;
        }

        goto LABEL_254;
      }

LABEL_284:
      __break(1u);
      return;
    case 6u:
      LODWORD(v502) = v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70) + 48)];
      sub_1BD36A448(v30, v15);
      sub_1BD0DE19C(v15, v11, &unk_1EBD52A20);
      v172 = sub_1BE04A704();
      v173 = *(v172 - 8);
      v174 = *(v173 + 48);
      if (v174(v11, 1, v172) == 1)
      {
        sub_1BD0DE53C(v11, &unk_1EBD52A20);
      }

      else
      {
        sub_1BE04A664();
        v218 = v217;
        (*(v173 + 8))(v11, v172);
        if (v218)
        {
        }
      }

      sub_1BD0DE19C(v15, v7, &unk_1EBD52A20);
      if (v174(v7, 1, v172) == 1)
      {
        sub_1BD0DE53C(v7, &unk_1EBD52A20);
      }

      else
      {
        sub_1BE04A684();
        v220 = v219;
        (*(v173 + 8))(v7, v172);
        if (v220)
        {
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v221 = swift_initStackObject();
      *(v221 + 16) = xmmword_1BE0B98E0;
      v222 = *MEMORY[0x1E69BB070];
      *(v221 + 32) = *MEMORY[0x1E69BB070];
      *(v221 + 40) = sub_1BE052434();
      *(v221 + 48) = v223;
      v224 = *MEMORY[0x1E69BB050];
      *(v221 + 56) = *MEMORY[0x1E69BB050];
      v225 = v222;
      v226 = v224;
      v227 = @"shippingContact";
      if (!v227)
      {
        goto LABEL_282;
      }

      v228 = v227;
      v229 = sub_1BE052434();
      v231 = v230;

      v232 = MEMORY[0x1E69BA868];
      *(v221 + 64) = v229;
      *(v221 + 72) = v231;
      v233 = *v232;
      *(v221 + 80) = *v232;
      *(v221 + 88) = sub_1BE052434();
      *(v221 + 96) = v234;
      v235 = *MEMORY[0x1E69BB068];
      *(v221 + 104) = *MEMORY[0x1E69BB068];
      *(v221 + 112) = sub_1BD6B04D8();
      *(v221 + 120) = v236;
      v237 = v233;
      v238 = v235;
      v215 = sub_1BD1AAF50(v221);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v216 = v15;
      goto LABEL_77;
    case 7u:

      v119 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v120 = swift_initStackObject();
      *(v120 + 16) = xmmword_1BE0B98D0;
      v121 = *MEMORY[0x1E69BB070];
      *(v120 + 32) = *MEMORY[0x1E69BB070];
      v122 = v121;
      v123 = sub_1BD6B1634(v119);
      v124 = MEMORY[0x1E69BB050];
      *(v120 + 40) = v123;
      *(v120 + 48) = v125;
      v126 = *v124;
      *(v120 + 56) = *v124;
      v127 = sub_1BE052434();
      v128 = MEMORY[0x1E69BA868];
      *(v120 + 64) = v127;
      *(v120 + 72) = v129;
      v130 = *v128;
      *(v120 + 80) = *v128;
      *(v120 + 88) = sub_1BE052434();
      *(v120 + 96) = v131;
      v132 = v126;
      v133 = v130;
      v134 = sub_1BD1AAF50(v120);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v506 = v134;
      if (!v119)
      {
        goto LABEL_272;
      }

      v135 = [v119 valueSource];
      if (v135)
      {
        v136 = v135;
        v137 = sub_1BE052434();
        v139 = v138;

        v140 = *MEMORY[0x1E69BB068];
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v505 = v134;
        sub_1BD1DAE70(v137, v139, v140, v141);

        v506 = v505;
      }

      v142 = [v119 formattingConstrained];
      v143 = *MEMORY[0x1E69BB060];
      if (v142 == 1)
      {
        v144 = @"true";
      }

      else
      {
        if (v142 != 2)
        {
          v144 = 0;
LABEL_94:
          v260 = v144;
          if (v260)
          {
            v261 = v260;
            v262 = sub_1BE052434();
            v264 = v263;
          }

          else
          {
            v262 = 0;
            v264 = 0;
          }

          sub_1BD6B05C0(v262, v264, v143);

          goto LABEL_272;
        }

        v144 = @"false";
      }

      v259 = v144;
      goto LABEL_94;
    case 8u:
      v108 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v183 = *MEMORY[0x1E69BB070];
      *(inited + 32) = *MEMORY[0x1E69BB070];
      v184 = v183;
      *(inited + 40) = sub_1BD6B1634(v108);
      *(inited + 48) = v185;
      v186 = *MEMORY[0x1E69BB050];
      *(inited + 56) = *MEMORY[0x1E69BB050];
      v187 = v186;
      v115 = @"bankAccount";
      if (!v115)
      {
        goto LABEL_281;
      }

LABEL_60:
      v188 = v115;
      v189 = sub_1BE052434();
      v191 = v190;

      *(inited + 64) = v189;
      *(inited + 72) = v191;
      v192 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();

      v506 = v192;
      goto LABEL_272;
    case 9u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v96 = swift_initStackObject();
      v97 = *MEMORY[0x1E69BB070];
      *(v96 + 32) = *MEMORY[0x1E69BB070];
      *(v96 + 16) = xmmword_1BE0B6CA0;
      *(v96 + 40) = sub_1BE052434();
      *(v96 + 48) = v98;
      v99 = *MEMORY[0x1E69BB050];
      *(v96 + 56) = *MEMORY[0x1E69BB050];
      v100 = v97;
      v101 = v99;
      v102 = @"couponCode";
      if (!v102)
      {
        goto LABEL_277;
      }

      v103 = v102;

      v104 = sub_1BE052434();
      v106 = v105;

      *(v96 + 64) = v104;
      *(v96 + 72) = v106;
      v107 = sub_1BD1AAF50(v96);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v506 = v107;
      goto LABEL_272;
    case 0xAu:

      v175 = *v30;
      v176 = *(v30 + 2);
      v177 = *(v30 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v178 = swift_initStackObject();
      v179 = MEMORY[0x1E69BA4D8];
      *(v178 + 16) = xmmword_1BE0B98D0;
      v180 = *v179;
      *(v178 + 32) = *v179;
      if (v175 > 3)
      {
        if (v175 > 5)
        {
          if (v175 == 6)
          {
            v181 = 0x80000001BE117300;
            v182 = 0xD000000000000019;
          }

          else
          {
            v181 = 0xE800000000000000;
            v182 = 0x797469746E656469;
          }
        }

        else if (v175 == 4)
        {
          v181 = 0xEA00000000006472;
          v182 = 0x614365676E616863;
        }

        else
        {
          v182 = 0xD000000000000010;
          v181 = 0x80000001BE1172E0;
        }
      }

      else if (v175 > 1)
      {
        if (v175 == 2)
        {
          v181 = 0x80000001BE117290;
          v182 = 0xD000000000000011;
        }

        else
        {
          v181 = 0x80000001BE1172B0;
          v182 = 0xD00000000000001CLL;
        }
      }

      else if (v175)
      {
        v181 = 0x80000001BE117270;
        v182 = 0xD000000000000013;
      }

      else
      {
        v181 = 0xE700000000000000;
        v182 = 0x636972656E6567;
      }

      v271 = MEMORY[0x1E69BB050];
      *(v178 + 40) = v182;
      *(v178 + 48) = v181;
      v272 = *v271;
      *(v178 + 56) = *v271;
      v273 = v178;
      *(v178 + 64) = sub_1BE052434();
      v273[9] = v274;
      v275 = *MEMORY[0x1E69BABB0];
      v273[10] = *MEMORY[0x1E69BABB0];
      v273[11] = sub_1BE052434();
      v273[12] = v276;
      v277 = v180;
      v278 = v272;
      v279 = v275;
      v280 = sub_1BD1AAF50(v273);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v506 = v280;
      if (!v177)
      {
        goto LABEL_267;
      }

      if (!v176)
      {
        goto LABEL_268;
      }

      v177 = v177;
      v281 = sub_1BD4808D8();
      if (v281)
      {
      }

      v282 = *MEMORY[0x1E69BA9D0];
      v283 = sub_1BE052434();
      v285 = v284;
      v286 = v282;
      v287 = swift_isUniquelyReferenced_nonNull_native();
      v505 = v280;
      sub_1BD1DAE70(v283, v285, v286, v287);

      v506 = v505;
      v288 = sub_1BE052404();
      v289 = [v177 eligiblePaymentOfferCriteriaForPassUniqueID_];

      if (v289)
      {
        sub_1BD0E5E8C(0, &unk_1EBD496A0);
        v69 = sub_1BE052744();
      }

      else
      {

        v69 = MEMORY[0x1E69E7CC0];
      }

      if (v69 >> 62)
      {
        v67 = sub_1BE053704();
        if (v67)
        {
LABEL_119:
          v290 = 0;
          while (1)
          {
            if ((v69 & 0xC000000000000001) != 0)
            {
              v291 = MEMORY[0x1BFB40900](v290, v69);
            }

            else
            {
              if (v290 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_247;
              }

              v291 = *(v69 + 8 * v290 + 32);
            }

            v292 = v291;
            v293 = (v290 + 1);
            if (__OFADD__(v290, 1))
            {
              break;
            }

            if ([v291 type] == 1)
            {

              objc_opt_self();
              v294 = swift_dynamicCastObjCClass();
              if (v294)
              {
                v295 = [v294 suppressPayInFull];

                v296 = *MEMORY[0x1E69BACD0];
                if (v295)
                {
                  v297 = sub_1BE052434();
                  v299 = v298;
                  v300 = v296;
LABEL_270:
                  v473 = v506;
                  v474 = swift_isUniquelyReferenced_nonNull_native();
                  v505 = v473;
                  sub_1BD1DAE70(v297, v299, v300, v474);

                  goto LABEL_271;
                }

LABEL_269:
                v300 = v296;
                v297 = sub_1BE052434();
                v299 = v472;
                goto LABEL_270;
              }

LABEL_268:
              v296 = *MEMORY[0x1E69BACD0];
              goto LABEL_269;
            }

            ++v290;
            if (v293 == v67)
            {
              goto LABEL_266;
            }
          }

          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          if (!sub_1BE053704())
          {
LABEL_249:

LABEL_250:
            v72 = 0;
            goto LABEL_251;
          }

LABEL_21:
          if ((v69 & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x1BFB40900](0, v69);
            goto LABEL_24;
          }

          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v70 = *(v69 + 32);
LABEL_24:
            v71 = v70;

            v72 = [v71 value];

LABEL_251:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
            v434 = swift_initStackObject();
            *(v434 + 16) = xmmword_1BE0B98D0;
            v435 = *MEMORY[0x1E69BB070];
            *(v434 + 32) = *MEMORY[0x1E69BB070];
            v436 = v435;
            *(v434 + 40) = sub_1BD6B1634(v72);
            *(v434 + 48) = v437;
            v438 = *MEMORY[0x1E69BB050];
            *(v434 + 56) = *MEMORY[0x1E69BB050];
            v439 = v438;
            v440 = @"shippingContact";
            if (!v440)
            {
              goto LABEL_283;
            }

            v441 = v440;
            v442 = sub_1BE052434();
            v444 = v443;

            v445 = MEMORY[0x1E69BA868];
            *(v434 + 64) = v442;
            *(v434 + 72) = v444;
            v446 = *v445;
            *(v434 + 80) = *v445;
            *(v434 + 88) = sub_1BE052434();
            *(v434 + 96) = v447;
            v448 = v446;
            v449 = sub_1BD1AAF50(v434);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
            swift_arrayDestroy();
            v506 = v449;
            if (!v67)
            {
              goto LABEL_262;
            }

            v450 = [v67 valueSource];
            if (!v450)
            {
              goto LABEL_261;
            }

LABEL_254:
            v451 = v450;
            v452 = sub_1BE052434();
            v454 = v453;

            v455 = *MEMORY[0x1E69BB068];
            v456 = swift_isUniquelyReferenced_nonNull_native();
            v505 = v449;
            sub_1BD1DAE70(v452, v454, v455, v456);

            goto LABEL_271;
          }

          __break(1u);
LABEL_274:
          __break(1u);
          goto LABEL_275;
        }
      }

      else
      {
        v67 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_119;
        }
      }

LABEL_266:

LABEL_267:

      goto LABEL_268;
    case 0xBu:
      v49 = *v30;
      v50 = *(*v30 + qword_1EBDAAD68 + 32);
      v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v52 = [v50 hasAnyPayLaterOptions];
      v53 = [v50 fundingMode] | 2;
      v497 = v52;
      if (v53 != 2)
      {
        v498 = 0;
        v499 = 0;
        v501 = 0;
        v502 = 0;
        v239 = 0;
        v59 = 0;
        v500 = 0;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v496 = 1;
        goto LABEL_156;
      }

      v54 = [v50 mode];
      if (v54 == 2)
      {
        v247 = [v50 remotePaymentInstrument];
        v495 = [v247 organizationName];

        v248 = [v50 remotePaymentInstrument];
        v500 = [v248 issuerCountryCode];

        v249 = [v50 remotePaymentInstrument];
        v250 = [v249 isCobranded];

        v59 = v250;
        v251 = [v50 remotePaymentInstrument];
        v252 = [v251 cobrandName];
        v498 = 0;
        v499 = v252;
        v501 = 0;
        v502 = 0;
        v239 = 0;
        v496 = 1;
        goto LABEL_151;
      }

      if (v54 != 1)
      {
        v498 = 0;
        v499 = 0;
        v501 = 0;
        v502 = 0;
        v239 = 0;
        v59 = 0;
        v500 = 0;
        v495 = 0;
        v496 = 1;
        goto LABEL_152;
      }

      v494 = v49;
      v55 = [v50 pass];
      v56 = [v50 pass];
      v57 = [v56 uniqueID];

      v58 = [v55 organizationName];
      v500 = [v55 issuerCountryCode];
      v59 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v55, "isCobranded")}];
      v499 = [v55 cobrandName];
      v501 = @"payInFull";
      v60 = @"payInFull";
      if ([v50 fundingMode] != 2)
      {
        goto LABEL_138;
      }

      v61 = v57;
      v62 = v59;
      v63 = [v50 selectedPaymentOffer];

      if (v63)
      {
        v64 = [v50 selectedPaymentOffer];
        v65 = [v64 type];

        if (v65 == 1)
        {
          v66 = @"installments";
          v59 = v62;
          goto LABEL_135;
        }

        v59 = v62;
        if (v65 == 2)
        {
          v66 = @"rewards";
LABEL_135:
          v57 = v61;
          v501 = v66;
          v301 = v66;

          goto LABEL_138;
        }

        v501 = @"payInFull";
      }

      else
      {
        v501 = @"payInFull";
        v59 = v62;
      }

      v57 = v61;
LABEL_138:
      v495 = v58;
      v302 = [v50 paymentOffersController];
      v303 = [v302 eligiblePaymentOfferCriteriaForPassUniqueID:v57 type:1];
      v498 = [MEMORY[0x1E696AD98] numberWithInt:v303 != 0];
      if (v303)
      {
        v502 = [v302 ineligibleDetailsForCriteria:v303];
        v496 = [v303 suppressPayInFull] ^ 1;
      }

      else
      {
        v496 = 1;
        v502 = 0;
      }

      v493 = v302;
      v251 = [v302 eligiblePaymentOfferCriteriaForPassUniqueID:v57 type:2];
      v239 = [MEMORY[0x1E696AD98] numberWithInt:v251 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_150;
      }

      v304 = [v50 pass];
      v492 = v57;
      v305 = v239;
      v306 = v55;
      v307 = v59;
      v308 = v304;
      v309 = [v50 connectedCardStateForPass:v304];

      v59 = v307;
      v55 = v306;
      v239 = v305;
      v57 = v492;
      switch(v309)
      {
        case 0:
          goto LABEL_150;
        case 1:
          v310 = @"true";
          break;
        case 2:
          v310 = @"false";
          break;
        default:
          v310 = 0;
LABEL_149:
          [v51 setObject:v310 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_150:
          v49 = v494;
LABEL_151:

LABEL_152:
          v312 = [v50 paymentApplication];
          v313 = v312;
          if (v312)
          {
            [v312 paymentNetworkIdentifier];
            v242 = PKPaymentNetworkNameForPaymentCredentialType();
            [v313 paymentType];
            v241 = PKPaymentMethodTypeToString();
          }

          else
          {
            v241 = 0;
            v242 = 0;
          }

          v240 = v495;
LABEL_156:
          [v51 setObject:v242 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
          [v51 setObject:v241 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          [v51 setObject:v240 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
          [v51 setObject:v500 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          if (v59)
          {
            [v59 BOOLValue];
            v314 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v314 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
          }

          v315 = v59;
          [v51 setObject:v499 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
          v316 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v316 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

          v317 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v317 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

          PKHideCardBenefitPayLater();
          v318 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v318 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

          PKHidePayLaterOptions();
          v319 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v319 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

          PKHideCardBenefitRewards();
          v320 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v320 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

          [v50 hasAnyPayWithRewardsOffers];
          v321 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v321 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

          if (v501)
          {
            [v51 setObject:v501 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
          }

          if (v498)
          {
            [v498 BOOLValue];
            v322 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v322 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
          }

          if (v502)
          {
            v323 = [v502 analyticsValue];
            [v51 setObject:v323 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
          }

          if (v239)
          {
            [v239 BOOLValue];
            v324 = PKAnalyticsReportSwitchToggleResultValue();
            [v51 setObject:v324 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
          }

          [v50 hasAutomaticallyPresentedPass];
          v325 = PKAnalyticsReportSwitchToggleResultValue();
          [v51 setObject:v325 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

          v326 = v51;
          if (!v326)
          {
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
            goto LABEL_284;
          }

          v327 = v326;
          type metadata accessor for PKAnalyticsKey(0);
          sub_1BD1F0E18();
          v328 = sub_1BE052244();

          v506 = v328;
          v329 = *MEMORY[0x1E69BB050];
          v330 = @"card";
          v331 = v49;
          if (v330)
          {
            v332 = v330;
            v333 = sub_1BE052434();
            v335 = v334;
          }

          else
          {
            v333 = 0;
            v335 = 0;
          }

          sub_1BD6B05C0(v333, v335, v329);
          v336 = sub_1BD6B2434(v331);
          if (v336)
          {
            if (*(v336 + 16))
            {
              v337 = v506;
              v338 = v336;
              v339 = swift_isUniquelyReferenced_nonNull_native();
              v505 = v337;
              sub_1BD6B8B40(v338, sub_1BD6B2140, 0, v339, &v505);

              v506 = v505;
            }

            else
            {
            }
          }

          if ([v50 mode] == 1)
          {
            v340 = *MEMORY[0x1E69BB070];
            v341 = [v50 pass];
            v342 = sub_1BD6B1634(v341);
            v344 = v343;

            v345 = v506;
            v346 = swift_isUniquelyReferenced_nonNull_native();
            v505 = v345;
            sub_1BD1DAE70(v342, v344, v340, v346);

            v506 = v505;
            v347 = *MEMORY[0x1E69BAD90];
            v348 = [v50 pass];
            v349 = [v348 associatedAccountServiceAccountIdentifier];

            if (v349)
            {
              v350 = @"appleCard";
            }

            else if ([v348 hasAssociatedPeerPaymentAccount])
            {
              v350 = @"appleCash";
            }

            else
            {
              v358 = [v348 devicePrimaryPaymentApplication];
              v359 = [v358 paymentNetworkIdentifier];

              if (v359 == 123)
              {
                v350 = @"barcode";
              }

              else
              {
                v350 = @"other";
              }
            }

            v360 = v350;

            v361 = v350;
            if (v361)
            {
              v362 = sub_1BE052434();
              v364 = v363;
            }

            else
            {
              v362 = 0;
              v364 = 0;
            }

            sub_1BD6B05C0(v362, v364, v347);
            goto LABEL_188;
          }

          if ([v50 mode] != 2)
          {
LABEL_188:

LABEL_272:
            v475 = *MEMORY[0x1E69BA680];
            v476 = sub_1BE052434();
            v478 = v477;
            v479 = v475;
            v480 = v506;
            v481 = swift_isUniquelyReferenced_nonNull_native();
            v505 = v480;
            sub_1BD1DAE70(v476, v478, v479, v481);

            v482 = v505;
            v506 = v505;
            v483 = *MEMORY[0x1E69BABE8];
            v484 = sub_1BD6B1398(v503);
            v486 = v485;
            v487 = v483;
            v488 = swift_isUniquelyReferenced_nonNull_native();
            v505 = v482;
            sub_1BD1DAE70(v484, v486, v487, v488);

            v489 = objc_opt_self();
            v490 = *MEMORY[0x1E69BB6E0];
            type metadata accessor for PKAnalyticsKey(0);
            sub_1BD1F0E18();
            v491 = sub_1BE052224();

            [v489 subject:v490 sendEvent:v491];

            return;
          }

          v351 = *MEMORY[0x1E69BB070];
          v352 = [v50 remotePaymentInstrument];
          v353 = sub_1BD6B1634(v352);
          v355 = v354;

          v356 = v506;
          v357 = swift_isUniquelyReferenced_nonNull_native();
          v505 = v356;
          sub_1BD1DAE70(v353, v355, v351, v357);

LABEL_271:
          v506 = v505;
          goto LABEL_272;
      }

      v311 = v310;
      goto LABEL_149;
    case 0xCu:
      v74 = *v30;
      v73 = *(v30 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_1BE0B98D0;
      v76 = *MEMORY[0x1E69BAC80];
      *(v75 + 32) = *MEMORY[0x1E69BAC80];
      v77 = v76;
      v78 = [v74 organizationName];
      *(v75 + 40) = sub_1BE052434();
      *(v75 + 48) = v79;
      v80 = *MEMORY[0x1E69BAD48];
      *(v75 + 56) = *MEMORY[0x1E69BAD48];
      v81 = v80;
      v82 = PKDefaultPaymentNetworkNameForPaymentPass();
      if (!v82)
      {
        goto LABEL_276;
      }

      v83 = v82;

      v84 = sub_1BE052434();
      v86 = v85;

      v87 = MEMORY[0x1E69BB050];
      *(v75 + 64) = v84;
      *(v75 + 72) = v86;
      v88 = *v87;
      *(v75 + 80) = *v87;
      *(v75 + 88) = sub_1BE052434();
      *(v75 + 96) = v89;
      v90 = v88;
      v91 = sub_1BD1AAF50(v75);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      v506 = v91;
      v92 = [objc_opt_self() analyticsDictionaryForOffer_];
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v93 = sub_1BE052244();

      v94 = v506;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v505 = v94;
      sub_1BD6B8B40(v93, sub_1BD6B2140, 0, v95, &v505);

      goto LABEL_271;
    default:
      v31 = *v30;
      v32 = *(*v30 + qword_1EBDAAD68 + 32);
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v34 = [v32 hasAnyPayLaterOptions];
      v35 = [v32 fundingMode] | 2;
      v497 = v34;
      if (v35 != 2)
      {
        v498 = 0;
        v499 = 0;
        v501 = 0;
        v502 = 0;
        v243 = 0;
        v41 = 0;
        v500 = 0;
        v244 = 0;
        v245 = 0;
        v246 = 0;
        v496 = 1;
        goto LABEL_211;
      }

      v36 = [v32 mode];
      if (v36 == 2)
      {
        v253 = [v32 remotePaymentInstrument];
        v495 = [v253 organizationName];

        v254 = [v32 remotePaymentInstrument];
        v500 = [v254 issuerCountryCode];

        v255 = [v32 remotePaymentInstrument];
        v256 = [v255 isCobranded];

        v41 = v256;
        v257 = [v32 remotePaymentInstrument];
        v258 = [v257 cobrandName];
        v498 = 0;
        v499 = v258;
        v501 = 0;
        v502 = 0;
        v243 = 0;
        v496 = 1;
        goto LABEL_206;
      }

      if (v36 != 1)
      {
        v498 = 0;
        v499 = 0;
        v501 = 0;
        v502 = 0;
        v243 = 0;
        v41 = 0;
        v500 = 0;
        v495 = 0;
        v496 = 1;
        goto LABEL_207;
      }

      v494 = v31;
      v37 = [v32 pass];
      v38 = [v32 pass];
      v39 = [v38 uniqueID];

      v40 = [v37 organizationName];
      v500 = [v37 issuerCountryCode];
      v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v37, "isCobranded")}];
      v499 = [v37 cobrandName];
      v501 = @"payInFull";
      v42 = @"payInFull";
      if ([v32 fundingMode] != 2)
      {
        goto LABEL_193;
      }

      v43 = v39;
      v44 = v41;
      v45 = [v32 selectedPaymentOffer];

      if (v45)
      {
        v46 = [v32 selectedPaymentOffer];
        v47 = [v46 type];

        if (v47 == 1)
        {
          v48 = @"installments";
          v41 = v44;
          goto LABEL_190;
        }

        v41 = v44;
        if (v47 == 2)
        {
          v48 = @"rewards";
LABEL_190:
          v39 = v43;
          v501 = v48;
          v365 = v48;

          goto LABEL_193;
        }

        v501 = @"payInFull";
      }

      else
      {
        v501 = @"payInFull";
        v41 = v44;
      }

      v39 = v43;
LABEL_193:
      v495 = v40;
      v366 = [v32 paymentOffersController];
      v367 = [v366 eligiblePaymentOfferCriteriaForPassUniqueID:v39 type:1];
      v498 = [MEMORY[0x1E696AD98] numberWithInt:v367 != 0];
      if (v367)
      {
        v502 = [v366 ineligibleDetailsForCriteria:v367];
        v496 = [v367 suppressPayInFull] ^ 1;
      }

      else
      {
        v496 = 1;
        v502 = 0;
      }

      v493 = v366;
      v257 = [v366 eligiblePaymentOfferCriteriaForPassUniqueID:v39 type:2];
      v243 = [MEMORY[0x1E696AD98] numberWithInt:v257 != 0];
      if (!PKBankConnectEnabled())
      {
        goto LABEL_205;
      }

      v368 = [v32 pass];
      v492 = v39;
      v369 = v243;
      v370 = v37;
      v371 = v41;
      v372 = v368;
      v373 = [v32 connectedCardStateForPass:v368];

      v41 = v371;
      v37 = v370;
      v243 = v369;
      v39 = v492;
      switch(v373)
      {
        case 0:
          goto LABEL_205;
        case 1:
          v374 = @"true";
          break;
        case 2:
          v374 = @"false";
          break;
        default:
          v374 = 0;
          goto LABEL_204;
      }

      v375 = v374;
LABEL_204:
      [v33 setObject:v374 forKeyedSubscript:*MEMORY[0x1E69BA9F0]];

LABEL_205:
      v31 = v494;
LABEL_206:

LABEL_207:
      v376 = [v32 paymentApplication];
      v377 = v376;
      if (v376)
      {
        [v376 paymentNetworkIdentifier];
        v246 = PKPaymentNetworkNameForPaymentCredentialType();
        [v377 paymentType];
        v245 = PKPaymentMethodTypeToString();
      }

      else
      {
        v245 = 0;
        v246 = 0;
      }

      v244 = v495;
LABEL_211:
      [v33 setObject:v246 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
      [v33 setObject:v245 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
      [v33 setObject:v244 forKeyedSubscript:*MEMORY[0x1E69BAC80]];
      [v33 setObject:v500 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
      if (v41)
      {
        [v41 BOOLValue];
        v378 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v378 forKeyedSubscript:*MEMORY[0x1E69BAC70]];
      }

      v379 = v41;
      [v33 setObject:v499 forKeyedSubscript:*MEMORY[0x1E69BAC08]];
      v380 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v380 forKeyedSubscript:*MEMORY[0x1E69BABB0]];

      v381 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v381 forKeyedSubscript:*MEMORY[0x1E69BACD0]];

      PKHideCardBenefitPayLater();
      v382 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v382 forKeyedSubscript:*MEMORY[0x1E69BACE0]];

      PKHidePayLaterOptions();
      v383 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v383 forKeyedSubscript:*MEMORY[0x1E69BA9D8]];

      PKHideCardBenefitRewards();
      v384 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v384 forKeyedSubscript:*MEMORY[0x1E69BAD00]];

      [v32 hasAnyPayWithRewardsOffers];
      v385 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v385 forKeyedSubscript:*MEMORY[0x1E69BABB8]];

      if (v501)
      {
        [v33 setObject:v501 forKeyedSubscript:*MEMORY[0x1E69BAD38]];
      }

      if (v498)
      {
        [v498 BOOLValue];
        v386 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v386 forKeyedSubscript:*MEMORY[0x1E69BA9D0]];
      }

      if (v502)
      {
        v387 = [v502 analyticsValue];
        [v33 setObject:v387 forKeyedSubscript:*MEMORY[0x1E69BA9C0]];
      }

      if (v243)
      {
        [v243 BOOLValue];
        v388 = PKAnalyticsReportSwitchToggleResultValue();
        [v33 setObject:v388 forKeyedSubscript:*MEMORY[0x1E69BACF8]];
      }

      [v32 hasAutomaticallyPresentedPass];
      v389 = PKAnalyticsReportSwitchToggleResultValue();
      [v33 setObject:v389 forKeyedSubscript:*MEMORY[0x1E69BAC00]];

      v390 = v33;
      if (!v390)
      {
        goto LABEL_280;
      }

      v391 = v390;
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v392 = sub_1BE052244();

      v506 = v392;
      v393 = *MEMORY[0x1E69BB050];
      v394 = @"card";
      v395 = v31;
      if (v394)
      {
        v396 = v394;
        v397 = sub_1BE052434();
        v399 = v398;
      }

      else
      {
        v397 = 0;
        v399 = 0;
      }

      sub_1BD6B05C0(v397, v399, v393);
      v400 = sub_1BD6B2434(v395);
      if (v400)
      {
        if (*(v400 + 16))
        {
          v401 = v506;
          v402 = v400;
          v403 = swift_isUniquelyReferenced_nonNull_native();
          v505 = v401;
          sub_1BD6B8B40(v402, sub_1BD6B2140, 0, v403, &v505);

          v506 = v505;
        }

        else
        {
        }
      }

      if ([v32 mode] == 1)
      {
        v404 = *MEMORY[0x1E69BB070];
        v405 = [v32 pass];
        v406 = sub_1BD6B1634(v405);
        v408 = v407;

        v409 = v506;
        v410 = swift_isUniquelyReferenced_nonNull_native();
        v505 = v409;
        sub_1BD1DAE70(v406, v408, v404, v410);

        v506 = v505;
        v411 = *MEMORY[0x1E69BAD90];
        v412 = [v32 pass];
        v413 = [v412 associatedAccountServiceAccountIdentifier];

        if (v413)
        {
          v414 = @"appleCard";
        }

        else if ([v412 hasAssociatedPeerPaymentAccount])
        {
          v414 = @"appleCash";
        }

        else
        {
          v422 = [v412 devicePrimaryPaymentApplication];
          v423 = [v422 paymentNetworkIdentifier];

          if (v423 == 123)
          {
            v414 = @"barcode";
          }

          else
          {
            v414 = @"other";
          }
        }

        v424 = v414;

        v425 = v414;
        if (v425)
        {
          v426 = sub_1BE052434();
          v428 = v427;
        }

        else
        {
          v426 = 0;
          v428 = 0;
        }

        sub_1BD6B05C0(v426, v428, v411);
      }

      else if ([v32 mode] == 2)
      {
        v415 = *MEMORY[0x1E69BB070];
        v416 = [v32 remotePaymentInstrument];
        v417 = sub_1BD6B1634(v416);
        v419 = v418;

        v420 = v506;
        v421 = swift_isUniquelyReferenced_nonNull_native();
        v505 = v420;
        sub_1BD1DAE70(v417, v419, v415, v421);

        v506 = v505;
      }

      v429 = [v32 pass];
      if (v429)
      {
        v430 = v429;

        goto LABEL_272;
      }

      v431 = *MEMORY[0x1E69BB068];
      v432 = v506;
      v433 = swift_isUniquelyReferenced_nonNull_native();
      v505 = v432;
      sub_1BD1DAE70(1280070990, 0xE400000000000000, v431, v433);

      goto LABEL_271;
  }
}

void _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BA680];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_1BD6B8B40(a1, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v16);

  v13 = *MEMORY[0x1E69BB6A8];
  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v15 = sub_1BE052224();

  [v14 subject:v13 sendEvent:v15];
}

uint64_t _s9PassKitUI9AnalyticsO27trackPeerPaymentSheetRowTap3for10p2pContexty0G6UIBase0g6DetailH0O_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE04C614();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E69BC8A8], v5, v8);
  v12 = sub_1BE04C604();
  v13 = *(v6 + 8);
  v13(v10, v5);
  if (v12 & 1) != 0 || ((v11)(v10, *MEMORY[0x1E69BC8B0], v5), v14 = sub_1BE04C604(), result = (v13)(v10, v5), (v14))
  {
    v16 = sub_1BE052434();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v20 = *MEMORY[0x1E69BABE8];
    *(inited + 32) = *MEMORY[0x1E69BABE8];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v21;
    v22 = *MEMORY[0x1E69BA440];
    v23 = MEMORY[0x1E69BAF60];
    *(inited + 56) = *MEMORY[0x1E69BA440];
    *(inited + 64) = v16;
    v24 = *v23;
    *(inited + 72) = v18;
    *(inited + 80) = v24;
    *(inited + 88) = a2;
    *(inited + 96) = a3;
    v25 = v20;
    v26 = v22;
    v27 = v24;
    sub_1BE048C84();
    v28 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v28);
  }

  return result;
}

uint64_t sub_1BD6B8B40(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;
  sub_1BE048C84();
  sub_1BE048964();
  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    v17 = (*(a1 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    v44[0] = v16;
    v44[1] = v18;
    v44[2] = v19;
    v20 = v16;
    sub_1BE048C84();
    a2(v43, v44);

    v22 = v43[0];
    v21 = v43[1];
    v23 = v43[2];
    v24 = *v45;
    v26 = sub_1BD14BFD0(v43[0]);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_1BD506274();
      }
    }

    else
    {
      sub_1BD500374(v29, v42 & 1);
      v31 = sub_1BD14BFD0(v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {

      v12 = (v33[7] + 16 * v26);
      *v12 = v21;
      v12[1] = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v22;
      v34 = (v33[7] + 16 * v26);
      *v34 = v21;
      v34[1] = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v13;
    v6 = v39;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1BD0D45FC();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for PKAnalyticsKey(0);
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

void _s9PassKitUI9AnalyticsO33trackNearbyPeerPaymentReceiveFlow5state4withyAA0fgH13ReceiverStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentReceiverState(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD6BBD44(a1, v7, type metadata accessor for NearbyPeerPaymentReceiverState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_destroy_boxed_opaque_existential_0(v7);
      return;
    }

    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1BD6BBDAC(v7, type metadata accessor for NearbyPeerPaymentReceiverState);
LABEL_8:
    v9 = sub_1BE052434();
    v11 = v12;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F680);

  v9 = sub_1BE052434();
  v11 = v10;
  sub_1BD0DE53C(v7, &unk_1EBD3F690);
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v14 = *MEMORY[0x1E69BAF88];
  *(inited + 32) = *MEMORY[0x1E69BAF88];
  v15 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v16 = *v15;
  *(inited + 56) = *v15;
  v17 = sub_1BE052434();
  v18 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  v20 = *v18;
  *(inited + 80) = *v18;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v21;
  v22 = v14;
  v23 = v16;
  v24 = v20;
  v25 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  sub_1BE048C84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v25;
  sub_1BD6B8B40(a2, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v38);

  v27 = v38;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1BE0B69E0;
  v29 = *MEMORY[0x1E69BA850];
  *(v28 + 32) = *MEMORY[0x1E69BA850];
  *(v28 + 40) = sub_1BE052434();
  *(v28 + 48) = v30;
  v31 = v29;
  v32 = sub_1BD1AAF50(v28);
  swift_setDeallocating();
  sub_1BD0DE53C(v28 + 32, &qword_1EBD3F590);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v32;
  sub_1BD6B8B40(v27, sub_1BD6B2140, 0, v33, &v38);

  v34 = *MEMORY[0x1E69BB6A8];
  v35 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v36 = sub_1BE052224();

  [v35 subject:v34 sendEvent:v36];
}

void _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v5 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v6 = v5;
  *(inited + 40) = sub_1BE04B814();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x1E69BAFB0];
  *(inited + 56) = *MEMORY[0x1E69BAFB0];
  v9 = v8;
  v10 = sub_1BE04B7E4();
  v11 = MEMORY[0x1E69BA850];
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = *v11;
  *(inited + 80) = *v11;
  v14 = sub_1BE052434();
  v15 = MEMORY[0x1E69BA680];
  *(inited + 88) = v14;
  *(inited + 96) = v16;
  v17 = *v15;
  *(inited + 104) = *v15;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v18;
  v19 = *MEMORY[0x1E69BA440];
  *(inited + 128) = *MEMORY[0x1E69BA440];
  *(inited + 136) = a1;
  *(inited + 144) = a2;
  v20 = v13;
  v21 = v17;
  v22 = v19;
  sub_1BE048C84();
  v23 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1BE0B69E0;
  *(v24 + 32) = v20;
  *(v24 + 40) = sub_1BE052434();
  *(v24 + 48) = v25;
  v26 = sub_1BD1AAF50(v24);
  swift_setDeallocating();
  sub_1BD0DE53C(v24 + 32, &qword_1EBD3F590);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v26;
  sub_1BD6B8B40(v23, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v31);

  v28 = *MEMORY[0x1E69BB6A8];
  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v30 = sub_1BE052224();

  [v29 subject:v28 sendEvent:v30];
}

unint64_t sub_1BD6B9440()
{
  result = qword_1EBD4FC88;
  if (!qword_1EBD4FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Analytics.ValueSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Analytics.ValueSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BD6B9608()
{
  result = qword_1EBD4FC90;
  if (!qword_1EBD4FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC90);
  }

  return result;
}

void sub_1BD6B965C(uint64_t a1)
{
  v2 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA440];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  if (a1 == 2)
  {
    v9 = 0x4F746E656D796170;
  }

  else
  {
    v9 = 0x6C75466E49796170;
  }

  if (a1 == 2)
  {
    v10 = 0xEC00000072656666;
  }

  else
  {
    v10 = 0xE90000000000006CLL;
  }

  v11 = objc_opt_self();
  v12 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v13 = *v12;
  *(inited + 80) = *v12;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v14;
  v15 = v4;
  v16 = v8;
  v17 = v13;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v18 = sub_1BE052224();

  [v11 subject:v2 sendEvent:v18];
}

void sub_1BD6B9818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v1 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v2 = sub_1BE052434();
  v3 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = *v3;
  *(inited + 56) = *v3;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x1E69BB170];
  *(inited + 80) = *MEMORY[0x1E69BB170];
  v8 = v1;
  v9 = v5;
  v10 = v7;
  v11 = @"card";
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x1E69BB6E0];
    v14 = objc_opt_self();
    v15 = sub_1BE052434();
    v17 = v16;

    *(inited + 88) = v15;
    *(inited + 96) = v17;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v18 = sub_1BE052224();

    [v14 subject:v13 sendEvent:v18];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6B99C4(unint64_t a1, void *a2)
{
  if (a1 <= 6)
  {
    v3 = sub_1BE052434();
    v5 = v4;
    sub_1BE048C84();
    sub_1BD0E5E8C(0, &unk_1EBD35E80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v7 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v8 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v3;
    *(inited + 48) = v5;
    v9 = *v8;
    *(inited + 56) = *v8;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v10;
    v29 = v7;
    v11 = v9;
    v12 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    sub_1BD6B14D4(v12, a2);

    if ([a2 requestType] == 9 && (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0))
    {
      v14 = v13;
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1BE0B6CA0;
      *(v15 + 32) = v29;
      *(v15 + 40) = v3;
      *(v15 + 48) = v5;
      *(v15 + 56) = v11;
      *(v15 + 64) = sub_1BE052434();
      *(v15 + 72) = v16;
      v17 = v29;
      v18 = v11;
      v19 = a2;
      v20 = sub_1BD1AAF50(v15);
      swift_setDeallocating();
      swift_arrayDestroy();
      v21 = [v14 analyticsMessagesContext];
      if (v21)
      {
        v22 = v21;
        sub_1BE052244();

        v23 = objc_opt_self();
        sub_1BD1A8C44(v20);

        v24 = sub_1BE052224();

        v25 = sub_1BE052224();

        [v23 reportAppleCashEvent:v24 withMessagesContext:v25];
      }

      else
      {
        v26 = objc_opt_self();
        v27 = *MEMORY[0x1E69BB6A8];
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD1F0E18();
        v28 = sub_1BE052224();

        [v26 subject:v27 sendEvent:v28];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BD6B9D24()
{
  v0 = sub_1BE053A44();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD6B9D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD1AAF50(MEMORY[0x1E69E7CC0]);
  v23 = v6;
  if (a3)
  {
    if (qword_1EBD36D30 != -1)
    {
      swift_once();
    }

    v7 = qword_1EBDAB490;
    sub_1BE048C84();
    sub_1BD6B05C0(a2, a3, v7);
    v8 = v23;
  }

  else
  {
    v8 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v10 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = 0xD000000000000013;
  v13 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = 0x80000001BE134C50;
  *(inited + 80) = v13;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001BE134CF0;
  v14 = v10;
  v15 = v12;
  v16 = v13;
  v17 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  if (*(v8 + 16))
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v17;
    sub_1BD6B8B40(v8, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v22);
  }

  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v20 = sub_1BE052224();

  [v19 subject:a1 sendEvent:v20];
}

uint64_t sub_1BD6B9FD4()
{
  v0 = sub_1BE04B0D4();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC98);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FCA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  *(inited + 32) = 16707;
  *(inited + 40) = 0xE200000000000000;
  v13 = sub_1BD537298(&unk_1F3B8F1E0);
  swift_arrayDestroy();
  *(inited + 48) = v13;
  *(inited + 56) = 16723;
  *(inited + 64) = 0xE200000000000000;
  v14 = sub_1BD537298(&unk_1F3B8F220);
  swift_arrayDestroy();
  *(inited + 72) = v14;
  *(inited + 80) = 18499;
  *(inited + 88) = 0xE200000000000000;
  v15 = sub_1BD537298(&unk_1F3B8F260);
  swift_arrayDestroy();
  *(inited + 96) = v15;
  *(inited + 104) = 17730;
  *(inited + 112) = 0xE200000000000000;
  v16 = sub_1BD537298(&unk_1F3B8F2A0);
  swift_arrayDestroy();
  *(inited + 120) = v16;
  v17 = sub_1BD1ADF28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FCA8);
  swift_arrayDestroy();
  sub_1BE04B094();
  v18 = sub_1BE04B084();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) != 1)
  {
    v22 = sub_1BE04B004();
    v24 = v23;
    (*(v19 + 8))(v11, v18);
    sub_1BE04B0E4();
    sub_1BE04B0B4();
    (*(v37 + 8))(v3, v38);
    v25 = sub_1BE04B014();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {

      v20 = &qword_1EBD4FC98;
      v21 = v7;
      goto LABEL_5;
    }

    v27 = v22;
    v28 = sub_1BE04B004();
    v30 = v29;
    (*(v26 + 8))(v7, v25);
    if (*(v17 + 16))
    {
      v31 = sub_1BD148F70(v27, v24);
      v33 = v32;

      if (v33)
      {
        v34 = *(*(v17 + 56) + 8 * v31);
        sub_1BE048C84();

        v35 = sub_1BD6CC230(v28, v30, v34);

        if (v35)
        {
          return v28;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:

    return sub_1BE052434();
  }

  v20 = &qword_1EBD3DA80;
  v21 = v11;
LABEL_5:
  sub_1BD0DE53C(v21, v20);
  return sub_1BE052434();
}

void sub_1BD6BA48C(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE04B0F4();
  v7 = *(v103 - 1);
  v9 = MEMORY[0x1EEE9AC00](v103, v8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 paymentRequest];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 analyticsPageTag];
    v102 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = sub_1BE052434();
      v18 = v17;
    }

    else
    {
      v16 = sub_1BE052434();
      v18 = v22;
    }

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0BA730;
    v24 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v101 = *MEMORY[0x1E69BA818];
    v25 = sub_1BE052434();
    v26 = MEMORY[0x1E69BAE88];
    *(inited + 40) = v25;
    *(inited + 48) = v27;
    v28 = *v26;
    *(inited + 56) = *v26;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v29;
    v30 = *MEMORY[0x1E69BABE8];
    *(inited + 80) = *MEMORY[0x1E69BABE8];
    *(inited + 88) = v16;
    v31 = *MEMORY[0x1E69BAE00];
    *(inited + 96) = v18;
    *(inited + 104) = v31;
    v99 = v24;
    v32 = v28;
    v98 = v30;
    sub_1BE048C84();
    v33 = v31;
    v34 = v102;
    v35 = [v102 requestType];
    if (v35 > 0xF)
    {
      v36 = @"unknown";
      v37 = @"unknown";
    }

    else
    {
      v36 = off_1E8010328[v35];
      v37 = off_1E80103A8[v35];
    }

    v38 = v36;
    v39 = v37;
    if (!v39)
    {
      goto LABEL_50;
    }

    v40 = v39;

    v41 = sub_1BE052434();
    v43 = v42;

    *(inited + 112) = v41;
    *(inited + 120) = v43;
    v44 = *MEMORY[0x1E69BA5F0];
    *(inited + 128) = *MEMORY[0x1E69BA5F0];
    v45 = v44;
    sub_1BE04B0A4();
    v46 = sub_1BD6B9FD4();
    v48 = v47;
    (*(v7 + 8))(v11, v103);
    *(inited + 136) = v46;
    *(inited + 144) = v48;
    v49 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    if ([v34 requestType] != 10)
    {
      goto LABEL_37;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_37;
    }

    v50 = *MEMORY[0x1E69BA628];
    [v34 merchantCapabilities];
    v51 = PKAnalyticsReportSwitchToggleResultValue();
    v52 = sub_1BE052434();
    v54 = v53;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v49;
    sub_1BD1DAE70(v52, v54, v50, isUniquelyReferenced_nonNull_native);

    v49 = v104;
    v56 = [v34 paymentSummaryItems];
    v57 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
    v58 = sub_1BE052744();

    if (v58 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_36;
      }
    }

    else if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    if ((v58 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x1BFB40900](0, v58);
    }

    else
    {
      if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v59 = *(v58 + 32);
    }

    v60 = v59;

    v58 = &selRef_activateWithCompletionBlock_;
    v61 = [v60 amount];

    if (!v61)
    {
      goto LABEL_37;
    }

    v54 = v61;
    v62 = [v34 paymentSummaryItems];
    v57 = sub_1BE052744();

    if (!(v57 >> 62))
    {
      v63 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = v54;
      if (v63)
      {
        goto LABEL_22;
      }

LABEL_35:

LABEL_36:

LABEL_37:
      if ([v34 requestType] == 9)
      {
        objc_opt_self();
        v77 = swift_dynamicCastObjCClass();
        if (v77)
        {
          v78 = v77;
          v79 = v34;
          if ([v78 isP2P])
          {
            v80 = swift_initStackObject();
            *(v80 + 16) = xmmword_1BE0B98D0;
            v81 = v98;
            *(v80 + 32) = v98;
            *(v80 + 40) = sub_1BE052434();
            *(v80 + 48) = v82;
            v83 = v99;
            *(v80 + 56) = v99;
            *(v80 + 64) = sub_1BE052434();
            *(v80 + 72) = v84;
            v85 = *MEMORY[0x1E69BAF60];
            *(v80 + 80) = *MEMORY[0x1E69BAF60];
            v86 = v83;
            v87 = v81;
            v88 = v85;
            [v78 isDeviceTap];
            *(v80 + 88) = sub_1BE052434();
            *(v80 + 96) = v89;
            v90 = sub_1BD1AAF50(v80);
            swift_setDeallocating();
            swift_arrayDestroy();
            v91 = [v78 analyticsMessagesContext];
            if (v91)
            {
              v92 = v91;
              sub_1BE052244();

              v93 = objc_opt_self();
              sub_1BD1A8C44(v90);

              v94 = sub_1BE052224();

              v95 = sub_1BE052224();

              [v93 reportAppleCashEvent:v94 withMessagesContext:v95];
            }

            else
            {
              v96 = objc_opt_self();
              v97 = *MEMORY[0x1E69BB6A8];
              type metadata accessor for PKAnalyticsKey(0);
              sub_1BD1F0E18();
              v95 = sub_1BE052224();

              [v96 subject:v97 sendEvent:v95];
            }

            v34 = v102;
          }
        }
      }

      sub_1BD0E5E8C(0, &unk_1EBD35E80);
      sub_1BD6B14D4(v49, v34);

      return;
    }

LABEL_34:
    v63 = sub_1BE053704();
    v64 = v54;
    if (v63)
    {
LABEL_22:
      v65 = __OFSUB__(v63, 1);
      v66 = v63 - 1;
      if (v65)
      {
        __break(1u);
      }

      else if ((v57 & 0xC000000000000001) == 0)
      {
        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v66 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v67 = *(v57 + 8 * v66 + 32);
          goto LABEL_27;
        }

        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      v67 = MEMORY[0x1BFB40900](v66, v57);
LABEL_27:
      v68 = v67;

      v69 = [v68 *(v58 + 1840)];

      if (v69)
      {
        v103 = *MEMORY[0x1E69BA620];
        [v69 pk:v64 isLessThan:?];
        v70 = PKAnalyticsReportSwitchToggleResultValue();
        v71 = v64;
        v72 = sub_1BE052434();
        v74 = v73;

        v75 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v49;
        v76 = v103;
        sub_1BD1DAE70(v72, v74, v103, v75);

        v49 = v104;
      }

      else
      {
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1BE04D1E4();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BD026000, v19, v20, "paymentRequest was nil when trying to call trackPaymentSheetDidAppear.", v21, 2u);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

void sub_1BD6BAE0C(void *a1)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v6 = sub_1BE052434();
  v7 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = *v7;
  *(inited + 56) = *v7;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v10;
  v34 = v5;
  v33 = v9;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v11 = sub_1BE052224();

  v35 = v2;
  [v2 subject:v3 sendEvent:v11];

  v12 = [a1 paymentRequest];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 requestType];

    if (v14 == 9)
    {
      v15 = [a1 paymentRequest];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 isP2P])
          {
            v19 = swift_initStackObject();
            *(v19 + 16) = xmmword_1BE0B98D0;
            *(v19 + 32) = v33;
            *(v19 + 40) = sub_1BE052434();
            *(v19 + 48) = v20;
            *(v19 + 56) = v34;
            *(v19 + 64) = sub_1BE052434();
            *(v19 + 72) = v21;
            v22 = *MEMORY[0x1E69BAF60];
            *(v19 + 80) = *MEMORY[0x1E69BAF60];
            v23 = v34;
            v24 = v33;
            v25 = v22;
            [v18 isDeviceTap];
            *(v19 + 88) = sub_1BE052434();
            *(v19 + 96) = v26;
            v27 = sub_1BD1AAF50(v19);
            swift_setDeallocating();
            swift_arrayDestroy();
            v28 = [v18 analyticsMessagesContext];
            if (v28)
            {
              v29 = v28;
              sub_1BE052244();

              sub_1BD1A8C44(v27);

              v30 = sub_1BE052224();

              v31 = sub_1BE052224();

              [v35 reportAppleCashEvent:v30 withMessagesContext:v31];
            }

            else
            {
              v32 = *MEMORY[0x1E69BB6A8];
              v31 = sub_1BE052224();

              [v35 subject:v32 sendEvent:v31];
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6BB1F4(unsigned __int8 a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v6;
  v7 = *MEMORY[0x1E69BABE8];
  *(inited + 56) = *MEMORY[0x1E69BABE8];
  *(inited + 64) = sub_1BD6B1398(a1);
  *(inited + 72) = v8;
  v9 = v5;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v11 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v12 = sub_1BE052224();

  [v11 subject:a2 sendEvent:v12];
}

void sub_1BD6BB340(uint64_t a1)
{
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BA440];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = *v10;
  *(inited + 80) = *v10;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v13;
  v14 = v4;
  v15 = v8;
  v16 = v12;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v17 = sub_1BE052224();

  [v2 subject:a1 sendEvent:v17];
}

void sub_1BD6BB4C0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = qword_1EBD36D28;
  v13 = v6;
  v14 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = 11061;
  if (a2 < 5)
  {
    v15 = 13628;
  }

  v16 = qword_1EBDAB488;
  *(inited + 80) = qword_1EBDAB488;
  *(inited + 88) = v15;
  *(inited + 96) = 0xE200000000000000;
  v17 = v16;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v18 = sub_1BE052224();

  [v4 subject:a1 sendEvent:v18];
}

uint64_t type metadata accessor for Analytics.StateChange()
{
  result = qword_1EBD35F38;
  if (!qword_1EBD35F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6BB6C0(uint64_t a1, uint64_t a2)
{
  v4 = _s14PaymentSummaryVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6BB724(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          return 0xD000000000000018;
        }

        else
        {
          return 0xD000000000000016;
        }
      }

      return 0xD000000000000014;
    }

    if (!a1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 0xD000000000000011;
    }

    if (a1 == 8)
    {
      return 0x52534F726577656ELL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 5)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_1BD6BB890(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v6 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v7;
  v8 = v6;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  if (v4 == 6)
  {

LABEL_4:
    v10 = *MEMORY[0x1E69BA440];
    v11 = sub_1BE052434();
    v13 = v12;
    v14 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v11, v13, v14, isUniquelyReferenced_nonNull_native);

    v16 = *MEMORY[0x1E69BA680];
    v17 = sub_1BE052434();
    v19 = v18;
    v20 = v16;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v17, v19, v20, v21);

    goto LABEL_28;
  }

  v9 = sub_1BE053B84();

  if (v9)
  {
    goto LABEL_4;
  }

  v22 = 0x7369447465656873;
  v23 = 0xEE0064657373696DLL;
  v24 = 0x46676E6964616F6CLL;
  if (v4 == 4)
  {
    v25 = 0xEE006572756C6961;
  }

  else
  {
    v24 = 0x6D73694472657375;
    v25 = 0xED00006465737369;
  }

  if (v4 <= 5)
  {
    v22 = v24;
    v23 = v25;
  }

  v26 = 0x80000001BE117E60;
  v27 = 0xD000000000000011;
  if (v4 == 2)
  {
    v27 = 0xD000000000000014;
  }

  else
  {
    v26 = 0x80000001BE117E80;
  }

  v28 = 0x80000001BE117E40;
  if (v4)
  {
    v29 = 0xD000000000000014;
  }

  else
  {
    v29 = 0x466C616974696E69;
  }

  if (!v4)
  {
    v28 = 0xEE006572756C6961;
  }

  if (v4 <= 1)
  {
    v27 = v29;
    v26 = v28;
  }

  if (v4 <= 3)
  {
    v30 = v27;
  }

  else
  {
    v30 = v22;
  }

  if (v4 <= 3)
  {
    v31 = v26;
  }

  else
  {
    v31 = v23;
  }

  v32 = *MEMORY[0x1E69BA680];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BD1DAE70(v30, v31, v32, v33);

  if ((a3 & 1) == 0)
  {
    v34 = *MEMORY[0x1E69BA678];
    v35 = sub_1BD6BB724(a2);
    v37 = v36;
    v38 = v34;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v35, v37, v38, v39);
  }

LABEL_28:
  v40 = objc_opt_self();
  v41 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD1F0E18();
  v42 = sub_1BE052224();

  [v40 subject:v41 sendEvent:v42];
}

uint64_t sub_1BD6BBD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6BBDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD6BBE0C()
{
  type metadata accessor for StateMachineAuthorizationModel();
  if (v0 <= 0x3F)
  {
    sub_1BD10315C(319, &qword_1EBD4FCB8, &qword_1EBD406E0);
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD4FCC0, &qword_1EBD45FC8);
      if (v2 <= 0x3F)
      {
        sub_1BD6BBF4C();
        if (v3 <= 0x3F)
        {
          sub_1BD10315C(319, &qword_1EBD4FCD0, &qword_1EBD45530);
          if (v4 <= 0x3F)
          {
            sub_1BD6BBFC0();
            if (v5 <= 0x3F)
            {
              sub_1BD6BC068();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD6BBF4C()
{
  if (!qword_1EBD4FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52A20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4FCC8);
    }
  }
}

void sub_1BD6BBFC0()
{
  if (!qword_1EBD4FCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C860);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD4FCD8);
    }
  }
}

void sub_1BD6BC068()
{
  if (!qword_1EBD4FCE0)
  {
    sub_1BD0E5E8C(255, &unk_1EBD40340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4FCE0);
    }
  }
}

id PKDashboardRewardsBalanceDetailsViewHosting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKDashboardRewardsBalanceDetailsViewHosting.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardRewardsBalanceDetailsViewHosting();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PKDashboardRewardsBalanceDetailsViewHosting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardRewardsBalanceDetailsViewHosting();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD6BC230()
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
  swift_allocObject();
  return sub_1BD5FF4E8();
}

id sub_1BD6BC268()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = v0[1];
  v20 = *v0;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v11 = v19;
  v12 = [v19 isRedeemable];

  v13 = *MEMORY[0x1E69B8088];
  v14 = *(v2 + 104);
  if (v12)
  {
    v14(v9, v13, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v9, v1);
      return v17;
    }

    __break(1u);
  }

  else
  {
    v14(v5, v13, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v9 = v5;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6BC47C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD20);
  v20 = *(v10 - 8);
  v21 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19 - v12;
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD28);
  sub_1BD0DE4F4(&qword_1EBD4FD30, &qword_1EBD4FD28);
  sub_1BE0504A4();
  sub_1BD6C00AC(v1, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_1BD6C0110(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = sub_1BD0DE4F4(&qword_1EBD4FD38, &qword_1EBD4FD18);
  sub_1BE050944();

  (*(v6 + 8))(v9, v5);
  sub_1BE052434();
  v24 = v5;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_1BE050DE4();

  return (*(v20 + 8))(v13, v17);
}

id sub_1BD6BC7E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD50);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v41 - v15;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v4 + 8))(v7, v3);
    v48 = v19;
    v49 = v21;
    sub_1BD0DDEBC();
    v48 = sub_1BE0506C4();
    v49 = v22;
    LOBYTE(v50) = v23 & 1;
    v51 = v24;
    MEMORY[0x1EEE9AC00](v48, v22);
    *(&v41 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD58);
    sub_1BD6C0248();
    v25 = v16;
    v43 = v16;
    sub_1BE051A54();
    v26 = a1[1];
    v48 = *a1;
    v49 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
    sub_1BE0516A4();
    v27 = v47;
    type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
    sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel);
    sub_1BE04E3C4();
    sub_1BD9E1928(v27, &v48);

    v28 = v45;
    v29 = *(v45 + 16);
    v29(v11, v25, v8);
    v31 = v48;
    v30 = v49;
    v32 = v51;
    v33 = v11;
    v44 = v11;
    v34 = v8;
    v35 = v53;
    v41 = v52;
    v42 = v50;
    v36 = v54;
    v37 = v46;
    v29(v46, v33, v34);
    v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD78) + 48)];
    *v38 = v31;
    v38[1] = v30;
    v39 = v41;
    v38[2] = v42;
    v38[3] = v32;
    v38[4] = v39;
    v38[5] = v35;
    v38[6] = v36;
    v40 = *(v28 + 8);
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v40(v43, v34);

    return (v40)(v44, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6BCC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23[-v7];
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD80);
  sub_1BD0DE4F4(&qword_1EBD4FD88, &qword_1EBD4FD80);
  sub_1BE0504E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v10 = sub_1BE0501E4();
  *(inited + 32) = v10;
  v11 = sub_1BE0501F4();
  *(inited + 33) = v11;
  v12 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v10)
  {
    v12 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v11)
  {
    v12 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v5 + 32))(a2, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD58);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1BD6BCE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  v80 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = v5;
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD90);
  MEMORY[0x1EEE9AC00](v87, v6);
  v88 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD98);
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v86 = &v76 - v10;
  v11 = sub_1BE04AA64();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v77 = &v76 - v16;
  v78 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v83 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDA0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v94 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v93 = &v76 - v26;
  v91 = sub_1BE04FF64();
  v27 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91, v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDA8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB0);
  v89 = *(v35 - 8);
  v90 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v76 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDB8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v92 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v76 - v44;
  *v34 = sub_1BE04F7C4();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDC0);
  sub_1BD6BD788(a1, &v34[*(v46 + 44)]);
  sub_1BE04FF44();
  v47 = sub_1BD0DE4F4(&qword_1EBD4FDC8, &qword_1EBD4FDA8);
  sub_1BE050D14();
  (*(v27 + 8))(v30, v91);
  sub_1BD0DE53C(v34, &qword_1EBD4FDA8);
  sub_1BE052434();
  v99 = v31;
  v100 = v47;
  v48 = 1;
  swift_getOpaqueTypeConformance2();
  v91 = v45;
  v49 = v90;
  sub_1BE050DE4();

  (*(v89 + 8))(v38, v49);
  v50 = *(a1 + 8);
  v99 = *a1;
  v100 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v51 = v98;
  v52 = [v98 programURL];

  if (v52)
  {
    v53 = v77;
    sub_1BE04A9F4();

    v55 = v83;
    v54 = v84;
    v56 = *(v84 + 32);
    v57 = v85;
    v56(v83, v53, v85);
    v58 = v82;
    sub_1BD6C00AC(a1, v82);
    v59 = v79;
    (*(v54 + 16))(v79, v55, v57);
    v60 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v61 = (v81 + *(v54 + 80) + v60) & ~*(v54 + 80);
    v62 = swift_allocObject();
    sub_1BD6C0110(v58, v62 + v60);
    v56((v62 + v61), v59, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDD8);
    sub_1BD0DE4F4(&qword_1EBD4FDE0, &qword_1EBD4FDD8);
    v63 = v88;
    sub_1BE051704();
    v64 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v66 = (v63 + *(v87 + 36));
    *v66 = KeyPath;
    v66[1] = v64;
    sub_1BE052434();
    sub_1BD6C03D4();
    v67 = v86;
    sub_1BE050DE4();

    sub_1BD0DE53C(v63, &qword_1EBD4FD90);
    (*(v54 + 8))(v55, v57);
    v68 = v67;
    v69 = v93;
    sub_1BD0DE204(v68, v93, &qword_1EBD4FD98);
    v48 = 0;
  }

  else
  {
    v69 = v93;
  }

  (*(v95 + 56))(v69, v48, 1, v96);
  v71 = v91;
  v70 = v92;
  sub_1BD098FCC(v91, v92);
  v72 = v94;
  sub_1BD0DE19C(v69, v94, &qword_1EBD4FDA0);
  v73 = v97;
  sub_1BD098FCC(v70, v97);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FDD0);
  sub_1BD0DE19C(v72, v73 + *(v74 + 48), &qword_1EBD4FDA0);
  sub_1BD0DE53C(v69, &qword_1EBD4FDA0);
  sub_1BD09903C(v71);
  sub_1BD0DE53C(v72, &qword_1EBD4FDA0);
  return sub_1BD09903C(v70);
}

id sub_1BD6BD788@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v108 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v114 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v2);
  v103 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v102 = &v101 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v101 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v105 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v113 = &v101 - v24;
  v116 = sub_1BD6BC268();
  v117 = v25;
  v109 = sub_1BD0DDEBC();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v30 = v29;
  sub_1BE0502A4();
  v31 = sub_1BE0505F4();
  v33 = v32;
  v35 = v34;

  sub_1BD0DDF10(v26, v28, v30 & 1);

  sub_1BE051464();
  v36 = sub_1BE050564();
  v38 = v37;
  LOBYTE(v28) = v39;
  v41 = v40;

  sub_1BD0DDF10(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v116 = v36;
  v117 = v38;
  v118 = v28 & 1;
  v119 = v41;
  v120 = KeyPath;
  v43 = 1;
  v121 = 1;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
  sub_1BD0EF0FC();
  sub_1BE050DE4();

  sub_1BD0DDF10(v36, v38, v28 & 1);

  v44 = v112[1];
  v116 = *v112;
  v117 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v45 = v115;
  v46 = [v115 formattedMonetaryValue];

  if (v46)
  {
    v47 = sub_1BE052434();
    v49 = v48;

    v116 = v47;
    v117 = v49;
    v50 = sub_1BE0506C4();
    v52 = v51;
    v54 = v53;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_1BE050484();
    v56 = sub_1BE0505F4();
    v58 = v57;
    v60 = v59;

    sub_1BD0DDF10(v50, v52, v54 & 1);

    sub_1BE051464();
    v61 = sub_1BE050564();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_1BD0DDF10(v56, v58, v60 & 1);

    v116 = v61;
    v117 = v63;
    v118 = v65 & 1;
    v119 = v67;
    sub_1BE052434();
    v68 = v102;
    sub_1BE050DE4();

    sub_1BD0DDF10(v61, v63, v65 & 1);

    v69 = v111;
    sub_1BD0DE204(v68, v111, &qword_1EBD452C0);
    v43 = 0;
  }

  else
  {
    v69 = v111;
  }

  v70 = v114 + 56;
  v71 = *(v114 + 56);
  v72 = 1;
  v71(v69, v43, 1, v110);
  v73 = sub_1BD6BE034();
  if (v74)
  {
    v116 = v73;
    v117 = v74;
    v75 = sub_1BE0506C4();
    v77 = v76;
    v79 = v78;
    v114 = v70;
    sub_1BE0502A4();
    v80 = sub_1BE0505F4();
    v82 = v81;
    v84 = v83;

    sub_1BD0DDF10(v75, v77, v79 & 1);

    sub_1BE051494();
    v85 = sub_1BE050564();
    v87 = v86;
    LOBYTE(v77) = v88;
    v90 = v89;

    sub_1BD0DDF10(v80, v82, v84 & 1);

    v116 = v85;
    v117 = v87;
    v118 = v77 & 1;
    v119 = v90;
    sub_1BE052434();
    v91 = v103;
    sub_1BE050DE4();

    sub_1BD0DDF10(v85, v87, v77 & 1);

    v92 = v104;
    sub_1BD0DE204(v91, v104, &qword_1EBD452C0);
    v72 = 0;
  }

  else
  {
    v92 = v104;
  }

  v71(v92, v72, 1, v110);
  v93 = v92;
  v94 = v113;
  v95 = v105;
  sub_1BD0DE19C(v113, v105, &qword_1EBD38A98);
  v96 = v111;
  v97 = v106;
  sub_1BD0DE19C(v111, v106, &unk_1EBD5BB60);
  v98 = v107;
  sub_1BD0DE19C(v93, v107, &unk_1EBD5BB60);
  v99 = v108;
  sub_1BD0DE19C(v95, v108, &qword_1EBD38A98);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE08);
  sub_1BD0DE19C(v97, v99 + *(v100 + 48), &unk_1EBD5BB60);
  sub_1BD0DE19C(v98, v99 + *(v100 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v93, &unk_1EBD5BB60);
  sub_1BD0DE53C(v96, &unk_1EBD5BB60);
  sub_1BD0DE53C(v94, &qword_1EBD38A98);
  sub_1BD0DE53C(v98, &unk_1EBD5BB60);
  sub_1BD0DE53C(v97, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v95, &qword_1EBD38A98);
}

uint64_t sub_1BD6BE034()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v21 = *v0;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v8 = v20;
  v9 = [v20 rewardsType];

  if (v9 == 2)
  {
    v21 = v6;
    v22 = v7;
    sub_1BE0516A4();
    v12 = v20;
    v11 = [v20 formattedQuantityValue];

    if (v11)
    {
LABEL_6:
      v13 = sub_1BE052434();
      v15 = v14;

      (*(v2 + 104))(v5, *MEMORY[0x1E69B8088], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BE0B69E0;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1BD110550();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      v17 = sub_1BE04B714();

      (*(v2 + 8))(v5, v1);
      return v17;
    }
  }

  else if (v9 == 1)
  {
    v21 = v6;
    v22 = v7;
    sub_1BE0516A4();
    v10 = v20;
    v11 = [v20 formattedQuantityValue];

    if (v11)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

void sub_1BD6BE2BC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD6C0640(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_1BE052224();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

double sub_1BD6BE3C8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v15 = 1;
  sub_1BD6BE4E4(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_1BD0DE19C(&v16, v7, &qword_1EBD4FE00);
  sub_1BD0DE53C(v22, &qword_1EBD4FE00);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

id sub_1BD6BE4E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8088], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v24 = v10;
    v25 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v10) = v16;
    v18 = v17;
    KeyPath = swift_getKeyPath();
    v20 = sub_1BE051574();
    v21 = sub_1BE051464();
    v22 = swift_getKeyPath();
    LOBYTE(v10) = v10 & 1;
    LOBYTE(v24) = v10;
    v23[8] = 1;
    *a1 = v13;
    *(a1 + 8) = v15;
    *(a1 + 16) = v10;
    *(a1 + 24) = v18;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    *(a1 + 64) = v20;
    *(a1 + 72) = v22;
    *(a1 + 80) = v21;
    sub_1BD0D7F18(v13, v15, v10);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD0DDF10(v13, v15, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6BE70C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1BE0528A4();
  v1[4] = sub_1BE052894();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1BD6BE7BC;

  return sub_1BD6BEA98();
}

uint64_t sub_1BD6BE7BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1BD6BE8FC;

  return sub_1BD6BF728();
}

uint64_t sub_1BD6BE8FC()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6BEA38, v1, v0);
}

uint64_t sub_1BD6BEA38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD6BEA98()
{
  v1[31] = v0;
  v2 = sub_1BE04D214();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = sub_1BE0528A4();
  v1[38] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[39] = v4;
  v1[40] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD6BEBA8, v4, v3);
}

uint64_t sub_1BD6BEBA8()
{
  sub_1BE04D154();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C14();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Refreshing Payment Rewards Balance", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];

  (*(v6 + 8))(v4, v5);
  v8 = *v7;
  v0[41] = *v7;
  v9 = v7[1];
  v0[42] = v9;
  v0[18] = v8;
  v0[19] = v9;
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v10 = v0[26];
  v11 = [v10 passUniqueID];

  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    sub_1BE052434();
    v13 = sub_1BE052404();

    sub_1BE052434();
    v12 = sub_1BE052404();
  }

  v0[44] = v12;
  v0[45] = v13;
  v0[20] = v8;
  v0[21] = v9;
  v14 = v11;
  sub_1BE0516A4();
  v15 = v0[27];
  v16 = [v15 balanceIdentifier];

  v17 = sub_1BE052434();
  v19 = v18;

  v0[46] = v17;
  v0[47] = v19;
  v0[22] = v8;
  v0[23] = v9;
  sub_1BE0516A4();
  v20 = v0[28];
  v21 = [v20 transactionSourceIdentifiers];

  v0[48] = sub_1BE052A34();
  v22 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[49] = v22;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1BD6BEEF8;
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD48);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD6BFB30;
  v0[13] = &block_descriptor_160;
  v0[14] = v23;
  [v22 updatePaymentRewardsBalancesWithPassUniqueIdentifier:v13 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD6BEEF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {

    v3 = *(v1 + 312);
    v4 = *(v1 + 320);
    v5 = sub_1BD6BF564;
  }

  else
  {
    v3 = *(v1 + 312);
    v4 = *(v1 + 320);
    v5 = sub_1BD6BF02C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD6BF02C()
{
  v1 = *(v0 + 232);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:
    v14 = *(v0 + 392);

    v15 = *(v0 + 8);

    return v15();
  }

LABEL_22:
  v2 = sub_1BE053704();
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    *(v0 + 408) = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(v0 + 368);
    v17 = *(v0 + 376);
    v8 = [v4 identifier];
    v9 = sub_1BE052434();
    v11 = v10;

    if (v9 == v7 && v11 == v17)
    {
      break;
    }

    v13 = sub_1BE053B84();

    if (v13)
    {
      goto LABEL_17;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF274, 0, 0);
}

uint64_t sub_1BD6BF274()
{
  *(v0 + 416) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF300, v2, v1);
}

uint64_t sub_1BD6BF300()
{
  v1 = v0[51];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];

  v5 = objc_allocWithZone(PKDashboardRewardsBalanceItem);
  v6 = v1;
  v7 = sub_1BE052A24();

  v8 = [v5 initWithPaymentRewardsBalance:v6 passUniqueIdentifier:v2 transactionSourceIdentifiers:v7];

  v0[24] = v4;
  v0[25] = v3;
  v0[30] = v8;
  sub_1BE0516B4();
  v9 = v0[39];
  v10 = v0[40];

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF414, v9, v10);
}

uint64_t sub_1BD6BF414()
{

  sub_1BE04D154();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C14();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[51];
  v5 = v0[49];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  if (v3)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Refreshed Payment Rewards Balance", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    v10 = v5;
    v5 = v1;
  }

  else
  {
    v10 = v0[51];
    v4 = v1;
  }

  (*(v8 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD6BF564()
{
  v1 = v0[50];
  v2 = v0[45];

  swift_willThrow();

  sub_1BE04D154();
  v3 = v1;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[49];
  v7 = v0[50];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v4, v5, "Could not refresh Payment Rewards Balance, %@", v9, 0xCu);
    sub_1BD0DE53C(v10, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[33] + 8))(v0[34], v0[32]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD6BF728()
{
  v1[8] = v0;
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD6BF7C0, v3, v2);
}

uint64_t sub_1BD6BF7C0()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FD40);
  sub_1BE0516A4();
  v4 = v0[6];
  v5 = [v4 passUniqueID];

  v6 = sub_1BE052434();
  v8 = v7;

  v0[12] = v8;
  v0[4] = v2;
  v0[5] = v3;
  sub_1BE0516A4();
  v9 = v0[7];
  v10 = [v9 transactionSourceIdentifiers];

  v11 = sub_1BE052A34();
  v0[13] = v11;

  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
  sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel);
  v0[14] = sub_1BE04E3C4();
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1BD6BF9AC;

  return sub_1BD5FDFB8(v6, v8, v11);
}

uint64_t sub_1BD6BF9AC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v3, v2);
}

uint64_t sub_1BD6BFB30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1BD0E5E8C(0, &unk_1EBD3E570);
    **(*(v4 + 64) + 40) = sub_1BE052744();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD6BFC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F104();
  *a1 = result & 1;
  return result;
}

id _s9PassKitUI43PKDashboardRewardsBalanceDetailsViewHostingC04makeH10Controller07rewardsF4ItemSo06UIViewK0CSo0defM0C_tFZ_0(void *a1)
{
  v2 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  *(v9 + 2) = sub_1BD6BC230;
  *(v9 + 3) = 0;
  v9[32] = 0;
  v11 = *(v10 + 32);
  *&v9[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;
  *(v9 + 1) = 0;
  sub_1BD6C00AC(v9, v5);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE10));
  v13 = a1;
  v14 = sub_1BE04F894();
  v15 = [v14 navigationItem];
  v16 = [v13 programName];
  if (!v16)
  {
    sub_1BE052434();
    v16 = sub_1BE052404();
  }

  [v15 setTitle_];

  v17 = [v14 navigationItem];
  [v17 setLargeTitleDisplayMode_];

  sub_1BD6C04B8(v9);
  return v14;
}

uint64_t type metadata accessor for PKDashboardRewardsBalanceDetailsView()
{
  result = qword_1EBD4FCE8;
  if (!qword_1EBD4FCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6BFEF0()
{
  sub_1BD6BFF8C();
  if (v0 <= 0x3F)
  {
    sub_1BD6BFFF4();
    if (v1 <= 0x3F)
    {
      sub_1BD170C00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD6BFF8C()
{
  if (!qword_1EBD4FCF8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD4FD00);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4FCF8);
    }
  }
}

void sub_1BD6BFFF4()
{
  if (!qword_1EBD4FD08)
  {
    type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
    sub_1BD6C0640(&qword_1EBD4FD10, type metadata accessor for PaymentRewardsLatestRedemptionsViewModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4FD08);
    }
  }
}

uint64_t sub_1BD6C00AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6C0110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6C0174()
{
  v2 = *(type metadata accessor for PKDashboardRewardsBalanceDetailsView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD6BE70C(v0 + v3);
}

unint64_t sub_1BD6C0248()
{
  result = qword_1EBD4FD60;
  if (!qword_1EBD4FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FD58);
    sub_1BD0DE4F4(&qword_1EBD4FD68, &qword_1EBD4FD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FD60);
  }

  return result;
}

void sub_1BD6C0308()
{
  type metadata accessor for PKDashboardRewardsBalanceDetailsView();
  sub_1BE04AA64();

  sub_1BD6BE2BC();
}