uint64_t sub_26137F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v5 = sub_26139F30C();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v11 = sub_2613A1BFC();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_2613A14DC();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v17 = swift_task_alloc();
  v3[26] = v17;
  *v17 = v3;
  v17[1] = sub_26137F554;

  return sub_261387684((v3 + 2), a3);
}

uint64_t sub_26137F554()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_26137F77C;
  }

  else
  {
    v6 = sub_26137F680;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26137F680()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v13 = v0[12];
  v10 = v0[9];

  v14 = v0[2];

  v11 = v0[1];

  return v11(v14);
}

uint64_t sub_26137F77C()
{
  v1 = *(v0 + 216);
  *(v0 + 24) = v1;
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 216);
  if (v5)
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);

    (*(v10 + 32))(v8, v7, v9);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26137DA78(v8, v12, v13);
    swift_willThrow();
    (*(v10 + 8))(v8, v9);
    v14 = *(v0 + 24);
LABEL_20:

    goto LABEL_23;
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 152);

  *(v0 + 32) = v6;
  v17 = v6;
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 144);

    v19 = sub_26129BA7C();
    sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) == 1)
    {
      sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = *(v0 + 144);
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "Identity request was cancelled, returning error: .cancelled", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      v30 = *(v0 + 144);

      (*(v21 + 8))(v30, v20);
    }

    v31 = *(v0 + 112);
    sub_26125A870(*(v0 + 56), v31, &qword_27FEA08B8, &qword_2613AD830);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      sub_26124C718(*(v0 + 112), &qword_27FEA08B8, &qword_2613AD830);
      v34 = 1;
    }

    else
    {
      v50 = *(v0 + 128);
      v51 = *(v0 + 112);
      *(v0 + 48) = 16;
      sub_2613A1C2C();
      (*(v33 + 8))(v51, v32);
      v34 = 0;
    }

    v53 = *(v0 + 160);
    v52 = *(v0 + 168);
    v54 = *(v0 + 152);
    v55 = *(v0 + 128);
    v57 = *(v0 + 88);
    v56 = *(v0 + 96);
    v58 = *(v0 + 72);
    v59 = *(v0 + 80);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v60 - 8) + 56))(v55, v34, 1, v60);
    sub_26124C718(v55, &qword_27FEA0908, &qword_2613AD998);
    (*(v57 + 104))(v56, *MEMORY[0x277D436D8], v59);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v53 + 8))(v52, v54);
    v14 = *(v0 + 32);
    goto LABEL_20;
  }

  v22 = *(v0 + 136);

  v23 = sub_26129BA7C();
  sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = *(v0 + 216);
    v36 = *(v0 + 136);
    v37 = v35;
    v38 = sub_2613A122C();
    v39 = sub_2613A1D8C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 216);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v40;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_261243000, v38, v39, "Identity unexpected error: %@", v41, 0xCu);
      sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v42, -1, -1);
      MEMORY[0x266701350](v41, -1, -1);
    }

    v45 = *(v0 + 136);

    (*(v25 + 8))(v45, v24);
  }

  v46 = *(v0 + 104);
  sub_26125A870(*(v0 + 56), v46, &qword_27FEA08B8, &qword_2613AD830);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
    v49 = 1;
  }

  else
  {
    v61 = *(v0 + 120);
    v62 = *(v0 + 104);
    *(v0 + 40) = 9;
    sub_2613A1C2C();
    (*(v48 + 8))(v62, v47);
    v49 = 0;
  }

  v63 = *(v0 + 216);
  v64 = *(v0 + 120);
  v66 = *(v0 + 88);
  v65 = *(v0 + 96);
  v67 = *(v0 + 72);
  v68 = *(v0 + 80);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v69 - 8) + 56))(v64, v49, 1, v69);
  sub_26124C718(v64, &qword_27FEA0908, &qword_2613AD998);
  (*(v66 + 104))(v65, *MEMORY[0x277D436D0], v68);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();

LABEL_23:

  v71 = *(v0 + 192);
  v70 = *(v0 + 200);
  v72 = *(v0 + 168);
  v74 = *(v0 + 136);
  v73 = *(v0 + 144);
  v76 = *(v0 + 120);
  v75 = *(v0 + 128);
  v78 = *(v0 + 104);
  v77 = *(v0 + 112);
  v79 = *(v0 + 96);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_261380094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a2;
  v11 = sub_26139F30C();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v17 = sub_2613A1BFC();
  v6[21] = v17;
  v18 = *(v17 - 8);
  v6[22] = v18;
  v19 = *(v18 + 64) + 15;
  v6[23] = swift_task_alloc();
  v20 = sub_2613A14DC();
  v6[24] = v20;
  v21 = *(v20 - 8);
  v6[25] = v21;
  v22 = *(v21 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v23 = swift_task_alloc();
  v6[28] = v23;
  *v23 = v6;
  v23[1] = sub_26138034C;

  return sub_261387EB4((v6 + 2), a3, a4, a5, a6);
}

uint64_t sub_26138034C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_26138057C;
  }

  else
  {
    v6 = sub_261380478;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261380478()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v9 = v0[10];
  v10 = v0[11];

  v15 = v0[3];
  v16 = v0[2];

  v11 = v0[1];

  return v11(v16, v15);
}

uint64_t sub_26138057C()
{
  v1 = *(v0 + 232);
  *(v0 + 32) = v1;
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 232);
  if (v5)
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    (*(v10 + 32))(v8, v7, v9);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26137DA78(v8, v13, v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v9);

LABEL_22:

    goto LABEL_23;
  }

  v15 = *(v0 + 184);
  v16 = *(v0 + 168);

  *(v0 + 40) = v6;
  v17 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = *(v0 + 152);

    v23 = sub_26129BA7C();
    sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_26124C718(*(v0 + 152), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = *(v0 + 232);
      v36 = *(v0 + 152);
      v37 = v35;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 232);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v40;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_261243000, v38, v39, "Identity unexpected error: %@", v41, 0xCu);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v41, -1, -1);
      }

      v45 = *(v0 + 152);

      (*(v25 + 8))(v45, v24);
    }

    v46 = *(v0 + 120);
    sub_26125A870(*(v0 + 64), v46, &qword_27FEA08B8, &qword_2613AD830);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_26124C718(*(v0 + 120), &qword_27FEA08B8, &qword_2613AD830);
      v49 = 1;
    }

    else
    {
      v61 = *(v0 + 136);
      v62 = *(v0 + 120);
      *(v0 + 48) = 9;
      sub_2613A1C2C();
      (*(v48 + 8))(v62, v47);
      v49 = 0;
    }

    v63 = *(v0 + 232);
    v64 = *(v0 + 136);
    v66 = *(v0 + 104);
    v65 = *(v0 + 112);
    v67 = *(v0 + 88);
    v68 = *(v0 + 96);
    v69 = *(v0 + 80);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v70 - 8) + 56))(v64, v49, 1, v70);
    sub_26124C718(v64, &qword_27FEA0908, &qword_2613AD998);
    (*(v66 + 104))(v65, *MEMORY[0x277D436D0], v68);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();

    goto LABEL_22;
  }

  v18 = *(v0 + 160);

  v19 = sub_26129BA7C();
  sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_26124C718(*(v0 + 160), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = sub_2613A122C();
    v28 = sub_2613A1D8C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261243000, v27, v28, "Identity request was cancelled, returning error: .cancelled", v29, 2u);
      MEMORY[0x266701350](v29, -1, -1);
    }

    v30 = *(v0 + 160);

    (*(v21 + 8))(v30, v20);
  }

  v31 = *(v0 + 128);
  sub_26125A870(*(v0 + 64), v31, &qword_27FEA08B8, &qword_2613AD830);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_26124C718(*(v0 + 128), &qword_27FEA08B8, &qword_2613AD830);
    v34 = 1;
  }

  else
  {
    v50 = *(v0 + 144);
    v51 = *(v0 + 128);
    *(v0 + 56) = 16;
    sub_2613A1C2C();
    (*(v33 + 8))(v51, v32);
    v34 = 0;
  }

  v53 = *(v0 + 176);
  v52 = *(v0 + 184);
  v54 = *(v0 + 168);
  v55 = *(v0 + 144);
  v56 = *(v0 + 104);
  v57 = *(v0 + 112);
  v58 = *(v0 + 88);
  v59 = *(v0 + 96);
  v83 = *(v0 + 80);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v60 - 8) + 56))(v55, v34, 1, v60);
  sub_26124C718(v55, &qword_27FEA0908, &qword_2613AD998);
  (*(v56 + 104))(v57, *MEMORY[0x277D436D8], v59);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v53 + 8))(v52, v54);

LABEL_23:

  v72 = *(v0 + 208);
  v71 = *(v0 + 216);
  v73 = *(v0 + 184);
  v75 = *(v0 + 152);
  v74 = *(v0 + 160);
  v77 = *(v0 + 136);
  v76 = *(v0 + 144);
  v79 = *(v0 + 120);
  v78 = *(v0 + 128);
  v80 = *(v0 + 112);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_261380EB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v6[6] = a2;
  v6[7] = v3;
  v8 = sub_26139F30C();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v14 = sub_2613A1BFC();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = sub_2613A14DC();
  v6[20] = v17;
  v18 = *(v17 - 8);
  v6[21] = v18;
  v19 = *(v18 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v23 = (a3 + *a3);
  v20 = a3[1];
  v21 = swift_task_alloc();
  v6[24] = v21;
  *v21 = v6;
  v21[1] = sub_2613811B4;

  return v23(a1);
}

uint64_t sub_2613811B4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_261381380);
  }

  else
  {
    v6 = v3[22];
    v5 = v3[23];
    v7 = v3[19];
    v9 = v3[15];
    v8 = v3[16];
    v11 = v3[13];
    v10 = v3[14];
    v13 = v3[11];
    v12 = v3[12];
    v14 = v3[10];

    v15 = v3[1];

    return v15();
  }
}

uint64_t sub_261381380()
{
  v1 = *(v0 + 200);
  *(v0 + 16) = v1;
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 48);

    (*(v10 + 32))(v7, v8, v9);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26137DA78(v7, v11, v12);
    swift_willThrow();
    (*(v10 + 8))(v7, v9);
    v13 = *(v0 + 16);
  }

  else
  {
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);

    *(v0 + 24) = v6;
    v16 = v6;
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 128);

      v18 = sub_26129BA7C();
      sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v25 = *(v0 + 128);
        v26 = sub_2613A122C();
        v27 = sub_2613A1D8C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "Identity request was cancelled, returning error: .cancelled", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        v29 = *(v0 + 128);

        (*(v20 + 8))(v29, v19);
      }

      v30 = *(v0 + 96);
      sub_26125A870(*(v0 + 48), v30, &qword_27FEA08B8, &qword_2613AD830);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31) == 1)
      {
        sub_26124C718(*(v0 + 96), &qword_27FEA08B8, &qword_2613AD830);
        v33 = 1;
      }

      else
      {
        v49 = *(v0 + 112);
        v50 = *(v0 + 96);
        *(v0 + 40) = 16;
        sub_2613A1C2C();
        (*(v32 + 8))(v50, v31);
        v33 = 0;
      }

      v52 = *(v0 + 144);
      v51 = *(v0 + 152);
      v53 = *(v0 + 136);
      v54 = *(v0 + 112);
      v56 = *(v0 + 72);
      v55 = *(v0 + 80);
      v57 = *(v0 + 64);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v58 - 8) + 56))(v54, v33, 1, v58);
      sub_26124C718(v54, &qword_27FEA0908, &qword_2613AD998);
      (*(v56 + 104))(v55, *MEMORY[0x277D436D8], v57);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      (*(v52 + 8))(v51, v53);
      v13 = *(v0 + 24);
    }

    else
    {
      v21 = *(v0 + 120);

      v22 = sub_26129BA7C();
      sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v21, 1, v23) == 1)
      {
        sub_26124C718(*(v0 + 120), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = *(v0 + 200);
        v35 = *(v0 + 120);
        v36 = v34;
        v37 = sub_2613A122C();
        v38 = sub_2613A1D8C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 200);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v39;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_261243000, v37, v38, "Identity unexpected error: %@", v40, 0xCu);
          sub_26124C718(v41, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v41, -1, -1);
          MEMORY[0x266701350](v40, -1, -1);
        }

        v44 = *(v0 + 120);

        (*(v24 + 8))(v44, v23);
      }

      v45 = *(v0 + 88);
      sub_26125A870(*(v0 + 48), v45, &qword_27FEA08B8, &qword_2613AD830);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        sub_26124C718(*(v0 + 88), &qword_27FEA08B8, &qword_2613AD830);
        v48 = 1;
      }

      else
      {
        v59 = *(v0 + 104);
        v60 = *(v0 + 88);
        *(v0 + 32) = 9;
        sub_2613A1C2C();
        (*(v47 + 8))(v60, v46);
        v48 = 0;
      }

      v61 = *(v0 + 200);
      v62 = *(v0 + 104);
      v64 = *(v0 + 72);
      v63 = *(v0 + 80);
      v65 = *(v0 + 64);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v66 - 8) + 56))(v62, v48, 1, v66);
      sub_26124C718(v62, &qword_27FEA0908, &qword_2613AD998);
      (*(v64 + 104))(v63, *MEMORY[0x277D436D0], v65);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      v13 = v61;
    }
  }

  v68 = *(v0 + 176);
  v67 = *(v0 + 184);
  v69 = *(v0 + 152);
  v71 = *(v0 + 120);
  v70 = *(v0 + 128);
  v73 = *(v0 + 104);
  v72 = *(v0 + 112);
  v75 = *(v0 + 88);
  v74 = *(v0 + 96);
  v76 = *(v0 + 80);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_261381C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[8] = a4;
  v10[9] = a6;
  v10[6] = a2;
  v10[7] = a3;
  v12 = sub_26139F30C();
  v10[10] = v12;
  v13 = *(v12 - 8);
  v10[11] = v13;
  v14 = *(v13 + 64) + 15;
  v10[12] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v10[13] = swift_task_alloc();
  v10[14] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v10[15] = swift_task_alloc();
  v10[16] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v10[17] = swift_task_alloc();
  v10[18] = swift_task_alloc();
  v18 = sub_2613A1BFC();
  v10[19] = v18;
  v19 = *(v18 - 8);
  v10[20] = v19;
  v20 = *(v19 + 64) + 15;
  v10[21] = swift_task_alloc();
  v21 = sub_2613A14DC();
  v10[22] = v21;
  v22 = *(v21 - 8);
  v10[23] = v22;
  v23 = *(v22 + 64) + 15;
  v10[24] = swift_task_alloc();
  v10[25] = swift_task_alloc();
  v24 = swift_task_alloc();
  v10[26] = v24;
  *v24 = v10;
  v24[1] = sub_261381F3C;

  return sub_261389418(a1, a4, a5, a6);
}

uint64_t sub_261381F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_261382160;
  }

  else
  {
    v6 = sub_261382068;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261382068()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v9 = v0[8];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_261382160()
{
  v1 = *(v0 + 216);
  *(v0 + 16) = v1;
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 216);
  if (v5)
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 48);

    (*(v10 + 32))(v8, v7, v9);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26137DA78(v8, v13, v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v9);

LABEL_22:

    goto LABEL_23;
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 152);

  *(v0 + 24) = v6;
  v17 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = *(v0 + 136);

    v23 = sub_26129BA7C();
    sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = *(v0 + 216);
      v36 = *(v0 + 136);
      v37 = v35;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 216);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v40;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_261243000, v38, v39, "Identity unexpected error: %@", v41, 0xCu);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v41, -1, -1);
      }

      v45 = *(v0 + 136);

      (*(v25 + 8))(v45, v24);
    }

    v46 = *(v0 + 104);
    sub_26125A870(*(v0 + 48), v46, &qword_27FEA08B8, &qword_2613AD830);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
      v49 = 1;
    }

    else
    {
      v61 = *(v0 + 120);
      v62 = *(v0 + 104);
      *(v0 + 32) = 9;
      sub_2613A1C2C();
      (*(v48 + 8))(v62, v47);
      v49 = 0;
    }

    v63 = *(v0 + 216);
    v64 = *(v0 + 120);
    v66 = *(v0 + 88);
    v65 = *(v0 + 96);
    v67 = *(v0 + 72);
    v68 = *(v0 + 80);
    v69 = *(v0 + 64);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v70 - 8) + 56))(v64, v49, 1, v70);
    sub_26124C718(v64, &qword_27FEA0908, &qword_2613AD998);
    (*(v66 + 104))(v65, *MEMORY[0x277D436D0], v68);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();

    goto LABEL_22;
  }

  v18 = *(v0 + 144);

  v19 = sub_26129BA7C();
  sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = *(v0 + 144);
    v27 = sub_2613A122C();
    v28 = sub_2613A1D8C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261243000, v27, v28, "Identity request was cancelled, returning error: .cancelled", v29, 2u);
      MEMORY[0x266701350](v29, -1, -1);
    }

    v30 = *(v0 + 144);

    (*(v21 + 8))(v30, v20);
  }

  v31 = *(v0 + 112);
  sub_26125A870(*(v0 + 48), v31, &qword_27FEA08B8, &qword_2613AD830);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FEA08B8, &qword_2613AD830);
    v34 = 1;
  }

  else
  {
    v50 = *(v0 + 128);
    v51 = *(v0 + 112);
    *(v0 + 40) = 16;
    sub_2613A1C2C();
    (*(v33 + 8))(v51, v32);
    v34 = 0;
  }

  v53 = *(v0 + 160);
  v52 = *(v0 + 168);
  v54 = *(v0 + 152);
  v55 = *(v0 + 128);
  v56 = *(v0 + 88);
  v57 = *(v0 + 96);
  v58 = *(v0 + 80);
  v83 = *(v0 + 72);
  v59 = *(v0 + 64);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v60 - 8) + 56))(v55, v34, 1, v60);
  sub_26124C718(v55, &qword_27FEA0908, &qword_2613AD998);
  (*(v56 + 104))(v57, *MEMORY[0x277D436D8], v58);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v53 + 8))(v52, v54);

LABEL_23:

  v72 = *(v0 + 192);
  v71 = *(v0 + 200);
  v73 = *(v0 + 168);
  v75 = *(v0 + 136);
  v74 = *(v0 + 144);
  v77 = *(v0 + 120);
  v76 = *(v0 + 128);
  v79 = *(v0 + 104);
  v78 = *(v0 + 112);
  v80 = *(v0 + 96);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_261382A9C(uint64_t a1, int *a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = sub_26139F30C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = sub_2613A1BFC();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = sub_2613A14DC();
  v3[21] = v14;
  v15 = *(v14 - 8);
  v3[22] = v15;
  v16 = *(v15 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v20 = (a2 + *a2);
  v17 = a2[1];
  v18 = swift_task_alloc();
  v3[25] = v18;
  *v18 = v3;
  v18[1] = sub_261382D8C;

  return v20(v3 + 2);
}

uint64_t sub_261382D8C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2613913AC;
  }

  else
  {
    v6 = sub_2613913A8;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261382EB8(uint64_t a1, int *a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v5 = sub_26139F30C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = sub_2613A1BFC();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = sub_2613A14DC();
  v3[21] = v14;
  v15 = *(v14 - 8);
  v3[22] = v15;
  v16 = *(v15 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v20 = (a2 + *a2);
  v17 = a2[1];
  v18 = swift_task_alloc();
  v3[25] = v18;
  *v18 = v3;
  v18[1] = sub_2613831A8;

  return v20(v3 + 2);
}

uint64_t sub_2613831A8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2613833C0;
  }

  else
  {
    v6 = sub_2613832D4;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2613832D4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v13 = v0[2];

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_2613833C0()
{
  v1 = *(v0 + 208);
  *(v0 + 24) = v1;
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = *(v0 + 56);

    (*(v10 + 32))(v7, v8, v9);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26137DA78(v7, v11, v12);
    swift_willThrow();
    (*(v10 + 8))(v7, v9);
    v13 = *(v0 + 24);
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);

    *(v0 + 32) = v6;
    v16 = v6;
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 136);

      v18 = sub_26129BA7C();
      sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v25 = *(v0 + 136);
        v26 = sub_2613A122C();
        v27 = sub_2613A1D8C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "Identity request was cancelled, returning error: .cancelled", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        v29 = *(v0 + 136);

        (*(v20 + 8))(v29, v19);
      }

      v30 = *(v0 + 104);
      sub_26125A870(*(v0 + 56), v30, &qword_27FEA08B8, &qword_2613AD830);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31) == 1)
      {
        sub_26124C718(*(v0 + 104), &qword_27FEA08B8, &qword_2613AD830);
        v33 = 1;
      }

      else
      {
        v49 = *(v0 + 120);
        v50 = *(v0 + 104);
        *(v0 + 48) = 16;
        sub_2613A1C2C();
        (*(v32 + 8))(v50, v31);
        v33 = 0;
      }

      v52 = *(v0 + 152);
      v51 = *(v0 + 160);
      v53 = *(v0 + 144);
      v54 = *(v0 + 120);
      v56 = *(v0 + 80);
      v55 = *(v0 + 88);
      v57 = *(v0 + 72);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v58 - 8) + 56))(v54, v33, 1, v58);
      sub_26124C718(v54, &qword_27FEA0908, &qword_2613AD998);
      (*(v56 + 104))(v55, *MEMORY[0x277D436D8], v57);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      (*(v52 + 8))(v51, v53);
      v13 = *(v0 + 32);
    }

    else
    {
      v21 = *(v0 + 128);

      v22 = sub_26129BA7C();
      sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v21, 1, v23) == 1)
      {
        sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = *(v0 + 208);
        v35 = *(v0 + 128);
        v36 = v34;
        v37 = sub_2613A122C();
        v38 = sub_2613A1D8C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 208);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v39;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_261243000, v37, v38, "Identity unexpected error: %@", v40, 0xCu);
          sub_26124C718(v41, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v41, -1, -1);
          MEMORY[0x266701350](v40, -1, -1);
        }

        v44 = *(v0 + 128);

        (*(v24 + 8))(v44, v23);
      }

      v45 = *(v0 + 96);
      sub_26125A870(*(v0 + 56), v45, &qword_27FEA08B8, &qword_2613AD830);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        sub_26124C718(*(v0 + 96), &qword_27FEA08B8, &qword_2613AD830);
        v48 = 1;
      }

      else
      {
        v59 = *(v0 + 112);
        v60 = *(v0 + 96);
        *(v0 + 40) = 9;
        sub_2613A1C2C();
        (*(v47 + 8))(v60, v46);
        v48 = 0;
      }

      v61 = *(v0 + 208);
      v62 = *(v0 + 112);
      v64 = *(v0 + 80);
      v63 = *(v0 + 88);
      v65 = *(v0 + 72);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v66 - 8) + 56))(v62, v48, 1, v66);
      sub_26124C718(v62, &qword_27FEA0908, &qword_2613AD998);
      (*(v64 + 104))(v63, *MEMORY[0x277D436D0], v65);
      sub_26139F33C();
      sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
      v13 = v61;
    }
  }

  v68 = *(v0 + 184);
  v67 = *(v0 + 192);
  v69 = *(v0 + 160);
  v71 = *(v0 + 128);
  v70 = *(v0 + 136);
  v73 = *(v0 + 112);
  v72 = *(v0 + 120);
  v75 = *(v0 + 96);
  v74 = *(v0 + 104);
  v76 = *(v0 + 88);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_261383CC4()
{
  v1[2] = v0;
  v2 = sub_2613A15EC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261383DBC);
}

uint64_t sub_261383DBC()
{
  type metadata accessor for Mock();
  v1 = sub_26129B284(17);
  v2 = v1 - 1;
  if ((v1 - 1) > 3)
  {
    v18 = v0[5];
    v17 = v0[6];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = sub_2613A1C1C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v2;
    *(v7 + 40) = v6;
    v8 = sub_2613850A0(0, 0, v3, &unk_2613AD9B8, v7);
    v9 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
    v0[7] = v8;
    v0[8] = v9;
    v10 = *(v4 + v9);
    *(v4 + v9) = v8;

    v11 = *(MEMORY[0x277D857C8] + 4);
    v12 = swift_task_alloc();
    v0[9] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    *v12 = v0;
    v12[1] = sub_261383FC4;
    v14 = v0[5];
    v15 = v0[3];
    v16 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v14, v8, v15, v13, v16);
  }
}

uint64_t sub_261383FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2613841A0;
  }

  else
  {
    v6 = sub_2613840F0;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2613840F0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  (*(v4 + 8))(v3, v5);
  v7 = *(v6 + v2);
  *(v6 + v2) = 0;

  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2613841A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];

  v6 = *(v5 + v2);
  *(v5 + v2) = 0;

  v7 = v0[1];
  v8 = v0[10];

  return v7();
}

uint64_t sub_261384230(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 58) = a4;
  v6 = sub_2613A14AC();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_2613A21CC();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v12 = sub_2613A21DC();
  *(v5 + 152) = v12;
  v13 = *(v12 - 8);
  *(v5 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261384460);
}

uint64_t sub_261384460()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 58);
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *(v0 + 59) = v2;
  swift_beginAccess();
  *(v0 + 200) = 0;
  sub_2613A1CEC();
  v3 = *(v0 + 88);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 176);
  sub_26125A870(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v5, &qword_27FEA08B8, &qword_2613AD830);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26124C718(*(v0 + 176), &qword_27FEA08B8, &qword_2613AD830);
LABEL_6:
    v8 = 1;
    goto LABEL_8;
  }

  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  *(v0 + 80) = 0;
  sub_2613A1C2C();
  (*(v7 + 8))(v10, v6);
  v8 = 0;
LABEL_8:
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v17 = *(v0 + 120);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v18 - 8) + 56))(v11, v8, 1, v18);
  sub_26124C718(v11, &qword_27FEA0908, &qword_2613AD998);
  sub_2613A24CC();
  *(v0 + 64) = xmmword_2613AD810;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v19 = sub_2613912F8(&qword_27FE9FCB0, MEMORY[0x277D85928]);
  sub_2613A24AC();
  sub_2613912F8(&qword_27FE9FCB8, MEMORY[0x277D858F8]);
  sub_2613A21EC();
  v20 = *(v16 + 8);
  *(v0 + 208) = v20;
  *(v0 + 216) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  v21 = *(MEMORY[0x277D85A58] + 4);
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_26138484C;
  v23 = *(v0 + 168);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);

  return MEMORY[0x2822008C8](v25, v0 + 40, v24, v19);
}

uint64_t sub_26138484C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v10 = *v1;
  *(*v1 + 232) = v0;

  v4 = *(v2 + 216);
  if (v0)
  {
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    v5 = sub_261384FC4;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v8 = *(v2 + 152);
    (*(v2 + 208))(*(v2 + 144), *(v2 + 120));
    (*(v7 + 8))(v6, v8);
    v5 = sub_2613849A4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2613849A4()
{
  v51 = v0;
  v1 = *(v0 + 200);
  if (v1 == *(v0 + 59))
  {
    v2 = *(v0 + 192);
    swift_unknownObjectRelease();
    v3 = sub_26129BA7C();
    sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v4 = sub_2613A124C();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = *(v0 + 192);
      v10 = sub_2613A122C();
      v11 = sub_2613A1D9C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 58);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v50 = v14;
        *v13 = 136315138;
        *(v0 + 57) = v12;
        v15 = sub_2613A195C();
        v17 = sub_26124C11C(v15, v16, &v50);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_261243000, v10, v11, ">>> Throwing SIMULATED error: [ .unknown ] at stage [ %s ] <<<", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x266701350](v14, -1, -1);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v5 + 8))(*(v0 + 192), v4);
    }

    (*(*(v0 + 104) + 104))(*(v0 + 112), *MEMORY[0x277CFEF68], *(v0 + 96));
    sub_2613A14DC();
    sub_2613912F8(&qword_27FEA0918, MEMORY[0x277CFEF78]);
    swift_allocError();
    sub_2613A14BC();
    swift_willThrow();
    goto LABEL_10;
  }

  v6 = v1 + 1;
  v7 = *(v0 + 232);
  *(v0 + 200) = v6;
  v8 = qword_2873BE1E0[v6 + 4];
  sub_2613A1CEC();
  if (v7)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 112);

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = *(v0 + 88);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = *(v0 + 176);
    sub_26125A870(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v29, &qword_27FEA08B8, &qword_2613AD830);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) != 1)
    {
      v34 = *(v0 + 176);
      v33 = *(v0 + 184);
      *(v0 + 80) = v8;
      sub_2613A1C2C();
      (*(v31 + 8))(v34, v30);
      v32 = 0;
      goto LABEL_18;
    }

    sub_26124C718(*(v0 + 176), &qword_27FEA08B8, &qword_2613AD830);
  }

  v32 = 1;
LABEL_18:
  v35 = *(v0 + 184);
  v36 = *(v0 + 168);
  v37 = *(v0 + 144);
  v38 = *(v0 + 152);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v41 = *(v0 + 120);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v42 - 8) + 56))(v35, v32, 1, v42);
  sub_26124C718(v35, &qword_27FEA0908, &qword_2613AD998);
  sub_2613A24CC();
  *(v0 + 64) = xmmword_2613AD810;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v43 = sub_2613912F8(&qword_27FE9FCB0, MEMORY[0x277D85928]);
  sub_2613A24AC();
  sub_2613912F8(&qword_27FE9FCB8, MEMORY[0x277D858F8]);
  sub_2613A21EC();
  v44 = *(v40 + 8);
  *(v0 + 208) = v44;
  *(v0 + 216) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v39, v41);
  v45 = *(MEMORY[0x277D85A58] + 4);
  v46 = swift_task_alloc();
  *(v0 + 224) = v46;
  *v46 = v0;
  v46[1] = sub_26138484C;
  v47 = *(v0 + 168);
  v49 = *(v0 + 144);
  v48 = *(v0 + 152);

  return MEMORY[0x2822008C8](v49, v0 + 40, v48, v43);
}

uint64_t sub_261384FC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_unknownObjectRelease();
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2613850A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26125A870(a3, v24 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2613A1BCC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_2613A198C() + 32;
      sub_2613A15EC();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

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

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  sub_2613A15EC();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261385358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139F30C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2613A164C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v4[11] = *(v9 + 64);
  v4[12] = swift_task_alloc();
  v10 = sub_2613A147C();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v4[15] = *(v11 + 64);
  v4[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[18] = v13;
  *v13 = v4;
  v13[1] = sub_261385548;

  return sub_261383CC4();
}

uint64_t sub_261385548()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[12];
    v8 = v2[8];

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    v11 = v2[5];

    return MEMORY[0x2822009F8](sub_2613856AC);
  }
}

uint64_t sub_2613856AC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
  v0[19] = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask;
  if (*(v1 + v2))
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D43640], v0[6]);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[12];
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[14];
    v12 = v0[12];
    v13 = v0[13];
    v31 = v13;
    v32 = v10;
    v33 = v12;
    v34 = v0[15];
    v14 = v0[10];
    v35 = v9;
    v15 = v0[9];
    v29 = v0[3];
    v30 = v0[4];
    v16 = sub_2613A1C1C();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    (*(v11 + 16))(v10, v29, v13);
    (*(v14 + 16))(v12, v30, v15);
    v17 = sub_2613912F8(&qword_27FEA08E8, type metadata accessor for IdentityReaderAdapter);
    v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v19 = (v34 + *(v14 + 80) + v18) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v1;
    *(v20 + 3) = v17;
    *(v20 + 4) = v1;
    (*(v11 + 32))(&v20[v18], v32, v31);
    (*(v14 + 32))(&v20[v19], v33, v15);
    swift_retain_n();
    v21 = sub_2613850A0(0, 0, v35, &unk_2613AD978, v20);
    v0[20] = v21;
    v22 = *(v1 + v2);
    *(v1 + v2) = v21;

    v23 = *(MEMORY[0x277D857C8] + 4);
    v24 = swift_task_alloc();
    v0[21] = v24;
    v25 = sub_2613A15EC();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    *v24 = v0;
    v24[1] = sub_261385A64;
    v27 = v0[2];
    v28 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v27, v21, v25, v26, v28);
  }
}

uint64_t sub_261385A64()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_261385C40;
  }

  else
  {
    v6 = sub_261385B90;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261385B90()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[5];

  v8 = *(v7 + v2);
  *(v7 + v2) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_261385C40()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[5];

  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = v0[22];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_261385CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_26139F30C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = sub_2613A164C();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = sub_2613A14EC();
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08F0, &qword_2613AD980) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08F8, &qword_2613AD988);
  v6[26] = v18;
  v19 = *(v18 - 8);
  v6[27] = v19;
  v20 = *(v19 + 64) + 15;
  v6[28] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0900, &qword_2613AD990);
  v6[29] = v21;
  v22 = *(v21 - 8);
  v6[30] = v22;
  v23 = *(v22 + 64) + 15;
  v6[31] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138608C);
}

uint64_t sub_26138608C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  *(v0 + 320) = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  sub_26125A870(v2 + v3, v1, &qword_27FEA08B8, &qword_2613AD830);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  *(v0 + 328) = v4;
  v5 = *(v4 - 8);
  *(v0 + 336) = v5;
  v6 = *(v5 + 48);
  *(v0 + 344) = v6;
  *(v0 + 352) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v4) == 1)
  {
    v7 = *(v0 + 312);
    sub_26124C718(*(v0 + 280), &qword_27FEA08B8, &qword_2613AD830);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    *(v0 + 48) = 0;
    v9 = *(v0 + 312);
    v10 = *(v0 + 280);
    sub_2613A1C2C();
    (*(v5 + 8))(v10, v4);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  v12 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 64);
  sub_26124C718(*(v0 + 312), &qword_27FEA0908, &qword_2613AD998);
  v18 = *(v17 + 112);
  sub_2613A148C();
  sub_2613A1C4C();
  v19 = sub_2613912F8(&qword_27FEA08E8, type metadata accessor for IdentityReaderAdapter);
  *(v0 + 360) = v19;
  *(v0 + 376) = *MEMORY[0x277CFEFA0];
  *(v0 + 380) = *MEMORY[0x277CFEF98];
  *(v0 + 384) = *MEMORY[0x277CFEF88];
  *(v0 + 388) = *MEMORY[0x277CFEF90];
  *(v0 + 392) = *MEMORY[0x277CFF1A0];
  v20 = *(v0 + 64);
  v21 = *(MEMORY[0x277D858B8] + 4);
  v22 = swift_task_alloc();
  *(v0 + 368) = v22;
  *v22 = v0;
  v22[1] = sub_2613863A8;
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 208);

  return MEMORY[0x2822005A8](v24, v20, v19, v25, v0 + 16);
}

uint64_t sub_2613863A8()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;

  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_261387178;
  }

  else
  {
    v5 = sub_2613864BC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2613864BC()
{
  v156 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 192);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v5 = sub_26129BA7C();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = *(v0 + 192);
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "Request document stream unexpectedly finished", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      v28 = *(v0 + 192);

      (*(v7 + 8))(v28, v6);
    }

    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 232);
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D436D0], *(v0 + 88));
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    v33 = *(v0 + 304);
    v32 = *(v0 + 312);
    v34 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = *(v0 + 272);
    v36 = *(v0 + 280);
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);
    v40 = *(v0 + 248);
    v41 = *(v0 + 224);
    v131 = *(v0 + 200);
    v133 = *(v0 + 192);
    v135 = *(v0 + 184);
    v137 = *(v0 + 176);
    v139 = *(v0 + 168);
    loga = *(v0 + 160);
    v144 = *(v0 + 152);
    v147 = *(v0 + 128);
    v150 = *(v0 + 104);

    v23 = *(v0 + 8);
    goto LABEL_10;
  }

  v8 = *(v0 + 376);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  (*(v3 + 32))(v9, v1, v2);
  v11 = *(v3 + 16);
  v11(v10, v9, v2);
  v12 = (*(v3 + 88))(v10, v2);
  if (v12 == v8)
  {
    v124 = *(v0 + 312);
    v125 = *(v0 + 304);
    v126 = *(v0 + 296);
    v127 = *(v0 + 288);
    v128 = *(v0 + 280);
    v129 = *(v0 + 272);
    v130 = *(v0 + 264);
    v132 = *(v0 + 256);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v136 = *(v0 + 200);
    v138 = *(v0 + 192);
    v134 = *(v0 + 176);
    v19 = *(v0 + 168);
    log = *(v0 + 184);
    v143 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(v0 + 136);
    v146 = *(v0 + 152);
    v149 = *(v0 + 128);
    v152 = *(v0 + 104);
    v123 = *(v0 + 56);
    (*(v20 + 8))();
    (*(v17 + 8))(v15, v18);
    (*(v14 + 8))(v13, v16);
    (*(v20 + 96))(v19, v21);
    v22 = sub_2613A15EC();
    (*(*(v22 - 8) + 32))(v123, v19, v22);

    v23 = *(v0 + 8);
LABEL_10:

    return v23();
  }

  if (v12 != *(v0 + 380))
  {
    if (v12 == *(v0 + 384))
    {
      v53 = *(v0 + 344);
      v153 = *(v0 + 352);
      v55 = *(v0 + 320);
      v54 = *(v0 + 328);
      v56 = *(v0 + 264);
      v58 = *(v0 + 120);
      v57 = *(v0 + 128);
      v59 = *(v0 + 112);
      v60 = *(v0 + 80);
      v61 = *(v0 + 64);
      (*(v58 + 104))(v57, *(v0 + 392), v59);
      v62 = sub_2613A163C();
      (*(v58 + 8))(v57, v59);
      sub_26125A870(v61 + v55, v56, &qword_27FEA08B8, &qword_2613AD830);
      if (v53(v56, 1, v54) == 1)
      {
        v63 = *(v0 + 264);
        (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
        sub_26124C718(v63, &qword_27FEA08B8, &qword_2613AD830);
        v52 = 1;
        v64 = *(v0 + 296);
      }

      else
      {
        v77 = *(v0 + 328);
        v78 = *(v0 + 336);
        v79 = *(v0 + 296);
        v80 = *(v0 + 264);
        v81 = *(v0 + 176);
        v82 = *(v0 + 136);
        v83 = *(v0 + 144);
        v84 = 2;
        if ((v62 & 1) == 0)
        {
          v84 = 3;
        }

        *(v0 + 32) = v84;
        sub_2613A1C2C();
        (*(v83 + 8))(v81, v82);
        (*(v78 + 8))(v80, v77);
        v52 = 0;
        v64 = *(v0 + 296);
      }
    }

    else
    {
      if (v12 != *(v0 + 388))
      {
        v85 = *(v0 + 184);
        v86 = sub_26129BA7C();
        sub_26125A870(v86, v85, &qword_27FE9F560, &qword_2613A3CB0);
        v87 = sub_2613A124C();
        v88 = *(v87 - 8);
        v89 = (*(v88 + 48))(v85, 1, v87);
        v90 = *(v0 + 176);
        v91 = *(v0 + 184);
        if (v89 == 1)
        {
          v92 = *(*(v0 + 144) + 8);
          v92(*(v0 + 176), *(v0 + 136));
          sub_26124C718(v91, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v11(*(v0 + 160), *(v0 + 176), *(v0 + 136));
          v108 = sub_2613A122C();
          v109 = sub_2613A1D8C();
          v110 = os_log_type_enabled(v108, v109);
          v111 = *(v0 + 176);
          v112 = *(v0 + 160);
          if (v110)
          {
            v154 = *(v0 + 176);
            v113 = *(v0 + 152);
            v145 = *(v0 + 144);
            v151 = v109;
            v114 = *(v0 + 136);
            v115 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v155 = v148;
            *v115 = 136315138;
            v11(v113, v112, v114);
            v116 = sub_2613A195C();
            logb = v108;
            v118 = v117;
            v92 = *(v145 + 8);
            v92(v112, v114);
            v119 = sub_26124C11C(v116, v118, &v155);

            *(v115 + 4) = v119;
            _os_log_impl(&dword_261243000, logb, v151, "Unexpected read event: %s", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v148);
            MEMORY[0x266701350](v148, -1, -1);
            MEMORY[0x266701350](v115, -1, -1);

            v92(v154, v114);
          }

          else
          {
            v120 = *(v0 + 136);
            v121 = *(v0 + 144);

            v92 = *(v121 + 8);
            v92(v112, v120);
            v92(v111, v120);
          }

          (*(v88 + 8))(*(v0 + 184), v87);
        }

        v122 = *(v0 + 144) + 8;
        v92(*(v0 + 168), *(v0 + 136));
        goto LABEL_34;
      }

      v66 = *(v0 + 344);
      v65 = *(v0 + 352);
      v67 = *(v0 + 328);
      v68 = *(v0 + 256);
      sub_26125A870(*(v0 + 64) + *(v0 + 320), v68, &qword_27FEA08B8, &qword_2613AD830);
      if (v66(v68, 1, v67) == 1)
      {
        v69 = *(v0 + 256);
        (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
        sub_26124C718(v69, &qword_27FEA08B8, &qword_2613AD830);
        v52 = 1;
      }

      else
      {
        v93 = *(v0 + 328);
        v94 = *(v0 + 336);
        v95 = *(v0 + 288);
        v96 = *(v0 + 256);
        v97 = *(v0 + 176);
        v98 = *(v0 + 136);
        v99 = *(v0 + 144);
        *(v0 + 24) = 4;
        sub_2613A1C2C();
        (*(v99 + 8))(v97, v98);
        (*(v94 + 8))(v96, v93);
        v52 = 0;
      }

      v64 = *(v0 + 288);
    }

    goto LABEL_33;
  }

  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v45 = *(v0 + 112);
  v46 = *(v0 + 80);
  (*(v44 + 104))(v43, *(v0 + 392), v45);
  LOBYTE(v46) = sub_2613A163C();
  (*(v44 + 8))(v43, v45);
  if (v46)
  {
    v48 = *(v0 + 344);
    v47 = *(v0 + 352);
    v49 = *(v0 + 328);
    v50 = *(v0 + 272);
    sub_26125A870(*(v0 + 64) + *(v0 + 320), v50, &qword_27FEA08B8, &qword_2613AD830);
    if (v48(v50, 1, v49) == 1)
    {
      v51 = *(v0 + 272);
      (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
      sub_26124C718(v51, &qword_27FEA08B8, &qword_2613AD830);
      v52 = 1;
    }

    else
    {
      v70 = *(v0 + 328);
      v71 = *(v0 + 336);
      v72 = *(v0 + 304);
      v73 = *(v0 + 272);
      v74 = *(v0 + 176);
      v75 = *(v0 + 136);
      v76 = *(v0 + 144);
      *(v0 + 40) = 1;
      sub_2613A1C2C();
      (*(v76 + 8))(v74, v75);
      (*(v71 + 8))(v73, v70);
      v52 = 0;
    }

    v64 = *(v0 + 304);
LABEL_33:
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v100 - 8) + 56))(v64, v52, 1, v100);
    sub_26124C718(v64, &qword_27FEA0908, &qword_2613AD998);
    goto LABEL_34;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
LABEL_34:
  v101 = *(v0 + 360);
  v102 = *(v0 + 64);
  v103 = *(MEMORY[0x277D858B8] + 4);
  v104 = swift_task_alloc();
  *(v0 + 368) = v104;
  *v104 = v0;
  v104[1] = sub_2613863A8;
  v105 = *(v0 + 224);
  v106 = *(v0 + 200);
  v107 = *(v0 + 208);

  return MEMORY[0x2822005A8](v106, v102, v101, v107, v0 + 16);
}

uint64_t sub_261387178()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v2 + 8))(v1, v3);
  v25 = v0[2];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = v0[28];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_261387308()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613873A4);
}

uint64_t sub_2613873A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_261387498;
  v5 = v0[2];
  v6 = v0[3];

  return sub_26137F2C4(v6, v5, v5);
}

uint64_t sub_261387498(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  v5[5] = v1;

  if (v1)
  {
    v6 = v5[2];
    sub_26124C718(v5[3], &qword_27FEA08B8, &qword_2613AD830);

    return MEMORY[0x2822009F8](sub_261387620);
  }

  else
  {
    sub_26124C718(v5[3], &qword_27FEA08B8, &qword_2613AD830);

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_261387620()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_261387684(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261387724);
}

uint64_t sub_261387724()
{
  v1 = *(*(v0 + 56) + 112);
  v2 = *(MEMORY[0x277CFEEC0] + 4);
  v5 = (*MEMORY[0x277CFEEC0] + MEMORY[0x277CFEEC0]);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2613877CC;

  return v5();
}

uint64_t sub_2613877CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[9];
  v7 = *v3;

  if (v2)
  {
    v8 = v5[8];

    v9 = v7[1];

    return v9();
  }

  else
  {
    v11 = v5[7];

    return MEMORY[0x2822009F8](sub_261387920);
  }
}

uint64_t sub_261387920()
{
  v1 = v0[8];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[8];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Mapping IDV configuration response", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[8];

    (*(v4 + 8))(v9, v3);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[8];
  v13 = v0[6];
  v14 = objc_allocWithZone(sub_2613A001C());
  *v13 = sub_2613A000C();

  v15 = v0[1];

  return v15();
}

uint64_t sub_261387AEC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261387B90);
}

uint64_t sub_261387B90()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_261387CA0;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 64);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_261380094(v7, v6, v9, v10, v8, v6);
}

uint64_t sub_261387CA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  v6[7] = v2;

  v9 = v6[5];
  if (v2)
  {
    v10 = v6[4];
    sub_26124C718(v9, &qword_27FEA08B8, &qword_2613AD830);

    return MEMORY[0x2822009F8](sub_261387E50);
  }

  else
  {
    v11 = v6[5];
    sub_26124C718(v9, &qword_27FEA08B8, &qword_2613AD830);

    v12 = *(v8 + 8);

    return v12(a1, a2);
  }
}

uint64_t sub_261387E50()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_261387EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_2613A166C();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v10 = sub_2613A162C();
  *(v5 + 88) = v10;
  v11 = *(v10 - 8);
  *(v5 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388020);
}

uint64_t sub_261388020()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 168);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  sub_2613A161C();
  v6 = sub_26129BA7C();
  *(v0 + 112) = v6;
  sub_26125A870(v6, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  *(v0 + 120) = v7;
  v8 = *(v7 - 8);
  *(v0 + 128) = v8;
  v9 = *(v8 + 48);
  *(v0 + 136) = v9;
  *(v0 + 144) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v2, 1, v7) == 1)
  {
    sub_26124C718(*(v0 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = *(v0 + 80);
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Performing IDV prepare request", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = *(v0 + 80);

    (*(v8 + 8))(v14, v7);
  }

  v15 = *(*(v0 + 40) + 112);
  v16 = *(MEMORY[0x277CFEFA8] + 4);
  v21 = (*MEMORY[0x277CFEFA8] + MEMORY[0x277CFEFA8]);
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_26138824C;
  v18 = *(v0 + 104);
  v19 = *(v0 + 64);

  return v21(v19, v18);
}

uint64_t sub_26138824C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_261388578;
  }

  else
  {
    v6 = sub_261388378;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261388378()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v29 = sub_2613A165C();
  v10 = v9;
  (*(v7 + 8))(v5, v8);
  sub_26125A870(v4, v6, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v6, 1, v3) == 1)
  {
    v11 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = v0[9];
    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Mapping IDV prepare response", v15, 2u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];
    v21 = v0[9];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v21, v17);
  }

  v22 = v0[13];
  v24 = v0[9];
  v23 = v0[10];
  v25 = v0[8];
  v26 = v0[2];
  *v26 = v29;
  v26[1] = v10;

  v27 = v0[1];

  return v27();
}

uint64_t sub_261388578()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_26138861C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_26139F64C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388714);
}

uint64_t sub_261388714()
{
  v2 = v0[3].i64[0];
  v1 = v0[3].i64[1];
  v4 = v0[2].i64[0];
  v3 = v0[2].i64[1];
  v12 = v0[1];
  sub_26139F53C();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  v0[4].i64[0] = v5;
  v0[4].i64[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[5].i64[0] = v7;
  v7[1] = vextq_s8(v12, v12, 8uLL);
  v8 = swift_task_alloc();
  v0[5].i64[1] = v8;
  *v8 = v0;
  v8[1] = sub_261388874;
  v10 = v0[1].i64[1];
  v9 = v0[2].i64[0];

  return sub_261380EB8(v8, v9, dword_2613ADA00);
}

uint64_t sub_261388874()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_26124C718(v5, &qword_27FEA08B8, &qword_2613AD830);

  v7 = *(v2 + 24);
  if (v0)
  {
    v8 = sub_261388A90;
  }

  else
  {
    v8 = sub_2613889F0;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2613889F0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_26139F53C();
  sub_26139F5BC();
  v2(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_261388A90()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_26139F53C();
  sub_26139F5BC();
  v2(v3, v4);

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_261388B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261388BDC);
}

uint64_t sub_261388BDC()
{
  v1 = v0[5];
  v2 = sub_26129BA7C();
  v0[6] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  v5 = *(v4 + 48);
  v0[9] = v5;
  v0[10] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "Running IDV pre-flight checks", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[5];

    (*(v4 + 8))(v10, v3);
  }

  v11 = *(v0[2] + 112);
  v12 = *(MEMORY[0x277CFEEB8] + 4);
  v16 = (*MEMORY[0x277CFEEB8] + MEMORY[0x277CFEEB8]);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_261388DDC;
  v14 = v0[3];

  return v16(v14);
}

uint64_t sub_261388DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[4];
    v5 = v2[5];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[2];

    return MEMORY[0x2822009F8](sub_261388F30);
  }
}

uint64_t sub_261388F30()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
  sub_26125A870(v0[6], v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[4];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "IDV pre-flight checks passed", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[4];

    (*(v10 + 8))(v11, v9);
  }

  v13 = v0[4];
  v12 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t sub_261389090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389130);
}

uint64_t sub_261389130()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_261389240;
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261381C84(v10, v6, v7, v7, v8, v9);
}

uint64_t sub_261389240()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_26124C718(v3, &qword_27FEA08B8, &qword_2613AD830);
  if (v0)
  {
    v5 = v4[5];

    return MEMORY[0x2822009F8](sub_2613893B4);
  }

  else
  {
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_2613893B4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_261389418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0978, &qword_2613ADA38) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389524);
}

uint64_t sub_261389524()
{
  v1 = v0[11];
  v2 = sub_26129BA7C();
  v0[12] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[13] = v3;
  v4 = *(v3 - 8);
  v0[14] = v4;
  v5 = *(v4 + 48);
  v0[15] = v5;
  v0[16] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[11], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[11];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "Performing IDV merchant request", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[11];

    (*(v4 + 8))(v10, v3);
  }

  v11 = *(v0[3] + 112);
  v12 = *(MEMORY[0x277CFEFB0] + 4);
  v18 = (*MEMORY[0x277CFEFB0] + MEMORY[0x277CFEFB0]);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_261389728;
  v14 = v0[9];
  v15 = v0[4];
  v16 = v0[5];

  return v18(v14, v15, v16);
}

uint64_t sub_261389728()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_261389C3C;
  }

  else
  {
    v6 = sub_261389854;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261389854()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  sub_26125A870(v0[12], v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Mapping IDV merchant response", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[10];

    (*(v10 + 8))(v11, v9);
  }

  v12 = v0[8];
  sub_26125A870(v0[9], v12, &qword_27FEA0978, &qword_2613ADA38);
  v13 = sub_2613A153C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v12, 1, v13);
  v17 = v0[8];
  if (v16 == 1)
  {
    sub_26124C718(v0[8], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    sub_2613A152C();
    v19 = v18;
    (*(v14 + 8))(v17, v13);
    if (v19 >> 60 != 15)
    {
      goto LABEL_10;
    }
  }

  sub_2613A0D5C();
LABEL_10:
  v20 = v0[7];
  sub_26125A870(v0[9], v20, &qword_27FEA0978, &qword_2613ADA38);
  v21 = v15(v20, 1, v13);
  v22 = v0[7];
  if (v21 == 1)
  {
    sub_26124C718(v0[7], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    sub_2613A151C();
    (*(v14 + 8))(v22, v13);
  }

  v23 = v0[6];
  sub_26125A870(v0[9], v23, &qword_27FEA0978, &qword_2613ADA38);
  v24 = v15(v23, 1, v13);
  v25 = v0[6];
  if (v24 == 1)
  {
    sub_26124C718(v0[6], &qword_27FEA0978, &qword_2613ADA38);
  }

  else
  {
    v26 = v0[6];
    sub_2613A150C();
    v28 = v27;
    (*(v14 + 8))(v25, v13);
    if (v28)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v30 = v0[10];
  v29 = v0[11];
  v32 = v0[8];
  v31 = v0[9];
  v33 = v0[6];
  v34 = v0[7];
  v35 = v0[2];
  sub_26139FF2C();
  sub_26124C718(v31, &qword_27FEA0978, &qword_2613ADA38);

  v36 = v0[1];

  return v36();
}

uint64_t sub_261389C3C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_261389CE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C8, &qword_2613AD878);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = sub_2613A141C();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(sub_2613A145C() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261389E18);
}

uint64_t sub_261389E18()
{
  v1 = v0[3];
  v2 = sub_2613A010C();
  sub_2613A011C();
  v3 = sub_2613A012C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v29 = v2;
    v5 = v0[9];
    v32 = v0[5];
    v38 = MEMORY[0x277D84F90];
    sub_261390854(0, v4, 0);
    v6 = v38;
    v7 = v3 + 64;
    v8 = -1 << *(v3 + 32);
    result = sub_2613A204C();
    v10 = result;
    v33 = v5;
    v31 = v3;
    v30 = v3 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v3 + 32))
    {
      v35 = v4;
      if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      v34 = *(v3 + 36);
      v36 = v0[10];
      v37 = v6;
      v11 = v0[6];
      v12 = v0[7];
      v13 = *(v3 + 48);
      v14 = v3;
      v15 = sub_26139FD9C();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v12, v13 + *(v16 + 72) * v10, v15);
      v17 = *(*(v14 + 56) + 8 * v10);
      (*(v16 + 32))(v11, v12, v15);
      *(v11 + *(v32 + 48)) = v17;

      v18 = v17;
      v6 = v37;
      sub_26138A478(v18, v36);
      sub_26124C718(v11, &qword_27FEA08C8, &qword_2613AD878);
      v20 = *(v37 + 16);
      v19 = *(v37 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_261390854(v19 > 1, v20 + 1, 1);
        v6 = v37;
      }

      v21 = v0[10];
      v22 = v0[8];
      *(v6 + 16) = v20 + 1;
      result = (*(v33 + 32))(v6 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, v21, v22);
      v3 = v31;
      if (v10 >= -(-1 << *(v31 + 32)))
      {
        goto LABEL_22;
      }

      v7 = v30;
      if ((*(v30 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(v31 + 36))
      {
        goto LABEL_24;
      }

      result = sub_2613A206C();
      v10 = result;
      --v4;
      if (v35 == 1)
      {

        v2 = v29;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    if (v2)
    {
      v23 = sub_26138A470;
    }

    else
    {
      v23 = sub_26138A474;
    }

    v24 = v0[2];
    v25 = v0[11];
    (v23)(v6);

    sub_2613A146C();
    v26 = swift_task_alloc();
    v0[12] = v26;
    *v26 = v0;
    v26[1] = sub_26138A1EC;
    v27 = v0[4];
    v28 = v0[2];

    return sub_26138861C(v28);
  }

  return result;
}

uint64_t sub_26138A1EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_26138A3A0;
  }

  else
  {
    v6 = sub_26138A318;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26138A318()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26138A3A0()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  v6 = sub_2613A147C();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_26138A478@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v80 = a2;
  v77 = sub_2613A160C();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v77);
  v76 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08D0, &unk_2613AD8B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = v67 - v10;
  v87 = sub_2613A13FC();
  v11 = *(v87 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v87);
  v78 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = v67 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0950, &qword_2613ADA18);
  v16 = *(*(v85 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v85);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = v67 - v20;
  v21 = sub_2613A128C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v79 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26138AC04();
  v81 = sub_2613910D8(MEMORY[0x277D84F90]);
  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;
  v84 = (v11 + 48);
  v71 = (v11 + 32);
  v73 = (v3 + 32);
  v74 = (v11 + 16);
  v68 = v11;
  v69 = (v11 + 8);
  v70 = v3;
  v67[1] = v3 + 40;
  v88 = a1;

  v29 = 0;
  v82 = v24;
  v83 = v28;
  while (2)
  {
    while (2)
    {
      v30 = v29;
      if (!v27)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v31 = v89;
        v29 = v30;
LABEL_10:
        v32 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v33 = v32 | (v29 << 6);
        v34 = v88;
        v35 = *(v88 + 48);
        v36 = sub_2613A002C();
        v37 = *(v36 - 8);
        v38 = v86;
        (*(v37 + 16))(v86, v35 + *(v37 + 72) * v33, v36);
        *(v38 + *(v85 + 48)) = *(*(v34 + 56) + v33);
        sub_26125A870(v38, v19, &qword_27FEA0950, &qword_2613ADA18);
        sub_26138B100(v31);
        if ((*v84)(v31, 1, v87) != 1)
        {
          break;
        }

        sub_26124C718(v38, &qword_27FEA0950, &qword_2613ADA18);
        sub_26124C718(v89, &qword_27FEA08D0, &unk_2613AD8B0);
        (*(v37 + 8))(v19, v36);
        v30 = v29;
        v24 = v82;
        v28 = v83;
        if (!v27)
        {
LABEL_6:
          while (1)
          {
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v29 >= v28)
            {

              return sub_2613A140C();
            }

            v27 = *(v24 + 8 * v29);
            ++v30;
            if (v27)
            {
              v31 = v89;
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_25;
        }
      }

      v39 = v75;
      v40 = v87;
      (*v71)(v75, v89, v87);
      (*(v37 + 8))(v19, v36);
      v41 = *v74;
      v42 = v78;
      (*v74)(v78, v39, v40);
      v43 = v72;
      sub_2613A15FC();
      v44 = *v73;
      (*v73)(v76, v43, v77);
      v45 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v45;
      v47 = sub_26138FE00(v42);
      v49 = *(v45 + 16);
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v53 = v48;
      v28 = v83;
      if (*(v45 + 24) >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = v47;
          sub_261390500();
          v47 = v65;
        }
      }

      else
      {
        sub_261390058(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_26138FE00(v78);
        if ((v53 & 1) != (v54 & 1))
        {
          goto LABEL_27;
        }
      }

      v55 = v90;
      v81 = v90;
      if (v53)
      {
        (*(v70 + 40))(*(v90 + 56) + *(v70 + 72) * v47, v76, v77);
        v56 = *v69;
        v57 = v87;
        (*v69)(v78, v87);
        v56(v75, v57);
        sub_26124C718(v86, &qword_27FEA0950, &qword_2613ADA18);
        v24 = v82;
        continue;
      }

      break;
    }

    *(v90 + 8 * (v47 >> 6) + 64) |= 1 << v47;
    v58 = v68;
    v59 = v47;
    v60 = v78;
    v61 = v87;
    v41(*(v55 + 48) + *(v68 + 72) * v47, v78, v87);
    v44((*(v81 + 56) + *(v70 + 72) * v59), v76, v77);
    v62 = *(v58 + 8);
    v62(v60, v61);
    v62(v75, v61);
    sub_26124C718(v86, &qword_27FEA0950, &qword_2613ADA18);
    v63 = *(v81 + 16);
    v51 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (!v51)
    {
      *(v81 + 16) = v64;
      v24 = v82;
      continue;
    }

    break;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2613A249C();
  __break(1u);
  return result;
}

uint64_t sub_26138AC04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v35 - v3;
  v4 = sub_26139F19C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139FD9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v39 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = *(v10 + 16);
  v40 = v0;
  v18(&v35 - v16, v0, v9);
  v19 = (*(v10 + 88))(v17, v9);
  if (v19 == *MEMORY[0x277D43928])
  {
    (*(v10 + 96))(v17, v9);
    (*(v5 + 32))(v8, v17, v4);
    sub_2613A126C();
    return (*(v5 + 8))(v8, v4);
  }

  else if (v19 == *MEMORY[0x277D43920])
  {
    return sub_2613A125C();
  }

  else if (v19 == *MEMORY[0x277D43930])
  {
    return sub_2613A127C();
  }

  else
  {
    v21 = sub_26129BA7C();
    v22 = v41;
    sub_26125A870(v21, v41, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = v23;
      v25 = v39;
      v18(v39, v40, v9);
      v26 = sub_2613A122C();
      LODWORD(v40) = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v40))
      {
        v27 = swift_slowAlloc();
        v35 = v27;
        v36 = swift_slowAlloc();
        v42 = v36;
        *v27 = 136315138;
        v18(v38, v25, v9);
        v28 = sub_2613A195C();
        v29 = v25;
        v31 = v30;
        (*(v10 + 8))(v29, v9);
        v32 = sub_26124C11C(v28, v31, &v42);

        v33 = v35;
        *(v35 + 1) = v32;
        v22 = v41;
        _os_log_impl(&dword_261243000, v26, v40, "Unknown document type %s", v33, 0xCu);
        v34 = v36;
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x266701350](v34, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      else
      {

        (*(v10 + 8))(v25, v9);
      }

      (*(v24 + 8))(v22, v37);
    }

    sub_2613A125C();
    return (*(v10 + 8))(v17, v9);
  }
}

uint64_t sub_26138B100@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_2613A002C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v37 - v17);
  v19 = *(v9 + 16);
  v19(&v37 - v17, v2, v8);
  v20 = (*(v9 + 88))(v18, v8);
  if (v20 == *MEMORY[0x277D43A48])
  {
    (*(v9 + 96))(v18, v8);
    v21 = *v18;
    sub_2613A12BC();
LABEL_41:
    v22 = sub_2613A13FC();
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  if (v20 == *MEMORY[0x277D43AD8])
  {
    sub_2613A13DC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A50])
  {
    sub_2613A12CC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AD0])
  {
    sub_2613A13CC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AA0])
  {
    sub_2613A136C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A58])
  {
    sub_2613A12DC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AA8])
  {
    sub_2613A137C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AC0])
  {
    sub_2613A13AC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AB0])
  {
    sub_2613A138C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AB8])
  {
    sub_2613A139C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AC8])
  {
    sub_2613A13BC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43AE0])
  {
    sub_2613A13EC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A78])
  {
    sub_2613A131C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A60])
  {
    sub_2613A12EC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A70])
  {
    sub_2613A130C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A88])
  {
    sub_2613A133C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A68])
  {
    sub_2613A12FC();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A80])
  {
    sub_2613A132C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A90])
  {
    sub_2613A134C();
    goto LABEL_41;
  }

  if (v20 == *MEMORY[0x277D43A98])
  {
    sub_2613A135C();
    goto LABEL_41;
  }

  v24 = sub_26129BA7C();
  sub_26125A870(v24, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v40 = *(v25 - 8);
  v41 = v25;
  if ((*(v40 + 48))(v7, 1) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19(v16, v2, v8);
    v26 = sub_2613A122C();
    v38 = sub_2613A1D7C();
    v39 = v26;
    if (os_log_type_enabled(v26, v38))
    {
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v27 = 136315138;
      v19(v13, v16, v8);
      v28 = sub_2613A195C();
      v30 = v29;
      (*(v9 + 8))(v16, v8);
      v31 = sub_26124C11C(v28, v30, &v42);

      v32 = v27;
      *(v27 + 4) = v31;
      v33 = v39;
      v34 = v32;
      _os_log_impl(&dword_261243000, v39, v38, "Unknown document element: %s", v32, 0xCu);
      v35 = v37;
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x266701350](v35, -1, -1);
      MEMORY[0x266701350](v34, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v16, v8);
    }

    (*(v40 + 8))(v7, v41);
  }

  v36 = sub_2613A13FC();
  (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  return (*(v9 + 8))(v18, v8);
}

uint64_t sub_26138B7C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return MEMORY[0x2822009F8](sub_26138B7EC);
}

uint64_t sub_26138B7EC()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  v4 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v9;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_26138B8EC;
  v7 = *(v0 + 40);

  return sub_261382A9C(v1 + v4, dword_2613AD898);
}

uint64_t sub_26138B8EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);

    return MEMORY[0x2822009F8](sub_2613893B4);
  }

  else
  {
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_26138BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 400) = a6;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v7 = sub_26139F30C();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0928, &qword_2613AD9D0) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v11 = sub_2613A15AC();
  *(v6 + 112) = v11;
  v12 = *(v11 - 8);
  *(v6 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0920, &qword_2613AD9C8) - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v15 = sub_2613A01BC();
  *(v6 + 160) = v15;
  v16 = *(v15 - 8);
  *(v6 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v20 = sub_26139F64C();
  *(v6 + 232) = v20;
  v21 = *(v20 - 8);
  *(v6 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v23 = sub_2613A15EC();
  *(v6 + 256) = v23;
  v24 = *(v23 - 8);
  *(v6 + 264) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v27 = sub_2613A164C();
  *(v6 + 312) = v27;
  v28 = *(v27 - 8);
  *(v6 + 320) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138BE70);
}

uint64_t sub_26138BE70()
{
  v1 = v0[8];
  v2 = v0[42];
  if (v1 >> 60 == 15)
  {
    (*(v0[40] + 104))(v0[42], *MEMORY[0x277CFF1A0], v0[39]);
  }

  else
  {
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[39];
    *v3 = v0[7];
    v3[1] = v1;
    (*(v4 + 104))(v3, *MEMORY[0x277CFF198], v5);
    (*(v4 + 32))(v2, v3, v5);
  }

  v6 = v0[38];
  sub_26125C348(v0[7], v0[8]);
  v7 = sub_26129BA7C();
  v0[43] = v7;
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v0[44] = v8;
  v9 = *(v8 - 8);
  v0[45] = v9;
  v10 = *(v9 + 48);
  v0[46] = v10;
  v0[47] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v6, 1, v8) == 1)
  {
    sub_26124C718(v0[38], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = v0[38];
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Performing IDV Data request", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    v15 = v0[38];

    (*(v9 + 8))(v15, v8);
  }

  v16 = swift_task_alloc();
  v0[48] = v16;
  *v16 = v0;
  v16[1] = sub_26138C0F8;
  v17 = v0[42];
  v18 = v0[34];
  v19 = v0[9];
  v20 = v0[6];

  return sub_261385358(v18, v19, v17);
}

uint64_t sub_26138C0F8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_26138D0CC;
  }

  else
  {
    v6 = sub_26138C224;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26138C224()
{
  v1 = *(v0 + 232);
  v2 = (*(v0 + 240) + 8);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  if (*(v0 + 400) != 1)
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    v16 = *(v0 + 248);
    sub_26139F57C();
    sub_26139F5DC();
    (*v2)(v4, v1);
    sub_2613A154C();
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FEA0928, &qword_2613AD9D0);
      goto LABEL_16;
    }

    v17 = *(v0 + 272);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    (*(v21 + 32))(v18, *(v0 + 104), v22);
    (*(v21 + 16))(v20, v18, v22);
    sub_2613A15DC();
    v23 = sub_2613A12AC();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 48))(v19, 1, v23);
    v26 = *(v0 + 144);
    if (v25 == 1)
    {
      sub_26124C718(*(v0 + 144), &qword_27FEA0920, &qword_2613AD9C8);
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    else
    {
      v38 = *(v0 + 144);
      v27 = sub_2613A129C();
      v28 = v39;
      (*(v24 + 8))(v26, v23);
    }

    v40 = *(v0 + 128);
    sub_2613A020C();
    v41 = sub_26138D25C(v40, v27, v28);
    if (!v41)
    {
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      goto LABEL_16;
    }

    v180 = v41;
    v42 = *(v0 + 192);
    sub_26125A870(*(v0 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v42, &qword_27FEA08B8, &qword_2613AD830);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 216);
    v47 = *(v0 + 192);
    if (v45 == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FEA08B8, &qword_2613AD830);
      v48 = 1;
    }

    else
    {
      *(v0 + 24) = 5;
      sub_2613A1C2C();
      (*(v44 + 8))(v47, v43);
      v48 = 0;
    }

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v83 - 8) + 56))(v46, v48, 1, v83);
    v85 = *(v0 + 368);
    v84 = *(v0 + 376);
    v86 = *(v0 + 344);
    v87 = *(v0 + 352);
    v88 = *(v0 + 288);
    sub_26124C718(*(v0 + 216), &qword_27FEA0908, &qword_2613AD998);
    sub_26125A870(v86, v88, &qword_27FE9F560, &qword_2613A3CB0);
    if (v85(v88, 1, v87) == 1)
    {
      v89 = *(v0 + 336);
      v90 = *(v0 + 312);
      v91 = *(v0 + 320);
      v92 = *(v0 + 288);
      v94 = *(v0 + 264);
      v93 = *(v0 + 272);
      v95 = *(v0 + 256);
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      (*(v94 + 8))(v93, v95);
      (*(v91 + 8))(v89, v90);
      sub_26124C718(v92, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v96 = *(v0 + 288);
      v97 = sub_2613A122C();
      v98 = sub_2613A1D9C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_261243000, v97, v98, "Returning IDV Data response", v99, 2u);
        MEMORY[0x266701350](v99, -1, -1);
      }

      v100 = *(v0 + 360);
      v101 = *(v0 + 320);
      v166 = *(v0 + 312);
      v169 = *(v0 + 336);
      v173 = *(v0 + 288);
      v177 = *(v0 + 352);
      v102 = *(v0 + 264);
      v103 = *(v0 + 272);
      v104 = *(v0 + 256);
      v105 = *(v0 + 136);
      v107 = *(v0 + 112);
      v106 = *(v0 + 120);

      (*(v106 + 8))(v105, v107);
      (*(v102 + 8))(v103, v104);
      (*(v101 + 8))(v169, v166);
      (*(v100 + 8))(v173, v177);
    }

    v108 = v180;
    goto LABEL_42;
  }

  v5 = *(v0 + 248);
  sub_26139F5AC();
  sub_26139F5DC();
  (*v2)(v4, v1);
  v6 = sub_2613A15BC();
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    v10 = *(v0 + 272);
    v11 = sub_2613A15CC();
    if (v12 >> 60 == 15)
    {
      sub_26124A168(v8, v9);
      goto LABEL_16;
    }

    v29 = v12;
    v30 = v11;
    v31 = *(v0 + 200);
    sub_26125A870(*(v0 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v31, &qword_27FEA08B8, &qword_2613AD830);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v31, 1, v32);
    v35 = *(v0 + 224);
    v36 = *(v0 + 200);
    if (v34 == 1)
    {
      sub_26124C718(*(v0 + 200), &qword_27FEA08B8, &qword_2613AD830);
      v37 = 1;
    }

    else
    {
      *(v0 + 32) = 5;
      sub_2613A1C2C();
      (*(v33 + 8))(v36, v32);
      v37 = 0;
    }

    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v109 - 8) + 56))(v35, v37, 1, v109);
    v111 = *(v0 + 368);
    v110 = *(v0 + 376);
    v113 = *(v0 + 344);
    v112 = *(v0 + 352);
    v114 = *(v0 + 296);
    sub_26124C718(*(v0 + 224), &qword_27FEA0908, &qword_2613AD998);
    sub_26125A870(v113, v114, &qword_27FE9F560, &qword_2613A3CB0);
    if (v111(v114, 1, v112) == 1)
    {
      sub_26124C718(*(v0 + 296), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v115 = *(v0 + 296);
      v116 = sub_2613A122C();
      v117 = sub_2613A1D9C();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_261243000, v116, v117, "Returning IDV Raw Data response", v118, 2u);
        MEMORY[0x266701350](v118, -1, -1);
      }

      v120 = *(v0 + 352);
      v119 = *(v0 + 360);
      v121 = *(v0 + 296);

      (*(v119 + 8))(v121, v120);
    }

    v122 = *(v0 + 272);
    v124 = *(v0 + 168);
    v123 = *(v0 + 176);
    v126 = *(v0 + 152);
    v125 = *(v0 + 160);
    *v123 = v8;
    v123[1] = v9;
    v123[2] = v30;
    v123[3] = v29;
    v127 = *MEMORY[0x277D43BE0];
    (*(v124 + 104))();
    sub_26125C348(v8, v9);
    v178 = v30;
    sub_26125C348(v30, v29);
    sub_2613A15DC();
    v128 = sub_2613A12AC();
    v129 = *(v128 - 8);
    v130 = (*(v129 + 48))(v126, 1, v128);
    v131 = *(v0 + 152);
    v181 = v8;
    v174 = v29;
    if (v130 == 1)
    {
      sub_26124C718(v131, &qword_27FEA0920, &qword_2613AD9C8);
    }

    else
    {
      sub_2613A129C();
      (*(v129 + 8))(v131, v128);
    }

    v170 = *(v0 + 336);
    v133 = *(v0 + 312);
    v132 = *(v0 + 320);
    v134 = *(v0 + 264);
    v135 = *(v0 + 272);
    v136 = *(v0 + 256);
    v137 = *(v0 + 176);
    v138 = objc_allocWithZone(sub_2613A020C());
    v139 = sub_2613A01DC();
    sub_26124A168(v178, v174);
    sub_26124A168(v181, v9);
    (*(v134 + 8))(v135, v136);
    (*(v132 + 8))(v170, v133);
    v108 = v139;
LABEL_42:
    v141 = *(v0 + 328);
    v140 = *(v0 + 336);
    v143 = *(v0 + 296);
    v142 = *(v0 + 304);
    v145 = *(v0 + 280);
    v144 = *(v0 + 288);
    v146 = *(v0 + 272);
    v147 = *(v0 + 248);
    v148 = *(v0 + 216);
    v149 = *(v0 + 224);
    v154 = *(v0 + 208);
    v156 = *(v0 + 200);
    v158 = *(v0 + 192);
    v160 = *(v0 + 184);
    v162 = *(v0 + 176);
    v164 = *(v0 + 152);
    v167 = *(v0 + 144);
    v171 = *(v0 + 136);
    v175 = *(v0 + 128);
    v179 = *(v0 + 104);
    v182 = *(v0 + 96);
    **(v0 + 40) = v108;

    v82 = *(v0 + 8);
    goto LABEL_43;
  }

LABEL_16:
  v50 = *(v0 + 368);
  v49 = *(v0 + 376);
  v51 = *(v0 + 352);
  v52 = *(v0 + 280);
  sub_26125A870(*(v0 + 344), v52, &qword_27FE9F560, &qword_2613A3CB0);
  if (v50(v52, 1, v51) == 1)
  {
    sub_26124C718(*(v0 + 280), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v53 = *(v0 + 280);
    v54 = sub_2613A122C();
    v55 = sub_2613A1D8C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_261243000, v54, v55, "No response data", v56, 2u);
      MEMORY[0x266701350](v56, -1, -1);
    }

    v57 = *(v0 + 352);
    v58 = *(v0 + 360);
    v59 = *(v0 + 280);

    (*(v58 + 8))(v59, v57);
  }

  v60 = *(v0 + 184);
  sub_26125A870(*(v0 + 48) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v60, &qword_27FEA08B8, &qword_2613AD830);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v64 = *(v0 + 208);
  v65 = *(v0 + 184);
  if (v63 == 1)
  {
    sub_26124C718(*(v0 + 184), &qword_27FEA08B8, &qword_2613AD830);
    v66 = 1;
  }

  else
  {
    *(v0 + 16) = 9;
    sub_2613A1C2C();
    (*(v62 + 8))(v65, v61);
    v66 = 0;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
  (*(*(v67 - 8) + 56))(v64, v66, 1, v67);
  v69 = *(v0 + 264);
  v68 = *(v0 + 272);
  v70 = *(v0 + 256);
  v72 = *(v0 + 88);
  v71 = *(v0 + 96);
  v73 = *(v0 + 80);
  sub_26124C718(*(v0 + 208), &qword_27FEA0908, &qword_2613AD998);
  (*(v72 + 104))(v71, *MEMORY[0x277D436D0], v73);
  sub_26139F33C();
  sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
  swift_allocError();
  sub_26139F31C();
  swift_willThrow();
  (*(v69 + 8))(v68, v70);
  v74 = *(v0 + 328);
  v76 = *(v0 + 296);
  v75 = *(v0 + 304);
  v78 = *(v0 + 280);
  v77 = *(v0 + 288);
  v79 = *(v0 + 272);
  v80 = *(v0 + 248);
  v81 = *(v0 + 224);
  v151 = *(v0 + 216);
  v152 = *(v0 + 208);
  v153 = *(v0 + 200);
  v155 = *(v0 + 192);
  v157 = *(v0 + 184);
  v159 = *(v0 + 176);
  v161 = *(v0 + 152);
  v163 = *(v0 + 144);
  v165 = *(v0 + 136);
  v168 = *(v0 + 128);
  v172 = *(v0 + 104);
  v176 = *(v0 + 96);
  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));

  v82 = *(v0 + 8);
LABEL_43:

  return v82();
}

uint64_t sub_26138D0CC()
{
  v23 = v0[49];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[31];
  v8 = v0[28];
  v11 = v0[27];
  v12 = v0[26];
  v13 = v0[25];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  (*(v0[40] + 8))(v0[42], v0[39]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26138D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v31 = a2;
  v4 = sub_2613A01BC();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0780, &qword_2613AD110);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_2613A128C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26139FD9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2613A156C();
  sub_26138F530(v11);
  (*(v13 + 8))(v16, v12);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    v22 = sub_2613A15AC();
    (*(*(v22 - 8) + 8))(a1, v22);

    sub_26124C718(v11, &qword_27FEA0780, &qword_2613AD110);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v11, v17);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0798, &qword_2613AD9F0) + 48);
    (*(v18 + 16))(v7, v21, v17);
    v25 = sub_2613A15AC();
    v26 = *(v25 - 8);
    (*(v26 + 16))(&v7[v24], a1, v25);
    (*(v29 + 104))(v7, *MEMORY[0x277D43BE8], v30);
    v27 = sub_2613A01CC();
    (*(v26 + 8))(a1, v25);
    (*(v18 + 8))(v21, v17);
    return v27;
  }
}

uint64_t sub_26138D62C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08D0, &unk_2613AD8B0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_2613A13FC();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_26139FD9C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_2613A128C();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_2613A002C();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = *(*(sub_2613A145C() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138D874);
}

uint64_t sub_26138D874()
{
  v1 = v0[3];
  sub_2613A017C();
  v2 = sub_2613A016C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[14];
    v5 = v0[11];
    v47 = MEMORY[0x277D84F90];
    sub_261390898(0, v3, 0);
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v43 = *(v6 + 56);
    v45 = v7;
    do
    {
      v9 = v0[15];
      v10 = v0[12];
      v11 = v0[10];
      v45(v10, v8, v11);
      sub_26138AC04();
      (*(v6 - 8))(v10, v11);
      v13 = *(v47 + 16);
      v12 = *(v47 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_261390898(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[15];
      v15 = v0[13];
      *(v47 + 16) = v13 + 1;
      (*(v4 + 32))(v47 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
      v8 += v43;
      --v3;
    }

    while (v3);
  }

  v16 = v0[3];
  v17 = sub_2613A019C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v0[17];
    v20 = v0[8];
    v46 = *(v19 + 16);
    v21 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v42 = (v19 + 8);
    v44 = *(v19 + 72);
    v39 = v20;
    v40 = (v20 + 32);
    v41 = (v20 + 48);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = v0[18];
      v24 = v0[16];
      v26 = v0[6];
      v25 = v0[7];
      v27 = v0[5];
      v46(v23, v21, v24);
      sub_26138B100(v27);
      sub_261375F68(v27, v26, &qword_27FEA08D0, &unk_2613AD8B0);
      (*v42)(v23, v24);
      if ((*v41)(v26, 1, v25) == 1)
      {
        sub_26124C718(v0[6], &qword_27FEA08D0, &unk_2613AD8B0);
      }

      else
      {
        v28 = *v40;
        (*v40)(v0[9], v0[6], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_26138FC28(0, *(v22 + 2) + 1, 1, v22);
        }

        v30 = *(v22 + 2);
        v29 = *(v22 + 3);
        if (v30 >= v29 >> 1)
        {
          v22 = sub_26138FC28(v29 > 1, v30 + 1, 1, v22);
        }

        v31 = v0[9];
        v32 = v0[7];
        *(v22 + 2) = v30 + 1;
        v28(&v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30], v31, v32);
      }

      v21 += v44;
      --v18;
    }

    while (v18);
  }

  v33 = v0[19];
  v34 = v0[2];
  sub_2613A143C();

  sub_2613A146C();
  v35 = swift_task_alloc();
  v0[20] = v35;
  *v35 = v0;
  v35[1] = sub_26138DCB8;
  v36 = v0[4];
  v37 = v0[2];

  return sub_26138861C(v37);
}

uint64_t sub_26138DCB8()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_26138DE50);
  }

  else
  {
    v6 = v3[18];
    v5 = v3[19];
    v7 = v3[15];
    v8 = v3[12];
    v9 = v3[9];
    v10 = v3[5];
    v11 = v3[6];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_26138DE50()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  v9 = sub_2613A147C();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = v0[1];
  v11 = v0[21];

  return v10();
}

uint64_t sub_26138DF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26138DF70);
}

uint64_t sub_26138DF70()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_26138E068;
  v6 = *(v0 + 40);

  return sub_261382EB8(v1 + v3, dword_2613AD8C8);
}

uint64_t sub_26138E068(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);

    return MEMORY[0x2822009F8](sub_2613913B0);
  }

  else
  {
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_26138E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_26139F30C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0920, &qword_2613AD9C8) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = sub_26139EDCC();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0928, &qword_2613AD9D0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = sub_2613A15AC();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = sub_26139F64C();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();
  v22 = sub_2613A15EC();
  v5[24] = v22;
  v23 = *(v22 - 8);
  v5[25] = v23;
  v24 = *(v23 + 64) + 15;
  v5[26] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v26 = sub_2613A164C();
  v5[30] = v26;
  v27 = *(v26 - 8);
  v5[31] = v27;
  v28 = *(v27 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26138E594);
}

uint64_t sub_26138E594()
{
  v1 = v0[6];
  v2 = v0[33];
  if (v1 >> 60 == 15)
  {
    (*(v0[31] + 104))(v0[33], *MEMORY[0x277CFF1A0], v0[30]);
  }

  else
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[30];
    *v3 = v0[5];
    v3[1] = v1;
    (*(v4 + 104))(v3, *MEMORY[0x277CFF198], v5);
    (*(v4 + 32))(v2, v3, v5);
  }

  v6 = v0[29];
  sub_26125C348(v0[5], v0[6]);
  v7 = sub_26129BA7C();
  v0[34] = v7;
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v0[35] = v8;
  v9 = *(v8 - 8);
  v0[36] = v9;
  v10 = *(v9 + 48);
  v0[37] = v10;
  v0[38] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v6, 1, v8) == 1)
  {
    sub_26124C718(v0[29], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = v0[29];
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Performing IDV Display Only request", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    v15 = v0[29];

    (*(v9 + 8))(v15, v8);
  }

  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_26138E81C;
  v17 = v0[33];
  v18 = v0[26];
  v19 = v0[7];
  v20 = v0[4];

  return sub_261385358(v18, v19, v17);
}

uint64_t sub_26138E81C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_26138F200;
  }

  else
  {
    v6 = sub_26138E948;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26138E948()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  sub_26139F58C();
  sub_26139F5DC();
  (*(v3 + 8))(v2, v4);
  sub_2613A154C();
  v8 = (*(v6 + 48))(v7, 1, v5);
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[35];
  if (v8 == 1)
  {
    v12 = v0[28];
    sub_26124C718(v0[17], &qword_27FEA0928, &qword_2613AD9D0);
    sub_26125A870(v10, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v9(v12, 1, v11) == 1)
    {
      sub_26124C718(v0[28], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = v0[28];
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "No response data", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      v27 = v0[35];
      v28 = v0[36];
      v29 = v0[28];

      (*(v28 + 8))(v29, v27);
    }

    v30 = v0[11];
    sub_26125A870(v0[4] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, v30, &qword_27FEA08B8, &qword_2613AD830);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v30, 1, v31);
    v35 = v0[11];
    v34 = v0[12];
    if (v33 == 1)
    {
      sub_26124C718(v0[11], &qword_27FEA08B8, &qword_2613AD830);
      v36 = 1;
    }

    else
    {
      v0[2] = 9;
      sub_2613A1C2C();
      (*(v32 + 8))(v35, v31);
      v36 = 0;
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
    (*(*(v53 - 8) + 56))(v34, v36, 1, v53);
    v55 = v0[25];
    v54 = v0[26];
    v56 = v0[24];
    v58 = v0[9];
    v57 = v0[10];
    v59 = v0[8];
    sub_26124C718(v0[12], &qword_27FEA0908, &qword_2613AD998);
    (*(v58 + 104))(v57, *MEMORY[0x277D436D0], v59);
    sub_26139F33C();
    sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
    (*(v55 + 8))(v54, v56);
    v60 = v0[32];
    v62 = v0[28];
    v61 = v0[29];
    v64 = v0[26];
    v63 = v0[27];
    v65 = v0[23];
    v66 = v0[20];
    v67 = v0[17];
    v93 = v0[16];
    v94 = v0[13];
    v95 = v0[12];
    v96 = v0[11];
    v98 = v0[10];
    (*(v0[31] + 8))(v0[33], v0[30]);

    v68 = v0[1];
  }

  else
  {
    v13 = v0[27];
    v97 = v0[38];
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[14];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v17 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
    sub_2613A158C();
    v18 = sub_26139EDBC();
    (*(v15 + 8))(v14, v16);
    v99 = v17;
    v19 = [v17 stringFromPersonNameComponents_];

    v20 = sub_2613A18CC();
    v22 = v21;

    sub_26125A870(v10, v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (v9(v13, 1, v11) == 1)
    {
      sub_26124C718(v0[27], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = v0[27];
      v38 = sub_2613A122C();
      v39 = sub_2613A1D9C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "Returning IDV Display Only response", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      v41 = v0[35];
      v42 = v0[36];
      v43 = v0[27];

      (*(v42 + 8))(v43, v41);
    }

    v44 = v0[20];
    sub_2613A157C();
    v45 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v45 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {
    }

    v46 = v0[26];
    v47 = v0[20];
    v48 = v0[13];
    sub_2613A159C();
    sub_2613A155C();
    sub_2613A15DC();
    v49 = sub_2613A12AC();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 48))(v48, 1, v49);
    v52 = v0[13];
    if (v51 == 1)
    {
      sub_26124C718(v52, &qword_27FEA0920, &qword_2613AD9C8);
    }

    else
    {
      sub_2613A129C();
      (*(v50 + 8))(v52, v49);
    }

    v69 = v0[33];
    v70 = v0[31];
    v81 = v0[30];
    v82 = v0[32];
    v83 = v0[29];
    v84 = v0[28];
    v71 = v0[26];
    v72 = v0[25];
    v85 = v0[27];
    v86 = v0[23];
    v73 = v0[19];
    v74 = v0[20];
    v75 = v0[18];
    v87 = v0[17];
    v88 = v0[16];
    v89 = v0[13];
    v90 = v0[12];
    v91 = v0[11];
    v92 = v0[10];
    v79 = v0[3];
    v80 = v0[24];
    v76 = objc_allocWithZone(sub_26139FBFC());
    v77 = sub_26139FBDC();

    (*(v73 + 8))(v74, v75);
    (*(v72 + 8))(v71, v80);
    (*(v70 + 8))(v69, v81);
    *v79 = v77;

    v68 = v0[1];
  }

  return v68();
}

uint64_t sub_26138F200()
{
  v16 = v0[40];
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[17];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  (*(v0[31] + 8))(v0[33], v0[30]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26138F338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_26129BA7C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Canceling document read task", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    result = (*(v8 + 8))(v5, v7);
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask))
  {
    sub_2613A15EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    sub_2613A1C9C();
  }

  return result;
}

uint64_t sub_26138F530@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - v4;
  v51 = sub_26139F19C();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2613A128C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = v10[2];
  v48 = v1;
  v49 = v19;
  v19(&v46 - v17, v1, v9);
  sub_2613A125C();
  sub_2613912F8(&qword_27FEA0940, MEMORY[0x277CFEE88]);
  v20 = sub_2613A188C();
  v21 = v10[1];
  v21(v16, v9);
  if (v20)
  {
    v21(v18, v9);
    v22 = *MEMORY[0x277D43920];
    v23 = sub_26139FD9C();
    v24 = *(v23 - 8);
    v25 = v52;
    (*(v24 + 104))(v52, v22, v23);
    return (*(v24 + 56))(v25, 0, 1, v23);
  }

  sub_26139F18C();
  sub_2613A126C();
  (*(v5 + 8))(v8, v51);
  v26 = sub_2613A188C();
  v21(v16, v9);
  if (v26)
  {
    v21(v18, v9);
    v25 = v52;
    sub_26139F18C();
    v27 = *MEMORY[0x277D43928];
    v23 = sub_26139FD9C();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v25, v27, v23);
    return (*(v24 + 56))(v25, 0, 1, v23);
  }

  sub_2613A127C();
  v29 = sub_2613A188C();
  v21(v16, v9);
  v21(v18, v9);
  if (v29)
  {
    v30 = *MEMORY[0x277D43930];
    v23 = sub_26139FD9C();
    v24 = *(v23 - 8);
    v25 = v52;
    (*(v24 + 104))(v52, v30, v23);
    return (*(v24 + 56))(v25, 0, 1, v23);
  }

  v31 = sub_26129BA7C();
  v32 = v50;
  sub_26125A870(v31, v50, &qword_27FE9F560, &qword_2613A3CB0);
  v33 = sub_2613A124C();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = v47;
    v49(v47, v48, v9);
    v36 = sub_2613A122C();
    LODWORD(v51) = sub_2613A1D8C();
    if (os_log_type_enabled(v36, v51))
    {
      v37 = swift_slowAlloc();
      v46 = v37;
      v48 = swift_slowAlloc();
      v53 = v48;
      *v37 = 136315138;
      v49(v16, v35, v9);
      v38 = sub_2613A195C();
      v40 = v39;
      v21(v35, v9);
      v41 = sub_26124C11C(v38, v40, &v53);
      v32 = v50;

      v42 = v46;
      *(v46 + 1) = v41;
      _os_log_impl(&dword_261243000, v36, v51, "Unknown document type %s", v42, 0xCu);
      v43 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x266701350](v43, -1, -1);
      MEMORY[0x266701350](v42, -1, -1);
    }

    else
    {

      v21(v35, v9);
    }

    (*(v34 + 8))(v32, v33);
  }

  v44 = v52;
  v45 = sub_26139FD9C();
  return (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
}

size_t sub_26138FC28(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0930, &qword_2613AD9D8);
  v10 = *(sub_2613A13FC() - 8);
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
  v15 = *(sub_2613A13FC() - 8);
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

unint64_t sub_26138FE00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2613A13FC();
  sub_2613912F8(&qword_27FEA0960, MEMORY[0x277CFEE98]);
  v5 = sub_2613A182C();

  return sub_26138FE98(a1, v5);
}

unint64_t sub_26138FE98(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2613A13FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2613912F8(&qword_27FEA0968, MEMORY[0x277CFEE98]);
      v16 = sub_2613A188C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_261390058(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2613A160C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2613A13FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
  v52 = a2;
  result = sub_2613A223C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2613912F8(&qword_27FEA0960, MEMORY[0x277CFEE98]);
      result = sub_2613A182C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

char *sub_261390500()
{
  v1 = v0;
  v43 = sub_2613A160C();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2613A13FC();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
  v6 = *v0;
  v7 = sub_2613A222C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

size_t sub_261390854(size_t a1, int64_t a2, char a3)
{
  result = sub_2613908DC(a1, a2, a3, *v3, &qword_27FEA0948, &qword_2613ADA10, MEMORY[0x277CFEEB0]);
  *v3 = result;
  return result;
}

size_t sub_261390898(size_t a1, int64_t a2, char a3)
{
  result = sub_2613908DC(a1, a2, a3, *v3, &qword_27FEA0938, &unk_2613AD9E0, MEMORY[0x277CFEE88]);
  *v3 = result;
  return result;
}

size_t sub_2613908DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_261390AB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261265144;

  return sub_26138BA44(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_261390B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261265144;

  return sub_26138E1C0(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for IdentityReaderAdapter()
{
  result = qword_27FEAE960;
  if (!qword_27FEAE960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261390C94()
{
  sub_261390D80();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_261390DE4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_261390D80()
{
  if (!qword_27FEA08D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA08C0, &unk_2613AD838);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA08D8);
    }
  }
}

void sub_261390DE4()
{
  if (!qword_27FEA08E0)
  {
    v0 = sub_2613A1C6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA08E0);
    }
  }
}

uint64_t sub_261390E34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2613A147C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2613A164C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_261262AA4;

  return sub_261385CE4(a1, v11, v12, v10, v1 + v6, v1 + v9);
}

uint64_t sub_261390F80(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_261390FA4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261384230(v4, v5, v6, v3, v2);
}

uint64_t sub_261391040()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261388B30(v4, v2, v3);
}

unint64_t sub_2613910D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0970, &qword_2613ADA28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0958, &qword_2613ADA20);
    v8 = sub_2613A224C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26125A870(v10, v6, &qword_27FEA0970, &qword_2613ADA28);
      result = sub_26138FE00(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2613A13FC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2613A160C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_2613912F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261391354()
{
  result = qword_27FEAE9F0[0];
  if (!qword_27FEAE9F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE9F0);
  }

  return result;
}

void *sub_2613913B4(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_26139C80C(a1);

  return v5;
}

uint64_t sub_261391400()
{
  v0 = sub_26139FA0C();
  v1 = *(v0 - 8);
  v70 = v0;
  v71 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - v10;
  v12 = sub_26129B858();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "Destroying AnalyticsTask", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  v18 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  v19 = v72;
  swift_beginAccess();
  v59 = v18;
  v20 = *(v19 + v18);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v69 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer;
  v67 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
  v25 = (v22 + 63) >> 6;
  v62 = v71 + 16;
  v61 = v2 + 7;
  v60 = v71 + 32;
  v68 = v20;
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  v64 = v21;
  v63 = v25;
  while (v24)
  {
LABEL_15:
    v29 = (*(v68 + 56) + ((v27 << 10) | (16 * __clz(__rbit64(v24)))));
    v30 = v29[1];
    v74 = *v29;
    v31 = v72;
    v76 = *(v72 + v69);
    v77 = v30;
    v32 = sub_2613A1C1C();
    v73 = *(v32 - 8);
    v33 = v75;
    (*(v73 + 56))(v75, 1, 1, v32);
    v34 = v70;
    v35 = v71;
    v36 = v66;
    (*(v71 + 16))(v66, v31 + v67, v70);
    v37 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v38 = (v61 + v37) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    *(v39 + 4) = v76;
    (*(v35 + 32))(&v39[v37], v36, v34);
    v40 = &v39[v38];
    v41 = v77;
    *v40 = v74;
    *(v40 + 1) = v41;
    v42 = v33;
    v43 = v73;
    v44 = v65;
    sub_26125A870(v42, v65, &unk_27FE9F580, &qword_2613A5480);
    LODWORD(v35) = (*(v43 + 48))(v44, 1, v32);
    swift_bridgeObjectRetain_n();

    if (v35 == 1)
    {
      sub_26124C718(v44, &unk_27FE9F580, &qword_2613A5480);
    }

    else
    {
      sub_2613A1C0C();
      (*(v43 + 8))(v44, v32);
    }

    v45 = *(v39 + 2);
    v46 = *(v39 + 3);
    swift_unknownObjectRetain();

    v21 = v64;
    if (v45)
    {
      swift_getObjectType();
      v47 = sub_2613A1BCC();
      v49 = v48;
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    sub_26124C718(v75, &unk_27FE9F580, &qword_2613A5480);
    v50 = swift_allocObject();
    *(v50 + 16) = &unk_2613ADB38;
    *(v50 + 24) = v39;
    if (v49 | v47)
    {
      v78 = 0;
      v79 = 0;
      v80 = v47;
      v81 = v49;
    }

    v24 &= v24 - 1;
    swift_task_create();

    v25 = v63;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      v51 = v72;
      v52 = *(v72 + 24);

      v53 = *(v51 + 40);

      (*(v71 + 8))(v51 + v67, v70);
      v54 = *(v51 + v69);

      v55 = *(v51 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID + 8);

      v56 = *(v51 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions);

      v57 = *(v51 + v59);

      return v51;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261391ADC()
{
  sub_261391400();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_261391B34(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_2613A1C1C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;

  sub_261266800(0, 0, v6, &unk_2613ADB58, v8);
}

uint64_t sub_261391C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_261391C68);
}

uint64_t sub_261391C68()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 24) = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261391D40);
}

uint64_t sub_261391D40()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_26139F8AC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_261391DC0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 328) = a3;
  *(v3 + 168) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261391E6C);
}

uint64_t sub_261391E6C()
{
  v1 = *(v0 + 168);
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v0 + 192) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4)
  {
    *(v0 + 232) = v4;
    v5 = *(v0 + 328);
    v6 = *v3;

    if (v5 == 1)
    {
      v7 = sub_2613A0A6C();
    }

    else
    {
      v7 = sub_2613A0ADC();
    }

    v15 = v7;
    v16 = v8;
    v17 = *(v0 + 168);
    *(v0 + 240) = v8;
    *(v0 + 248) = v7;
    *(v0 + 256) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v19;
    *(inited + 48) = v15;
    *(inited + 56) = v16;

    v20 = sub_261268144(inited);
    *(v0 + 264) = v20;
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
    v21 = *(MEMORY[0x277D437D8] + 4);
    v22 = swift_task_alloc();
    *(v0 + 272) = v22;
    *v22 = v0;
    v22[1] = sub_26139256C;

    return MEMORY[0x2821A5190](v6, v4, v20, 0);
  }

  else
  {
    v9 = *v3;
    *(v0 + 200) = *v3;
    v10 = sub_2613A090C();
    v12 = v11;
    *(v0 + 208) = v11;
    v13 = *(MEMORY[0x277D437B0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_2613920B4;

    return MEMORY[0x2821A5168](v10, v12, v9, 0);
  }
}

uint64_t sub_2613920B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[27];
  v6 = v3[26];
  v8 = *v2;
  v4[28] = a2;

  return MEMORY[0x2822009F8](sub_2613921D8);
}

uint64_t sub_2613921D8()
{
  v34 = v0;
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 168);
    swift_beginAccess();

    sub_2612BB7A4(&v33, v2, v1);
    swift_endAccess();

    v4 = *(v0 + 224);
  }

  else
  {
    v4 = 0;
    v2 = *(v0 + 200);
  }

  v5 = (*(v0 + 168) + *(v0 + 192));
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v4;

  v7 = v5[1];
  if (v7)
  {
    *(v0 + 232) = v7;
    v8 = *(v0 + 328);
    v9 = *(*(v0 + 168) + *(v0 + 192));

    if (v8)
    {
      v10 = sub_2613A0A6C();
    }

    else
    {
      v10 = sub_2613A0ADC();
    }

    v16 = v10;
    v17 = v11;
    v18 = *(v0 + 168);
    *(v0 + 240) = v11;
    *(v0 + 248) = v10;
    *(v0 + 256) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v20;
    *(inited + 48) = v16;
    *(inited + 56) = v17;

    v21 = sub_261268144(inited);
    *(v0 + 264) = v21;
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
    v22 = *(MEMORY[0x277D437D8] + 4);
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_26139256C;

    return MEMORY[0x2821A5190](v9, v7, v21, 0);
  }

  else
  {
    v12 = *(v0 + 184);
    v13 = sub_26129B858();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = *(v0 + 184);
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "ParentID could not be created", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      v28 = *(v0 + 184);

      (*(v15 + 8))(v28, v14);
    }

    v30 = *(v0 + 176);
    v29 = *(v0 + 184);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_26139256C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2613926A0);
}

uint64_t sub_2613926A0()
{
  v45 = v0;
  v1 = *(v0 + 176);
  v2 = sub_26129B858();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 240);
  v7 = *(v0 + 176);
  if (v5 == 1)
  {
    v8 = *(v0 + 240);

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    if (*(v0 + 328))
    {
LABEL_19:
      v41 = *(v0 + 176);
      v40 = *(v0 + 184);

      v42 = *(v0 + 8);

      return v42();
    }
  }

  else
  {
    v9 = *(v0 + 240);

    v10 = sub_2613A122C();
    v11 = sub_2613A1D7C();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 240);
      v12 = *(v0 + 248);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v16 = sub_26124C11C(v12, v13, &v44);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_261243000, v10, v11, "Sending reader state: [%s]", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    else
    {
      v17 = *(v0 + 240);
    }

    (*(v4 + 8))(*(v0 + 176), v3);
    if (*(v0 + 328))
    {
      goto LABEL_19;
    }
  }

  v18 = *(v0 + 168);
  v19 = (v18 + *(v0 + 192));
  v20 = v19[1];
  *v19 = 0;
  v19[1] = 0;

  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions;
  *(v0 + 280) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions;
  swift_beginAccess();
  v22 = *(v18 + v21);
  *(v0 + 288) = v22;
  v23 = *(v22 + 32);
  *(v0 + 329) = v23;
  v24 = -1;
  v25 = -1 << v23;
  if (-(-1 << v23) < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v22 + 56);

  if (!v26)
  {
    v29 = 0;
    while (((63 - v25) >> 6) - 1 != v29)
    {
      v28 = v29 + 1;
      v26 = *(v27 + 8 * v29++ + 64);
      if (v26)
      {
        goto LABEL_15;
      }
    }

    v37 = *(v0 + 280);
    v38 = *(v0 + 168);

    v39 = *(v38 + v37);
    *(v38 + v37) = MEMORY[0x277D84FA0];

    goto LABEL_19;
  }

  v28 = 0;
LABEL_15:
  *(v0 + 296) = v26;
  *(v0 + 304) = v28;
  v30 = *(v0 + 256);
  v31 = *(v0 + 168);
  v32 = (*(v27 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v26)))));
  v33 = *v32;
  v34 = v32[1];
  *(v0 + 312) = v34;
  v35 = *(MEMORY[0x277D437C0] + 4);

  v36 = swift_task_alloc();
  *(v0 + 320) = v36;
  *v36 = v0;
  v36[1] = sub_261392A68;

  return MEMORY[0x2821A5178](v33, v34);
}

uint64_t sub_261392A68()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261392B80);
}

uint64_t sub_261392B80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  v4 = (*(v2 + 296) - 1) & *(v2 + 296);
  if (v4)
  {
    a1 = *(v2 + 288);
LABEL_7:
    *(v2 + 296) = v4;
    *(v2 + 304) = v3;
    v6 = *(v2 + 256);
    v7 = *(v2 + 168);
    v8 = (*(a1 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v9 = *v8;
    v10 = v8[1];
    *(v2 + 312) = v10;
    v11 = *(MEMORY[0x277D437C0] + 4);

    v12 = swift_task_alloc();
    *(v2 + 320) = v12;
    *v12 = v2;
    v12[1] = sub_261392A68;
    a1 = v9;
    a2 = v10;

    return MEMORY[0x2821A5178](a1, a2);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return MEMORY[0x2821A5178](a1, a2);
      }

      a1 = *(v2 + 288);
      if (v5 >= (((1 << *(v2 + 329)) + 63) >> 6))
      {
        break;
      }

      v4 = *(a1 + 8 * v5 + 56);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v13 = *(v2 + 280);
    v14 = *(v2 + 168);

    v15 = *(v14 + v13);
    *(v14 + v13) = MEMORY[0x277D84FA0];

    v17 = *(v2 + 176);
    v16 = *(v2 + 184);

    v18 = *(v2 + 8);

    return v18();
  }
}

uint64_t sub_261392D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139F13C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261392E0C);
}

uint64_t sub_261392E0C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[8] = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v1, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261392F38);
}

uint64_t sub_261392F38()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261392FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = sub_26139FA0C();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613930C4);
}

uint64_t sub_2613930C4()
{
  v1 = *(v0 + 80);
  sub_26139F9FC();
  v2 = *(MEMORY[0x277D437E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_261393160;
  v4 = *(v0 + 80);

  return MEMORY[0x2821A5198]();
}

uint64_t sub_261393160()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 96) = v6;
  *(v1 + 104) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return MEMORY[0x2822009F8](sub_2613932C4);
}

uint64_t sub_2613932C4()
{
  v1 = (v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  v2 = v1[1];
  v0[14] = v2;
  if (v2)
  {
    v3 = v0[10];
    v4 = *v1;

    sub_26139F9FC();
    v5 = sub_2613A090C();
    v7 = v6;
    v0[15] = v6;
    v8 = *(MEMORY[0x277D437D0] + 4);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_261393534;
    v10 = v0[10];

    return MEMORY[0x2821A5188](v5, v7, v4, v2);
  }

  else
  {
    v11 = v0[7];
    v12 = sub_26129B858();
    sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_26124C718(v0[7], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v0[7];
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Parent session not available", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = v0[7];

      (*(v14 + 8))(v19, v13);
    }

    v20 = v0[10];
    v21 = v0[7];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_261393534(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[16];
  v6 = v3[15];
  v7 = v3[14];
  v8 = v3[13];
  v9 = v3[12];
  v10 = v3[10];
  v11 = v3[8];
  v13 = *v2;
  v4[17] = a2;

  v9(v10, v11);

  return MEMORY[0x2822009F8](sub_2613936E0);
}

uint64_t sub_2613936E0()
{
  v9 = v0;
  v1 = v0[17];
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v8[0] = v0[3];
    v8[1] = v1;

    sub_261393790(v8, v3, v2);
    swift_bridgeObjectRelease_n();
  }

  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_261393790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();

  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a2 + v17);
  *(a2 + v17) = 0x8000000000000000;
  sub_26139BEC8(v15, v16, a3, isUniquelyReferenced_nonNull_native);
  *(a2 + v17) = v38;
  swift_endAccess();
  v20 = sub_26129B858();
  sub_26125A870(v20, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    return sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v24 = v36;
  (*(v37 + 16))(v10, a3, v36);

  v25 = sub_2613A122C();
  v26 = sub_2613A1D9C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39[0] = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_26124C11C(v15, v16, v39);
    *(v27 + 12) = 2080;
    sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0]);
    v28 = v26;
    v29 = sub_2613A23EC();
    v31 = v30;
    (*(v37 + 8))(v10, v24);
    v32 = sub_26124C11C(v29, v31, v39);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_261243000, v25, v28, "Child Session: [%s] is ready for: [%s]", v27, 0x16u);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x266701350](v33, -1, -1);
    MEMORY[0x266701350](v27, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v10, v24);
  }

  return (*(v22 + 8))(v14, v21);
}

uint64_t sub_261393B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_26139BEC8(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_26139F13C();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_26128A6E4(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_26139C0A4();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_26139F13C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_26139BBA8(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_26139F13C();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_261393D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return MEMORY[0x2822009F8](sub_261393D58);
}

uint64_t sub_261393D58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 32) = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261393E38);
}

uint64_t sub_261393E38()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_26139F8AC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_261393EB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 152) = a4;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261393F64);
}

uint64_t sub_261393F64()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v0 + 120) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v3 = (v1 + v2);
  v4 = *v3;
  *(v0 + 128) = *v3;
  v5 = v3[1];
  *(v0 + 136) = v5;
  if (v5)
  {
    v6 = *(MEMORY[0x277D437D8] + 4);

    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_2613941C8;
    v8 = *(v0 + 152);
    v9 = *(v0 + 96);

    return MEMORY[0x2821A5190](v4, v5, v9, v8);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = sub_26129B858();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = *(v0 + 112);
      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "ParentID could not be created to send session event", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v18 = *(v0 + 112);

      (*(v13 + 8))(v18, v12);
    }

    v20 = *(v0 + 104);
    v19 = *(v0 + 112);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2613941C8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2613942C4);
}

uint64_t sub_2613942C4()
{
  v36 = v0;
  v1 = *(v0 + 96);
  v2 = sub_2613A087C();
  if (*(v1 + 16))
  {
    v4 = *(v0 + 96);
    v5 = sub_26124E5EC(v2, v3);
    v7 = v6;

    if (v7)
    {
      sub_26124C994(*(*(v0 + 96) + 56) + 32 * v5, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 104);
        v10 = *(v0 + 72);
        v9 = *(v0 + 80);
        v11 = sub_26129B858();
        sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        v14 = (*(v13 + 48))(v8, 1, v12);
        v15 = *(v0 + 104);
        if (v14 == 1)
        {

          sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v25 = *(v0 + 96);

          v26 = sub_2613A122C();
          v27 = sub_2613A1D7C();

          if (os_log_type_enabled(v26, v27))
          {
            v34 = *(v0 + 96);
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v35 = v29;
            *v28 = 136315394;
            v30 = sub_26124C11C(v10, v9, &v35);

            *(v28 + 4) = v30;
            *(v28 + 12) = 2080;
            v31 = sub_2613A180C();
            v33 = sub_26124C11C(v31, v32, &v35);

            *(v28 + 14) = v33;
            _os_log_impl(&dword_261243000, v26, v27, "Sending session event: [%s] %s", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v29, -1, -1);
            MEMORY[0x266701350](v28, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(*(v0 + 104), v12);
        }
      }
    }
  }

  else
  {
  }

  v16 = *(v0 + 136);
  if (*(v0 + 152) == 1)
  {
    v17 = *(v0 + 128);
    v18 = (*(v0 + 88) + *(v0 + 120));
    v19 = v18[1];
    *v18 = 0;
    v18[1] = 0;

    swift_beginAccess();
    sub_26139C330(v17, v16);
    swift_endAccess();
  }

  else
  {
    v20 = *(v0 + 136);
  }

  v22 = *(v0 + 104);
  v21 = *(v0 + 112);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26139465C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 89) = a8;
  *(v8 + 88) = a7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_26139F13C();
  *(v8 + 40) = v9;
  v10 = *(v9 - 8);
  *(v8 + 48) = v10;
  *(v8 + 56) = *(v10 + 64);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261394730);
}

uint64_t sub_261394730()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v13 = *(v0 + 88);
  v14 = *(v0 + 89);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  *(v0 + 72) = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = v8 + v2;
  v10 = swift_allocObject();
  *(v0 + 80) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v13;
  v11[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261394894);
}

uint64_t sub_261394894()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261394928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 225) = a6;
  *(v6 + 224) = a5;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  *(v6 + 112) = a2;
  v7 = sub_26139F13C();
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261394A44);
}

uint64_t sub_261394A44()
{
  v74 = v0;
  v1 = *(v0 + 112);
  v2 = sub_2613A087C();
  if (*(v1 + 16))
  {
    v4 = *(v0 + 112);
    v5 = sub_26124E5EC(v2, v3);
    v7 = v6;

    if (v7)
    {
      sub_26124C994(*(*(v0 + 112) + 56) + 32 * v5, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 176);
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v11 = sub_26129B858();
        sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        v14 = (*(v13 + 48))(v8, 1, v12);
        v15 = *(v0 + 176);
        if (v14 == 1)
        {

          sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v61 = *(v0 + 112);

          v62 = sub_2613A122C();
          v63 = sub_2613A1D7C();

          if (os_log_type_enabled(v62, v63))
          {
            v72 = *(v0 + 112);
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v73 = v65;
            *v64 = 136315394;
            v66 = sub_26124C11C(v10, v9, &v73);

            *(v64 + 4) = v66;
            *(v64 + 12) = 2080;
            v67 = sub_2613A180C();
            v69 = sub_26124C11C(v67, v68, &v73);

            *(v64 + 14) = v69;
            _os_log_impl(&dword_261243000, v62, v63, "Sending event: [%s] %s", v64, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v65, -1, -1);
            MEMORY[0x266701350](v64, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(*(v0 + 176), v12);
        }
      }
    }
  }

  else
  {
  }

  v16 = *(v0 + 120);
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (*(v18 + 16) && (v19 = sub_26128A6E4(*(v0 + 128)), (v20 & 1) != 0))
  {
    v21 = *(v0 + 224);
    v22 = (*(v18 + 56) + 16 * v19);
    v23 = *v22;
    *(v0 + 184) = *v22;
    v24 = v22[1];
    *(v0 + 192) = v24;
    swift_endAccess();
    if (v21)
    {
      v25 = *(v0 + 160);
      (*(*(v0 + 144) + 16))(v25, *(v0 + 128), *(v0 + 136));
      swift_beginAccess();

      sub_261393B68(0, 0, v25);
      swift_endAccess();
    }

    else
    {
    }

    if (*(v0 + 225) == 1)
    {
      v48 = *(v0 + 120);
      v47 = *(v0 + 128);
      v49 = sub_26139F0DC();
      v51 = v50;
      *(v0 + 200) = v50;
      v52 = *(MEMORY[0x277D437C8] + 4);
      v53 = swift_task_alloc();
      *(v0 + 208) = v53;
      *v53 = v0;
      v53[1] = sub_2613951B0;

      return MEMORY[0x2821A5180](v23, v24, v49, v51);
    }

    else
    {
      v54 = *(v0 + 120);
      v55 = *(MEMORY[0x277D437D8] + 4);
      v56 = swift_task_alloc();
      *(v0 + 216) = v56;
      *v56 = v0;
      v56[1] = sub_261395368;
      v58 = *(v0 + 184);
      v57 = *(v0 + 192);
      v59 = *(v0 + 224);
      v60 = *(v0 + 112);

      return MEMORY[0x2821A5190](v58, v57, v60, v59);
    }
  }

  else
  {
    v26 = *(v0 + 168);
    swift_endAccess();
    v27 = sub_26129B858();
    sub_26125A870(v27, v26, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_26124C718(*(v0 + 168), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();
      v32 = os_log_type_enabled(v30, v31);
      v34 = *(v0 + 144);
      v33 = *(v0 + 152);
      v35 = *(v0 + 136);
      if (v32)
      {
        v71 = v31;
        v36 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v73 = v70;
        *v36 = 136315138;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0]);
        v37 = sub_2613A23EC();
        v39 = v38;
        (*(v34 + 8))(v33, v35);
        v40 = sub_26124C11C(v37, v39, &v73);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_261243000, v30, v71, "No RTC session for: [%s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        MEMORY[0x266701350](v70, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      else
      {

        (*(v34 + 8))(v33, v35);
      }

      (*(v29 + 8))(*(v0 + 168), v28);
    }

    v42 = *(v0 + 168);
    v41 = *(v0 + 176);
    v44 = *(v0 + 152);
    v43 = *(v0 + 160);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_2613951B0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *v0;

  v5 = *(v1 + 120);
  v6 = *(MEMORY[0x277D437D8] + 4);
  v7 = swift_task_alloc();
  *(v1 + 216) = v7;
  *v7 = v4;
  v7[1] = sub_261395368;
  v8 = *(v1 + 192);
  v9 = *(v1 + 184);
  v10 = *(v1 + 224);
  v11 = *(v1 + 112);

  return MEMORY[0x2821A5190](v9, v8, v11, v10);
}

uint64_t sub_261395368()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 192);
  v10 = *v0;

  v4 = v1[22];
  v5 = v1[21];
  v6 = v1[20];
  v7 = v1[19];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_2613954F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261395518);
}

uint64_t sub_261395518()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_26139F0DC();
  v5 = v4;
  v0[6] = v4;
  v6 = *(MEMORY[0x277D437C8] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_2613955EC;
  v9 = v0[3];
  v8 = v0[4];

  return MEMORY[0x2821A5180](v9, v8, v3, v5);
}

uint64_t sub_2613955EC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2613956FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v57 - v10;
  v62 = sub_26139F13C();
  v59 = *(v62 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  MEMORY[0x28223BE20](v12);
  v60 = &v57 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613ADB10;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v17;
  v18 = sub_2613A0BBC();
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 80) = sub_2613A07CC();
  *(inited + 88) = v21;
  v23 = a1[13];
  v22 = a1[14];
  *(inited + 120) = v19;
  *(inited + 96) = v23;
  *(inited + 104) = v22;

  *(inited + 128) = sub_2613A07BC();
  *(inited + 136) = v24;
  v26 = *(v4 + 32);
  v25 = *(v4 + 40);
  v63 = v4;
  *(inited + 168) = v19;
  *(inited + 144) = v26;
  *(inited + 152) = v25;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v27;
  v28 = a1[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v28;
  *(inited + 224) = sub_2613A083C();
  *(inited + 232) = v29;
  sub_26139FCBC();
  v30 = sub_26139FB5C();
  if (v30 == sub_26139FB5C())
  {
    sub_26139FC8C();
    v31 = sub_26139FF4C();
  }

  else
  {
    v32 = 0xEC0000006E6F6974;
    v31 = 0x6163696669726556;
  }

  *(inited + 264) = v19;
  *(inited + 240) = v31;
  *(inited + 248) = v32;
  *(inited + 272) = sub_2613A05CC();
  *(inited + 280) = v33;
  sub_26139FD1C();
  v34 = sub_2613A033C();
  *(inited + 312) = v19;
  *(inited + 288) = v34;
  *(inited + 296) = v35;
  *(inited + 320) = sub_2613A071C();
  *(inited + 328) = v36;
  *(inited + 360) = v19;
  *(inited + 336) = a3;
  *(inited + 344) = a4;

  *(inited + 368) = sub_2613A06AC();
  *(inited + 376) = v37;
  v38 = sub_26139FCDC();
  v40 = v39;
  v41 = sub_26139CC00(v38, v39);
  v43 = v42;
  sub_26124A168(v38, v40);
  *(inited + 408) = v19;
  *(inited + 384) = v41;
  *(inited + 392) = v43;
  *(inited + 416) = sub_2613A06BC();
  *(inited + 424) = v44;
  if (sub_26139FCAC())
  {
    v45 = sub_2613A04EC();
  }

  else
  {
    v45 = sub_2613A04DC();
  }

  *(inited + 456) = v19;
  *(inited + 432) = v45;
  *(inited + 440) = v46;
  v57 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v47 = v60;
  sub_26139FCEC();
  v48 = sub_2613A1C1C();
  v49 = v61;
  (*(*(v48 - 8) + 56))(v61, 1, 1, v48);
  v50 = v59;
  v51 = v62;
  (*(v59 + 16))(v14, v47, v62);
  v52 = (*(v50 + 80) + 48) & ~*(v50 + 80);
  v53 = v52 + v58;
  v54 = swift_allocObject();
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  v55 = v57;
  *(v54 + 4) = v63;
  *(v54 + 5) = v55;
  (*(v50 + 32))(&v54[v52], v14, v51);
  *&v54[v53] = 0;

  sub_261266800(0, 0, v49, &unk_2613ADB80, v54);

  return (*(v50 + 8))(v47, v51);
}

uint64_t sub_261395B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v61 = a3;
  v62 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v60 - v12;
  v67 = sub_26139F13C();
  v64 = *(v67 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v67);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v15;
  MEMORY[0x28223BE20](v14);
  v65 = &v60 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4350;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v19;
  v20 = sub_2613A0ACC();
  v21 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 80) = sub_2613A07CC();
  *(inited + 88) = v23;
  v25 = a1[13];
  v24 = a1[14];
  *(inited + 120) = v21;
  *(inited + 96) = v25;
  *(inited + 104) = v24;

  *(inited + 128) = sub_2613A07BC();
  *(inited + 136) = v26;
  v28 = *(v6 + 32);
  v27 = *(v6 + 40);
  v68 = v6;
  *(inited + 168) = v21;
  *(inited + 144) = v28;
  *(inited + 152) = v27;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v29;
  v30 = a1[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v30;
  *(inited + 224) = sub_2613A083C();
  *(inited + 232) = v31;
  sub_26139FCBC();
  v32 = sub_26139FB5C();
  if (v32 == sub_26139FB5C())
  {
    sub_26139FC8C();
    v33 = sub_26139FF4C();
  }

  else
  {
    v34 = 0xEC0000006E6F6974;
    v33 = 0x6163696669726556;
  }

  *(inited + 264) = v21;
  *(inited + 240) = v33;
  *(inited + 248) = v34;
  *(inited + 272) = sub_2613A05CC();
  *(inited + 280) = v35;
  sub_26139FD1C();
  v36 = sub_2613A033C();
  *(inited + 312) = v21;
  *(inited + 288) = v36;
  *(inited + 296) = v37;
  *(inited + 320) = sub_2613A086C();
  *(inited + 328) = v38;
  *(inited + 360) = v21;
  *(inited + 336) = v61;
  *(inited + 344) = a4;

  *(inited + 368) = sub_2613A071C();
  *(inited + 376) = v39;
  *(inited + 408) = v21;
  *(inited + 384) = v62;
  *(inited + 392) = a6;

  *(inited + 416) = sub_2613A06AC();
  *(inited + 424) = v40;
  v41 = sub_26139FCDC();
  v43 = v42;
  v44 = sub_26139CC00(v41, v42);
  v46 = v45;
  sub_26124A168(v41, v43);
  *(inited + 456) = v21;
  *(inited + 432) = v44;
  *(inited + 440) = v46;
  *(inited + 464) = sub_2613A06BC();
  *(inited + 472) = v47;
  if (sub_26139FCAC())
  {
    v48 = sub_2613A04EC();
  }

  else
  {
    v48 = sub_2613A04DC();
  }

  *(inited + 504) = v21;
  *(inited + 480) = v48;
  *(inited + 488) = v49;
  v62 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v50 = v65;
  sub_26139FCEC();
  v51 = sub_2613A1C1C();
  v52 = v66;
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  v53 = v64;
  v54 = v67;
  (*(v64 + 16))(v16, v50, v67);
  v55 = (*(v53 + 80) + 48) & ~*(v53 + 80);
  v56 = v55 + v63;
  v57 = swift_allocObject();
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  v58 = v62;
  *(v57 + 4) = v68;
  *(v57 + 5) = v58;
  (*(v53 + 32))(&v57[v55], v16, v54);
  *&v57[v56] = 0;

  sub_261266800(0, 0, v52, &unk_2613ADD30, v57);

  return (*(v53 + 8))(v50, v54);
}

uint64_t sub_261395FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, char a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v26 = a1;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v16;
  v17 = a2();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v19 = sub_261268144(inited);
  swift_setDeallocating();
  sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
  v20 = sub_2613A1C1C();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v8);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v5;
  *(v22 + 5) = v19;
  (*(v9 + 32))(&v22[v21], &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v23 = &v22[v21 + v10];
  *v23 = a4;
  v23[1] = a4;

  sub_261266800(0, 0, v14, v28, v22);
}

uint64_t sub_261396250(uint64_t a1, uint64_t a2)
{
  v46[1] = a2;
  v48 = sub_26139F13C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v46 - v7;
  v9 = sub_2612CCA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613ADB20;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v11;
  v12 = sub_2613A0A2C();
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 80) = sub_2613A05EC();
  *(inited + 88) = v15;
  v16 = type metadata accessor for TransactionData(0);
  v17 = (a1 + v16[5]);
  v19 = *v17;
  v18 = v17[1];
  *(inited + 120) = v13;
  *(inited + 96) = v19;
  *(inited + 104) = v18;

  *(inited + 128) = sub_2613A07AC();
  *(inited + 136) = v20;
  v21 = sub_2612CB3E8(*(a1 + v16[6]));
  *(inited + 168) = v13;
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *(inited + 176) = sub_2613A05CC();
  *(inited + 184) = v23;
  v24 = sub_2612CBC48(v9);
  *(inited + 216) = v13;
  *(inited + 192) = v24;
  *(inited + 200) = v25;
  *(inited + 224) = sub_2613A06BC();
  *(inited + 232) = v26;
  if (sub_26139FCAC())
  {
    v27 = sub_2613A04EC();
  }

  else
  {
    v27 = sub_2613A04DC();
  }

  *(inited + 264) = v13;
  *(inited + 240) = v27;
  *(inited + 248) = v28;
  *(inited + 272) = sub_2613A072C();
  *(inited + 280) = v29;
  v30 = (a1 + v16[30]);
  if ((v30[1] & 1) == 0)
  {
    v31 = *v30;
  }

  v32 = sub_26139FF6C();
  *(inited + 312) = v13;
  *(inited + 288) = v32;
  *(inited + 296) = v33;
  *(inited + 320) = sub_2613A075C();
  *(inited + 328) = v34;
  v35 = (a1 + v16[31]);
  if ((v35[1] & 1) == 0)
  {
    v36 = *v35;
  }

  v37 = sub_26139FF8C();
  *(inited + 360) = v13;
  *(inited + 336) = v37;
  *(inited + 344) = v38;
  v39 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v40 = sub_2613A1C1C();
  (*(*(v40 - 8) + 56))(v8, 1, 1, v40);
  v42 = v47;
  v41 = v48;
  (*(v3 + 16))(v47, a1, v48);
  v43 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v49;
  *(v44 + 5) = v39;
  (*(v3 + 32))(&v44[v43], v42, v41);
  *&v44[v43 + v4] = 0;

  sub_261266800(0, 0, v8, &unk_2613ADB98, v44);
}

uint64_t sub_2613965D4(uint64_t *a1, char a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - v14;
  v16 = sub_26139F13C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  if (a2)
  {
    v63 = v20;
    v64 = v4;
    v23 = *a1;
    sub_26139FCEC();
    v24 = a1[3];
    v62 = a1[2];
    ErrorEventData = type metadata accessor for ReadErrorEventData();
    sub_26125A870(a1 + *(ErrorEventData + 36), v15, &qword_27FE9F340, &unk_2613A4B40);
    v26 = type metadata accessor for TransactionData(0);
    if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F340, &unk_2613A4B40);
      v61 = 0;
      v27 = 0;
    }

    else
    {
      v33 = &v15[*(v26 + 20)];
      v27 = *(v33 + 1);
      v61 = *v33;

      sub_26125D0E4(v15);
    }

    v34 = sub_26139FCAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A3CA0;
    *(inited + 32) = sub_2613A087C();
    *(inited + 40) = v36;
    v37 = sub_2613A0A0C();
    v38 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v37;
    *(inited + 56) = v39;
    *(inited + 80) = sub_2613A06BC();
    *(inited + 88) = v40;
    if (v34)
    {
      v41 = sub_2613A04EC();
    }

    else
    {
      v41 = sub_2613A04DC();
    }

    *(inited + 120) = v38;
    *(inited + 96) = v41;
    *(inited + 104) = v42;
    *(inited + 128) = sub_2613A086C();
    *(inited + 136) = v43;
    *(inited + 168) = v38;
    *(inited + 144) = v62;
    *(inited + 152) = v24;

    v44 = sub_261268144(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
    swift_arrayDestroy();
    if (v27)
    {
      v45 = sub_2613A05EC();
      v47 = v46;
      v70 = v38;
      *&v69 = v61;
      *(&v69 + 1) = v27;
      sub_26125A7B0(&v69, &v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v44;
      v49 = v68;
      v50 = __swift_mutable_project_boxed_opaque_existential_0(&v67, v68);
      v51 = *(*(v49 - 8) + 64);
      MEMORY[0x28223BE20](v50);
      v53 = (&v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v54 + 16))(v53);
      sub_261267EDC(*v53, v53[1], v45, v47, isUniquelyReferenced_nonNull_native, &v66);

      __swift_destroy_boxed_opaque_existential_0Tm(&v67);
      v44 = v66;
    }

    v55 = sub_2613A1C1C();
    v56 = v65;
    (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
    v57 = v63;
    (*(v17 + 16))(v63, v22, v16);
    v58 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v59 = swift_allocObject();
    *(v59 + 2) = 0;
    *(v59 + 3) = 0;
    *(v59 + 4) = v64;
    *(v59 + 5) = v44;
    (*(v17 + 32))(&v59[v58], v57, v16);
    *&v59[v58 + v18] = 0;

    sub_261266800(0, 0, v56, &unk_2613ADBA8, v59);

    return (*(v17 + 8))(v22, v16);
  }

  else
  {
    v29 = *a1;
    v28 = a1[1];
    v30 = a1[2];
    v31 = a1[3];

    return sub_261395B24(v28, v29, v30, v31, a3, a4);
  }
}

uint64_t sub_261396BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v13;
  v14 = sub_2613A0B7C();
  v15 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 80) = sub_2613A086C();
  *(inited + 88) = v17;
  *(inited + 120) = v15;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  v18 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v19 = sub_2613A1C1C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23[0], v5);
  v20 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v23[1];
  *(v21 + 5) = v18;
  (*(v6 + 32))(&v21[v20], v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v21[v20 + v7] = 1;

  sub_261266800(0, 0, v11, &unk_2613ADBB8, v21);
}

uint64_t sub_261396E70(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  v101 = a8;
  v103 = a6;
  v104 = a4;
  v105 = a5;
  v108 = a1;
  v16 = sub_26139F13C();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = *(v111 + 64);
  MEMORY[0x28223BE20](v16);
  v107 = v18;
  v110 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v109 = &v101 - v21;
  if (a2)
  {
    v22 = sub_2613A039C();
  }

  else
  {
    v22 = sub_2613A03AC();
  }

  v24 = v22;
  v25 = v23;
  if (a3)
  {
    v26 = sub_2613A037C();
  }

  else
  {
    v26 = sub_2613A038C();
  }

  v28 = v26;
  v29 = v27;
  v102 = a10;
  sub_2613A121C();
  v30 = *(v12 + 32);
  v31 = *(v12 + 40);
  v32 = sub_2613A115C();
  v113 = v12;
  if (v32)
  {
    v33 = sub_2613A034C();
  }

  else
  {
    v33 = sub_2613A035C();
  }

  v34 = v33;
  v106 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A066C();
  v36 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v37;
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  *(inited + 80) = sub_2613A062C();
  *(inited + 88) = v38;
  *(inited + 120) = v36;
  *(inited + 96) = v28;
  *(inited + 104) = v29;
  *(inited + 128) = sub_2613A073C();
  *(inited + 136) = v39;
  v40 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v34;
  *(inited + 176) = sub_2613A071C();
  *(inited + 184) = v41;
  *(inited + 216) = v36;
  *(inited + 192) = v103;
  *(inited + 200) = a7;

  *(inited + 224) = sub_2613A079C();
  *(inited + 232) = v42;
  v43 = sub_26139FABC();
  *(inited + 264) = v36;
  *(inited + 240) = v43;
  *(inited + 248) = v44;
  *(inited + 272) = sub_2613A074C();
  *(inited + 280) = v45;
  *(inited + 312) = v40;
  *(inited + 288) = v105;
  v46 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (v102)
  {
    v47 = v101;
    if (v101 != 2)
    {
      v48 = sub_2613A088C();
      v50 = v49;
      if (v47)
      {
        v51 = sub_2613A0BDC();
      }

      else
      {
        v51 = sub_2613A0BEC();
      }

      v118 = v40;
      *&v117 = v51;
      sub_26125A7B0(&v117, &v115);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v46;
      v78 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
      sub_26139C630(*v78, v48, v50, isUniquelyReferenced_nonNull_native, &v114);

      __swift_destroy_boxed_opaque_existential_0Tm(&v115);
      v46 = v114;
    }

    v79 = sub_2613A087C();
    v81 = v80;
    v82 = sub_2613A0B0C();
    v118 = v36;
    *&v117 = v82;
    *(&v117 + 1) = v83;
    sub_26125A7B0(&v117, &v115);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v46;
    v85 = v116;
    v86 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    v87 = *(*(v85 - 8) + 64);
    MEMORY[0x28223BE20](v86);
    v89 = (&v101 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    sub_261267EDC(*v89, v89[1], v79, v81, v84, &v114);
  }

  else
  {
    v52 = sub_2613A087C();
    v54 = v53;
    v55 = sub_2613A0ABC();
    v118 = v36;
    *&v117 = v55;
    *(&v117 + 1) = v56;
    sub_26125A7B0(&v117, &v115);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v46;
    v58 = v116;
    v59 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    v60 = *(*(v58 - 8) + 64);
    MEMORY[0x28223BE20](v59);
    v62 = (&v101 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    sub_261267EDC(*v62, v62[1], v52, v54, v57, &v114);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v64 = v114;
    v65 = sub_2613A086C();
    v67 = v66;
    v68 = sub_26139FACC();
    v118 = v36;
    *&v117 = v68;
    *(&v117 + 1) = v69;
    sub_26125A7B0(&v117, &v115);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v64;
    v71 = v116;
    v72 = __swift_mutable_project_boxed_opaque_existential_0(&v115, v116);
    v73 = *(*(v71 - 8) + 64);
    MEMORY[0x28223BE20](v72);
    v75 = (&v101 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75);
    sub_261267EDC(*v75, v75[1], v65, v67, v70, &v114);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v115);
  v91 = v114;
  v92 = sub_2613A1C1C();
  v93 = v109;
  (*(*(v92 - 8) + 56))(v109, 1, 1, v92);
  v95 = v110;
  v94 = v111;
  v96 = v112;
  (*(v111 + 16))(v110, v108, v112);
  v97 = (*(v94 + 80) + 48) & ~*(v94 + 80);
  v98 = v97 + v107;
  v99 = swift_allocObject();
  *(v99 + 2) = 0;
  *(v99 + 3) = 0;
  *(v99 + 4) = v113;
  *(v99 + 5) = v91;
  (*(v94 + 32))(&v99[v97], v95, v96);
  *&v99[v98] = v106 & 1;

  sub_261266800(0, 0, v93, &unk_2613ADBC0, v99);
}

uint64_t sub_261397594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4300;

    v16 = sub_2613A087C();
    v30 = v4;
    *(inited + 32) = v16;
    *(inited + 40) = v17;
    v18 = sub_2613A0B5C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    *(inited + 80) = sub_2613A086C();
    *(inited + 88) = v20;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = a2;
    *(inited + 104) = a3;
    v21 = sub_261268144(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
    v4 = v30;
    swift_arrayDestroy();
  }

  else
  {
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_2613A4310;
    *(v22 + 32) = sub_2613A087C();
    *(v22 + 40) = v23;
    v24 = sub_2613A0B6C();
    *(v22 + 72) = MEMORY[0x277D837D0];
    *(v22 + 48) = v24;
    *(v22 + 56) = v25;
    v21 = sub_261268144(v22);
    swift_setDeallocating();
    sub_26124C718(v22 + 32, &qword_27FE9F410, &qword_2613A54F0);
  }

  v26 = sub_2613A1C1C();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v4;
  *(v28 + 5) = v21;
  (*(v9 + 32))(&v28[v27], &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v28[v27 + v10] = 0;

  sub_261266800(0, 0, v14, &unk_2613ADBC8, v28);
}

uint64_t sub_2613978BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v29 = sub_26139F13C();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  if (a2)
  {
    v12 = sub_2613A0AAC();
  }

  else
  {
    v12 = sub_2613A0B4C();
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4300;
  *(inited + 32) = sub_2613A087C();
  v17 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v18;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 80) = sub_2613A060C();
  *(inited + 88) = v19;
  *(inited + 120) = v17;
  *(inited + 96) = v27;
  *(inited + 104) = a4;

  v20 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v21 = sub_2613A1C1C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = v29;
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
  v23 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v30;
  *(v24 + 5) = v20;
  (*(v6 + 32))(&v24[v23], &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  *&v24[v23 + v7] = 0;

  sub_261266800(0, 0, v11, &unk_2613ADBD0, v24);
}

uint64_t sub_261397B74(uint64_t a1, char a2, int a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v14;
  v15 = sub_2613A09FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 80) = sub_2613A081C();
  *(inited + 88) = v17;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = a2;
  *(inited + 128) = sub_2613A05DC();
  *(inited + 136) = v18;
  *(inited + 168) = MEMORY[0x277D84CC0];
  *(inited + 144) = a3;
  v19 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v20 = sub_2613A1C1C();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v21 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v24;
  *(v22 + 5) = v19;
  (*(v7 + 32))(&v22[v21], &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v22[v21 + v8] = 0;

  sub_261266800(0, 0, v12, &unk_2613ADBD8, v22);
}

uint64_t sub_261397E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_2613A1C1C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_261266800(0, 0, v12, a3, v15);
}

uint64_t sub_26139802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26139F13C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613980F4);
}

uint64_t sub_2613980F4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[8] = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v1, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261398220);
}

uint64_t sub_261398220()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2613982B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26139F13C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613983C4);
}

uint64_t sub_2613983C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_26139F0DC();
  v5 = v4;
  v0[13] = v4;
  v6 = *(MEMORY[0x277D437B8] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26139848C;

  return MEMORY[0x2821A5170](v3, v5);
}

uint64_t sub_26139848C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_2613985AC);
}

uint64_t sub_2613985AC()
{
  v45 = v0;
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[15];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[5];
    v6 = *(v0[8] + 16);
    v6(v4, v0[6], v0[7]);
    swift_beginAccess();

    sub_261393B68(v2, v1, v4);
    swift_endAccess();
    v7 = sub_26129B858();
    sub_26125A870(v7, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v3, 1, v8);
    v11 = v0[11];
    if (v10 == 1)
    {

      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v6(v0[9], v0[6], v0[7]);

      v16 = sub_2613A122C();
      v17 = sub_2613A1D9C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[15];
        v42 = v17;
        v20 = v0[8];
        v19 = v0[9];
        v21 = v0[7];
        v22 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v22 = 136315394;
        v23 = sub_26124C11C(v18, v1, &v44);

        *(v22 + 4) = v23;
        *(v22 + 12) = 2080;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0]);
        v24 = sub_2613A23EC();
        v26 = v25;
        (*(v20 + 8))(v19, v21);
        v27 = sub_26124C11C(v24, v26, &v44);

        *(v22 + 14) = v27;
        _os_log_impl(&dword_261243000, v16, v42, "Child session: [%s] reloaded successfully for: [%s]", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v43, -1, -1);
        MEMORY[0x266701350](v22, -1, -1);
      }

      else
      {
        v34 = v0[8];
        v33 = v0[9];
        v35 = v0[7];

        (*(v34 + 8))(v33, v35);
      }

      (*(v9 + 8))(v0[11], v8);
    }
  }

  else
  {
    v12 = v0[12];
    v13 = sub_26129B858();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = v0[12];
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "Could not reload child session", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      v32 = v0[12];

      (*(v15 + 8))(v32, v14);
    }
  }

  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[9];
  v38 = v0[10];

  v40 = v0[1];

  return v40();
}

uint64_t sub_261398A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_26139FA0C();
  v54 = *(v8 - 1);
  v55 = v8;
  v9 = *(v54 + 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v51 - v12;
  v13 = sub_26139F13C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (*(v22 + 16) && (v23 = sub_26128A6E4(a1), (v24 & 1) != 0))
  {
    v25 = (*(v22 + 56) + 16 * v23);
    v26 = v25[1];
    v51 = *v25;
    swift_endAccess();
    (*(v14 + 16))(v20, a1, v13);
    swift_beginAccess();

    sub_261393B68(0, 0, v20);
    swift_endAccess();
    v27 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
    v28 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager;
    v29 = sub_2613A1C1C();
    v30 = v52;
    (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
    v32 = v53;
    v31 = v54;
    v33 = v55;
    (*(v54 + 2))(v53, v2 + v28, v55);
    v34 = (*(v31 + 80) + 40) & ~*(v31 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v27;
    v31[4](&v35[v34], v32, v33);
    v36 = &v35[(v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v36 = v51;
    *(v36 + 1) = v26;

    sub_261266800(0, 0, v30, &unk_2613ADBF0, v35);
  }

  else
  {
    swift_endAccess();
    v38 = sub_26129B858();
    sub_26125A870(v38, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v39 = sub_2613A124C();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v7, 1, v39) == 1)
    {
      return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      (*(v14 + 16))(v18, a1, v13);
      v41 = sub_2613A122C();
      v42 = sub_2613A1D8C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v54 = v43;
        v55 = swift_slowAlloc();
        v56 = v55;
        *v43 = 136315138;
        sub_26139E7E4(&qword_27FE9F570, MEMORY[0x277CC95F0]);
        v44 = sub_2613A23EC();
        v46 = v45;
        (*(v14 + 8))(v18, v13);
        v47 = sub_26124C11C(v44, v46, &v56);

        v48 = v54;
        *(v54 + 1) = v47;
        v49 = v48;
        _os_log_impl(&dword_261243000, v41, v42, "No child session to be released for: [%s]", v48, 0xCu);
        v50 = v55;
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x266701350](v50, -1, -1);
        MEMORY[0x266701350](v49, -1, -1);
      }

      else
      {

        (*(v14 + 8))(v18, v13);
      }

      return (*(v40 + 8))(v7, v39);
    }
  }
}

uint64_t sub_261399030(uint64_t a1, uint64_t a2, char a3)
{
  v34 = a2;
  v35 = a1;
  v4 = ~a3;
  v36 = sub_26139F13C();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v12;
  v13 = sub_2613A0AEC();
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  v16 = sub_261268144(inited);
  swift_setDeallocating();
  sub_26124C718(inited + 32, &qword_27FE9F410, &qword_2613A54F0);
  if (v4)
  {
    v17 = sub_2613A086C();
    v19 = v18;
    v20 = sub_261272B0C(v34, a3);
    v42 = v14;
    *&v41 = v20;
    *(&v41 + 1) = v21;
    sub_26125A7B0(&v41, &v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v16;
    v23 = v40;
    v24 = __swift_mutable_project_boxed_opaque_existential_0(&v39, v40);
    v25 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = (&v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_261267EDC(*v27, v27[1], v17, v19, isUniquelyReferenced_nonNull_native, &v38);

    __swift_destroy_boxed_opaque_existential_0Tm(&v39);
    v16 = v38;
  }

  v29 = sub_2613A1C1C();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  v30 = v36;
  (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v36);
  v31 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v37;
  *(v32 + 5) = v16;
  (*(v5 + 32))(&v32[v31], &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  *&v32[v31 + v6] = 1;

  sub_261266800(0, 0, v10, &unk_2613ADBF8, v32);
}

uint64_t sub_2613993D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive))
  {
    v11 = sub_26129B858();
    sub_26125A870(v11, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      return sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D9C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "Analytics SAF session is already active", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      return (*(v13 + 8))(v6, v12);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 1;
    v15 = sub_2613A1C1C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v16[5] = a1;

    sub_261266800(0, 0, v10, &unk_2613ADC08, v16);
  }
}

uint64_t sub_261399678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_261399698);
}

uint64_t sub_261399698()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261399770);
}

uint64_t sub_261399770()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_26139F8AC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2613997F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139988C);
}

uint64_t sub_26139988C()
{
  v1 = v0[39];
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v0[42] = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v3 = (v1 + v2);
  v4 = v3[1];
  v0[43] = v4;
  if (v4)
  {
    v5 = *v3;
    swift_beginAccess();

    sub_26139C330(v5, v4);
    swift_endAccess();

    v6 = *(MEMORY[0x277D437C0] + 4);
    v7 = swift_task_alloc();
    v0[44] = v7;
    *v7 = v0;
    v7[1] = sub_261399A3C;

    return MEMORY[0x2821A5178](v5, v4);
  }

  else
  {
    v8 = sub_2613A090C();
    v10 = v9;
    v0[45] = v9;
    v11 = *(MEMORY[0x277D437B0] + 4);
    v12 = swift_task_alloc();
    v0[46] = v12;
    *v12 = v0;
    v12[1] = sub_261399C1C;

    return MEMORY[0x2821A5168](v8, v10, 0, 0);
  }
}

uint64_t sub_261399A3C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261399B54);
}

uint64_t sub_261399B54()
{
  v1 = v0[39];
  v2 = sub_2613A090C();
  v4 = v3;
  v0[45] = v3;
  v5 = *(MEMORY[0x277D437B0] + 4);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_261399C1C;

  return MEMORY[0x2821A5168](v2, v4, 0, 0);
}

uint64_t sub_261399C1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[36] = v2;
  v4[37] = a1;
  v4[38] = a2;
  v5 = v3[46];
  v6 = v3[45];
  v8 = *v2;
  v4[47] = a2;

  return MEMORY[0x2822009F8](sub_261399D40);
}

uint64_t sub_261399D40()
{
  v29 = v0;
  v1 = v0[47];
  if (v1)
  {
    v2 = v0[37];
    v3 = v0[39];
    swift_beginAccess();

    sub_2612BB7A4(&v28, v2, v1);
    swift_endAccess();

    v4 = v0[47];
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  v5 = v0[41];
  v6 = v0[39];
  v7 = v0[40];
  v8 = (v6 + v0[42]);
  v9 = v8[1];
  *v8 = v2;
  v8[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4D40;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v11;
  v12 = sub_2613A0B3C();
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v15;
  v17 = *(v6 + 32);
  v16 = *(v6 + 40);
  *(inited + 120) = v13;
  *(inited + 96) = v17;
  *(inited + 104) = v16;

  *(inited + 128) = sub_2613A07CC();
  *(inited + 136) = v18;
  v20 = v7[13];
  v19 = v7[14];
  *(inited + 168) = v13;
  *(inited + 144) = v20;
  *(inited + 152) = v19;

  *(inited + 176) = sub_2613A06EC();
  *(inited + 184) = v21;
  v22 = v7[10];
  *(inited + 216) = MEMORY[0x277D83B88];
  *(inited + 192) = v22;
  v23 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v24 = sub_2613A1C1C();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v6;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;

  sub_261266800(0, 0, v5, &unk_2613ADD08, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_261399FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_2613A1C1C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a1;

  sub_261266800(0, 0, v10, &unk_2613ADC18, v12);
}

uint64_t sub_26139A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[65] = a7;
  v7[63] = a5;
  v7[64] = a6;
  v7[62] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v7[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139A17C);
}

uint64_t sub_26139A17C()
{
  v69 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v6;
  v7 = sub_2613A0B8C();
  v8 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v10;
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  *(inited + 120) = v8;
  *(inited + 96) = v12;
  *(inited + 104) = v11;

  *(inited + 128) = sub_2613A086C();
  *(inited + 136) = v13;
  *(inited + 168) = v8;
  *(inited + 144) = v2;
  *(inited + 152) = v3;

  v14 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (v1)
  {
    v15 = *(v0 + 520);

    v16 = sub_2613A07CC();
    v18 = v17;
    v19 = v15[13];
    v20 = v15[14];
    *(v0 + 344) = v8;
    *(v0 + 320) = v19;
    *(v0 + 328) = v20;
    sub_26125A7B0((v0 + 320), (v0 + 352));

    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v68 = v14;
    v21 = *(v0 + 376);
    v22 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 352, v21);
    v23 = *(v21 - 8);
    v24 = *(v23 + 64) + 15;
    v25 = swift_task_alloc();
    (*(v23 + 16))(v25, v22, v21);
    sub_261267EDC(*v25, v25[1], v16, v18, v20, &v68);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 352));

    v26 = v68;
    v27 = sub_2613A06EC();
    v29 = v28;
    v30 = v15[10];
    *(v0 + 408) = MEMORY[0x277D83B88];
    *(v0 + 384) = v30;
    sub_26125A7B0((v0 + 384), (v0 + 416));
    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v68 = v26;
    v31 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 416, *(v0 + 440));
    sub_26139C630(*v31, v27, v29, v20, &v68);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
  }

  else
  {
    v32 = sub_2613A07CC();
    v34 = v33;
    *(v0 + 192) = sub_2613A089C();
    *(v0 + 216) = v8;
    *(v0 + 200) = v35;
    sub_26125A7B0((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v14;
    v37 = *(v0 + 248);
    v38 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v37);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64) + 15;
    v41 = swift_task_alloc();
    (*(v39 + 16))(v41, v38, v37);
    sub_261267EDC(*v41, v41[1], v32, v34, isUniquelyReferenced_nonNull_native, &v68);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));

    v42 = v68;
    v43 = sub_2613A06EC();
    v45 = v44;
    v46 = sub_2613A089C();
    *(v0 + 280) = v8;
    *(v0 + 256) = v46;
    *(v0 + 264) = v47;
    sub_26125A7B0((v0 + 256), (v0 + 288));
    LOBYTE(isUniquelyReferenced_nonNull_native) = swift_isUniquelyReferenced_nonNull_native();
    v68 = v42;
    v48 = *(v0 + 312);
    v49 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 288, v48);
    v50 = *(v48 - 8);
    v51 = *(v50 + 64) + 15;
    v52 = swift_task_alloc();
    (*(v50 + 16))(v52, v49, v48);
    sub_261267EDC(*v52, v52[1], v43, v45, isUniquelyReferenced_nonNull_native, &v68);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  }

  v53 = v68;
  *(v0 + 536) = v68;
  v54 = *(v0 + 496);
  v55 = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  *(v0 + 544) = OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID;
  v56 = (v54 + v55);
  if (v56[1])
  {
    v57 = *(v0 + 528);
    v58 = sub_2613A1C1C();
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = v54;
    *(v59 + 40) = v53;
    *(v59 + 48) = 0;

    sub_261266800(0, 0, v57, &unk_2613ADCF0, v59);

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    v62 = *v56;
    *(v0 + 552) = *v56;
    v63 = sub_2613A090C();
    v65 = v64;
    *(v0 + 560) = v64;
    v66 = *(MEMORY[0x277D437B0] + 4);
    v67 = swift_task_alloc();
    *(v0 + 568) = v67;
    *v67 = v0;
    v67[1] = sub_26139A77C;

    return MEMORY[0x2821A5168](v63, v65, v62, 0);
  }
}

uint64_t sub_26139A77C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[59] = v2;
  v4[60] = a1;
  v4[61] = a2;
  v5 = v3[71];
  v6 = v3[70];
  v8 = *v2;
  v4[72] = a2;

  return MEMORY[0x2822009F8](sub_26139A8A0);
}

uint64_t sub_26139A8A0()
{
  v15 = v0;
  v1 = v0[72];
  if (v1)
  {
    v2 = v0[60];
    v3 = v0[62];
    swift_beginAccess();

    sub_2612BB7A4(&v14, v2, v1);
    swift_endAccess();

    v4 = v0[72];
  }

  else
  {
    v4 = 0;
    v2 = v0[69];
  }

  v5 = (v0[62] + v0[68]);
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v4;

  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[62];
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = 0;

  sub_261266800(0, 0, v8, &unk_2613ADCF0, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26139AA34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15[-v4];
  if (*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD40, &qword_2613AA880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_2613A087C();
    *(inited + 40) = v7;
    *(inited + 48) = sub_2613A0B2C();
    *(inited + 56) = v8;
    v9 = sub_2612BEECC(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9FD48, qword_2613AA888);
    v10 = sub_2612D8CF0(v9);

    v11 = sub_2613A1C1C();
    v12 = *(*(v11 - 8) + 56);
    v12(v5, 1, 1, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v0;
    *(v13 + 40) = v10;
    *(v13 + 48) = 1;

    sub_261266800(0, 0, v5, &unk_2613ADC28, v13);

    v12(v5, 1, 1, v11);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v0;

    sub_261266800(0, 0, v5, &unk_2613ADC38, v14);
  }

  return result;
}

uint64_t sub_26139AC88()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_26139AD30);
}

uint64_t sub_26139AD30()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_26139F8AC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26139ADD0()
{
  v1 = v0[8];
  v2 = sub_2613A090C();
  v4 = v3;
  v0[9] = v3;
  v5 = *(MEMORY[0x277D437B0] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_26139AE98;

  return MEMORY[0x2821A5168](v2, v4, 0, 0);
}

uint64_t sub_26139AE98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[10];
  v6 = v3[9];
  v8 = *v2;
  v4[11] = a2;

  return MEMORY[0x2822009F8](sub_26139AFBC);
}

uint64_t sub_26139AFBC()
{
  v10 = v0;
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[8];
    swift_beginAccess();

    sub_2612BB7A4(&v9, v2, v1);
    swift_endAccess();

    v4 = v0[11];
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  v5 = (v0[8] + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v4;

  v7 = v0[1];

  return v7();
}

uint64_t sub_26139B0AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21[-v3];
  v5 = sub_26139DF90();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v9;
  v10 = sub_2613A0A9C();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v13;
  v14 = sub_2613A08AC();
  *(inited + 120) = v11;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_2613A078C();
  *(inited + 136) = v16;
  *(inited + 168) = v11;
  *(inited + 144) = v5;
  *(inited + 152) = v7;
  v17 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v18 = sub_2613A1C1C();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v0;
  *(v19 + 40) = v17;
  *(v19 + 48) = 0;

  sub_261266800(0, 0, v4, &unk_2613ADC40, v19);
}

uint64_t sub_26139B28C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24[-v5];
  if (a1)
  {
    v7 = sub_2613A097C();
  }

  else
  {
    v7 = sub_2613A095C();
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v12;
  v13 = sub_2613A0BAC();
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_2613A082C();
  *(inited + 88) = v16;
  v17 = sub_2613A08AC();
  *(inited + 120) = v14;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 128) = sub_2613A084C();
  *(inited + 136) = v19;
  *(inited + 168) = v14;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  v20 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  v21 = sub_2613A1C1C();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v1;
  *(v22 + 40) = v20;
  *(v22 + 48) = 0;

  sub_261266800(0, 0, v6, &unk_2613ADC48, v22);
}

uint64_t sub_26139B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_26139FA0C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26139B540);
}

uint64_t sub_26139B540()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[10] = v10;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v6;
  v11[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_26139B67C);
}

uint64_t sub_26139B67C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[2];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26139B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(MEMORY[0x277D437C0] + 4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261262F8C;

  return MEMORY[0x2821A5178](a3, a4);
}

uint64_t sub_26139B7C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0988, &unk_2613ADD10);
  v48 = a2;
  result = sub_2613A223C();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_26139E7E4(&qword_281451E80, MEMORY[0x277CC95F0]);
      result = sub_2613A182C();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_26139BBA8(int64_t a1, uint64_t a2)
{
  v43 = sub_26139F13C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2613A205C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26139E7E4(&qword_281451E80, MEMORY[0x277CC95F0]);
      v26 = sub_2613A182C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_26139BEC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_26128A6E4(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_26139C0A4();
      goto LABEL_9;
    }

    sub_26139B7C0(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_26128A6E4(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_2612EFB0C(v16, v13, v25, a2, v26);
  }
}

char *sub_26139C0A4()
{
  v1 = v0;
  v36 = sub_26139F13C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0988, &unk_2613ADD10);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_26139C330(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2613A256C();
  sub_2613A19DC();
  v7 = sub_2613A25CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2613A241C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2612BBCD4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_26139C46C(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_26139C46C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2613A205C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2613A256C();

        sub_2613A19DC();
        v15 = sub_2613A25CC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

_OWORD *sub_26139C630(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_26124E5EC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_26125A7B0(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_26124E5EC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D83B88]);
  sub_26139C788(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v24);
}

_OWORD *sub_26139C788(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26125A7B0(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_26139C80C(void *a1)
{
  v2 = v1;
  v4 = sub_26139FA0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessionID);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_isSAFSessionActive) = 0;
  v10 = a1[9];
  v2[2] = a1[8];
  v2[3] = v10;
  v11 = a1[4];
  v12 = a1[5];
  v2[4] = v11;
  v2[5] = v12;

  sub_26139F9FC();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_manager, v8, v4);
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_parentSessions) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_transactionToSessionMap) = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon13AnalyticsTask_serializer) = sub_26139F8BC();
  return v2;
}

uint64_t sub_26139C974()
{
  v2 = *(sub_26139FA0C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_261265144;

  return sub_26139B474(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_26139CA8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261391C44(v4, v5, v6, v2, v3);
}

uint64_t sub_26139CB28()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261392D44(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26139CC00(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v104 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v103 = &v97 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v97 - v10;
  v107 = sub_26139FDAC();
  v12 = *(v107 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v107);
  v106 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v105 = &v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0990, &qword_2613ADD48);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v97 - v25;
  v27 = sub_2613A00BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v97 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  if (a2 >> 60 == 15)
  {
    return sub_2613A041C();
  }

  v101 = v12;
  v102 = &v97 - v37;
  v38 = v36;
  sub_26124C778(a1, a2);
  sub_26139E7E4(&qword_27FEA0998, MEMORY[0x277D43B78]);
  sub_26124B218(v38, v38, v26);
  if ((*(v28 + 48))(v26, 1, v38) == 1)
  {
    sub_26124A168(a1, a2);
    sub_26124C718(v26, &qword_27FEA0990, &qword_2613ADD48);
    return sub_2613A041C();
  }

  v99 = a1;
  v100 = a2;
  v40 = v102;
  (*(v28 + 32))(v102, v26, v38);
  v41 = *(v28 + 16);
  v41(v35, v40, v38);
  v42 = (*(v28 + 88))(v35, v38);
  if (v42 == *MEMORY[0x277D43B68])
  {
    v43 = sub_2613A045C();
    sub_26124A168(v99, v100);
    v44 = *(v28 + 8);
    v45 = v40;
LABEL_7:
    v44(v45, v38);
    return v43;
  }

  v97 = v38;
  v98 = v28;
  if (v42 != *MEMORY[0x277D43B48])
  {
    v48 = v41;
    v49 = v99;
    v50 = v100;
    if (v42 == *MEMORY[0x277D43B58])
    {
      v38 = v97;
      v51 = v98;
      (*(v98 + 96))(v35, v97);
      v52 = v101;
      v53 = v35;
      v54 = v107;
      (*(v101 + 32))(v22, v53, v107);
      (*(v52 + 16))(v20, v22, v54);
      v55 = (*(v52 + 88))(v20, v54);
      if (v55 == *MEMORY[0x277D43950])
      {
        v43 = sub_2613A049C();
        sub_26124A168(v49, v50);
        (*(v52 + 8))(v22, v54);
        v44 = *(v51 + 8);
        v45 = v102;
        goto LABEL_7;
      }

      if (v55 == *MEMORY[0x277D43960])
      {
        v43 = sub_2613A04BC();
        sub_26124A168(v49, v50);
        (*(v101 + 8))(v22, v54);
        goto LABEL_12;
      }

      v65 = v101;
      if (v55 == *MEMORY[0x277D43958])
      {
        v43 = sub_2613A04AC();
        sub_26124A168(v49, v50);
        (*(v65 + 8))(v22, v54);
        goto LABEL_12;
      }

      v66 = sub_26129B858();
      sub_26125A870(v66, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v67 = sub_2613A124C();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v11, 1, v67) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v73 = sub_2613A122C();
        v74 = sub_2613A1D8C();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_261243000, v73, v74, "Unknown cycle", v75, 2u);
          MEMORY[0x266701350](v75, -1, -1);
        }

        (*(v68 + 8))(v11, v67);
        v49 = v99;
        v65 = v101;
      }

      v43 = sub_2613A041C();
      sub_26124A168(v49, v100);
      v76 = *(v65 + 8);
      v76(v22, v54);
      (*(v98 + 8))(v102, v97);
      v77 = v20;
LABEL_51:
      v76(v77, v54);
      return v43;
    }

    if (v42 != *MEMORY[0x277D43B50])
    {
      if (v42 == *MEMORY[0x277D43B40])
      {
        v63 = sub_2613A04CC();
      }

      else if (v42 == *MEMORY[0x277D43B60])
      {
        v63 = sub_2613A044C();
      }

      else
      {
        if (v42 != *MEMORY[0x277D43B70])
        {
          v78 = sub_26129B858();
          v79 = v104;
          sub_26125A870(v78, v104, &qword_27FE9F560, &qword_2613A3CB0);
          v80 = sub_2613A124C();
          v81 = *(v80 - 8);
          if ((*(v81 + 48))(v79, 1, v80) == 1)
          {
            sub_26124C718(v79, &qword_27FE9F560, &qword_2613A3CB0);
          }

          else
          {
            v86 = v97;
            v48(v32, v102, v97);
            v87 = sub_2613A122C();
            v88 = sub_2613A1D8C();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v108 = v107;
              *v89 = 136315138;
              sub_26139E7E4(&unk_27FEA09A0, MEMORY[0x277D43B78]);
              v90 = sub_2613A23EC();
              v92 = v91;
              (*(v98 + 8))(v32, v86);
              v93 = sub_26124C11C(v90, v92, &v108);

              *(v89 + 4) = v93;
              _os_log_impl(&dword_261243000, v87, v88, "Unknown transaction description: [ %s ]", v89, 0xCu);
              v94 = v107;
              __swift_destroy_boxed_opaque_existential_0Tm(v107);
              MEMORY[0x266701350](v94, -1, -1);
              v79 = v104;
              MEMORY[0x266701350](v89, -1, -1);
            }

            else
            {

              (*(v98 + 8))(v32, v86);
            }

            (*(v81 + 8))(v79, v80);
            v49 = v99;
          }

          v43 = sub_2613A041C();
          sub_26124A168(v49, v100);
          v95 = v97;
          v96 = *(v98 + 8);
          v96(v102, v97);
          v96(v35, v95);
          return v43;
        }

        v63 = sub_2613A042C();
      }

      v43 = v63;
      v46 = v49;
      v47 = v50;
      goto LABEL_11;
    }

    v57 = v97;
    v56 = v98;
    (*(v98 + 96))(v35, v97);
    v58 = v101;
    v59 = v105;
    v60 = v35;
    v54 = v107;
    (*(v101 + 32))(v105, v60, v107);
    v61 = v106;
    (*(v58 + 16))(v106, v59, v54);
    v62 = (*(v58 + 88))(v61, v54);
    if (v62 == *MEMORY[0x277D43950])
    {
      v43 = sub_2613A046C();
      sub_26124A168(v49, v50);
      (*(v58 + 8))(v59, v54);
      (*(v56 + 8))(v102, v57);
      return v43;
    }

    if (v62 == *MEMORY[0x277D43960])
    {
      v64 = sub_2613A048C();
    }

    else
    {
      if (v62 != *MEMORY[0x277D43958])
      {
        v69 = sub_26129B858();
        v70 = v103;
        sub_26125A870(v69, v103, &qword_27FE9F560, &qword_2613A3CB0);
        v71 = sub_2613A124C();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          sub_26124C718(v70, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v82 = sub_2613A122C();
          v83 = sub_2613A1D8C();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_261243000, v82, v83, "Unknown cycle", v84, 2u);
            v85 = v84;
            v59 = v105;
            MEMORY[0x266701350](v85, -1, -1);
          }

          (*(v72 + 8))(v70, v71);
        }

        v43 = sub_2613A041C();
        sub_26124A168(v49, v50);
        v76 = *(v58 + 8);
        v76(v59, v54);
        (*(v98 + 8))(v102, v97);
        v77 = v106;
        goto LABEL_51;
      }

      v64 = sub_2613A047C();
    }

    v43 = v64;
    sub_26124A168(v49, v50);
    (*(v58 + 8))(v59, v54);
    goto LABEL_12;
  }

  v43 = sub_2613A043C();
  v46 = v99;
  v47 = v100;
LABEL_11:
  sub_26124A168(v46, v47);
LABEL_12:
  (*(v98 + 8))(v102, v97);
  return v43;
}

uint64_t sub_26139D924()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v0 + v3;
  v8 = *(v7 + v4);
  v9 = *(v7 + v4 + 1);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_261265144;

  return sub_26139465C(v10, v11, v12, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26139DB08()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26139802C(v5, v6, v7, v4, v0 + v3);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_26139FA0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26139DCC4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261399678(v4, v5, v6, v2, v3);
}

uint64_t sub_26139DD5C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26139A0D8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_26139DE08()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261393D34(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26139DEFC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26139AC68(v3, v4, v5, v2);
}

uint64_t sub_26139DF90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0980, &qword_2613ADCC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_2613A189C();
  [v4 setDateFormat_];

  sub_26139F21C();
  v6 = sub_26139F23C();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    v8 = sub_26139F22C();
    (*(v7 + 8))(v3, v6);
  }

  [v4 setTimeZone_];

  v9 = sub_26139F05C();
  v10 = [v4 stringFromDate_];

  v11 = sub_2613A18CC();
  return v11;
}

uint64_t type metadata accessor for AnalyticsTask()
{
  result = qword_27FEAEB30;
  if (!qword_27FEAEB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26139E1C0()
{
  result = sub_26139FA0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26139E28C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261265144;

  return sub_26139ADB0(v2, v0);
}

uint64_t sub_26139E31C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261393EB8(v5, v2, v3, v4);
}

uint64_t objectdestroy_114Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26139E420()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2613997F0(v4, v2, v3);
}

uint64_t objectdestroy_84Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  v6 = v2[4];

  a1(v2[5]);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26139E51C()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613982B4(v5, v4, v0 + v3);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_26139E6CC()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *(v7 + v4);
  v9 = *(v7 + v4 + 1);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_261265144;

  return sub_261394928(v10, v5, v6, v7, v8, v9);
}

uint64_t sub_26139E7E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_136Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26139E8F0()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261392FCC(v5, v4, v0 + v3);
}

uint64_t sub_26139E9C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261391DC0(v4, v2, v3);
}

uint64_t sub_26139EA64()
{
  v2 = *(sub_26139FA0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261265144;

  return sub_26139B710(v7, v0 + v3, v5, v6);
}