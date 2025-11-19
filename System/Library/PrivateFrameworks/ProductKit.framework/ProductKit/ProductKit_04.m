uint64_t sub_260E5F484(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_260E5F4A4, 0, 0);
}

void sub_260E5F4A4()
{
  v1 = v0[2];
  v2 = sub_260E641E8();
  v3 = [v2 assetType];

  if (v3)
  {
    sub_260E62CCC();
    v4 = sub_260E69024();
    v6 = v5;

    v0[4] = v6;
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_260E5F59C;
    v8 = v0[3];

    sub_260E59C24(v4, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_260E5F59C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E5F6D8, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_260E5F6D8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_260E5F75C()
{
  v1 = v0[19];
  v2 = sub_260E641E8();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E5F884;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE553A8, &qword_260E704C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E5FA34;
  v0[13] = &block_descriptor_27;
  v0[14] = v3;
  [v2 queryMetaData_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E5F884()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_260E5F964, 0, 0);
}

uint64_t sub_260E5F964()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 160) results];
  if (v2)
  {
    v3 = v2;
    sub_260E62CCC();
    v4 = sub_260E691B4();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 160);
  v6 = sub_260E5FA90(v4);

  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t sub_260E5FA34(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void *sub_260E5FA90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_260E69714();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_260E65A20(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2666F1180](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_260E65A20((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_260E62CCC();
        v16 = &off_287361678;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_260E41B2C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_260E65A20((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_260E62CCC();
        v16 = &off_287361678;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_260E41B2C(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_260E5FC48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260E5FC68, v1, 0);
}

uint64_t sub_260E5FC68()
{
  v1 = v0[3];
  if (*(v1 + 112))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + 112) = 1;
    if (qword_27FE53E28 != -1)
    {
      swift_once();
    }

    v4 = sub_260E68E94();
    v0[4] = __swift_project_value_buffer(v4, qword_27FE55358);
    v5 = sub_260E68E74();
    v6 = sub_260E69474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v5, v6, "Updating catalog", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = v0[3];

    v9 = *(v8 + 120);
    v0[5] = *(v8 + 128);
    v10 = qword_27FE53E30;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27FE55370;
    v15 = (v9 + *v9);
    v12 = v9[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = sub_260E5FEB0;
    v14 = v0[2];

    return v15(v14, v11);
  }
}

uint64_t sub_260E5FEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_260E600B4;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_260E5FFD8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E5FFD8()
{
  v1 = v0[4];
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Done updating catalog", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v5 = v0[3];

  *(v5 + 112) = 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_260E600B4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_260E60118(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 272) = a2;
  *(v4 + 280) = v3;
  *(v4 + 408) = a3;
  *(v4 + 264) = a1;
  *(v4 + 288) = *v3;
  v5 = sub_260E68904();
  *(v4 + 296) = v5;
  v6 = *(v5 - 8);
  *(v4 + 304) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  v8 = type metadata accessor for MobileAssetRequest();
  *(v4 + 320) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E60238, v3, 0);
}

uint64_t sub_260E60238()
{
  v22 = v0;
  if (qword_27FE53E28 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[34];
  v3 = sub_260E68E94();
  v0[42] = __swift_project_value_buffer(v3, qword_27FE55358);
  sub_260E4C858(v2, v1);
  v4 = sub_260E68E74();
  v5 = sub_260E69474();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_260E643C0();
    v12 = v11;
    sub_260E4C8BC(v7);
    v13 = sub_260E43774(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Performing request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {

    sub_260E4C8BC(v7);
  }

  v14 = v0[35];
  v15 = *(v14 + 136);
  v0[43] = *(v14 + 144);

  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_260E604A0;
  v18 = v0[34];

  return v20(v18);
}

uint64_t sub_260E604A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v5 = *(*v2 + 344);
  v6 = *(*v2 + 280);
  v8 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = a2;

  return MEMORY[0x2822009F8](sub_260E605D4, v6, 0);
}

uint64_t sub_260E605D4()
{
  v71 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v1 + 16);
  if (v2)
  {
    if (!v3)
    {
      v4 = *(v0 + 408);
      v5 = *(v0 + 368);

      if (v2 == 2 && (v4 & 1) == 0)
      {
        v6 = *(v0 + 336);
        v7 = sub_260E68E74();
        v8 = sub_260E69474();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_260E02000, v7, v8, "XML is missing", v9, 2u);
          MEMORY[0x2666F1EF0](v9, -1, -1);
        }

        v10 = swift_task_alloc();
        *(v0 + 392) = v10;
        *v10 = v0;
        v10[1] = sub_260E60FFC;
        v11 = *(v0 + 272);
        v12 = *(v0 + 280);

        return sub_260E5FC48(v11);
      }

LABEL_29:
      sub_260E15590();
      swift_allocError();
      *v56 = xmmword_260E6C9E0;
      *(v56 + 16) = 2;
      swift_willThrow();
      v58 = *(v0 + 328);
      v59 = *(v0 + 312);

      v60 = *(v0 + 8);
      goto LABEL_32;
    }
  }

  else if (!v3)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  v14 = 0;
  v15 = v1 + 32;
  do
  {
    if (v14 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_260E36150(v15, v0 + 136);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_0((v0 + 136), v16);
    if ((*(v17 + 8))(v16, v17))
    {
      sub_260E41B2C((v0 + 136), v0 + 96);
      sub_260E41B2C((v0 + 96), v0 + 56);
      goto LABEL_20;
    }

    ++v14;
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v15 += 40;
  }

  while (v3 != v14);
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  if (!*(v1 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_260E36150(*(v0 + 368) + 32, v0 + 56);
  if (*(v0 + 120))
  {
    sub_260E155E4(v0 + 96, &qword_27FE55378, &qword_260E70478);
  }

LABEL_20:
  v18 = *(v0 + 368);
  if (!*(v0 + 80))
  {
    v36 = *(v0 + 336);
    sub_260E155E4(v0 + 56, &qword_27FE55378, &qword_260E70478);

    v37 = sub_260E68E74();
    v38 = sub_260E69454();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 368);
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 136315138;
      *(v0 + 256) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55380, &qword_260E70480);
      v43 = sub_260E69084();
      v45 = sub_260E43774(v43, v44, v70);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_260E02000, v37, v38, "Failed to find asset, received: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2666F1EF0](v42, -1, -1);
      MEMORY[0x2666F1EF0](v41, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v19 = *(v0 + 368);

  sub_260E41B2C((v0 + 56), v0 + 16);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = *(v0 + 336);
  if (v22)
  {
    sub_260E36150(v0 + 16, v0 + 216);
    v24 = sub_260E68E74();
    v25 = sub_260E69474();
    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 304);
      v26 = *(v0 + 312);
      v68 = *(v0 + 296);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v70[0] = v29;
      *v28 = 136315138;
      v30 = *(v0 + 240);
      v31 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_0((v0 + 216), v30);
      (*(v31 + 16))(v30, v31);
      sub_260E194E8();
      v32 = sub_260E69804();
      v34 = v33;
      (*(v27 + 8))(v26, v68);
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v35 = sub_260E43774(v32, v34, v70);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_260E02000, v24, v25, "Found local asset: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2666F1EF0](v29, -1, -1);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    v57 = *(v0 + 288);
    sub_260E61334((v0 + 16), *(v0 + 264));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v66 = *(v0 + 328);
    v67 = *(v0 + 312);

    v60 = *(v0 + 8);
LABEL_32:

    return v60();
  }

  else
  {
    sub_260E36150(v0 + 16, v0 + 176);
    v46 = sub_260E68E74();
    v47 = sub_260E69474();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      v50 = *(v0 + 200);
      v51 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v50);
      v52 = (*(v51 + 24))(v50, v51);
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      v55 = sub_260E43774(v52, v54, v70);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_260E02000, v46, v47, "Downloading asset: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2666F1EF0](v49, -1, -1);
      MEMORY[0x2666F1EF0](v48, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    }

    v1 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
    if (qword_27FE53E30 != -1)
    {
LABEL_42:
      swift_once();
    }

    v61 = qword_27FE55370;
    v62 = *(*(v0 + 272) + *(*(v0 + 320) + 20));
    v63 = *(v15 + 32);
    v69 = (v63 + *v63);
    v64 = v63[1];
    v65 = swift_task_alloc();
    *(v0 + 376) = v65;
    *v65 = v0;
    v65[1] = sub_260E60E30;

    return v69(v61, (v62 & 1) == 0, v1, v15);
  }
}

uint64_t sub_260E60E30()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_260E612BC;
  }

  else
  {
    v6 = sub_260E60F5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260E60F5C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 288);
  sub_260E61334((v0 + 16), *(v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260E60FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[41];
    v6 = v2[39];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[50] = v9;
    *v9 = v4;
    v9[1] = sub_260E61188;
    v10 = v2[34];
    v11 = v2[35];
    v12 = v2[33];

    return sub_260E60118(v12, v10, 1);
  }
}

uint64_t sub_260E61188()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v7 = *v0;

  v3 = *(v1 + 328);
  v4 = *(v1 + 312);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_260E612BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[48];
  v2 = v0[41];
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

void sub_260E61334(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = [objc_opt_self() defaultManager];
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v14);
  (*(v13 + 16))(v14, v13);
  v15 = sub_260E68894();
  v38 = *(v4 + 8);
  v38(v11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55388, &unk_260E70490);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_260E6BDD0;
  v17 = *MEMORY[0x277CBE868];
  v18 = *MEMORY[0x277CBE8A0];
  *(v16 + 32) = *MEMORY[0x277CBE868];
  *(v16 + 40) = v18;
  type metadata accessor for URLResourceKey(0);
  v19 = v17;
  v20 = v18;
  v21 = sub_260E691A4();

  v42[0] = 0;
  v22 = [v12 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:v21 options:7 error:v42];

  v23 = v42[0];
  if (!v22)
  {
    v32 = v42[0];
    v33 = sub_260E68854();

LABEL_9:
    swift_willThrow();
    sub_260E15590();
    swift_allocError();
    *v35 = xmmword_260E6D930;
    *(v35 + 16) = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v24 = sub_260E691B4();
  v25 = v23;

  if (!*(v24 + 16))
  {

LABEL_8:
    sub_260E15590();
    v33 = swift_allocError();
    *v34 = xmmword_260E6F940;
    *(v34 + 16) = 2;
    goto LABEL_9;
  }

  v26 = v40;
  (*(v4 + 16))(v40, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  v27 = *(v4 + 32);
  v28 = v41;
  v27(v41, v26, v3);
  v29 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v30 = sub_260E68894();
  v31 = [v29 initWithURL_];

  if (!v31)
  {
    v38(v28, v3);
    goto LABEL_8;
  }

  v27(v39, v28, v3);
LABEL_10:
  v36 = *MEMORY[0x277D85DE8];
}

unint64_t sub_260E61748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54760, &qword_260E6D7F8);
    v2 = sub_260E69744();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_260E62D78(*(a1 + 48) + 40 * v14, v29);
        sub_260E1426C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_260E62D78(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_260E1426C(v27 + 8, v22);
        sub_260E155E4(v26, &qword_27FE553A0, &qword_260E704B0);
        v23 = v20;
        sub_260E145CC(v22, v24);
        v15 = v23;
        sub_260E145CC(v24, v25);
        sub_260E145CC(v25, &v23);
        result = sub_260E35BFC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_260E145CC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_260E145CC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_260E155E4(v26, &qword_27FE553A0, &qword_260E704B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_260E61A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_260E61A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &aBlock[-1] - v17;
  aBlock[6] = a1;
  aBlock[7] = a2;
  aBlock[8] = a3;
  aBlock[9] = a4;
  v26 = 0;
  v19 = sub_260E4CAD4();
  if (v19)
  {
    v20 = v19;
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = a6;
    v21[4] = v20;
    v21[5] = v14;
    aBlock[4] = sub_260E62CA8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_260E61A24;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);

    v23 = v20;

    [v23 queryMetaData_];
    _Block_release(v22);
  }

  else
  {
    *v18 = xmmword_260E703E0;
    v18[16] = 2;
    swift_storeEnumTagMultiPayload();
    a5(v18);
    sub_260E155E4(v18, &qword_27FE54FD0, &qword_260E6FE68);
  }
}

void sub_260E61C78(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v8 = sub_260E68904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v70 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v78 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v26 = 10;
      goto LABEL_25;
    }

    if (a1 == 9)
    {
      v26 = 11;
      goto LABEL_25;
    }

LABEL_8:
    v26 = 1;
    goto LABEL_25;
  }

  if (a1)
  {
    if (a1 == 2)
    {
      v26 = 8;
LABEL_25:
      *v23 = v26;
      *(v23 + 1) = 0;
      v23[16] = 2;
      swift_storeEnumTagMultiPayload();
      a2(v23);
      v51 = v23;
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  v27 = [a4 results];
  if (v27)
  {
    v28 = v27;
    v74 = v25;
    sub_260E62CCC();
    v29 = sub_260E691B4();

    if (v29 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_260E69714())
    {
      v70 = v9;
      v71 = v8;
      v9 = v29 & 0xC000000000000001;
      if ((v29 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2666F1180](0, v29);
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v31 = *(v29 + 32);
      }

      v32 = v31;
      v72 = a2;
      v73 = a3;
      *&aBlock = v31;
      if (i == 1)
      {
        a2 = v31;
LABEL_17:

        if ([a2 wasLocal])
        {
          v33 = [a2 getLocalFileUrl];
          v35 = v70;
          v34 = v71;
          if (v33)
          {
            v36 = v33;
            sub_260E688C4();

            v37 = v78;
            (*(v35 + 32))(v78, v17, v34);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_260E6BDB0;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_260E69644();

            strcpy(&aBlock, "Local asset: ");
            HIWORD(aBlock) = -4864;
            v39 = sub_260E68874();
            MEMORY[0x2666F0C00](v39);

            MEMORY[0x2666F0C00](41, 0xE100000000000000);
            v40 = aBlock;
            *(v38 + 56) = MEMORY[0x277D837D0];
            *(v38 + 32) = v40;
            sub_260E698E4();

            (*(v35 + 8))(v37, v34);
          }

          v41 = [a2 attributes];
          if (v41)
          {
            v42 = v41;
            v43 = sub_260E68F94();

            v44 = sub_260E61748(v43);

            if (v44)
            {
              v45 = [a2 getLocalFileUrl];
              if (v45)
              {
                v46 = v76;
                v47 = v45;
                sub_260E688C4();

                v48 = v77;
                (*(v35 + 32))(v77, v46, v34);
                v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48);
                v50 = v74;
                (*(v35 + 16))(v74, v48, v34);
                *(v50 + v49) = v44;
                swift_storeEnumTagMultiPayload();
                v72(v50);

                sub_260E155E4(v50, &qword_27FE54FD0, &qword_260E6FE68);
                (*(v35 + 8))(v48, v34);
                return;
              }
            }
          }

          v69 = v74;
          *v74 = xmmword_260E6D930;
          *(v69 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v72(v69);

          v51 = v69;
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_260E6BDB0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_260E69644();

        *&aBlock = 0xD000000000000012;
        *(&aBlock + 1) = 0x8000000260E732D0;
        v55 = [a2 assetId];
        if (v55)
        {
          v56 = v55;
          v57 = sub_260E69024();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v84[0] = v57;
        v84[1] = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55398, &qword_260E704A8);
        v60 = sub_260E69574();
        v62 = v61;

        MEMORY[0x2666F0C00](v60, v62);

        v63 = aBlock;
        *(v54 + 56) = MEMORY[0x277D837D0];
        *(v54 + 32) = v63;
        sub_260E698E4();

        if (qword_27FE53E30 == -1)
        {
LABEL_41:
          v64 = qword_27FE55370;
          v65 = swift_allocObject();
          v66 = v73;
          v65[2] = v72;
          v65[3] = v66;
          v65[4] = a2;
          v82 = sub_260E62D6C;
          v83 = v65;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v80 = sub_260E596E8;
          v81 = &block_descriptor_18;
          v67 = _Block_copy(&aBlock);

          v68 = a2;

          [v68 startDownload:v64 then:v67];

          _Block_release(v67);
          return;
        }

LABEL_51:
        swift_once();
        goto LABEL_41;
      }

      v75 = v29 & 0xFFFFFFFFFFFFFF8;
      a3 = 5;
      while (1)
      {
        v8 = a3 - 4;
        if (v9)
        {
          v52 = MEMORY[0x2666F1180](a3 - 4, v29);
        }

        else
        {
          if (v8 >= *(v75 + 16))
          {
            goto LABEL_45;
          }

          v52 = *(v29 + 8 * a3);
        }

        a2 = v52;
        v53 = __OFADD__(v8, 1);
        v8 = a3 - 3;
        if (v53)
        {
          break;
        }

        v84[0] = v52;
        if (sub_260E62568(&aBlock, v84))
        {

          *&aBlock = a2;
          v32 = a2;
        }

        else
        {

          a2 = v32;
        }

        ++a3;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

    v25 = v74;
  }

  *v25 = xmmword_260E703F0;
  v25[16] = 2;
  swift_storeEnumTagMultiPayload();
  a2(v25);
  v51 = v25;
LABEL_26:
  sub_260E155E4(v51, &qword_27FE54FD0, &qword_260E6FE68);
}

id sub_260E62568(id *a1, void **a2)
{
  v2 = *a2;
  result = [*a1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = sub_260E68F94();

  v6 = *MEMORY[0x277D28900];
  v14 = sub_260E69024();
  sub_260E69604();
  if (!*(v5 + 16) || (v7 = sub_260E66018(v16), (v8 & 1) == 0))
  {
LABEL_10:

    sub_260E62DD4(v16);
    return 0;
  }

  sub_260E1426C(*(v5 + 56) + 32 * v7, v17);
  sub_260E62DD4(v16);

  if (swift_dynamicCast())
  {
    v9 = v14;
    result = [v2 attributes];
    if (result)
    {
      v10 = result;
      v11 = sub_260E68F94();

      v15 = sub_260E69024();
      sub_260E69604();
      if (*(v11 + 16))
      {
        v12 = sub_260E66018(v16);
        if (v13)
        {
          sub_260E1426C(*(v11 + 56) + 32 * v12, v17);
          sub_260E62DD4(v16);

          if (swift_dynamicCast())
          {
            return (v9 < v15);
          }

          return 0;
        }
      }

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_260E62768(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v49 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_260E68904();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v46 - v26;
  if (a1 == 51)
  {
    v44 = 3;
    goto LABEL_13;
  }

  if (a1 == 12)
  {
    v44 = 10;
LABEL_13:
    *v10 = v44;
    *(v10 + 1) = 0;
    v10[16] = 2;
    swift_storeEnumTagMultiPayload();
    v49(v10);
    v45 = v10;
    return sub_260E155E4(v45, &qword_27FE54FD0, &qword_260E6FE68);
  }

  if (a1)
  {
    v44 = 2;
    goto LABEL_13;
  }

  v47 = v25;
  v48 = v24;
  v28 = [a4 getLocalFileUrl];
  if (v28)
  {
    v29 = v28;
    sub_260E688C4();

    (*(v47 + 32))(v27, v23, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_260E6BDB0;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_260E69644();

    v50 = 0xD000000000000012;
    v51 = 0x8000000260E732F0;
    v31 = sub_260E68874();
    MEMORY[0x2666F0C00](v31);

    MEMORY[0x2666F0C00](41, 0xE100000000000000);
    v32 = v50;
    v33 = v51;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = v32;
    *(v30 + 40) = v33;
    sub_260E698E4();

    (*(v47 + 8))(v27, v48);
  }

  v34 = [a4 attributes];
  if (v34)
  {
    v35 = v34;
    v36 = sub_260E68F94();

    v37 = sub_260E61748(v36);

    if (v37)
    {
      v38 = [a4 getLocalFileUrl];
      if (v38)
      {
        v39 = v38;
        sub_260E688C4();

        v41 = v47;
        v40 = v48;
        (*(v47 + 32))(v20, v17, v48);
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48);
        (*(v41 + 16))(v12, v20, v40);
        *&v12[v42] = v37;
        swift_storeEnumTagMultiPayload();
        v49(v12);
        sub_260E155E4(v12, &qword_27FE54FD0, &qword_260E6FE68);
        return (*(v41 + 8))(v20, v40);
      }
    }
  }

  *v12 = xmmword_260E6D950;
  v12[16] = 2;
  swift_storeEnumTagMultiPayload();
  v49(v12);
  v45 = v12;
  return sub_260E155E4(v45, &qword_27FE54FD0, &qword_260E6FE68);
}

uint64_t sub_260E62C3C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_260E62CCC()
{
  result = qword_27FE55390;
  if (!qword_27FE55390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE55390);
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_260E62E28(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_260E68FF4();
  if (qword_27FE53E30 != -1)
  {
    swift_once();
  }

  v6 = qword_27FE55370;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_260E62FBC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_260E596E8;
  v9[3] = &block_descriptor_24;
  v8 = _Block_copy(v9);

  [v4 startCatalogDownload:v5 options:v6 then:v8];
  _Block_release(v8);
}

uint64_t sub_260E62F84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E62FBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v5 = xmmword_260E6D950;
    v6 = 258;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  return v2(&v5);
}

unint64_t HeadphoneHardwareModel.rawValue.getter()
{
  result = 0x3173646F50726941;
  switch(*v0)
  {
    case 5:
      result = 0x4D73646F50726941;
      break;
    case 6:
      result = 0x4D73646F50726941;
      break;
    case 7:
      result = 0x5073646F50726941;
      break;
    case 8:
      result = 0x5073646F50726941;
      break;
    case 9:
      result = 0x5073646F50726941;
      break;
    case 0xA:
      result = 0x7469467374616542;
      break;
    case 0xB:
      result = 0x6C6F537374616542;
      break;
    case 0xC:
      result = 0x6C6F537374616542;
      break;
    case 0xD:
      result = 0x7574537374616542;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6C6F537374616542;
      break;
    case 0x10:
      result = 0x6C69507374616542;
      break;
    case 0x11:
    case 0x12:
      result = 0xD000000000000012;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0x2C31587374616542;
      break;
    case 0x15:
      result = 0x2C32587374616542;
      break;
    case 0x16:
      result = 0x6165427265776F50;
      break;
    case 0x17:
      result = 0x6165627265776F50;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

ProductKit::HeadphoneHardwareModel_optional __swiftcall HeadphoneHardwareModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69854();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_260E63570(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HeadphoneHardwareModel.rawValue.getter();
  v4 = v3;
  if (v2 == HeadphoneHardwareModel.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_260E69834();
  }

  return v7 & 1;
}

uint64_t sub_260E6360C()
{
  v1 = *v0;
  sub_260E698F4();
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E63674()
{
  v2 = *v0;
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();
}

uint64_t sub_260E636D8()
{
  v1 = *v0;
  sub_260E698F4();
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

unint64_t sub_260E63748@<X0>(unint64_t *a1@<X8>)
{
  result = HeadphoneHardwareModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ProductKit::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(productID:)(Swift::UInt32 productID)
{
  v2 = 0;
  while (v2 != 26)
  {
    v4 = byte_28735E578[v2 + 32];
    if (dword_260E70644[v4] != productID)
    {
      v3 = (v4 - 3) <= 7u ? dword_260E706AC[(v4 - 3)] : -1;
      ++v2;
      if (v3 != productID)
      {
        continue;
      }
    }

    *v1 = v4;
    return productID;
  }

  sub_260E15590();
  swift_allocError();
  *v5 = xmmword_260E6C120;
  *(v5 + 16) = 2;
  LOBYTE(productID) = swift_willThrow();
  return productID;
}

ProductKit::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(codename:)(Swift::String codename)
{
  object = codename._object;
  countAndFlagsBits = codename._countAndFlagsBits;
  v4 = v1;
  v5 = 0;
  while (2)
  {
    v6 = byte_28735E578[v5++ + 32];
    v7 = 0xE400000000000000;
    v8 = 943206754;
    switch(v6)
    {
      case 1:
        v9 = 943206754;
        goto LABEL_41;
      case 2:
        if (countAndFlagsBits != 943208034)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 3:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6538363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6D38363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        if (countAndFlagsBits != 892417378)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6335313562)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        if (countAndFlagsBits != 943272546)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 8:
        if (countAndFlagsBits != 943273570)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 9:
        if (countAndFlagsBits != 943208290)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 10:
        if (countAndFlagsBits != 876164194)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 11:
        if (countAndFlagsBits != 842347362)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 12:
        if (countAndFlagsBits != 959525986)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 13:
        if (countAndFlagsBits != 859059298)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 14:
        if (countAndFlagsBits != 859124834)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 15:
        if (countAndFlagsBits != 892744802)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 16:
        if (countAndFlagsBits != 926430306)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 17:
        if (countAndFlagsBits != 925906274)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 18:
        v9 = 925906274;
LABEL_41:
        if (v9 + 256 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 19:
        v8 = 859190370;
        goto LABEL_50;
      case 20:
        if (countAndFlagsBits != 842543714)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 21:
        if (countAndFlagsBits != 842478434)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 22:
        if (countAndFlagsBits != 842085218)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 23:
        if (countAndFlagsBits != 875967330)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 24:
        if (countAndFlagsBits != 875836514)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 25:
        if (countAndFlagsBits != 943273058)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v8 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

LABEL_51:
        if (v7 == object)
        {
          goto LABEL_69;
        }

LABEL_52:
        v10 = sub_260E69834();

        if (v10)
        {
          goto LABEL_70;
        }

        if (v6 == 8)
        {
          v12 = 0xE500000000000000;
          if (countAndFlagsBits == 0x6338393662)
          {
            goto LABEL_63;
          }

LABEL_64:
          v13 = sub_260E69834();

          if (v13)
          {
            goto LABEL_70;
          }

          if (v5 == 26)
          {

            sub_260E15590();
            swift_allocError();
            *v14 = xmmword_260E6C120;
            *(v14 + 16) = 2;
            return swift_willThrow();
          }

          continue;
        }

        if (v6 == 10)
        {
          v11 = 0x6234393462;
        }

        else
        {
          v11 = 808464482;
        }

        if (v6 == 10)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        if (v11 != countAndFlagsBits)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v12 != object)
        {
          goto LABEL_64;
        }

LABEL_69:

LABEL_70:

        *v4 = v6;
        return result;
    }
  }
}

unint64_t sub_260E63C98()
{
  result = qword_27FE553B0;
  if (!qword_27FE553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553B0);
  }

  return result;
}

unint64_t sub_260E63CF0()
{
  result = qword_27FE553B8;
  if (!qword_27FE553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE553C0, &qword_260E70570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneHardwareModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneHardwareModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260E63EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E68A04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_260E63F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260E68A04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetRequest()
{
  result = qword_27FE553C8;
  if (!qword_27FE553C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E64094()
{
  sub_260E68A04();
  if (v0 <= 0x3F)
  {
    sub_260E64130();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_260E64130()
{
  if (!qword_27FE553D8)
  {
    v0 = sub_260E69584();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE553D8);
    }
  }
}

unint64_t sub_260E64194()
{
  result = qword_27FE553E0;
  if (!qword_27FE553E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553E0);
  }

  return result;
}

uint64_t sub_260E641E8()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v3 = sub_260E68FF4();
  v4 = [v2 initWithType_];

  if (v4)
  {
    v5 = sub_260E68FF4();
    v6 = type metadata accessor for MobileAssetRequest();
    v7 = (v1 + v6[6]);
    v8 = *v7;
    v9 = v7[1];
    v10 = sub_260E68FF4();
    [v4 addKeyValuePair:v5 with:v10];

    v11 = (v1 + v6[7]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      v13 = sub_260E68FF4();
      sub_260E69804();
      v14 = sub_260E68FF4();

      [v4 addKeyValuePair:v13 with:v14];
    }

    if ((*(v1 + v6[5]) & 1) == 0)
    {
      [v4 returnTypes_];
    }

    return v4;
  }

  else
  {
    result = sub_260E69704();
    __break(1u);
  }

  return result;
}

uint64_t sub_260E643C0()
{
  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000020, 0x8000000260E73310);
  sub_260E68A04();
  sub_260E4C918();
  v1 = sub_260E69804();
  MEMORY[0x2666F0C00](v1);

  MEMORY[0x2666F0C00](0x69726F697270202CLL, 0xED0000203D207974);
  v2 = type metadata accessor for MobileAssetRequest();
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = sub_260E69804();
  MEMORY[0x2666F0C00](v5);

  MEMORY[0x2666F0C00](0xD00000000000001ALL, 0x8000000260E73340);
  MEMORY[0x2666F0C00](v3, v4);

  MEMORY[0x2666F0C00](8236, 0xE200000000000000);
  v6 = sub_260E641E8();
  v7 = [v6 queryParams];

  if (!v7)
  {
    sub_260E645F4();
    v7 = MEMORY[0x2666F1030](MEMORY[0x277D84F90]);
  }

  v8 = [v7 description];
  v9 = sub_260E69024();
  v11 = v10;

  MEMORY[0x2666F0C00](v9, v11);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_260E645F4()
{
  result = qword_27FE553E8;
  if (!qword_27FE553E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE553E8);
  }

  return result;
}

uint64_t sub_260E64640()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v22 = MEMORY[0x277D84F90];
    sub_260E659C0(0, v2, 0);
    v3 = v22;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = sub_260E694F4();
      v9 = v8;
      v11 = v10;
      v12 = sub_260E694F4();
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        v20 = v13;
        v21 = v12;
        v18 = v14;
        sub_260E659C0((v15 > 1), v16 + 1, 1);
        v13 = v20;
        v12 = v21;
        v14 = v18;
      }

      *(v22 + 16) = v16 + 1;
      v17 = (v22 + 48 * v16);
      v17[4] = v7;
      v17[5] = v9;
      v17[6] = v11;
      v17[7] = v12;
      v17[8] = v13;
      v17[9] = v14;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_260E64768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53E40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
  sub_260E655F0(&qword_27FE55458, sub_260E65668);
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = sub_260E15FB4(v4, v6);
  *a2 = v9;
  return result;
}

uint64_t sub_260E64A5C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE553F0);
  v1 = __swift_project_value_buffer(v0, qword_27FE553F0);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E64B24()
{
  v0 = sub_260E687A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE55408 = result;
  return result;
}

ProductKit::VideoViewFeatureTimings::Section __swiftcall VideoViewFeatureTimings.Section.init(startTime:duration:)(Swift::Double startTime, Swift::Double duration)
{
  *v2 = startTime;
  v2[1] = duration;
  result.duration = duration;
  result.startTime = startTime;
  return result;
}

uint64_t sub_260E64B7C()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x6D69547472617473;
  }

  *v0;
  return result;
}

uint64_t sub_260E64BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E64CA0(uint64_t a1)
{
  v2 = sub_260E64EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E64CDC(uint64_t a1)
{
  v2 = sub_260E64EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoViewFeatureTimings.Section.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55410, &qword_260E70780);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E64EA0();
  sub_260E69944();
  v13[15] = 0;
  sub_260E697D4();
  if (!v2)
  {
    v13[14] = 1;
    sub_260E697D4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_260E64EA0()
{
  result = qword_27FE55418;
  if (!qword_27FE55418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55418);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.Section.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55420, &qword_260E70788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E64EA0();
  sub_260E69934();
  if (!v2)
  {
    v18 = 0;
    sub_260E69794();
    v12 = v11;
    v17 = 1;
    sub_260E69794();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E650F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260E69834();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260E6517C(uint64_t a1)
{
  v2 = sub_260E65398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E651B8(uint64_t a1)
{
  v2 = sub_260E65398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoViewFeatureTimings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55428, &qword_260E70790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E65398();

  sub_260E69944();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
  sub_260E655F0(&qword_27FE55440, sub_260E653EC);
  sub_260E697F4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_260E65398()
{
  result = qword_27FE55430;
  if (!qword_27FE55430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55430);
  }

  return result;
}

unint64_t sub_260E653EC()
{
  result = qword_27FE55448;
  if (!qword_27FE55448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55448);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55450, &qword_260E707A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E65398();
  sub_260E69934();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
    sub_260E655F0(&qword_27FE55458, sub_260E65668);
    sub_260E697B4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E655F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE55438, &qword_260E70798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260E65668()
{
  result = qword_27FE55460;
  if (!qword_27FE55460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55460);
  }

  return result;
}

uint64_t sub_260E656EC(uint64_t *a1, int a2)
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

uint64_t sub_260E65734(uint64_t result, int a2, int a3)
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

unint64_t sub_260E657B4()
{
  result = qword_27FE55468;
  if (!qword_27FE55468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55468);
  }

  return result;
}

unint64_t sub_260E6580C()
{
  result = qword_27FE55470;
  if (!qword_27FE55470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55470);
  }

  return result;
}

unint64_t sub_260E65864()
{
  result = qword_27FE55478;
  if (!qword_27FE55478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55478);
  }

  return result;
}

unint64_t sub_260E658BC()
{
  result = qword_27FE55480;
  if (!qword_27FE55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55480);
  }

  return result;
}

unint64_t sub_260E65914()
{
  result = qword_27FE55488;
  if (!qword_27FE55488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55488);
  }

  return result;
}

unint64_t sub_260E6596C()
{
  result = qword_27FE55490;
  if (!qword_27FE55490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55490);
  }

  return result;
}

char *sub_260E659C0(char *a1, int64_t a2, char a3)
{
  result = sub_260E65A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_260E659E0(char *a1, int64_t a2, char a3)
{
  result = sub_260E65B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_260E65A00(size_t a1, int64_t a2, char a3)
{
  result = sub_260E65C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_260E65A20(void *a1, int64_t a2, char a3)
{
  result = sub_260E65E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_260E65A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55498, &qword_260E70AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_260E65B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554B8, &qword_260E70B00);
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

size_t sub_260E65C68(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554A0, &unk_260E70AE0);
  v10 = *(type metadata accessor for iosmacHardware() - 8);
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
  v15 = *(type metadata accessor for iosmacHardware() - 8);
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

void *sub_260E65E40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554A8, &qword_260E70AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554B0, &qword_260E70AF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_260E65F88(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_260E69024();
  sub_260E698F4();
  sub_260E690C4();
  v4 = sub_260E69914();

  return sub_260E6605C(a1, v4);
}

unint64_t sub_260E66018(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_260E695E4();

  return sub_260E66160(a1, v5);
}

unint64_t sub_260E6605C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_260E69024();
      v9 = v8;
      if (v7 == sub_260E69024() && v9 == v10)
      {
        break;
      }

      v12 = sub_260E69834();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_260E66160(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_260E62D78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666F1100](v9, a1);
      sub_260E62DD4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_260E66228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554F0, &qword_260E70B38);
    v3 = sub_260E69744();
    v4 = a1 + 32;

    while (1)
    {
      sub_260E15684(v4, &v13, &qword_27FE542B8, &qword_260E6BFD0);
      v5 = v13;
      v6 = v14;
      result = sub_260E35BFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260E145CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_260E6637C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_260E69744();
    v10 = a1 + 32;

    while (1)
    {
      sub_260E15684(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_260E65F88(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_260E145CC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

CGImageRef sub_260E66494()
{
  v0 = sub_260E68D84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E68DA4();
  v7 = v6;
  v8 = sub_260E68974();
  v9 = CGImageSourceCreateWithData(v8, 0);

  if (!v9)
  {
    sub_260E15FB4(v5, v7);
    return 0;
  }

  if (CGImageSourceGetCount(v9) <= 0)
  {
    sub_260E15FB4(v5, v7);

    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);

  sub_260E15FB4(v5, v7);
  if (ImageAtIndex)
  {
    sub_260E68D94();
    v11 = sub_260E68D74();
    (*(v1 + 8))(v4, v0);
    if (v11 == 1)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v13 = sub_260E68FF4();
      v14 = [objc_opt_self() kernelWithString_];

      v15 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.803921569 Y:0.807843137 Z:0.819607843];
      if (v14)
      {
        v16 = v14;
        [v12 extent];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
        v25 = swift_allocObject();
        v49 = xmmword_260E6BDD0;
        *(v25 + 16) = xmmword_260E6BDD0;
        *(v25 + 56) = sub_260E157C4(0, &qword_27FE554C0, 0x277CBF758);
        *(v25 + 32) = v12;
        *(v25 + 88) = sub_260E157C4(0, &qword_27FE554C8, 0x277CBF788);
        *(v25 + 64) = v15;
        v26 = v12;
        v27 = v15;
        v28 = sub_260E691A4();

        v29 = [v16 applyWithExtent:v28 arguments:{v18, v20, v22, v24}];

        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554D0, &qword_260E70B20);
          inited = swift_initStackObject();
          v48 = v27;
          v31 = *MEMORY[0x277CBF910];
          *(inited + 32) = *MEMORY[0x277CBF910];
          *(inited + 16) = v49;
          v32 = MEMORY[0x277D839B0];
          *(inited + 40) = 0;
          v33 = *MEMORY[0x277CBF948];
          *(inited + 64) = v32;
          *(inited + 72) = v33;
          v34 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          v35 = v31;
          v36 = v33;
          v37 = [v34 init];
          *(inited + 104) = sub_260E157C4(0, &qword_27FE554D8, 0x277CBEB68);
          *(inited + 80) = v37;
          sub_260E6637C(inited, &qword_27FE554E8, &qword_260E70B30, &qword_27FE554E0, &qword_260E70B28);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554E0, &qword_260E70B28);
          swift_arrayDestroy();
          v38 = objc_allocWithZone(MEMORY[0x277CBF740]);
          type metadata accessor for CIContextOption(0);
          sub_260E66A4C();
          v39 = sub_260E68F84();

          v40 = [v38 initWithOptions_];

          [v26 extent];
          v41 = [v40 createCGImage:v29 fromRect:?];

          return v41;
        }
      }

      if (qword_27FE53E68 != -1)
      {
        swift_once();
      }

      v42 = sub_260E68E94();
      __swift_project_value_buffer(v42, qword_27FE5CBB8);
      v43 = sub_260E68E74();
      v44 = sub_260E69454();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_260E02000, v43, v44, "Failed to generate image from kernel", v45, 2u);
        MEMORY[0x2666F1EF0](v45, -1, -1);
      }

      return 0;
    }
  }

  return ImageAtIndex;
}

unint64_t sub_260E66A4C()
{
  result = qword_27FE54088;
  if (!qword_27FE54088)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54088);
  }

  return result;
}

unint64_t sub_260E66AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554F8, &qword_260E70B40);
    v3 = sub_260E69744();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_260E65F88(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_260E66BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
    v8 = sub_260E69744();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_260E15684(v10, v6, &qword_27FE54720, &qword_260E6D6A8);
      v13 = *v6;
      v12 = v6[1];
      result = sub_260E35BFC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
      result = sub_260E66D84(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

uint64_t sub_260E66D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E66DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_260E69924();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(*(a3 - 8) + 32))(&v14 - v11, a2, a3, v10);
  swift_storeEnumTagMultiPayload();
  return sub_260E66F10(a1, v12, a4);
}

uint64_t sub_260E66F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for UnsafeResumption() + 44);
  v6 = sub_260E69924();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_260E66FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260E69924();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  (*(v22 + 16))(&v25 - v20, a1, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v16, v21, a4);
    return sub_260E6722C(v16, v26, a3, a4);
  }

  else
  {
    v24 = *(v7 + 32);
    v24(v10, v21, a3);
    v24(*(*(v26 + 64) + 40), v10, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_260E6722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x282200958](a2, v7);
}

uint64_t sub_260E672D8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = sub_260E69334();
  if (v5 <= 0x3F)
  {
    result = sub_260E69924();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_260E67384(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v8 = v4 + ((v7 + 8) & ~v7) + 1;
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v11 = (a2 - 0x7FFFFFFF + ~(-1 << v9)) >> v9;
  if (v11 > 0xFFFE)
  {
    v10 = *(a1 + v8);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v11 <= 0xFE)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
LABEL_5:
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v12) ^ 0x80000000;
}

unsigned int *sub_260E67520(unsigned int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v7 = v5 + ((v6 + 8) & ~v6) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v8 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_33:
        *result = (a2 - 1);
        return result;
      }

      *(result + v7) = 0;
    }

    else if (v8)
    {
      *(result + v7) = 0;
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

    goto LABEL_33;
  }

  if (v7 <= 3)
  {
    v9 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v9 > 0xFFFE)
    {
      v8 = 4;
      if (a2 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    if (v9 < 0xFF)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_17:
  v11 = a2 & 0x7FFFFFFF;
  if (v7 >= 4)
  {
    v12 = result;
    bzero(result, v7);
    result = v12;
    *v12 = v11;
    v13 = 1;
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v13 = (v11 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_38:
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v14 = a2;
  v15 = a2 & ~(-1 << (8 * v7));
  v16 = result;
  bzero(result, v7);
  result = v16;
  if (v7 == 3)
  {
    *v16 = v15;
    *(v16 + 2) = BYTE2(v15);
    goto LABEL_38;
  }

  if (v7 == 2)
  {
    *v16 = v15;
    if (v8 > 1)
    {
LABEL_42:
      if (v8 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }

      return result;
    }
  }

  else
  {
    *v16 = v14;
    if (v8 > 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v8)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_260E67764(uint64_t a1, uint64_t a2, int *a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_260E6785C;

  return v8();
}

uint64_t sub_260E6785C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E682A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_260E67A3C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_260E68E94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_260E68E84();
}

uint64_t sub_260E67AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_260E67ADC, a4, 0);
}

uint64_t sub_260E67ADC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v2 + 352);
  v4 = *(v2 + 360);
  v0[2] = v0[9];
  v0[3] = v1;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_260E67BE0;

  return v8(v0 + 2);
}

uint64_t sub_260E67BE0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_260E67CF4;
  }

  else
  {
    v3 = sub_260E5DEDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E67D10()
{
  v20 = v0;
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_260E43774(v9, v8, &v19);
    *(v10 + 12) = 2080;
    v0[4] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_260E02000, v5, v6, "### %s ERROR -- %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  else
  {
    v16 = v0[12];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_260E67EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_260E67F98;

  return sub_260E20B28(a4, a5, a6);
}

uint64_t sub_260E67F98()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E680CC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_260E680CC()
{
  v20 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_260E43774(v9, v8, &v19);
    *(v10 + 12) = 2080;
    v0[2] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_260E02000, v5, v6, "### %s ERROR -- %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  else
  {
    v16 = v0[7];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_260E682EC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_260E68350(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E683D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MobileAssetResult()
{
  result = qword_27FE55608;
  if (!qword_27FE55608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E6848C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_260E68894();
  v2 = [v0 initWithURL_];

  if (v2)
  {
    return v2;
  }

  sub_260E69644();

  sub_260E68904();
  sub_260E194E8();
  v4 = sub_260E69804();
  MEMORY[0x2666F0C00](v4);

  result = sub_260E69704();
  __break(1u);
  return result;
}

unint64_t sub_260E6859C()
{
  sub_260E69644();

  sub_260E68904();
  sub_260E194E8();
  v0 = sub_260E69804();
  MEMORY[0x2666F0C00](v0);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000012;
}