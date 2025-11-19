uint64_t sub_2272E65A4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[11];
  v5 = (v4 + *(v0[30] + 32));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v6);
  sub_2272F1D58(v4, v1, type metadata accessor for InferenceProvider);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[40] = v9;
  sub_2272F1DC0(v1, v9 + v8, type metadata accessor for InferenceProvider);
  v10 = *(v7 + 24);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_2272E6774;
  v13 = v0[36];
  v14 = v0[34];

  return (v16)(v13, sub_2272F2158, v9, v14, v6, v7);
}

uint64_t sub_2272E6774()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_2272E6C00;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_2272E6890;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272E6890()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 232);
  v6 = *(v0 + 56);
  sub_227663E60();
  (*(v3 + 8))(v2, v4);
  sub_2276639C0();
  v7 = sub_227668870();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v39 = MEMORY[0x277D84F90];
    sub_226F203C8(0, v8, 0);
    v11 = v39;
    v12 = *(v10 + 16);
    v10 += 16;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v35 = *(v10 + 56);
    v36 = v12;
    v37 = v9;
    v34 = (v10 - 8);
    do
    {
      v14 = *(v0 + 224);
      v15 = *(v0 + 200);
      v16 = *(v0 + 184);
      v36(v15, v13, v16);
      sub_227668AE0();
      sub_227668B00();
      sub_227668AF0();
      sub_227668210();
      (*v34)(v15, v16);
      v18 = *(v39 + 16);
      v17 = *(v39 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F203C8(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 224);
      v20 = *(v0 + 208);
      *(v39 + 16) = v18 + 1;
      (*(v37 + 32))(v39 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v18, v19, v20);
      v13 += v35;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v21 = *(v0 + 232);
  v22 = *(v0 + 26);
  v23 = *(v0 + 56);
  v38 = *(*(v0 + 88) + *(*(v0 + 240) + 44));
  *(v0 + 40) = v21[4];
  v40 = sub_22766D140();
  v41 = v24;
  MEMORY[0x22AA98450](46, 0xE100000000000000);
  MEMORY[0x22AA98450](v21[5], v21[6]);
  *(v0 + 344) = v41;
  v25 = sub_226F46364(v11);
  *(v0 + 352) = v25;

  sub_227668880();
  *(v0 + 25) = v22;
  sub_2272F1AC4();
  sub_227663B80();
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);
  sub_227668890();
  *(v0 + 360) = sub_2276688B0();
  v28 = swift_task_alloc();
  *(v0 + 368) = v28;
  *v28 = v0;
  v28[1] = sub_2272E7340;
  v29 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  v43 = *(v0 + 312);

  return sub_227043188(v32, v40, v41, v25, v31, v29, v30, 1);
}

uint64_t sub_2272E6C00()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 336);
  *(v0 + 32) = v2;
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);

    (*(v9 + 32))(v7, v6, v10);
    sub_22766A680();
    v12 = *(v9 + 16);
    v12(v8, v7, v10);
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v19 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v12(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v17;
      v23 = *(v18 + 8);
      v23(v16, v22);
      *(v19 + 4) = v21;
      *v79 = v21;
      _os_log_impl(&dword_226E8E000, v13, v14, "[Inference] WorkoutPlanError: Failed to build schedule: %@", v19, 0xCu);
      sub_226E97D1C(v79, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v79, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {

      v35 = v17;
      v23 = *(v18 + 8);
      v23(v16, v35);
    }

    v36 = *(v0 + 168);
    v37 = *(*(v0 + 104) + 8);
    v37(*(v0 + 128), *(v0 + 96));
    v38 = sub_2274FFE78();
    v39 = *(v0 + 168);
    if (v38 == 13)
    {
      v80 = v23;
      v40 = *(v0 + 152);
      v41 = *(v0 + 136);
      v42 = *(v0 + 120);
      sub_22766A680();
      v43 = v12;
      v12(v40, v39, v41);
      v44 = sub_22766B380();
      v45 = sub_22766C890();
      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 144);
      v47 = *(v0 + 152);
      v49 = *(v0 + 136);
      if (v46)
      {
        v50 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v50 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        v12(v51, v47, v49);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        v53 = v49;
        v54 = v80;
        v80(v47, v53);
        *(v50 + 4) = v52;
        *v77 = v52;
        v43 = v12;
        _os_log_impl(&dword_226E8E000, v44, v45, "[Inference] Unmapped Inference error: %@", v50, 0xCu);
        sub_226E97D1C(v77, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v77, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      else
      {

        v59 = v49;
        v54 = v80;
        v80(v47, v59);
      }

      v60 = *(v0 + 168);
      v61 = *(v0 + 136);
      v62 = *(v0 + 104) + 8;
      v37(*(v0 + 120), *(v0 + 96));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v43(v63, v60, v61);
      swift_willThrow();
      v54(v60, v61);
    }

    else
    {
      v55 = v38;
      v57 = *(v0 + 136);
      v56 = *(v0 + 144);
      sub_2272F1A58();
      swift_allocError();
      *v58 = v55;
      swift_willThrow();
      v23(v39, v57);
    }
  }

  else
  {
    v24 = *(v0 + 112);

    sub_22766A680();
    v25 = v2;
    v26 = sub_22766B380();
    v27 = sub_22766C890();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_226E8E000, v26, v27, "[Inference] Unhandled schedule error: %@", v28, 0xCu);
      sub_226E97D1C(v29, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);

    (*(v32 + 8))(v33, v34);
    swift_willThrow();
  }

  v64 = *(v0 + 312);
  v65 = *(v0 + 288);
  v66 = *(v0 + 264);
  v68 = *(v0 + 224);
  v67 = *(v0 + 232);
  v69 = *(v0 + 200);
  v71 = *(v0 + 168);
  v70 = *(v0 + 176);
  v72 = *(v0 + 152);
  v73 = *(v0 + 160);
  v76 = *(v0 + 128);
  v78 = *(v0 + 120);
  v81 = *(v0 + 112);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_2272E7340()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v12 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v5 = v2[44];
    v4 = v2[45];
    v6 = v2[43];

    v7 = sub_2272E75D0;
  }

  else
  {
    v8 = v2[44];
    v9 = v2[45];
    v10 = v2[43];

    v7 = sub_2272E748C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2272E748C()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[19];
  v11 = v0[16];
  v12 = v0[15];
  v13 = v0[14];
  (*(v0[38] + 8))(v0[39], v0[37]);
  sub_2272F1E28(v3, MEMORY[0x277D501E8]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272E75D0()
{
  v1 = *(v0 + 232);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  sub_2272F1E28(v1, MEMORY[0x277D501E8]);
  v2 = *(v0 + 376);
  *(v0 + 32) = v2;
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);

    (*(v9 + 32))(v7, v6, v10);
    sub_22766A680();
    v12 = *(v9 + 16);
    v12(v8, v7, v10);
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v19 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v12(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v17;
      v23 = *(v18 + 8);
      v23(v16, v22);
      *(v19 + 4) = v21;
      *v79 = v21;
      _os_log_impl(&dword_226E8E000, v13, v14, "[Inference] WorkoutPlanError: Failed to build schedule: %@", v19, 0xCu);
      sub_226E97D1C(v79, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v79, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {

      v35 = v17;
      v23 = *(v18 + 8);
      v23(v16, v35);
    }

    v36 = *(v0 + 168);
    v37 = *(*(v0 + 104) + 8);
    v37(*(v0 + 128), *(v0 + 96));
    v38 = sub_2274FFE78();
    v39 = *(v0 + 168);
    if (v38 == 13)
    {
      v80 = v23;
      v40 = *(v0 + 152);
      v41 = *(v0 + 136);
      v42 = *(v0 + 120);
      sub_22766A680();
      v43 = v12;
      v12(v40, v39, v41);
      v44 = sub_22766B380();
      v45 = sub_22766C890();
      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 144);
      v47 = *(v0 + 152);
      v49 = *(v0 + 136);
      if (v46)
      {
        v50 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v50 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        v12(v51, v47, v49);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        v53 = v49;
        v54 = v80;
        v80(v47, v53);
        *(v50 + 4) = v52;
        *v77 = v52;
        v43 = v12;
        _os_log_impl(&dword_226E8E000, v44, v45, "[Inference] Unmapped Inference error: %@", v50, 0xCu);
        sub_226E97D1C(v77, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v77, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      else
      {

        v59 = v49;
        v54 = v80;
        v80(v47, v59);
      }

      v60 = *(v0 + 168);
      v61 = *(v0 + 136);
      v62 = *(v0 + 104) + 8;
      v37(*(v0 + 120), *(v0 + 96));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v43(v63, v60, v61);
      swift_willThrow();
      v54(v60, v61);
    }

    else
    {
      v55 = v38;
      v57 = *(v0 + 136);
      v56 = *(v0 + 144);
      sub_2272F1A58();
      swift_allocError();
      *v58 = v55;
      swift_willThrow();
      v23(v39, v57);
    }
  }

  else
  {
    v24 = *(v0 + 112);

    sub_22766A680();
    v25 = v2;
    v26 = sub_22766B380();
    v27 = sub_22766C890();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_226E8E000, v26, v27, "[Inference] Unhandled schedule error: %@", v28, 0xCu);
      sub_226E97D1C(v29, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);

    (*(v32 + 8))(v33, v34);
    swift_willThrow();
  }

  v64 = *(v0 + 312);
  v65 = *(v0 + 288);
  v66 = *(v0 + 264);
  v68 = *(v0 + 224);
  v67 = *(v0 + 232);
  v69 = *(v0 + 200);
  v71 = *(v0 + 168);
  v70 = *(v0 + 176);
  v72 = *(v0 + 152);
  v73 = *(v0 + 160);
  v76 = *(v0 + 128);
  v78 = *(v0 + 120);
  v81 = *(v0 + 112);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_2272E7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2276627D0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_227668F90();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_22766B390();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_227662CA0();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v17 = sub_227662C60();
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = sub_2276688C0();
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E7FDC, 0, 0);
}

uint64_t sub_2272E7FDC()
{
  v48 = v0;
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v45 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[2];
  sub_227662F30();
  sub_226FFF5EC(v1);
  (*(v3 + 8))(v2, v45);
  sub_227662F40();
  (*(v5 + 32))(v6, v4, v7);
  v9 = (*(v5 + 88))(v6, v7);
  if (v9 != *MEMORY[0x277D494D8] && v9 != *MEMORY[0x277D494E0] && v9 != *MEMORY[0x277D494E8])
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = v0[3];
  sub_22766A680();
  (*(v12 + 16))(v11, v14, v13);
  v15 = sub_22766B380();
  v16 = sub_22766C880();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[13];
  v18 = v0[14];
  v21 = v0[11];
  v20 = v0[12];
  v23 = v0[9];
  v22 = v0[10];
  if (v17)
  {
    v46 = v0[12];
    log = v15;
    v25 = v0[7];
    v24 = v0[8];
    v40 = v0[13];
    v26 = v0[6];
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v27 = 136315394;
    v44 = v18;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v28 = sub_22766D140();
    v41 = v16;
    v30 = v29;
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    v31 = sub_226E97AE8(v28, v30, &v47);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_227665F30();
    v34 = sub_226E97AE8(v32, v33, &v47);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_226E8E000, log, v41, "[Inference] [%s] Scaffold validator called with scaffold for %s.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v42, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v40 + 8))(v44, v46);
  }

  else
  {

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v35 = swift_task_alloc();
  v0[25] = v35;
  *v35 = v0;
  v35[1] = sub_2272E83CC;
  v36 = v0[24];
  v38 = v0[4];
  v37 = v0[5];

  return sub_2272EF4F0(v36, v37);
}

uint64_t sub_2272E83CC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2272E85B8;
  }

  else
  {
    v3 = sub_2272E84E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272E84E0()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2272E85B8()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_2272E8690(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2272E86B0, 0, 0);
}

uint64_t sub_2272E86B0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_2272E8710();
  v3 = v0[1];

  return v3();
}

unint64_t sub_2272E8710()
{
  v99 = sub_227662A90();
  v97 = *(v99 - 8);
  v1 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v85 - v11;
  v13 = sub_227667100();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v13);
  v86 = v15;
  v87 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v85 - v17;
  v85[3] = *(v0 + *(type metadata accessor for InferenceProvider() + 36));
  v88 = v18;
  sub_22739FED0(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8F0, &unk_22767F810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  *(inited + 32) = 0;
  v85[2] = inited + 32;
  v100 = sub_227662E50();
  LOBYTE(v101) = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_2272EF388(&unk_27D7BC900, &qword_27D7B8C38, &unk_227682250);
  sub_22766CDA0();
  v92 = inited;
  *(inited + 80) = 9;
  sub_227662E30();
  v21 = sub_2276627D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v12, 1, v21) == 1)
  {
    sub_226E97D1C(v12, &unk_27D7BB9D0, &qword_227671550);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_227662770();
    v25 = v26;
    (*(v22 + 8))(v12, v21);
  }

  v100 = v24;
  v101 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2272EF388(&unk_27D7BC910, &qword_27D7BBC30, &unk_2276720D0);
  v27 = v92;
  sub_22766CDA0();
  *(v27 + 128) = 3;
  sub_227662E40();
  if (v23(v9, 1, v21) == 1)
  {
    sub_226E97D1C(v9, &unk_27D7BB9D0, &qword_227671550);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_227662770();
    v29 = v30;
    (*(v22 + 8))(v9, v21);
  }

  v100 = v28;
  v101 = v29;
  v31 = v92;
  sub_22766CDA0();
  *(v31 + 176) = 7;
  v32 = sub_227662DA0();
  v33 = *(v32 + 16);
  if (v33)
  {
    v108 = MEMORY[0x277D84F90];
    sub_226F1FC48(0, v33, 0);
    v34 = v108;
    v35 = v97;
    v36 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v85[1] = v32;
    v37 = v32 + v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v95 = *(v35 + 16);
    v96 = v38;
    v97 = v35 + 16;
    v93 = *(v35 + 72);
    v94 = (v35 + 8);
    while (1)
    {
      v95(v98, v37, v99);
      v105[0] = 0x644961657261;
      v105[1] = 0xE600000000000000;
      v100 = sub_227662A70();
      v101 = v39;
      sub_22766CDA0();
      v106[0] = 0x74656B637562;
      v106[1] = 0xE600000000000000;
      v100 = sub_227662A80();
      sub_22766CDA0();
      v107[0] = 0x6E656D7461657274;
      v107[1] = 0xEB00000000644974;
      v100 = sub_227662A60();
      v101 = v40;
      sub_22766CDA0();
      v41 = sub_22766D010();

      sub_226E93170(v105, &v100, &qword_27D7BC920, &qword_22767F820);
      v43 = v100;
      v42 = v101;
      result = sub_226E92000(v100, v101);
      if (v45)
      {
        break;
      }

      v46 = v41 + 8;
      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v47 = (v41[6] + 16 * result);
      *v47 = v43;
      v47[1] = v42;
      v48 = v41[7] + 40 * result;
      v49 = v102;
      v50 = v103;
      *(v48 + 32) = v104;
      *v48 = v49;
      *(v48 + 16) = v50;
      v51 = v41[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_22;
      }

      v41[2] = v53;
      sub_226E93170(v106, &v100, &qword_27D7BC920, &qword_22767F820);
      v54 = v100;
      v55 = v101;
      result = sub_226E92000(v100, v101);
      if (v56)
      {
        break;
      }

      *(v46 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v57 = (v41[6] + 16 * result);
      *v57 = v54;
      v57[1] = v55;
      v58 = v41[7] + 40 * result;
      v59 = v102;
      v60 = v103;
      *(v58 + 32) = v104;
      *v58 = v59;
      *(v58 + 16) = v60;
      v61 = v41[2];
      v52 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v52)
      {
        goto LABEL_22;
      }

      v41[2] = v62;
      sub_226E93170(v107, &v100, &qword_27D7BC920, &qword_22767F820);
      v63 = v100;
      v64 = v101;
      result = sub_226E92000(v100, v101);
      if (v65)
      {
        break;
      }

      *(v46 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v66 = (v41[6] + 16 * result);
      *v66 = v63;
      v66[1] = v64;
      v67 = v41[7] + 40 * result;
      v68 = v102;
      v69 = v103;
      *(v67 + 32) = v104;
      *v67 = v68;
      *(v67 + 16) = v69;
      v70 = v41[2];
      v52 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v52)
      {
        goto LABEL_22;
      }

      v41[2] = v71;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC920, &qword_22767F820);
      swift_arrayDestroy();
      (*v94)(v98, v99);
      v108 = v34;
      v73 = *(v34 + 16);
      v72 = *(v34 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_226F1FC48((v72 > 1), v73 + 1, 1);
        v34 = v108;
      }

      *(v34 + 16) = v73 + 1;
      *(v34 + 8 * v73 + 32) = v41;
      v37 += v93;
      if (!--v33)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
LABEL_20:
    v100 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC928, &qword_22767F828);
    sub_2272EF3F0();
    v74 = v92;
    sub_22766CDA0();
    v99 = sub_227149C78(v74);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB778, &qword_22767AE10);
    swift_arrayDestroy();
    v75 = v91;
    sub_22766C490();
    v76 = sub_22766C4B0();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = swift_allocObject();
    swift_weakInit();
    v79 = v88;
    v78 = v89;
    v80 = v87;
    v81 = v90;
    (*(v89 + 16))(v87, v88, v90);
    v82 = (*(v78 + 80) + 40) & ~*(v78 + 80);
    v83 = (v86 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    *(v84 + 2) = 0;
    *(v84 + 3) = 0;
    *(v84 + 4) = v77;
    (*(v78 + 32))(&v84[v82], v80, v81);
    *&v84[v83] = v99;
    sub_2272CA940(0, 0, v75, &unk_22767CF40, v84);

    return (*(v78 + 8))(v79, v81);
  }

  return result;
}

uint64_t sub_2272E9134@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InferenceProvider();
  v7 = *__swift_project_boxed_opaque_existential_0((a2 + *(v6 + 28)), *(a2 + *(v6 + 28) + 24));
  return sub_226EAF48C(a1, a3);
}

uint64_t sub_2272E9194(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = 0;
  v4 = sub_227664010();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v61 = v9 + 16;
  v62 = v9;
  v58 = (v9 + 8);
  v54 = (v9 + 40);
  v55 = (v9 + 32);
  v63 = a2;

  v17 = MEMORY[0x277D84F98];
  v52 = 0;
  v56 = v16;
  v57 = a2 + 56;
  v59 = v11;
  v60 = v8;
  while (v15)
  {
    v18 = v17;
    v19 = v8;
    v65 = v18;
    v20 = v3;
LABEL_12:
    v22 = *(v63 + 48);
    v64 = *(v62 + 72);
    v23 = *(v62 + 16);
    v8 = v4;
    v23(v11, v22 + v64 * (__clz(__rbit64(v15)) | (v20 << 6)), v4);
    v24 = sub_227663FD0();
    v26 = v25;
    v23(v19, v11, v4);
    v27 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v27;
    v30 = sub_226E92000(v24, v26);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226FF44EC();
      }
    }

    else
    {
      sub_226FEBD5C(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_226E92000(v24, v26);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_37;
      }

      v30 = v35;
    }

    v4 = v8;
    v15 &= v15 - 1;
    if (v34)
    {

      v17 = v66;
      v8 = v60;
      (*v54)(v66[7] + v30 * v64, v60, v4);
      v11 = v59;
      (*v58)(v59, v4);
    }

    else
    {
      v17 = v66;
      v66[(v30 >> 6) + 8] |= 1 << v30;
      v37 = (v17[6] + 16 * v30);
      *v37 = v24;
      v37[1] = v26;
      v8 = v60;
      (*v55)(v17[7] + v30 * v64, v60, v4);
      v11 = v59;
      (*v58)(v59, v4);
      v38 = v17[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_35;
      }

      v17[2] = v40;
    }

    v3 = v20;
    v16 = v56;
    v12 = v57;
  }

  while (1)
  {
    v20 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v3;
    if (v15)
    {
      v21 = v17;
      v19 = v8;
      v65 = v21;
      goto LABEL_12;
    }
  }

  v68 = MEMORY[0x277D84FA0];
  v41 = v53;
  v42 = v53 + 56;
  v43 = 1 << *(v53 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v53 + 56);
  v46 = (v43 + 63) >> 6;

  v47 = 0;
  v8 = v52;
  if (!v45)
  {
LABEL_25:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_33;
      }

      if (v48 >= v46)
      {

        return v68;
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v48 = v47;
LABEL_28:
    v49 = *(v41 + 48) + ((v48 << 10) | (16 * __clz(__rbit64(v45))));
    v50 = *v49;
    LOBYTE(v49) = *(v49 + 8);
    v66 = v50;
    v67 = v49;

    sub_2272E99B4(&v68, &v66, v17);
    if (v8)
    {
      break;
    }

    v45 &= v45 - 1;

    v47 = v48;
    if (!v45)
    {
      goto LABEL_25;
    }
  }

LABEL_36:

  __break(1u);
LABEL_37:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2272E9650@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char **a4@<X8>)
{
  sub_227662FE0();
  sub_227663000();
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_2272DD664(a2, a3);
  swift_beginAccess();
  v18 = sub_22766A080();
  v20 = v19;
  v21 = v17;
  MEMORY[0x22AA985C0]();
  if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v18(v39, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v22 = v40;
  v23 = sub_226EE010C(100);
  if (v22)
  {
    swift_setDeallocating();

    v24 = *(v14 + 40);

    v25 = qword_2813B2078;
    v26 = sub_22766A100();
    (*(*(v26 - 8) + 8))(v14 + v25, v26);
    v27 = *(*v14 + 48);
    v28 = *(*v14 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v30 = v23;
    swift_setDeallocating();

    v31 = *(v14 + 40);

    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v14 + v32, v33);
    v34 = *(*v14 + 48);
    v35 = *(*v14 + 52);
    result = swift_deallocClassInstance();
    *a4 = v30;
  }

  return result;
}

uint64_t sub_2272E997C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F87F74(a1);
  if (!v2)
  {
    result = sub_22704DD68(result);
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2272E99B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276660A0();
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v87 - v14;
  v16 = sub_227664010();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v23 = *a2;
  v24 = *(a2 + 8);
  if (v24 > 4)
  {
    if (*(a2 + 8) > 7u)
    {
      if (v24 == 8)
      {
        v67 = sub_2272DC6E4(*a2, 10);
        v68 = *(v67 + 16);
        if (v68)
        {
          v69 = v67 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v70 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v69, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v69 += v70;
            --v68;
          }

          while (v68);
        }
      }

      else if (v24 == 9)
      {
        v34 = sub_2272DC9E4(*a2, sub_226F50E1C, MEMORY[0x277D519F8], 11);
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = v34 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v37 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v36, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v36 += v37;
            --v35;
          }

          while (v35);
        }
      }

      else
      {
        v83 = sub_2272DC6E4(*a2, 12);
        v84 = *(v83 + 16);
        if (v84)
        {
          v85 = v83 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v86 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v85, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v85 += v86;
            --v84;
          }

          while (v84);
        }
      }
    }

    else
    {
      v25 = *a2;
      if (v24 == 5)
      {
        v63 = sub_2272DC6E4(v25, 5);
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = v63 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v66 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v65, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v65 += v66;
            --v64;
          }

          while (v64);
        }
      }

      else if (v24 == 6)
      {
        v26 = sub_2272DC6E4(v25, 7);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = v26 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v29 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v28, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v28 += v29;
            --v27;
          }

          while (v27);
        }
      }

      else
      {
        v79 = sub_2272DC6E4(v25, 8);
        v80 = *(v79 + 16);
        if (v80)
        {
          v81 = v79 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
          v82 = *(v100 + 72);
          do
          {
            sub_2272F1D58(v81, v10, MEMORY[0x277D52060]);
            sub_2270B8C34(v13, v10);
            sub_2272F1E28(v13, MEMORY[0x277D52060]);
            v81 += v82;
            --v80;
          }

          while (v80);
        }
      }
    }
  }

  v98 = v15;
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v59 = sub_2272DC6E4(v23, 1);
      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = v59 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v62 = *(v100 + 72);
        do
        {
          sub_2272F1D58(v61, v10, MEMORY[0x277D52060]);
          sub_2270B8C34(v13, v10);
          sub_2272F1E28(v13, MEMORY[0x277D52060]);
          v61 += v62;
          --v60;
        }

        while (v60);
      }
    }

    else if (v24 == 3)
    {
      v30 = sub_2272DC6E4(v23, 3);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v30 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v33 = *(v100 + 72);
        do
        {
          sub_2272F1D58(v32, v10, MEMORY[0x277D52060]);
          sub_2270B8C34(v13, v10);
          sub_2272F1E28(v13, MEMORY[0x277D52060]);
          v32 += v33;
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v71 = sub_2272DC6E4(v23, 4);
      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = v71 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v74 = *(v100 + 72);
        do
        {
          sub_2272F1D58(v73, v10, MEMORY[0x277D52060]);
          sub_2270B8C34(v13, v10);
          sub_2272F1E28(v13, MEMORY[0x277D52060]);
          v73 += v74;
          --v72;
        }

        while (v72);
      }
    }
  }

  if (v24)
  {
    v75 = sub_2272DC9E4(v23, sub_226ED978C, MEMORY[0x277D50588], 0);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = v75 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v78 = *(v100 + 72);
      do
      {
        sub_2272F1D58(v77, v10, MEMORY[0x277D52060]);
        sub_2270B8C34(v13, v10);
        sub_2272F1E28(v13, MEMORY[0x277D52060]);
        v77 += v78;
        --v76;
      }

      while (v76);
    }
  }

  v94 = v19;
  v95 = &v87 - v20;
  v90 = v21;
  v91 = v6;
  v99 = a3;
  v96 = v3;
  v38 = 1 << *(v23 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v23 + 56);
  v41 = (v38 + 63) >> 6;
  v92 = v21 + 16;
  v93 = v22;
  v88 = (v21 + 8);
  v89 = v21 + 32;

  v43 = 0;
  v97 = MEMORY[0x277D84F90];
  while (v40)
  {
LABEL_32:
    v45 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v101 = *(*(v23 + 48) + ((v43 << 9) | (8 * v45)));
    v46 = sub_22766D140();
    if (*(v99 + 16))
    {
      v48 = sub_226E92000(v46, v47);
      v50 = v49;

      if (v50)
      {
        v51 = v90;
        v52 = *(v99 + 56) + *(v90 + 72) * v48;
        v87 = *(v90 + 16);
        v53 = v94;
        v87(v93, v52, v94);
        v54 = v95;
        (*(v51 + 32))(v95, v93, v53);
        v87(v98, v54, v53);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2273A52C0(0, v97[2] + 1, 1, v97);
        }

        v56 = v97[2];
        v55 = v97[3];
        if (v56 >= v55 >> 1)
        {
          v97 = sub_2273A52C0(v55 > 1, v56 + 1, 1, v97);
        }

        (*v88)();
        v58 = v97;
        v57 = v98;
        v97[2] = v56 + 1;
        result = sub_2272F1DC0(v57, v58 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v56, MEMORY[0x277D52060]);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v41)
    {

      sub_227125A04(v97);
    }

    v40 = *(v23 + 56 + 8 * v44);
    ++v43;
    if (v40)
    {
      v43 = v44;
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall PersonalizedWorkoutPlanScaffold.countSplits()()
{
  v0 = sub_227668B10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2276688A0();
  if (result < -9)
  {
    goto LABEL_47;
  }

  v6 = result;
  v7 = result / 5;
  v8 = result / 5 + 1;
  if (result < -4)
  {
    v9 = MEMORY[0x277D84F90];
    if (result / 5 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_22766C380();
    v9 = result;
    *(result + 16) = v8;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v9[4] = 0;
  if ((v6 + 4) >= 9)
  {
    bzero(v9 + 5, 8 * v7);
  }

LABEL_8:
  if (!v9[2])
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9[4] = 1;
  result = sub_227668870();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v31 = v6;
    v32 = v11;
    v12 = 0;
    v39 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v37 = v1 + 8;
    v38 = v1 + 16;
    v35 = v1;
    v36 = v0;
    v33 = result;
    v34 = v4;
    while (v12 < *(v10 + 16))
    {
      (*(v1 + 16))(v4, v39 + *(v1 + 72) * v12, v0);

      v13 = sub_227668B00();
      result = (*(v1 + 8))(v4, v0);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = v9;
        while (v15 < *(v13 + 16))
        {
          v17 = *(v13 + 32 + 8 * v15);
          v18 = v17 / 5;
          if (v17 >= 5 && v7 >= v18)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v20 = v9[2];
              if (v20)
              {
LABEL_22:
                v21 = 0;
                v22 = v16 + 8 * v18 + 32;
                while ((v18 + v21) < *(v16 + 16))
                {
                  v23 = v9[v21 + 4];
                  v24 = *(v22 + 8 * v21);
                  v25 = __OFADD__(v24, v23);
                  v26 = v24 + v23;
                  if (v25)
                  {
                    goto LABEL_43;
                  }

                  *(v22 + 8 * v21) = v26;
                  if (v7 - v18 == v21)
                  {
                    goto LABEL_14;
                  }

                  if (++v21 >= v20)
                  {
                    goto LABEL_41;
                  }
                }

                goto LABEL_42;
              }
            }

            else
            {
              result = sub_2272EC328(v16);
              v16 = result;
              v20 = v9[2];
              if (v20)
              {
                goto LABEL_22;
              }
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            break;
          }

LABEL_14:
          if (++v15 == v14)
          {

            v9 = v16;
            v1 = v35;
            v0 = v36;
            v10 = v33;
            v4 = v34;
            v11 = v32;
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_32:
      if (++v12 == v11)
      {

        v6 = v31;
        goto LABEL_35;
      }
    }

    goto LABEL_46;
  }

LABEL_35:
  if (v6 < 5)
  {
    goto LABEL_49;
  }

  if (v9[2] > v7)
  {
    v27 = 0;
    for (i = 5; ; ++i)
    {
      v29 = v9[i];
      v25 = __OFADD__(v27, v29);
      v27 += v29;
      if (v25)
      {
        break;
      }

      if (!--v7)
      {

        return v27;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2272EA784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = sub_226EB16F8(a1);
  if (!v5)
  {
    v12 = sub_2272DCD18(result);

    v13 = *(a2 + *(type metadata accessor for InferenceProvider() + 44));
    v14 = sub_226F3E6A8(v12);

    v15 = sub_227663E90();
    v16 = sub_22703BF7C(v14, a3, v15, a4, a1);

    *a5 = v16;
  }

  return result;
}

uint64_t sub_2272EA868@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_2272DDC00();
  if (v2)
  {

    swift_setDeallocating();

    v17 = *(v12 + 40);

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v12 + v18, v19);
    v20 = *(*v12 + 48);
    v21 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v23 = v15;
    v24 = v16;

    swift_setDeallocating();

    v25 = *(v12 + 40);

    v26 = qword_2813B2078;
    v27 = sub_22766A100();
    (*(*(v27 - 8) + 8))(v12 + v26, v27);
    v28 = *(*v12 + 48);
    v29 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v23;
    a2[1] = v24;
  }

  return result;
}

uint64_t sub_2272EAA9C(void **a1)
{
  v2 = *(sub_227668630() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117648(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2272EAB44(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2272EAB44(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227668630();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227668630() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2272EB010(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2272EAC70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2272EAC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_227668630();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227668620();
      v34 = v61;
      sub_227668620();
      v64 = sub_2276626B0();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2272EB010(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_227662750();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_227668630();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_2271171D0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_2272EBC10(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2271171D0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_227117144(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_227668620();
      v36 = v160;
      sub_227668620();
      LODWORD(v150) = sub_2276626B0();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_227668620();
        v48 = v160;
        sub_227668620();
        LOBYTE(v163) = sub_2276626B0() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_2272EBC10(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2271171D0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_227117144(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_227668620();
    v122 = v160;
    sub_227668620();
    LODWORD(v163) = sub_2276626B0();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2272EBC10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_227662750();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_227668630();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_227668620();
            v51 = v69;
            sub_227668620();
            v71 = sub_2276626B0();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_227668620();
        v31 = v69;
        sub_227668620();
        v71 = sub_2276626B0();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_2271171E4(&v78, &v77, &v76);
  return 1;
}

uint64_t type metadata accessor for InferenceProvider()
{
  result = qword_2813A2B20;
  if (!qword_2813A2B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272EC3B0()
{
  sub_226F57660();
  if (v0 <= 0x3F)
  {
    sub_2272EC504(319, qword_2813A4CD8);
    if (v1 <= 0x3F)
    {
      sub_2272EC504(319, qword_28139F340);
      if (v2 <= 0x3F)
      {
        sub_2272EC504(319, qword_28139DD58);
        if (v3 <= 0x3F)
        {
          sub_2272EC504(319, &qword_28139F240);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WorkoutPlanAnalyticsReporter();
            if (v5 <= 0x3F)
            {
              type metadata accessor for WorkoutPlanInputValidator();
              if (v6 <= 0x3F)
              {
                type metadata accessor for WorkoutPlanProvider();
                if (v7 <= 0x3F)
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

uint64_t sub_2272EC504(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2272EC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v6 = sub_22766B3B0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22766B3F0();
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransportSerializableJournalRecorder();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_227668D90();
  v36[3] = v17;
  v36[4] = MEMORY[0x277D53890];
  v36[5] = MEMORY[0x277D53898];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a3, v17);
  v19 = *(a4 + *(v14 + 32));
  sub_2272F1D58(a4, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v36, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2272F1DC0(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for TransportSerializableJournalRecorder);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  sub_2272EF36C(v35, (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_107;
  v25 = _Block_copy(aBlock);

  sub_22766B3D0();
  v33 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v25);
  _Block_release(v25);
  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2272EC9F8(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceProvider() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_2272E3AD0(a1, v1 + v5);
}

uint64_t sub_2272ECB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v6 = sub_22766B3B0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22766B3F0();
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransportSerializableJournalRecorder();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_2276671E0();
  v36[3] = v17;
  v36[4] = MEMORY[0x277D52C50];
  v36[5] = MEMORY[0x277D52C58];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a3, v17);
  v19 = *(a4 + *(v14 + 32));
  sub_2272F1D58(a4, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v36, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2272F1DC0(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for TransportSerializableJournalRecorder);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  sub_2272EF36C(v35, (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272EF384;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_24;
  v25 = _Block_copy(aBlock);

  sub_22766B3D0();
  v33 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v25);
  _Block_release(v25);
  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2272ECFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v6 = sub_22766B3B0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22766B3F0();
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransportSerializableJournalRecorder();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_227668850();
  v36[3] = v17;
  v36[4] = MEMORY[0x277D53600];
  v36[5] = MEMORY[0x277D53608];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a3, v17);
  v19 = *(a4 + *(v14 + 32));
  sub_2272F1D58(a4, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v36, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2272F1DC0(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for TransportSerializableJournalRecorder);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  sub_2272EF36C(v35, (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_121;
  v25 = _Block_copy(aBlock);

  sub_22766B3D0();
  v33 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v25);
  _Block_release(v25);
  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2272ED408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v6 = sub_22766B3B0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22766B3F0();
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransportSerializableJournalRecorder();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_2276689A0();
  v36[3] = v17;
  v36[4] = MEMORY[0x277D536A0];
  v36[5] = MEMORY[0x277D536A8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a3, v17);
  v19 = *(a4 + *(v14 + 32));
  sub_2272F1D58(a4, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v36, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2272F1DC0(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for TransportSerializableJournalRecorder);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  sub_2272EF36C(v35, (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_114;
  v25 = _Block_copy(aBlock);

  sub_22766B3D0();
  v33 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v25);
  _Block_release(v25);
  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2272ED864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v28 = a1;
  v6 = sub_22766B3B0();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22766B3F0();
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransportSerializableJournalRecorder();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = sub_2276688C0();
  v36[3] = v17;
  v36[4] = MEMORY[0x277D53620];
  v36[5] = MEMORY[0x277D53628];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a3, v17);
  v19 = *(a4 + *(v14 + 32));
  sub_2272F1D58(a4, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v36, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2272F1DC0(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for TransportSerializableJournalRecorder);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  sub_2272EF36C(v35, (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_68;
  v25 = _Block_copy(aBlock);

  sub_22766B3D0();
  v33 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v25);
  _Block_release(v25);
  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v12, v31);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2272EDCC0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227664010();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = sub_227667370();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v2[13] = *(v8 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProvider();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v2[18] = *(v10 + 64);
  v2[19] = swift_task_alloc();
  v11 = sub_227663FA0();
  v2[20] = v11;
  v12 = *(v11 - 8);
  v2[21] = v12;
  v2[22] = *(v12 + 64);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272EDF08, 0, 0);
}

uint64_t sub_2272EDF08()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 40);
  v5 = *(*(v0 + 128) + 32);
  *(v0 + 248) = v5;
  v6 = *(v4 + v5 + 24);
  v7 = *(v4 + v5 + 32);
  __swift_project_boxed_opaque_existential_0((v4 + v5), v6);
  sub_2272F1D58(v4, v1, type metadata accessor for InferenceProvider);
  v8 = *(v3 + 80);
  *(v0 + 252) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 200) = v10;
  sub_2272F1DC0(v1, v10 + v9, type metadata accessor for InferenceProvider);
  v11 = *(v7 + 24);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  *v13 = v0;
  v13[1] = sub_2272EE0E4;
  v14 = *(v0 + 192);
  v15 = *(v0 + 160);

  return (v17)(v14, sub_2272F2158, v10, v15, v6, v7);
}

uint64_t sub_2272EE0E4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_2272EE6B4;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_2272EE200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272EE200()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v45 = *(v0 + 48);
  sub_227663E60();
  *(v0 + 16) = sub_227663E90();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_226E9CFD0(&qword_27D7B9E50, &unk_27D7BC9C0, &unk_227676780);
  sub_22766C200();

  sub_226E93170(v4, v3, &qword_27D7BC9B8, &unk_227682440);
  v6 = (*(v5 + 48))(v3, 1, v45);
  v7 = *(v0 + 80);
  if (v6 != 1)
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    (*(v11 + 32))(v9, *(v0 + 72), v10);
    sub_227664000();
    v13 = v12;
    (*(v11 + 8))(v9, v10);
    result = sub_226E97D1C(v7, &qword_27D7BC9B8, &unk_227682440);
    v15 = v13 / 60.0;
    if (COERCE__INT64(fabs(v13 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        v8 = v15;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_226E97D1C(*(v0 + 80), &qword_27D7BC9B8, &unk_227682440);
  v8 = 45;
LABEL_7:
  v43 = v8;
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v36 = *(v0 + 144);
  v37 = v19;
  v20 = *(v0 + 112);
  v34 = *(v0 + 192);
  v35 = *(v0 + 120);
  v39 = v20;
  v21 = *(v0 + 96);
  v40 = *(v0 + 176);
  v41 = *(v0 + 104);
  v22 = *(v0 + 88);
  v38 = v22;
  v23 = *(v0 + 40);
  v33 = (*(v0 + 252) + 16) & ~*(v0 + 252);
  v24 = (v23 + *(v0 + 248));
  v46 = v24[3];
  v42 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v46);
  sub_2272F1D58(v23, v18, type metadata accessor for InferenceProvider);
  (*(v17 + 16))(v16, v34, v19);
  (*(v21 + 16))(v20, v35, v22);
  v25 = (v33 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + *(v17 + 80) + 8) & ~*(v17 + 80);
  v27 = (v40 + *(v21 + 80) + v26) & ~*(v21 + 80);
  v28 = swift_allocObject();
  *(v0 + 224) = v28;
  sub_2272F1DC0(v18, v28 + v33, type metadata accessor for InferenceProvider);
  *(v28 + v25) = v43;
  (*(v17 + 32))(v28 + v26, v16, v37);
  (*(v21 + 32))(v28 + v27, v39, v38);
  v29 = *(v42 + 24);
  v44 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 232) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9D0, &unk_2276766A0);
  *v31 = v0;
  v31[1] = sub_2272EE780;

  return (v44)(v0 + 24, sub_2272F1F04, v28, v32, v46, v42);
}

uint64_t sub_2272EE6B4()
{
  v1 = v0[25];

  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2272EE780()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_2272EEC14;
  }

  else
  {
    v6 = sub_2272EE8B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2272EE8B4()
{
  v42 = v0;
  v1 = v0[3];
  v39 = v0[4];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  v38 = MEMORY[0x277D84F90];
  while (v4)
  {
    v8 = v4;
LABEL_10:
    v4 = (v8 - 1) & v8;
    if (*(v39 + 16))
    {
      v10 = __clz(__rbit64(v8)) | (v7 << 6);
      v11 = (*(v1 + 48) + 16 * v10);
      v12 = *(*(v1 + 56) + 8 * v10);
      v13 = v0[4];
      v14 = *v11;
      v15 = v11[1];

      v16 = sub_226E92000(v14, v15);
      if (v17)
      {
        v18 = *(v39 + 56) + 24 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v36 = *(v18 + 16);
        sub_226EB396C(*v18, v20, v36);

        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((result & 1) == 0)
        {
          result = sub_2273A4FB0(0, v38[2] + 1, 1, v38);
          v38 = result;
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_2273A4FB0((v21 > 1), v22 + 1, 1, v38);
          v38 = result;
        }

        v38[2] = v22 + 1;
        v23 = &v38[4 * v22];
        v23[4] = v37;
        v23[5] = v20;
        *(v23 + 48) = v36;
        v23[7] = v12;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v8 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (v38[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
    v24 = sub_22766D010();
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
  }

  v25 = v0[30];
  v41 = v24;
  sub_22704B3FC(v38, 1, &v41);
  if (v25)
  {

    return swift_unexpectedError();
  }

  else
  {
    v26 = v0[23];
    v27 = v0[24];
    v28 = v0[20];
    v29 = v0[21];
    v30 = v0[19];
    v31 = v0[14];
    v33 = v0[9];
    v32 = v0[10];
    v40 = v0[8];
    (*(v0[12] + 8))(v0[15], v0[11]);
    (*(v29 + 8))(v27, v28);
    v34 = v41;

    v35 = v0[1];

    return v35(v34);
  }
}

uint64_t sub_2272EEC14()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[12] + 8))(v0[15], v0[11]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[30];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2272EED10(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for InferenceProvider() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226F17854;

  return sub_2272E3F38(a1, v1 + v5, v1 + v8);
}

uint64_t sub_2272EEE44(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_227668F90() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for TransportSerializableJournalRecorder() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for InferenceProvider() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (v2 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v5 + 16) = v18;
  *v18 = v5;
  v18[1] = sub_226E92F34;

  return sub_2272E5618(a1, a2, v2 + v8, v2 + v11, v2 + v14, v16, v17);
}

uint64_t sub_2272EF02C(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for InferenceProvider() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226E93028;

  return sub_2272E7D40(a1, v1 + v5, v1 + v8, v10);
}

uint64_t sub_2272EF1A0(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceProvider() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E92F34;

  return sub_2272E8690(a1, v1 + v5);
}

uint64_t sub_2272EF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC890, &qword_22767F778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272EF308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2272EF36C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2272EF388(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2272EF3F0()
{
  result = qword_27D7BC930;
  if (!qword_27D7BC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC928, &qword_22767F828);
    sub_2272EF474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC930);
  }

  return result;
}

unint64_t sub_2272EF474()
{
  result = qword_27D7BC938;
  if (!qword_27D7BC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC940, &qword_22767F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC938);
  }

  return result;
}

uint64_t sub_2272EF4F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = sub_227664EC0();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v11 = sub_227668B10();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = type metadata accessor for InferenceProvider();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v3[24] = *(v15 + 64);
  v3[25] = swift_task_alloc();
  v16 = sub_227663FA0();
  v3[26] = v16;
  v17 = *(v16 - 8);
  v3[27] = v17;
  v18 = *(v17 + 64) + 15;
  v3[28] = swift_task_alloc();
  v19 = sub_227667370();
  v3[29] = v19;
  v20 = *(v19 - 8);
  v3[30] = v20;
  v21 = *(v20 + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272EF808, 0, 0);
}

uint64_t sub_2272EF808()
{
  v1 = v0[3];
  v2 = *(sub_227668870() + 16);

  if (v2)
  {
    v3 = v0[3];
    if (sub_227668890() >= 2)
    {
      v5 = v0[24];
      v4 = v0[25];
      v6 = v0[23];
      v7 = v0[5];
      v8 = (v7 + *(v0[22] + 32));
      v9 = v8[3];
      v10 = v8[4];
      __swift_project_boxed_opaque_existential_0(v8, v9);
      sub_2272F1D58(v7, v4, type metadata accessor for InferenceProvider);
      v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v12 = swift_allocObject();
      v0[32] = v12;
      sub_2272F1DC0(v4, v12 + v11, type metadata accessor for InferenceProvider);
      v13 = *(v10 + 24);
      v35 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      v0[33] = v15;
      *v15 = v0;
      v15[1] = sub_2272EFB10;
      v16 = v0[28];
      v17 = v0[26];

      return (v35)(v16, sub_2272F1AAC, v12, v17, v9, v10);
    }

    v19 = 10;
  }

  else
  {
    v19 = 8;
  }

  sub_2272F1A58();
  swift_allocError();
  *v20 = v19;
  swift_willThrow();
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[21];
  v26 = v0[17];
  v25 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[13];
  v30 = v0[14];
  v32 = v0[10];
  v33 = v0[9];
  v34 = v0[8];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2272EFB10()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_2272EFFB4;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_2272EFC2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2272EFC2C()
{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[3];
  sub_227663E60();
  (*(v3 + 8))(v2, v4);
  v6 = sub_227668870();
  v7 = *(v6 + 16);
  v47 = v0;
  if (v7)
  {
    v8 = v0[20];
    v48 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v7, 0);
    v9 = v48;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v45 = *(v8 + 56);
    v46 = v10;
    v12 = (v8 - 8);
    do
    {
      v13 = v47[21];
      v14 = v47[19];
      v46(v13, v11, v14);
      v15 = sub_227668AE0();
      v17 = v16;
      (*v12)(v13, v14);
      v19 = *(v48 + 16);
      v18 = *(v48 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1EF90(v18 > 1, v19 + 1, 1);
      }

      *(v48 + 16) = v19 + 1;
      v20 = v48 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v11 += v45;
      --v7;
    }

    while (v7);

    v0 = v47;
    v22 = *(v48 + 16);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
LABEL_7:
      v23 = 0;
      v24 = v0[4];
      v25 = -v22;
      v26 = v9 + 40;
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        v28 = (v26 + 16 * v23++);
        while (1)
        {
          if ((v23 - 1) >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          if (*(v24 + 16))
          {
            break;
          }

LABEL_9:
          ++v23;
          v28 += 2;
          if (v25 + v23 == 1)
          {
            goto LABEL_22;
          }
        }

        v29 = v0[4];
        v30 = *(v28 - 1);
        v31 = *v28;

        v32 = sub_226E92000(v30, v31);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v34 = *(v24 + 56) + 24 * v32;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        sub_226EB396C(*v34, v36, v37);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2273A59E0(0, v27[2] + 1, 1, v27);
          v27 = result;
        }

        v39 = v27[2];
        v38 = v27[3];
        if (v39 >= v38 >> 1)
        {
          result = sub_2273A59E0((v38 > 1), v39 + 1, 1, v27);
          v27 = result;
        }

        v27[2] = v39 + 1;
        v40 = &v27[3 * v39];
        v40[4] = v35;
        v40[5] = v36;
        *(v40 + 48) = v37;
        v26 = v9 + 40;
        v0 = v47;
        if (!(v25 + v23))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_9;
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_22:
  v41 = v0[22];
  v42 = v0[5];
  v43 = v0[3];

  v0[35] = sub_2276688B0();
  v0[36] = *(v42 + *(v41 + 40));
  v0[37] = sub_226F43CE0(v27);

  v0[38] = sub_227668880();
  v44 = swift_task_alloc();
  v0[39] = v44;
  *v44 = v0;
  v44[1] = sub_2272F06F4;

  return sub_2275A6B80();
}

uint64_t sub_2272EFFB4()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 272);
  *(v0 + 16) = v2;
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);

    (*(v9 + 32))(v7, v6, v10);
    sub_22766A680();
    v12 = *(v9 + 16);
    v12(v8, v7, v10);
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v19 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v12(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v17;
      v23 = *(v18 + 8);
      v23(v16, v22);
      *(v19 + 4) = v21;
      *v79 = v21;
      _os_log_impl(&dword_226E8E000, v13, v14, "[Inference] WorkoutPlanError: Failed to validate scaffold criteria: %@", v19, 0xCu);
      sub_226E97D1C(v79, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v79, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {

      v35 = v17;
      v23 = *(v18 + 8);
      v23(v16, v35);
    }

    v36 = *(v0 + 120);
    v37 = *(*(v0 + 56) + 8);
    v37(*(v0 + 80), *(v0 + 48));
    v38 = sub_2274FFE78();
    v39 = *(v0 + 120);
    if (v38 == 13)
    {
      v80 = v23;
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);
      v42 = *(v0 + 72);
      sub_22766A680();
      v43 = v12;
      v12(v40, v39, v41);
      v44 = sub_22766B380();
      v45 = sub_22766C890();
      v46 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 96);
      v47 = *(v0 + 104);
      v49 = *(v0 + 88);
      if (v46)
      {
        v50 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v50 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        v12(v51, v47, v49);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        v53 = v49;
        v54 = v80;
        v80(v47, v53);
        *(v50 + 4) = v52;
        *v77 = v52;
        v43 = v12;
        _os_log_impl(&dword_226E8E000, v44, v45, "[Inference] Unmapped Inference error: %@", v50, 0xCu);
        sub_226E97D1C(v77, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v77, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      else
      {

        v59 = v49;
        v54 = v80;
        v80(v47, v59);
      }

      v60 = *(v0 + 120);
      v61 = *(v0 + 88);
      v62 = *(v0 + 56) + 8;
      v37(*(v0 + 72), *(v0 + 48));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v43(v63, v60, v61);
      swift_willThrow();
      v54(v60, v61);
    }

    else
    {
      v55 = v38;
      v57 = *(v0 + 88);
      v56 = *(v0 + 96);
      sub_2272F1A58();
      swift_allocError();
      *v58 = v55;
      swift_willThrow();
      v23(v39, v57);
    }
  }

  else
  {
    v24 = *(v0 + 64);

    sub_22766A680();
    v25 = v2;
    v26 = sub_22766B380();
    v27 = sub_22766C890();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_226E8E000, v26, v27, "[Inference] Unhandled validation error: %@", v28, 0xCu);
      sub_226E97D1C(v29, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    v34 = *(v0 + 48);

    (*(v32 + 8))(v33, v34);
    swift_willThrow();
  }

  v64 = *(v0 + 248);
  v65 = *(v0 + 224);
  v66 = *(v0 + 200);
  v67 = *(v0 + 168);
  v69 = *(v0 + 136);
  v68 = *(v0 + 144);
  v71 = *(v0 + 120);
  v70 = *(v0 + 128);
  v72 = *(v0 + 104);
  v73 = *(v0 + 112);
  v76 = *(v0 + 80);
  v78 = *(v0 + 72);
  v81 = *(v0 + 64);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_2272F06F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v9 = v6[37];
    v10 = v6[35];

    v6[46] = v2;
    v11 = sub_2272F0BE0;
  }

  else
  {

    v6[41] = a2;
    v6[42] = a1;
    v11 = sub_2272F084C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2272F084C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[37];

  v5 = sub_2275B3628(v2, v4);

  v6 = sub_2274CFDA4(v5);
  LOBYTE(v4) = v7;

  v11 = *&v6;
  if (v4)
  {
    v11 = 0.0;
    v12 = 0;
  }

  else
  {
    v12 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  if (v0[38] < v11)
  {
    v13 = v0[37];
    v14 = v0[35];
    v15 = v0[11];
    v16 = v0[12];
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
    v17 = swift_allocError();
    (*(v16 + 104))(v18, *MEMORY[0x277D511F8], v15);
    swift_willThrow();

    v0[46] = v17;
    v8 = sub_2272F0BE0;
    v9 = 0;
    v10 = 0;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v19 = v0[31];
  v20 = *(v0[35] + 16);
  v21 = sub_227667250();
  v0[43] = v21;
  v22 = swift_task_alloc();
  v0[44] = v22;
  *v22 = v0;
  v22[1] = sub_2272F0AAC;
  v23 = v0[37];
  v24 = v0[38];
  v25 = v0[36];
  v26 = v0[18];

  return sub_2275AA00C(v26, v23, v24, v20, v21);
}

uint64_t sub_2272F0AAC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = sub_2272F15AC;
  }

  else
  {
    v8 = *(v4 + 344);

    *(v4 + 408) = a1 & 1;
    v7 = sub_2272F1330;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2272F0BE0()
{
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v1 = *(v0 + 368);
  *(v0 + 16) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);

    (*(v8 + 32))(v6, v5, v9);
    sub_22766A680();
    v11 = *(v8 + 16);
    v11(v7, v6, v9);
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v18 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v11(v19, v15, v16);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v16;
      v22 = *(v17 + 8);
      v22(v15, v21);
      *(v18 + 4) = v20;
      *v78 = v20;
      _os_log_impl(&dword_226E8E000, v12, v13, "[Inference] WorkoutPlanError: Failed to validate scaffold criteria: %@", v18, 0xCu);
      sub_226E97D1C(v78, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v78, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    else
    {

      v34 = v16;
      v22 = *(v17 + 8);
      v22(v15, v34);
    }

    v35 = *(v0 + 120);
    v36 = *(*(v0 + 56) + 8);
    v36(*(v0 + 80), *(v0 + 48));
    v37 = sub_2274FFE78();
    v38 = *(v0 + 120);
    if (v37 == 13)
    {
      v79 = v22;
      v39 = *(v0 + 104);
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);
      sub_22766A680();
      v42 = v11;
      v11(v39, v38, v40);
      v43 = sub_22766B380();
      v44 = sub_22766C890();
      v45 = os_log_type_enabled(v43, v44);
      v47 = *(v0 + 96);
      v46 = *(v0 + 104);
      v48 = *(v0 + 88);
      if (v45)
      {
        v49 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v49 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        v11(v50, v46, v48);
        v51 = _swift_stdlib_bridgeErrorToNSError();
        v52 = v48;
        v53 = v79;
        v79(v46, v52);
        *(v49 + 4) = v51;
        *v76 = v51;
        v42 = v11;
        _os_log_impl(&dword_226E8E000, v43, v44, "[Inference] Unmapped Inference error: %@", v49, 0xCu);
        sub_226E97D1C(v76, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v76, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      else
      {

        v58 = v48;
        v53 = v79;
        v79(v46, v58);
      }

      v59 = *(v0 + 120);
      v60 = *(v0 + 88);
      v61 = *(v0 + 56) + 8;
      v36(*(v0 + 72), *(v0 + 48));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      v42(v62, v59, v60);
      swift_willThrow();
      v53(v59, v60);
    }

    else
    {
      v54 = v37;
      v56 = *(v0 + 88);
      v55 = *(v0 + 96);
      sub_2272F1A58();
      swift_allocError();
      *v57 = v54;
      swift_willThrow();
      v22(v38, v56);
    }
  }

  else
  {
    v23 = *(v0 + 64);

    sub_22766A680();
    v24 = v1;
    v25 = sub_22766B380();
    v26 = sub_22766C890();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_226E8E000, v25, v26, "[Inference] Unhandled validation error: %@", v27, 0xCu);
      sub_226E97D1C(v28, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v28, -1, -1);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    v31 = *(v0 + 56);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);

    (*(v31 + 8))(v32, v33);
    swift_willThrow();
  }

  v63 = *(v0 + 248);
  v64 = *(v0 + 224);
  v65 = *(v0 + 200);
  v66 = *(v0 + 168);
  v68 = *(v0 + 136);
  v67 = *(v0 + 144);
  v70 = *(v0 + 120);
  v69 = *(v0 + 128);
  v71 = *(v0 + 104);
  v72 = *(v0 + 112);
  v75 = *(v0 + 80);
  v77 = *(v0 + 72);
  v80 = *(v0 + 64);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_2272F1330(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 408) != 1)
  {
    v10 = *(v3 + 136);
    v11 = *(v3 + 88);
    v12 = *(v3 + 96);
    sub_226E93170(*(v3 + 144), v10, &qword_27D7BC950, &unk_22767F840);
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v12 + 48);
    v17 = v16(v10, 1, v11);
    v18 = *(v3 + 136);
    v19 = *(v3 + 96);
    if (v17 == 1)
    {
      v20 = v15;
      v21 = *(v3 + 88);
      (*(v19 + 104))(v20, *MEMORY[0x277D51200]);
      if (v16(v18, 1, v21) != 1)
      {
        sub_226E97D1C(*(v3 + 136), &qword_27D7BC950, &unk_22767F840);
      }
    }

    else
    {
      (*(v19 + 32))(v15, *(v3 + 136), *(v3 + 88));
    }

    v22 = *(v3 + 296);
    v23 = *(v3 + 280);
    v24 = *(v3 + 144);
    swift_willThrow();
    sub_226E97D1C(v24, &qword_27D7BC950, &unk_22767F840);

    *(v3 + 368) = v13;
    a1 = sub_2272F0BE0;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v4 = *(v3 + 304);
  v5 = *(*(v3 + 280) + 16);
  *(v3 + 376) = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  *v6 = v3;
  v6[1] = sub_2272F1634;
  v8 = *(v3 + 288);
  v7 = *(v3 + 296);

  return sub_2275A8F38(v7, 0, 2);
}

uint64_t sub_2272F15AC()
{
  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[35];

  v0[46] = v0[45];

  return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
}

uint64_t sub_2272F1634(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v7 = sub_2272F19C0;
  }

  else
  {
    *(v4 + 400) = a1;
    v7 = sub_2272F175C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2272F175C()
{
  v1 = v0[37];
  v2 = v0[35];
  if (v0[47] >= v0[50])
  {
    v8 = v0[30];
    v9 = v0[31];
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[25];
    v13 = v0[21];
    v16 = v0[17];
    v17 = v0[16];
    v18 = v0[15];
    v19 = v0[14];
    v20 = v0[13];
    v21 = v0[10];
    v22 = v0[9];
    v23 = v0[8];
    sub_226E97D1C(v0[18], &qword_27D7BC950, &unk_22767F840);

    (*(v8 + 8))(v9, v11);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v3 = v0[18];
    v4 = v0[11];
    v5 = v0[12];
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210]);
    v6 = swift_allocError();
    (*(v5 + 104))(v7, *MEMORY[0x277D51200], v4);
    swift_willThrow();
    sub_226E97D1C(v3, &qword_27D7BC950, &unk_22767F840);

    v0[46] = v6;

    return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
  }
}

uint64_t sub_2272F19C0()
{
  v1 = v0[37];
  v2 = v0[35];
  sub_226E97D1C(v0[18], &qword_27D7BC950, &unk_22767F840);

  v0[46] = v0[49];

  return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
}

unint64_t sub_2272F1A58()
{
  result = qword_27D7BC958;
  if (!qword_27D7BC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC958);
  }

  return result;
}

unint64_t sub_2272F1AC4()
{
  result = qword_27D7BC960;
  if (!qword_27D7BC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC960);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for TransportSerializableJournalRecorder() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_2276624A0();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v4 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v2 | 7);
}

uint64_t sub_2272F1C34@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_227663010() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InferenceProvider() - 8);
  v9 = (*(v8 + 64) + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2272E9650(a1, *(v2 + v9), *(v2 + v10), a2);
}

uint64_t sub_2272F1D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2272F1DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2272F1E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2272F1F04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for InferenceProvider() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227663FA0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_227667370() - 8);
  return sub_2272EA784(a1, v2 + v6, *(v2 + v7), v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_2272F2064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272F20AC()
{
  v1 = *(type metadata accessor for TransportSerializableJournalRecorder() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_226EDE784(v0 + v2, v6, v7, (v0 + v4));
}

uint64_t type metadata accessor for MetricServiceSubscriptionState()
{
  result = qword_281399C78;
  if (!qword_281399C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2272F21D0()
{
  result = sub_227665AD0();
  if (v1 <= 0x3F)
  {
    result = sub_2272F2244();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2272F2244()
{
  result = qword_2813989E8;
  if (!qword_2813989E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813989E8);
  }

  return result;
}

void sub_2272F2330(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 type];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_2272F2A14(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 duration];
  [a1 leadDuration];
  [a1 startTime];
  sub_227158DC8();
  sub_227663AE0();
  sub_227663C20();
LABEL_6:
}

size_t static TrainerEvent.representativeSamples()()
{
  v30 = sub_227663C90();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  sub_2272F2918();
  sub_227158DC8();
  v5 = sub_227663B50();
  sub_226F5D274();
  v6 = sub_22766BE70();
  v7 = sub_22766BE70();
  v8 = sub_22766BE70();
  v45 = v7;
  v46[0] = v4;
  v46[1] = v46;
  v46[2] = &v45;
  v43 = v6;
  v44 = v8;
  v46[3] = &v44;
  v46[4] = &v43;
  v42 = v5;
  v46[5] = &v42;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v39 = v38;
  v40 = v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9E0, &qword_22767F9E8);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v34 = v33;
  v35 = v33;
  v36 = sub_226F5BF60(&qword_27D7BC9E8, &qword_27D7BC9E0, &qword_22767F9E8);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F1F428(0, v10, 0);
    v12 = 0;
    v13 = 0;
    v14 = v31;
    v27 = v0 + 32;
    v15 = v0;
    v29 = v9;
    v28 = v10;
    while (v13 < *(v9 + 16))
    {
      v16 = v9 + v12;
      v17 = *(v9 + v12 + 32);
      v18 = *(v16 + 40);
      v19 = *(v16 + 48);
      v20 = *(v16 + 56);
      v21 = *(v16 + 64);
      v22 = *(v16 + 72);
      v23 = *(v16 + 80);
      v24 = *(v16 + 88);

      sub_226EB396C(v22, v23, v24);
      sub_227663C20();
      v31 = v14;
      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F428(v25 > 1, v26 + 1, 1);
        v14 = v31;
      }

      ++v13;
      *(v14 + 16) = v26 + 1;
      result = (*(v15 + 32))(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, v3, v30);
      v12 += 64;
      v9 = v29;
      if (v28 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2272F2918()
{
  result = qword_27D7BC9D8;
  if (!qword_27D7BC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC9D8);
  }

  return result;
}

uint64_t sub_2272F29BC(uint64_t a1)
{
  result = sub_2272F2A14(&qword_27D7BC9F0, MEMORY[0x277D503E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272F2A14(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2272F2A5C(void *a1)
{
  sub_227663C30();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663C50();
  v5 = v4;
  v7 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9F8, &qword_22767FA38);
  sub_227663AD0();
  v8 = sub_22766BFD0();
  sub_226EB2DFC(v3, v5, v7);

  [a1 setType_];

  sub_227663C80();
  [a1 setStartTime_];
  sub_227663C60();
  [a1 setDuration_];
  sub_227663C40();
  return [a1 setLeadDuration_];
}

id sub_2272F2B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v38 = MEMORY[0x277D84F90];
  sub_226F20368(0, v1, 0);
  v4 = a1;
  v2 = v38;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v8 = result;
  v9 = 0;
  v10 = *(a1 + 36);
  v30 = a1 + 72;
  v31 = v1;
  v32 = v10;
  v33 = a1 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_28;
    }

    if (v10 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v34 = v9;
    if (*(*(v4 + 48) + v8) > 1u)
    {
      if (*(*(v4 + 48) + v8) == 2)
      {
        v13 = 0xD000000000000012;
        v14 = 0x8000000227692380;
      }

      else
      {
        v13 = 0xD000000000000010;
        v14 = 0x80000002276923A0;
      }
    }

    else
    {
      v13 = 0x646C6F6666616373;
      v14 = 0xEF79636E6574614CLL;
      if (*(*(v4 + 48) + v8))
      {
        v14 = 0xED000065726F6353;
      }
    }

    v37 = v14;
    v15 = v13;
    v16 = *(*(v4 + 56) + 8 * v8);
    v17 = v4;
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    v20 = v2;
    result = v16;
    if (v18 >= v19 >> 1)
    {
      v36 = result;
      sub_226F20368((v19 > 1), v18 + 1, 1);
      result = v36;
      v20 = v2;
    }

    *(v20 + 16) = v18 + 1;
    v35 = v20;
    v21 = (v20 + 24 * v18);
    v21[4] = v15;
    v21[5] = v37;
    v21[6] = result;
    v11 = 1 << *(v17 + 32);
    if (v8 >= v11)
    {
      goto LABEL_30;
    }

    v5 = v33;
    v22 = *(v33 + 8 * v12);
    if ((v22 & (1 << v8)) == 0)
    {
      goto LABEL_31;
    }

    v4 = v17;
    v23 = *(v17 + 36);
    v10 = v32;
    if (v32 != v23)
    {
      goto LABEL_32;
    }

    v24 = v22 & (-2 << (v8 & 0x3F));
    if (v24)
    {
      v11 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v12 << 6;
      v26 = v12 + 1;
      v27 = (v30 + 8 * v12);
      while (v26 < (v11 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_226EB526C(v8, v32, 0);
          v11 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v8, v32, 0);
    }

LABEL_4:
    v9 = v34 + 1;
    v8 = v11;
    v2 = v35;
    if (v34 + 1 == v31)
    {
      return v2;
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
  __break(1u);
  return result;
}

uint64_t sub_2272F2E98()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2272F2F6C()
{
  *v0;
  *v0;
  *v0;
  sub_22766C100();
}

uint64_t sub_2272F302C()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2272F30FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2272F35BC();
  *a2 = result;
  return result;
}

void sub_2272F312C(uint64_t *a1@<X8>)
{
  v2 = 0x646C6F6666616373;
  v3 = 0xEF79636E6574614CLL;
  v4 = 0x8000000227692380;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000002276923A0;
  }

  if (*v1)
  {
    v3 = 0xED000065726F6353;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6;
}

unint64_t sub_2272F31BC()
{
  v1 = v0;
  v2 = sub_22714B338(MEMORY[0x277D84F90]);
  v3 = *v1;
  v4 = sub_22766C4E0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2;
  sub_22736B9E0(v4, 0, isUniquelyReferenced_nonNull_native);
  v6 = v1[1];
  v7 = v1[2];
  v8 = sub_22766BFD0();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2;
  sub_22736B9E0(v8, 1, v9);
  v10 = v1[3];
  v11 = sub_22766C750();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2;
  sub_22736B9E0(v11, 2, v12);
  v13 = v1[4];
  v14 = sub_22766C750();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v20 = v2;
  sub_22736B9E0(v14, 3, v15);
  v16 = sub_2272F2B8C(v2);

  if (v16[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v17 = sub_22766D010();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v20 = v17;

  sub_22722D490(v18, 1, &v20);

  return v20;
}

uint64_t getEnumTagSinglePayload for CreateScaffoldAnalyticsEvent.Field(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CreateScaffoldAnalyticsEvent.Field(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2272F34C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2272F350C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2272F3568()
{
  result = qword_27D7BCA00;
  if (!qword_27D7BCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCA00);
  }

  return result;
}

uint64_t sub_2272F35BC()
{
  v0 = sub_22766D030();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2272F36C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = objc_allocWithZone(v3);
  sub_226E93170(a1, v10, a2, a3);
  v12 = sub_2276695D0();
  sub_226E97D1C(a1, a2, a3);
  return v12;
}

uint64_t sub_2272F37D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_226E93170(a1, &v11 - v8, a2, a3);
  v9 = sub_2276695D0();
  sub_226E97D1C(a1, a2, a3);
  return v9;
}

uint64_t SeymourServerAPI.ExecuteScoresTasksOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_226E93170(a1, v6, &qword_27D7BCA18, &qword_22767FBB0);
  v8 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA18, &qword_22767FBB0);
  return v8;
}

uint64_t SeymourServerAPI.ExecuteScoresTasksOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v7 - v4, &qword_27D7BCA18, &qword_22767FBB0);
  v5 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA18, &qword_22767FBB0);
  return v5;
}

uint64_t SeymourServerAPI.FetchSyncChangesetOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_226E93170(a1, v6, &qword_27D7BCA20, &qword_22767FBB8);
  v8 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA20, &qword_22767FBB8);
  return v8;
}

uint64_t SeymourServerAPI.FetchSyncChangesetOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v7 - v4, &qword_27D7BCA20, &qword_22767FBB8);
  v5 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA20, &qword_22767FBB8);
  return v5;
}

uint64_t SeymourServerAPI.SubmitSyncChangesetOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_226E93170(a1, v6, &qword_27D7BCA28, &qword_22767FBC0);
  v8 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA28, &qword_22767FBC0);
  return v8;
}

uint64_t SeymourServerAPI.SubmitSyncChangesetOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v7 - v4, &qword_27D7BCA28, &qword_22767FBC0);
  v5 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA28, &qword_22767FBC0);
  return v5;
}

uint64_t SeymourServerAPI.ValidateEncryptionKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_226E93170(a1, v6, &qword_27D7BCA30, &qword_22767FBC8);
  v8 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA30, &qword_22767FBC8);
  return v8;
}

uint64_t SeymourServerAPI.ValidateEncryptionKeyOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v7 - v4, &qword_27D7BCA30, &qword_22767FBC8);
  v5 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA30, &qword_22767FBC8);
  return v5;
}

uint64_t SeymourServerAPI.FetchSyncableCountsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  sub_226E93170(a1, v6, &qword_27D7BCA38, &qword_22767FBD0);
  v8 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA38, &qword_22767FBD0);
  return v8;
}

uint64_t SeymourServerAPI.FetchSyncableCountsOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v7 - v4, &qword_27D7BCA38, &qword_22767FBD0);
  v5 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA38, &qword_22767FBD0);
  return v5;
}

id sub_2272F42CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SeymourServerAPIAsync.submitScores(scores:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_27D7BCA48, MEMORY[0x277D54520]);
  sub_22766AD80();
  (*(a5 + 8))(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t SeymourServerAPIAsync.fetchScores(identifier:activityType:duration:type:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v22 = a9;
  v23 = a7;
  v16 = sub_2276677E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = BYTE4(a3) & 1;
  v29 = a4;
  v30 = BYTE4(a4) & 1;
  v31 = a5;
  v32 = a6;
  sub_2272F4FC0(&qword_27D7BCA50, MEMORY[0x277D52FB0]);
  sub_22766AD80();
  (*(a10 + 16))(v20, v23, v24, v22, a10);
  return (*(v17 + 8))(v20, v16);
}

uint64_t SeymourServerAPIAsync.executeScoresTasks(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766AFF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AFE0();
  (*(a4 + 24))(v12, a1, a2, a3, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t SeymourServerAPIAsync.fetchSyncChangeset(zoneRequests:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B160();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_281399210, MEMORY[0x277D54560]);
  sub_22766AD80();
  (*(a5 + 32))(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t SeymourServerAPIAsync.submitSyncChangeset(zoneChangesets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_2813991F8, MEMORY[0x277D545B8]);
  sub_22766AD80();
  (*(a5 + 40))(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t SeymourServerAPIAsync.validateEncryptionKey(encryptionKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B300();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_2813991F0, MEMORY[0x277D545D0]);
  sub_22766AD80();
  (*(a5 + 48))(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t SeymourServerAPIAsync.fetchSyncableCounts(zones:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B210();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_281399208, MEMORY[0x277D54590]);
  sub_22766AD80();
  (*(a5 + 56))(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t SeymourServerAPIAsync.pingServer(ping:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22766AF60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_2272F4FC0(&qword_27D7BCA58, MEMORY[0x277D544F8]);
  sub_22766AD80();
  (*(a6 + 64))(v16, a3, a4, a5, a6);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2272F4FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SeymourServerAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_2272F5048(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA08, &qword_22767FBA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766B030();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitScoresOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA08, &qword_22767FBA0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA08, &qword_22767FBA0);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5238(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA10, &qword_22767FBA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_2276677E0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchScoresOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA10, &qword_22767FBA8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA10, &qword_22767FBA8);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5428(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766AFF0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ExecuteScoresTasksOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA18, &qword_22767FBB0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA18, &qword_22767FBB0);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5614(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766B160();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncChangesetOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA20, &qword_22767FBB8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA20, &qword_22767FBB8);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5800(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766B270();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitSyncChangesetOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA28, &qword_22767FBC0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA28, &qword_22767FBC0);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F59EC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766B300();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ValidateEncryptionKeyOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA30, &qword_22767FBC8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA30, &qword_22767FBC8);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5BD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766B210();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncableCountsOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA38, &qword_22767FBD0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA38, &qword_22767FBD0);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

void sub_2272F5DC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA40, &qword_22767FBD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_22766AF60();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.PingServerOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA40, &qword_22767FBD8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA40, &qword_22767FBD8);
  v14 = v13;

  sub_2276695A0();

  v15 = *(v2 + 16);
  sub_22766C850();
}

uint64_t SeymourServerAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SeymourServerAPIAsyncOperation.submitScores(scores:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_2272F4FC0(&qword_27D7BCA48, MEMORY[0x277D54520]);
  sub_22766AD80();
  v15 = (*(a5 + 8))(v14, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t SeymourServerAPIAsyncOperation.fetchScores(identifier:activityType:duration:type:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v23 = a9;
  v24 = a7;
  v16 = sub_2276677E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = BYTE4(a3) & 1;
  v30 = a4;
  v31 = BYTE4(a4) & 1;
  v32 = a5;
  v33 = a6;
  sub_2272F4FC0(&qword_27D7BCA50, MEMORY[0x277D52FB0]);
  sub_22766AD80();
  v21 = (*(a10 + 16))(v20, v24, v25, v23, a10);
  (*(v17 + 8))(v20, v16);
  return v21;
}

uint64_t sub_2272F645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    result = sub_2276677A0();
  }

  if ((a4 & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = sub_2276677B0();
    if ((a5 & 0x100000000) != 0)
    {
LABEL_5:
      if (!a7)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  result = sub_2276677D0();
  if (!a7)
  {
    return result;
  }

LABEL_6:

  return sub_2276677C0();
}

uint64_t SeymourServerAPIAsyncOperation.executeScoresTasks(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766AFF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AFE0();
  v13 = (*(a4 + 24))(v12, a1, a2, a3, a4);
  (*(v9 + 8))(v12, v8);
  return v13;
}

uint64_t SeymourServerAPIAsyncOperation.fetchSyncChangeset(zoneRequests:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B160();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_2272F4FC0(&qword_281399210, MEMORY[0x277D54560]);
  sub_22766AD80();
  v15 = (*(a5 + 32))(v14, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t SeymourServerAPIAsyncOperation.submitSyncChangeset(zoneChangesets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_2272F4FC0(&qword_2813991F8, MEMORY[0x277D545B8]);
  sub_22766AD80();
  v15 = (*(a5 + 40))(v14, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t SeymourServerAPIAsyncOperation.validateEncryptionKey(encryptionKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B300();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_2272F4FC0(&qword_2813991F0, MEMORY[0x277D545D0]);
  sub_22766AD80();
  v15 = (*(a5 + 48))(v14, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t SeymourServerAPIAsyncOperation.fetchSyncableCounts(zones:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B210();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  sub_2272F4FC0(&qword_281399208, MEMORY[0x277D54590]);
  sub_22766AD80();
  v15 = (*(a5 + 56))(v14, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t sub_2272F6C88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = *(v2 + 16);
  if (*(result + 16))
  {

    return a2(v5);
  }

  return result;
}

uint64_t SeymourServerAPIAsyncOperation.pingServer(ping:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22766AF60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  v21 = a2;
  sub_2272F4FC0(&qword_27D7BCA58, MEMORY[0x277D544F8]);
  sub_22766AD80();
  v17 = (*(a6 + 64))(v16, a3, a4, a5, a6);
  (*(v13 + 8))(v16, v12);
  return v17;
}

uint64_t sub_2272F6E64()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return sub_22766AF50();
  }

  return result;
}

id sub_2272F6EB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA08, &qword_22767FBA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766B030();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitScoresOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA08, &qword_22767FBA0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA08, &qword_22767FBA0);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F7088(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA10, &qword_22767FBA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_2276677E0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchScoresOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA10, &qword_22767FBA8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA10, &qword_22767FBA8);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F7258(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766AFF0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ExecuteScoresTasksOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA18, &qword_22767FBB0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA18, &qword_22767FBB0);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F7424(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766B160();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncChangesetOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA20, &qword_22767FBB8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA20, &qword_22767FBB8);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F75F0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766B270();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitSyncChangesetOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA28, &qword_22767FBC0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA28, &qword_22767FBC0);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F77BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766B300();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ValidateEncryptionKeyOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA30, &qword_22767FBC8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA30, &qword_22767FBC8);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F7988(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766B210();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncableCountsOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA38, &qword_22767FBD0);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA38, &qword_22767FBD0);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

id sub_2272F7B54(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA40, &qword_22767FBD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = sub_22766AF60();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.PingServerOperation(0));
  sub_226E93170(v10, v7, &qword_27D7BCA40, &qword_22767FBD8);
  v13 = sub_2276695D0();
  sub_226E97D1C(v10, &qword_27D7BCA40, &qword_22767FBD8);
  v14 = v13;

  sub_2276695A0();
  v15 = *(v2 + 16);
  sub_2276695C0();

  return v14;
}

CKDatabase __swiftcall ServerDataAccessType.database(for:)(CKContainer a1)
{
  v2 = &selRef_privateCloudDatabase;
  if ((v1 & 1) == 0)
  {
    v2 = &selRef_publicCloudDatabase;
  }

  v3 = [a1.super.isa *v2];

  return v3;
}

id sub_2272F8688(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_2275425D0(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_2272846AC(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22726F458(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227262180(MEMORY[0x277D84F98], sub_22711C470, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC420, qword_22767FED0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F33A44(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_227259C3C(v9, MEMORY[0x277D84F98], sub_22711C470, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC420, qword_22767FED0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F8AB4(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_227542588(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_2272846C4(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22726FBA8(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227261F9C(MEMORY[0x277D84F98], sub_22711C41C, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC620, &unk_22767E148);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F337E4(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_227259A50(v9, MEMORY[0x277D84F98], sub_22711C41C, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC620, &unk_22767E148);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F8EE0(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_227542F30(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_226EC6320(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_227271878(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_2272650C4(MEMORY[0x277D84F98], sub_22711D384, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC4A8, &qword_22767DB40);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F34164(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_22725CC48(v9, MEMORY[0x277D84F98], sub_22711D384, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC4A8, &qword_22767DB40);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F930C(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_2275424F8(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_227284694(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22726E960(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227265FE4(MEMORY[0x277D84F98], sub_22711D8A8, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC438, &qword_22767DAD0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F3465C(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_22725DBA8(v9, MEMORY[0x277D84F98], sub_22711D8A8, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC438, &qword_22767DAD0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9738(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_2275424B0(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_22728467C(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22726ED08(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_2272661C8(MEMORY[0x277D84F98], sub_22711D8FC, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC430, &unk_22767FFB0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F348BC(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_22725DD94(v9, MEMORY[0x277D84F98], sub_22711D8FC, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC430, &unk_22767FFB0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9B64(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_2275431B8(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_22724A918(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22727AE58(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227266958(MEMORY[0x277D84F98], sub_22711DBB8, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC580, &qword_22767DFA0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F34EC4(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_22725E544(v9, MEMORY[0x277D84F98], sub_22711DBB8, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC580, &qword_22767DFA0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9F90(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_227543200(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_22723DB40(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_226EA1E88(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227266F04(MEMORY[0x277D84F98], sub_22711DD50, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC410, &unk_22767DAA0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F35124(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_22725EB08(v9, MEMORY[0x277D84F98], sub_22711DD50, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC410, &unk_22767DAA0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272FA3BC(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_227542468(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_227284664(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22726F800(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_22726897C(MEMORY[0x277D84F98], sub_22711E580, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC5F8, &qword_22767E0D0);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F35A5C(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_2272605F0(v9, MEMORY[0x277D84F98], sub_22711E580, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC5F8, &qword_22767E0D0);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272FA7E8(void *a1)
{
  v41 = a1;
  v2 = sub_227669A90();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = sub_22766A100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v16 = qword_2813B2078;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v16, v10);
  v17 = sub_227542420(v14, *(v1 + 32), v15);
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
    v38 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    result = sub_227284A84(v41);
    if (v21)
    {
      return result;
    }

    v22 = result;
    v23 = *(v1 + 16);
    v41 = *(v1 + 24);
    v42 = 0;
    if (sub_22727E1A0(v23))
    {
      v24 = sub_22766C2B0();
    }

    else
    {
      v24 = 0;
    }

    [v22 setRelationshipKeyPathsForPrefetching_];

    (*(v19 + 104))(v5, *MEMORY[0x277D4F000], v20);
    v43 = 1;
    v25 = v23;
    sub_227669760();
    v26 = v38;
    *&v9[*(v38 + 28)] = v22;
    *&v9[*(v26 + 32)] = v25;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v28 = sub_227669730();
    if (v43 == 1)
    {
      v29 = v42;
      sub_227268D44(MEMORY[0x277D84F98], sub_22711E63C, 0);
      v42 = v29;
      if (!v29)
      {
        v31 = v30;
LABEL_18:
        sub_226E97D1C(v9, &qword_27D7BC630, &qword_22767E178);

        v36 = sub_226F491E0(v35);
        sub_226EDAB78(v36, v41);

        v37 = sub_226F361A0(v31);

        return v37;
      }
    }

    else
    {
      v32 = MEMORY[0x22AA99A00](v28);
      v33 = v42;
      v34 = sub_2272609C8(v9, MEMORY[0x277D84F98], sub_22711E63C, 0);
      v42 = v33;
      if (!v33)
      {
        v31 = v34;
        objc_autoreleasePoolPop(v32);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v32);
    }

    return sub_226E97D1C(v9, &qword_27D7BC630, &qword_22767E178);
  }

  if (v17 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

uint64_t sub_2272FAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (*(v10 + 16))
  {
    v11 = *(a1 + 24);

    v12 = sub_226E92000(a2, a3);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAC8, &unk_22767FF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(inited + 32) = sub_227143C7C;
  *(inited + 40) = v16;

  sub_227461698(inited);
  swift_beginAccess();

  v17 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736BA28(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v21;
  swift_endAccess();
  v19 = *(v14 + 16);

  return v19;
}

uint64_t sub_2272FADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (*(v10 + 16))
  {
    v11 = *(a1 + 24);

    v12 = sub_226E92000(a2, a3);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAD8, &qword_22767FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(inited + 32) = sub_227307C34;
  *(inited + 40) = v16;

  sub_227461EE8(inited);
  swift_beginAccess();

  v17 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736BFD0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v21;
  swift_endAccess();
  v19 = *(v14 + 16);

  return v19;
}

uint64_t sub_2272FAF7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39 = sub_22766B390();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v38 - v15);
  sub_226E93170(a1, &v38 - v15, &qword_27D7BCAB8, &qword_22767FE80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v38 = a1;
    v18 = *v16;
    sub_22766A6C0();

    v19 = v18;
    v20 = sub_22766B380();
    v21 = sub_22766C890();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_226E97AE8(a2, a3, &v44);
      *(v22 + 12) = 2082;
      swift_getErrorValue();
      v24 = MEMORY[0x22AA995D0](v42, v43);
      v26 = sub_226E97AE8(v24, v25, &v44);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v20, v21, "Handling error for requestIdentifier: %{public}s error: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {
    }

    v31 = (*(v6 + 8))(v10, v39);
    a1 = v38;
  }

  else
  {
    sub_22766A6C0();

    v27 = sub_22766B380();
    v28 = sub_22766C8B0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_226E97AE8(a2, a3, &v44);
      _os_log_impl(&dword_226E8E000, v27, v28, "Handling success for requestIdentifier: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    (*(v6 + 8))(v12, v39);
    v31 = sub_226E97D1C(v16, &qword_27D7BCAB8, &qword_22767FE80);
  }

  v32 = *(v41 + 16);
  MEMORY[0x28223BE20](v31);
  v33 = v40;
  *(&v38 - 4) = v34;
  *(&v38 - 3) = v33;
  *(&v38 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAC0, qword_22767FE88);
  v35 = sub_2276696A0();
  v36 = v44;
  MEMORY[0x28223BE20](v35);
  *(&v38 - 2) = a1;
  sub_2275D1888(sub_227306780, (&v38 - 4), v36);
}

uint64_t sub_2272FB428(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = a2 & 1;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v48 = a1;
  v49 = v10;
  if (a2)
  {
    v44 = v11;
    v19 = a3;
    v20 = a1;
    sub_22766A6C0();

    sub_226F04AAC(a1, 1);
    v21 = sub_22766B380();
    v22 = sub_22766C890();

    sub_226EB4548(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = v5;
      v24 = v23;
      v42 = swift_slowAlloc();
      v47 = v42;
      *v24 = 136446466;
      *(v24 + 4) = sub_226E97AE8(v19, a4, &v47);
      *(v24 + 12) = 2082;
      swift_getErrorValue();
      v25 = MEMORY[0x22AA995D0](v45, v46);
      v27 = sub_226E97AE8(v25, v26, &v47);

      *(v24 + 14) = v27;
      v28 = v22;
      a3 = v19;
      _os_log_impl(&dword_226E8E000, v21, v28, "Handling error for requestIdentifier: %{public}s error: %{public}s", v24, 0x16u);
      v29 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v29, -1, -1);
      v30 = v24;
      v5 = v43;
      MEMORY[0x22AA9A450](v30, -1, -1);

      sub_226EB4548(a1, 1);
      v31 = (*(v12 + 8))(v16, v44);
    }

    else
    {
      sub_226EB4548(a1, 1);

      v31 = (*(v12 + 8))(v16, v44);
      a3 = v19;
    }
  }

  else
  {
    sub_22766A6C0();

    v32 = sub_22766B380();
    v33 = sub_22766C8B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v11;
      v36 = swift_slowAlloc();
      v47 = v36;
      *v34 = 136446210;
      *(v34 + 4) = sub_226E97AE8(a3, a4, &v47);
      _os_log_impl(&dword_226E8E000, v32, v33, "Handling success for requestIdentifier: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      v31 = (*(v12 + 8))(v18, v35);
    }

    else
    {

      v31 = (*(v12 + 8))(v18, v11);
    }
  }

  v37 = *(v5 + 16);
  MEMORY[0x28223BE20](v31);
  *(&v41 - 4) = v5;
  *(&v41 - 3) = a3;
  *(&v41 - 2) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAD0, &qword_22767FFC0);
  v38 = sub_2276696A0();
  v39 = v47;
  MEMORY[0x28223BE20](v38);
  *(&v41 - 2) = &v48;
  sub_2275D1888(sub_227307BE4, (&v41 - 4), v39);
}

uint64_t sub_2272FB890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16))
  {
    v9 = *(a1 + 24);

    v10 = sub_226E92000(a2, a3);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();

  a4(0, a2, a3);
  swift_endAccess();
  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2272FB990()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v2 = v0[24];

  return swift_deallocClassInstance();
}

uint64_t sub_2272FBA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v40 = a2;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v38 = *(v8 - 8);
  v39 = v8;
  v37 = *(v38 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v31 - v11;
  v12 = v2[23];
  v32 = v2[22];
  v35 = v12;
  v31[1] = __swift_project_boxed_opaque_existential_0(v2 + 19, v32);
  v33 = *(v5 + 16);
  v13 = a1;
  v14 = v4;
  v33(v7, v13, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v5 + 32);
  v18(v17 + v15, v7, v14);
  v31[0] = v2;
  *(v17 + v16) = v2;

  sub_226ECF5D8(sub_227307DA0, v17, v32, MEMORY[0x277D84F78] + 8, v35, v41);

  v19 = v14;
  v33(v7, v34, v14);
  v20 = swift_allocObject();
  v18(v20 + v15, v7, v19);
  *(v20 + v16) = v31[0];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2273079F4;
  *(v21 + 24) = v20;
  v23 = v38;
  v22 = v39;
  v24 = v36;
  v25 = v41;
  (*(v38 + 16))(v36, v41, v39);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = (v37 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + v26, v24, v22);
  v29 = (v28 + v27);
  *v29 = sub_227086964;
  v29[1] = v21;
  sub_227663CF0();

  sub_227669270();
  return (*(v23 + 8))(v25, v22);
}

uint64_t sub_2272FBDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_227663CF0();

  return sub_227669270();
}

uint64_t sub_2272FBF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v36 = a2;
  v31 = sub_2276639B0();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v10;
  v11 = sub_2276624A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  sub_2276639A0();
  v16 = sub_227662390();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v19 = *(*(a4 + 192) + 16);
  v37 = *(a4 + 192);
  v38 = v16;
  v39 = v18;
  v40 = v35;
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA8, &qword_22767FE68);
  sub_2276696A0();

  if (v42 == 1)
  {
    v21 = v32;
    v22 = v30;
    sub_2272FC2B0(v30, v32);
    v23 = v31;
    (*(v6 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v31);
    v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    (*(v6 + 32))(v25 + v24, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23);

    v26 = v34;
    v27 = sub_227669290();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2273070E4;
    *(v28 + 24) = v25;

    v27(sub_226E937DC, v28);

    return (*(v33 + 8))(v21, v26);
  }

  return result;
}

uint64_t sub_2272FC2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a1;
  v42 = a2;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = v8;
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8610, &unk_2276711B0);
  v40 = *(v10 - 8);
  v41 = v10;
  v39 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v38 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v29 - v13;
  v14 = *(v2 + 176);
  v37 = *(v3 + 184);
  v32 = __swift_project_boxed_opaque_existential_0((v3 + 152), v14);
  v35 = *(v6 + 16);
  v29 = v5;
  v35(v9, a1, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v30 = *(v6 + 32);
  v30(v16 + v15, v9, v5);
  v17 = sub_227663180();
  v33 = v3;

  v18 = v34;
  sub_226ECF5D8(sub_227307450, v16, v14, v17, v37, v34);

  v19 = v29;
  v35(v9, v36, v29);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  v30(v20 + v15, v9, v19);
  v22 = v40;
  v21 = v41;
  v23 = v38;
  (*(v40 + 16))(v38, v18, v41);
  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = (v39 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v22 + 32))(v26 + v24, v23, v21);
  v27 = (v26 + v25);
  *v27 = sub_2273074D0;
  v27[1] = v20;
  type metadata accessor for AssetLoaderResponse();

  sub_227669270();
  return (*(v22 + 8))(v18, v21);
}

uint64_t sub_2272FC64C(void (*a1)(unint64_t, char *, uint64_t), uint64_t a2)
{
  v88 = a1;
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = v6;
  v93 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v67 - v9;
  v10 = type metadata accessor for AssetLoaderResponse();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v78 = *(v13 - 8);
  v14 = *(v78 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v67 - v16);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  v79 = *(v76 - 1);
  v18 = *(v79 + 64);
  v19 = MEMORY[0x28223BE20](v76);
  v80 = v20;
  v81 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v67 - v21);
  v23 = sub_2276624A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v67 - v30;
  v87 = v32;
  MEMORY[0x28223BE20](v29);
  v34 = &v67 - v33;
  v89 = a2;
  sub_2276639A0();
  sub_226E93170(v88, v17, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v22 = *v17;
  }

  else
  {
    v35 = v75;
    sub_2273065BC(v17, v75);
    v36 = *(v24 + 16);
    v36(v31, v34, v23);
    v36(v28, v35, v23);
    sub_227663CE0();
    sub_2273073F0(v35, type metadata accessor for AssetLoaderResponse);
  }

  v37 = v24;
  v68 = v23;
  v84 = v34;
  v86 = v22;
  swift_storeEnumTagMultiPayload();
  v73 = v92[22];
  v74 = v92[23];
  v72 = __swift_project_boxed_opaque_existential_0(v92 + 19, v73);
  v38 = *(v24 + 16);
  v75 = v24 + 16;
  v76 = v38;
  v38(v31, v34, v23);
  sub_226E93170(v88, v85, &qword_27D7B9628, &unk_227674860);
  v39 = v31;
  v40 = v95;
  v69 = *(v95 + 16);
  v70 = v95 + 16;
  v69(v93, v89, v94);
  v41 = *(v24 + 80);
  v77 = v24;
  v42 = (v41 + 24) & ~v41;
  v43 = (v87 + *(v78 + 80) + v42) & ~*(v78 + 80);
  v44 = *(v40 + 80);
  v45 = (v14 + v44 + v43) & ~v44;
  v71 = v41 | v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v92;
  v47 = *(v37 + 32);
  v78 = v37 + 32;
  v88 = v47;
  v48 = v46 + v42;
  v49 = v39;
  v50 = v39;
  v51 = v68;
  v47(v48, v50, v68);
  sub_226E95D18(v85, v46 + v43, &qword_27D7B9628, &unk_227674860);
  v52 = *(v40 + 32);
  v95 = v40 + 32;
  v85 = v52;
  v53 = v46 + v45;
  v54 = v93;
  v55 = v94;
  v52(v53, v93, v94);

  sub_226ECF5D8(sub_227307150, v46, v73, MEMORY[0x277D84F78] + 8, v74, v91);

  v69(v54, v89, v55);
  v56 = v81;
  sub_226E93170(v86, v81, &qword_27D7BCAB8, &qword_22767FE80);
  v76(v49, v84, v51);
  v57 = (v44 + 16) & ~v44;
  v58 = (v90 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + *(v79 + 80) + 8) & ~*(v79 + 80);
  v60 = (v80 + v41 + v59) & ~v41;
  v61 = swift_allocObject();
  v85(v61 + v57, v93, v94);
  *(v61 + v58) = v92;
  sub_226E95D18(v56, v61 + v59, &qword_27D7BCAB8, &qword_22767FE80);
  v88(v61 + v60, v49, v51);

  v62 = v83;
  v63 = v91;
  v64 = sub_227669290();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_22730729C;
  *(v65 + 24) = v61;

  v64(sub_226EB4544, v65);

  (*(v82 + 8))(v63, v62);
  sub_226E97D1C(v86, &qword_27D7BCAB8, &qword_22767FE80);
  return (*(v77 + 8))(v84, v51);
}

uint64_t sub_2272FCEB4(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4)
{
  v137 = a1;
  v138 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA0, &qword_22767FE58);
  v124 = *(v125 - 8);
  v6 = *(v124 + 64);
  v7 = MEMORY[0x28223BE20](v125);
  v119 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v8;
  MEMORY[0x28223BE20](v7);
  v133 = &v115 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v143 = *(v128 - 8);
  v10 = *(v143 + 64);
  v11 = MEMORY[0x28223BE20](v128);
  v126 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v115 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v115 - v16;
  v123 = v17;
  MEMORY[0x28223BE20](v15);
  v130 = &v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v115 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v115 - v25;
  v142 = sub_2276639B0();
  v136 = *(v142 - 8);
  v27 = *(v136 + 64);
  v28 = MEMORY[0x28223BE20](v142);
  v134 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v145 = &v115 - v31;
  v139 = v32;
  MEMORY[0x28223BE20](v30);
  v146 = &v115 - v33;
  v34 = sub_2276624A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a3;
  sub_2276639A0();
  v39 = sub_227662390();
  v41 = v40;
  (*(v35 + 8))(v38, v34);
  v144 = a4;
  v42 = *(*(a4 + 192) + 16);
  v147 = *(a4 + 192);
  v148 = v39;
  v127 = v39;
  v135 = v41;
  v149 = v41;
  v150 = v137;
  v151 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA8, &qword_22767FE68);
  sub_2276696A0();
  if (v152 != 1)
  {
  }

  sub_22766C0A0();
  v43 = sub_227664AE0();
  (*(*(v43 - 8) + 56))(v26, 1, 1, v43);
  (*(v35 + 56))(v22, 1, 1, v34);
  v44 = v146;
  sub_227663980();

  sub_226E97D1C(v22, &unk_27D7BB570, &unk_227670FC0);
  sub_226E97D1C(v26, &qword_27D7B9688, &qword_2276776E0);
  v45 = v136;
  v46 = *(v136 + 16);
  v137 = v136 + 16;
  v138 = v46;
  v47 = v145;
  v48 = v142;
  v46(v145, v44, v142);
  v49 = *(v45 + 80);
  v50 = v139;
  v116 = ((v49 + 24) & ~v49) + v139;
  v117 = ((v49 + 24) & ~v49);
  v51 = swift_allocObject();
  *(v51 + 16) = v144;
  v52 = *(v45 + 32);
  v52(v51 + ((v49 + 24) & ~v49), v47, v48);
  v131 = v52;
  v132 = v45 + 32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB0, &unk_22767FE70);
  v53 = v133;
  sub_227669280();
  v138(v47, v146, v48);
  v121 = (v49 + 16) & ~v49;
  v118 = ((v50 + v121 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v54 = (v50 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v120 = v54;
  v55 = swift_allocObject();
  v52(v55 + ((v49 + 16) & ~v49), v47, v48);
  v56 = v144;
  *(v55 + v54) = v144;
  v57 = v124;
  v58 = v119;
  v59 = v125;
  (*(v124 + 16))(v119, v53, v125);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = (v122 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v57 + 32))(v62 + v60, v58, v59);
  v63 = (v62 + v61);
  *v63 = sub_227306310;
  v63[1] = v55;
  v122 = type metadata accessor for AssetLoaderResponse();
  v64 = v56;

  v65 = v141;
  sub_227669270();
  (*(v57 + 8))(v133, v59);
  v66 = v145;
  v67 = v142;
  v68 = v138;
  v138(v145, v140, v142);
  v69 = v134;
  v68(v134, v146, v67);
  v70 = (v116 + v49) & ~v49;
  v71 = swift_allocObject();
  *(v71 + 16) = v64;
  v72 = v131;
  v131(v117 + v71, v66, v67);
  v72(v71 + v70, v69, v67);
  v73 = v143;
  v74 = *(v143 + 16);
  v125 = v143 + 16;
  v133 = v74;
  v75 = v126;
  v76 = v128;
  (v74)(v126, v65, v128);
  v77 = *(v73 + 80);
  v124 = v77;
  v78 = (v77 + 16) & ~v77;
  v119 = v78;
  v79 = (v123 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = v79;
  v80 = swift_allocObject();
  v117 = *(v73 + 32);
  v123 = v73 + 32;
  v117(v80 + v78, v75, v76);
  v81 = (v80 + v79);
  *v81 = sub_227306350;
  v81[1] = v71;
  v82 = v144;

  v83 = v129;
  sub_227669270();
  v84 = *(v73 + 8);
  v143 = v73 + 8;
  v126 = v84;
  v85 = v76;
  (v84)(v141, v76);
  v86 = v145;
  v87 = v142;
  v88 = v138;
  v138(v145, v140, v142);
  v89 = v134;
  v88(v134, v146, v87);
  v115 = v49;
  v90 = (v118 + v49) & ~v49;
  v91 = swift_allocObject();
  v92 = v87;
  v93 = v87;
  v94 = v131;
  v131(v91 + v121, v86, v93);
  *(v91 + v120) = v82;
  v94(v91 + v90, v89, v92);
  v95 = swift_allocObject();
  *(v95 + 16) = sub_227306428;
  *(v95 + 24) = v91;
  v96 = v141;
  v97 = v83;
  (v133)(v141, v83, v85);
  v98 = v116;
  v99 = swift_allocObject();
  v117(&v119[v99], v96, v85);
  v100 = (v99 + v98);
  *v100 = sub_2273064E0;
  v100[1] = v95;
  v101 = v82;

  v102 = v130;
  sub_227669270();
  v103 = v85;
  v104 = v126;
  (v126)(v97, v85);
  v105 = v145;
  v138(v145, v146, v92);
  v106 = v120;
  v107 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  v131(v108 + v121, v105, v92);
  *(v108 + v106) = v101;
  v109 = (v108 + v107);
  v110 = v135;
  *v109 = v127;
  v109[1] = v110;

  v111 = v103;
  v112 = sub_227669290();
  v113 = swift_allocObject();
  *(v113 + 16) = sub_227306510;
  *(v113 + 24) = v108;

  v112(sub_226E93814, v113);

  v104(v102, v111);
  return (*(v136 + 8))(v146, v92);
}

uint64_t sub_2272FDC28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a1;
  v72 = a3;
  v78 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v77 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v8;
  MEMORY[0x28223BE20](v7);
  v81 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = v13;
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v65 - v14;
  v15 = sub_2276639B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v22 = sub_22766B390();
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v26 = *(v16 + 16);
  v76 = a2;
  v68 = v26;
  v26(v21, a2, v15);
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v66 = v22;
    v30 = v29;
    v31 = swift_slowAlloc();
    v85 = v31;
    *v30 = 141558274;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v32 = sub_22766D140();
    v33 = v15;
    v35 = v34;
    v36 = v21;
    v37 = v33;
    (*(v16 + 8))(v36, v33);
    v38 = sub_226E97AE8(v32, v35, &v85);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_226E8E000, v27, v28, "Reload - fetching %{mask.hash}s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v30, -1, -1);

    (*(v67 + 8))(v25, v66);
  }

  else
  {

    v39 = v21;
    v37 = v15;
    (*(v16 + 8))(v39, v15);
    (*(v67 + 8))(v25, v22);
  }

  v40 = v72;
  v41 = v72[22];
  v67 = v72[23];
  __swift_project_boxed_opaque_existential_0(v72 + 19, v41);
  v42 = v69;
  v43 = v76;
  v44 = v37;
  v68(v69, v76, v37);
  v45 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v16 + 32))(v47 + v45, v42, v44);
  *(v47 + v46) = v40;

  v48 = v84;
  sub_226ECF5D8(sub_227306A20, v47, v41, MEMORY[0x277D84F78] + 8, v67, v84);

  v49 = v71[3];
  v50 = v71[4];
  __swift_project_boxed_opaque_existential_0(v71, v49);
  v51 = v81;
  (*(v50 + 32))(v43, v49, v50);
  v52 = v82;
  v53 = v83;
  v54 = v77;
  (*(v82 + 16))(v77, v51, v83);
  v55 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v56 = swift_allocObject();
  (*(v52 + 32))(v56 + v55, v54, v53);
  v58 = v79;
  v57 = v80;
  v59 = v74;
  (*(v79 + 16))(v74, v48, v80);
  v60 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v61 = (v73 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v58 + 32))(v62 + v60, v59, v57);
  v63 = (v62 + v61);
  *v63 = sub_227306A4C;
  v63[1] = v56;
  type metadata accessor for AssetLoaderResponse();
  sub_227669270();
  (*(v52 + 8))(v51, v53);
  return (*(v58 + 8))(v84, v57);
}

uint64_t sub_2272FE328@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v70 = a1;
  v66 = a3;
  v81 = a5;
  v80 = type metadata accessor for AssetLoaderResponse();
  v67 = *(v80 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v80);
  v68 = v8;
  v82 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v59 = &v58 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v73 = *(v75 - 8);
  v72 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v71 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v78 = *(v18 - 8);
  v79 = v18;
  v77 = *(v78 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v76 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = &v58 - v21;
  v61 = a2;
  v22 = a2[23];
  v62 = a2[22];
  v64 = v22;
  v63 = __swift_project_boxed_opaque_existential_0(a2 + 19, v62);
  v23 = *(v10 + 16);
  v23(v14, v66, v9);
  v23(&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v69, v9);
  v24 = v82;
  sub_227145B00(a1, v82);
  v25 = *(v10 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + v27 + 8) & ~v25;
  v29 = *(v67 + 80);
  v30 = (v11 + v29 + v28) & ~v29;
  v69 = v29 | 7;
  v31 = swift_allocObject();
  v32 = *(v10 + 32);
  v32(v31 + v26, v59, v9);
  v33 = v61;
  *(v31 + v27) = v61;
  v32(v31 + v28, v60, v9);
  sub_2273065BC(v24, v31 + v30);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  v35 = v65;
  sub_226ECF5D8(sub_2273067E4, v31, v62, v34, v64, v65);

  v36 = swift_allocObject();
  *(v36 + 16) = sub_2273068EC;
  *(v36 + 24) = v33;
  v37 = v73;
  v38 = v71;
  v39 = v75;
  (*(v73 + 16))(v71, v35, v75);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = (v72 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v37 + 32))(v42 + v40, v38, v39);
  v43 = (v42 + v41);
  *v43 = sub_227306918;
  v43[1] = v36;

  v44 = v74;
  sub_227669270();
  (*(v37 + 8))(v35, v39);
  v45 = v82;
  sub_227145B00(v70, v82);
  v46 = swift_allocObject();
  sub_2273065BC(v45, v46 + ((v29 + 16) & ~v29));
  v47 = swift_allocObject();
  *(v47 + 16) = sub_227306948;
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_2273069B8;
  *(v48 + 24) = v47;
  v49 = v78;
  v50 = v79;
  v51 = v76;
  (*(v78 + 16))(v76, v44, v79);
  v52 = v49;
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v54 = (v77 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v52 + 32))(v55 + v53, v51, v50);
  v56 = (v55 + v54);
  *v56 = sub_2273069E8;
  v56[1] = v48;
  sub_227669270();
  return (*(v52 + 8))(v44, v50);
}

uint64_t sub_2272FE9E8@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(void, void)@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v147 = a4;
  v157 = a3;
  v163 = a1;
  v142 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = v141 - v8;
  v9 = sub_227663180();
  v152 = *(v9 - 8);
  v153 = v9;
  v10 = *(v152 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v149 = v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = v141 - v13;
  v14 = sub_2276624A0();
  isa = v14[-1].isa;
  v156 = v14;
  v15 = *(isa + 8);
  v16 = MEMORY[0x28223BE20](v14);
  v145 = v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v154 = v141 - v18;
  v19 = sub_2276639B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v141 - v25;
  v27 = sub_22766B390();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v151 = v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v143 = v141 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v141 - v34;
  sub_22766A6C0();
  v167 = v20;
  v36 = *(v20 + 16);
  v159 = a2;
  v161 = v36;
  v162 = (v20 + 16);
  v36(v26, a2, v19);
  v37 = sub_22766B380();
  v38 = sub_22766C8B0();
  v39 = os_log_type_enabled(v37, v38);
  v148 = v24;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *&v144 = swift_slowAlloc();
    v166[0] = v144;
    *v40 = 141558274;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v41 = sub_22766D140();
    v158 = v28;
    v42 = v27;
    v44 = v43;
    v45 = v19;
    v46 = *(v167 + 8);
    v47 = v26;
    v48 = v45;
    v46(v47);
    v49 = sub_226E97AE8(v41, v44, v166);
    v27 = v42;
    v28 = v158;

    *(v40 + 14) = v49;
    _os_log_impl(&dword_226E8E000, v37, v38, "Reload - removing old key request %{mask.hash}s", v40, 0x16u);
    v50 = v144;
    __swift_destroy_boxed_opaque_existential_0(v144);
    v51 = v163;
    MEMORY[0x22AA9A450](v50, -1, -1);
    MEMORY[0x22AA9A450](v40, -1, -1);

    v52 = *(v28 + 8);
    v52(v35, v27);
    v53 = v48;
    v54 = v52;
  }

  else
  {

    v53 = v19;
    v46 = *(v167 + 8);
    (v46)(v26, v53);
    v54 = *(v28 + 8);
    v54(v35, v27);
    v51 = v163;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v55 = *(v167 + 72);
  v56 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v57 = swift_allocObject();
  v144 = xmmword_227670CD0;
  *(v57 + 16) = xmmword_227670CD0;
  v161(v57 + v56, v159, v53);
  v58 = v160;
  sub_227078AE0(v57, v51);
  if (v58)
  {
    swift_setDeallocating();
    (v46)(v57 + v56, v53);
    return swift_deallocClassInstance();
  }

  else
  {
    v158 = v28;
    v160 = v27;
    swift_setDeallocating();
    v59 = v167 + 8;
    v167 = v53;
    v159 = v46;
    v141[1] = v59;
    (v46)(v57 + v56, v53);
    swift_deallocClassInstance();
    v60 = __swift_project_boxed_opaque_existential_0(v51, v51[3]);
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v60 + 16);
    v64 = v60[3];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    v68 = swift_allocObject();
    v69 = v61;
    v70 = v62;

    sub_22766A070();
    *(v68 + 16) = v69;
    *(v68 + 24) = v70;
    *(v68 + 32) = v63;
    *(v68 + 40) = v64;
    swift_getKeyPath();
    v71 = v154;
    sub_2276639A0();
    v72 = sub_227662390();
    v74 = v73;
    (*(isa + 1))(v71, v156);
    v166[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v166[0] = v72;
    v166[1] = v74;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v75 = sub_22766C820();
    sub_226E93170(v166, v164, &unk_27D7BC990, &qword_227670A30);
    v76 = v165;
    if (v165)
    {
      v77 = __swift_project_boxed_opaque_existential_0(v164, v165);
      v154 = v141;
      v78 = v54;
      v79 = *(v76 - 8);
      v80 = *(v79 + 64);
      MEMORY[0x28223BE20](v77);
      v82 = v141 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v79 + 16))(v82);
      v83 = sub_22766D170();
      (*(v79 + 8))(v82, v76);
      v54 = v78;
      __swift_destroy_boxed_opaque_existential_0(v164);
    }

    else
    {
      v83 = 0;
    }

    v84 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v85 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(v166, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v86 = v85;
    v87 = sub_22766A080();
    v89 = v88;
    MEMORY[0x22AA985C0]();
    if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v140 = *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v87(v166, 0);
    swift_endAccess();

    v91 = sub_2272F8688(0x64);
    swift_setDeallocating();

    v92 = *(v68 + 40);

    v93 = qword_2813B2078;
    v94 = sub_22766A100();
    (*(*(v94 - 8) + 8))(v68 + v93, v94);
    v95 = *(*v68 + 48);
    v96 = *(*v68 + 52);
    swift_deallocClassInstance();
    v97 = v143;
    sub_22766A6C0();

    v98 = sub_22766B380();
    v99 = sub_22766C8B0();

    v100 = os_log_type_enabled(v98, v99);
    v141[0] = v54;
    v154 = v91;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v166[0] = v102;
      *v101 = 141558274;
      *(v101 + 4) = 1752392040;
      *(v101 + 12) = 2080;
      sub_227307D58(&qword_28139BD58, MEMORY[0x277D4FCA8]);
      v103 = sub_22766C610();
      v105 = sub_226E97AE8(v103, v104, v166);

      *(v101 + 14) = v105;
      _os_log_impl(&dword_226E8E000, v98, v99, "Reload - deleted old AssetEntries %{mask.hash}s", v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x22AA9A450](v102, -1, -1);
      MEMORY[0x22AA9A450](v101, -1, -1);
    }

    v54(v97, v160);
    v106 = v150;
    v107 = v152;
    v108 = v149;
    v110 = isa;
    v109 = v156;
    v111 = v146;
    v112 = v147;
    (*(isa + 2))(v146, v147, v156);
    (*(v110 + 7))(v111, 0, 1, v109);
    v113 = v157;
    sub_2276639A0();
    v114 = *(v112 + *(type metadata accessor for AssetLoaderResponse() + 20));
    sub_227663150();
    sub_22766A6C0();
    v115 = v148;
    v116 = v167;
    v161(v148, v113, v167);
    v162 = *(v107 + 16);
    v162(v108, v106, v153);
    v117 = sub_22766B380();
    v118 = sub_22766C8B0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v166[0] = v161;
      *v119 = 141558786;
      *(v119 + 4) = 1752392040;
      LODWORD(v157) = v118;
      *(v119 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v156 = v117;
      v120 = sub_22766D140();
      v122 = v121;
      v159(v115, v116);
      v123 = sub_226E97AE8(v120, v122, v166);

      *(v119 + 14) = v123;
      *(v119 + 22) = 2160;
      *(v119 + 24) = 1752392040;
      *(v119 + 32) = 2080;
      sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8]);
      v124 = v153;
      v125 = sub_22766D140();
      v127 = v126;
      v128 = v108;
      v129 = *(v152 + 8);
      v129(v128, v124);
      v130 = sub_226E97AE8(v125, v127, v166);
      v106 = v150;

      *(v119 + 34) = v130;
      v131 = v156;
      _os_log_impl(&dword_226E8E000, v156, v157, "Reload - load succeeded for request: %{mask.hash}s. Saving entry: %{mask.hash}s", v119, 0x2Au);
      v132 = v161;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v132, -1, -1);
      v133 = v119;
      v107 = v152;
      MEMORY[0x22AA9A450](v133, -1, -1);

      (v141[0])(v151, v160);
    }

    else
    {

      v134 = v108;
      v129 = *(v107 + 8);
      v135 = v153;
      v129(v134, v153);
      v159(v115, v116);
      (v141[0])(v151, v160);
      v124 = v135;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
    v136 = *(v107 + 72);
    v137 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v138 = swift_allocObject();
    *(v138 + 16) = v144;
    v162((v138 + v137), v106, v124);
    v139 = sub_226F4AE10(v138);
    swift_setDeallocating();
    v129((v138 + v137), v124);
    swift_deallocClassInstance();
    sub_227079538(v139, v163);
    v129(v106, v124);

    *v142 = v154;
  }

  return result;
}

id sub_2272FFAF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v61 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v52[-v9];
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v58 = v14;
  v59 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v52[-v15];
  v17 = sub_22766B390();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v55 = v11[2];
  v55(v16, a2, v10);
  v21 = a1;
  v22 = sub_22766B380();
  v23 = sub_22766C890();
  v65 = a1;

  v24 = os_log_type_enabled(v22, v23);
  v60 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68 = v54;
    *v25 = 141558786;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v53 = v23;
    v26 = sub_22766D140();
    v27 = v10;
    v28 = a4;
    v30 = v29;
    v31 = v11[1];
    v32 = v27;
    v31(v16, v27);
    v33 = sub_226E97AE8(v26, v30, &v68);
    a4 = v28;

    *(v25 + 14) = v33;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2080;
    swift_getErrorValue();
    v34 = MEMORY[0x22AA995D0](v66, v67);
    v36 = sub_226E97AE8(v34, v35, &v68);

    *(v25 + 34) = v36;
    _os_log_impl(&dword_226E8E000, v22, v53, "Reload - Failed for request: %{mask.hash}s, error: %{mask.hash}s", v25, 0x2Au);
    v37 = v54;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v37, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    v38 = v11[1];
    v32 = v10;
    v38(v16, v10);
  }

  (*(v56 + 8))(v20, v57);
  v39 = v61;
  v40 = v61[22];
  v57 = v61[23];
  __swift_project_boxed_opaque_existential_0(v61 + 19, v40);
  v41 = v59;
  v55(v59, a4, v32);
  v42 = v60;
  v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (v42[4])(v45 + v43, v41, v32);
  *(v45 + v44) = v39;

  v46 = v62;
  sub_226ECF5D8(sub_2273067B8, v45, v40, MEMORY[0x277D84F78] + 8, v57, v62);

  v47 = v64;
  v48 = sub_227669290();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v48(sub_226E9F7B0, v49);

  (*(v63 + 8))(v46, v47);
  v50 = v65;
  swift_willThrow();
  return v50;
}

uint64_t sub_227300090(void *a1, uint64_t a2)
{
  v39 = a1;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22766B390();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v37 = *(v5 + 16);
  v38 = a2;
  v37(v8, a2, v4);
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v9;
    v16 = v15;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v32 = v14;
    v17 = sub_22766D140();
    v35 = v2;
    v18 = v4;
    v19 = v5;
    v21 = v20;
    v22 = v8;
    v23 = *(v19 + 8);
    v23(v22, v18);
    v24 = sub_226E97AE8(v17, v21, &v40);
    v5 = v19;
    v4 = v18;

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226E8E000, v13, v32, "Reload - Deleting asset request created for reload because reload failed: %{mask.hash}s", v16, 0x16u);
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v36 + 8))(v12, v34);
  }

  else
  {

    v26 = v8;
    v23 = *(v5 + 8);
    v23(v26, v4);
    (*(v36 + 8))(v12, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_227670CD0;
  v37((v29 + v28), v38, v4);
  sub_227078AE0(v29, v39);
  swift_setDeallocating();
  v23((v29 + v28), v4);
  return swift_deallocClassInstance();
}

uint64_t sub_22730045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a1;
  v27 = a3;
  v24 = a2;
  v25 = sub_2276624A0();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for AssetLoaderResponse();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v24 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v24 - v20);
  sub_226E93170(v26, v17, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v21 = *v17;
  }

  else
  {
    sub_2273065BC(v17, v13);
    sub_2276639A0();
    (*(v5 + 16))(v9, v13, v25);
    sub_227663CE0();
    sub_2273073F0(v13, type metadata accessor for AssetLoaderResponse);
  }

  swift_storeEnumTagMultiPayload();
  v22 = *(v27 + 192);
  sub_2272FAF7C(v21, v28, v29);
  return sub_226E97D1C(v21, &qword_27D7BCAB8, &qword_22767FE80);
}

uint64_t sub_22730070C(uint64_t a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  result = sub_226F92230(v8);
  if (!v2)
  {
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v7 + 48))(a2, v6, v7);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return result;
}

uint64_t sub_2273007B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v67 = a1;
  v68 = a2;
  v72 = a4;
  v4 = sub_2276624A0();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276639B0();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 8);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v64 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  v21 = sub_227665490();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v25 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v58 - v26;
  sub_226E93170(v67, v20, &qword_27D7BD9F0, qword_2276873A0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_226E97D1C(v20, &qword_27D7BD9F0, qword_2276873A0);
    v28 = v10;
    sub_22766A6C0();
    v30 = v70;
    v29 = v71;
    v31 = *(v70 + 2);
    v32 = v64;
    v33 = v68;
    v31(v64, v68, v71);
    v31(v69, v33, v29);
    v34 = sub_22766B380();
    v35 = sub_22766C890();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v36 = 136446722;
      v37 = sub_227663910();
      v39 = v38;
      v40 = *(v30 + 1);
      v40(v32, v29);
      v41 = sub_226E97AE8(v37, v39, &v73);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2080;
      v70 = v28;
      v42 = v59;
      v43 = v69;
      sub_2276639A0();
      v44 = sub_227662390();
      v46 = v45;
      (*(v60 + 8))(v42, v61);
      v40(v43, v29);
      v47 = sub_226E97AE8(v44, v46, &v73);

      *(v36 + 24) = v47;
      _os_log_impl(&dword_226E8E000, v34, v35, "Not pausing request [%{public}s, %{mask.hash}s] because no resumable load exists.", v36, 0x20u);
      v48 = v68;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v48, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);

      (*(v65 + 8))(v70, v66);
    }

    else
    {

      v57 = *(v30 + 1);
      v57(v69, v29);
      v57(v32, v29);
      (*(v65 + 8))(v28, v66);
    }

    return sub_2276692A0();
  }

  else
  {
    v65 = *(v22 + 32);
    v58 = v27;
    (v65)(v27, v20, v21);
    v49 = v63[23];
    v67 = v63[22];
    v69 = v49;
    v66 = __swift_project_boxed_opaque_existential_0(v63 + 19, v67);
    (*(v22 + 16))(v25, v27, v21);
    v50 = v70;
    v51 = v71;
    v52 = v62;
    (*(v70 + 2))(v62, v68, v71);
    v53 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v54 = (v23 + v50[80] + v53) & ~v50[80];
    v55 = swift_allocObject();
    (v65)(v55 + v53, v25, v21);
    (*(v50 + 4))(v55 + v54, v52, v51);
    sub_226ECF5D8(sub_227307C78, v55, v67, MEMORY[0x277D84F78] + 8, v69, v72);

    return (*(v22 + 8))(v58, v21);
  }
}

uint64_t sub_227300E94(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_227665490();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22766B390();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v51 = v11;
  v19 = v11 + 16;
  v20 = *(v11 + 16);
  v21 = v10;
  v48 = v20;
  v49 = v19;
  v20(v14, a2, v10);
  v22 = *(v6 + 16);
  v45 = v5;
  v22(v9, a3, v5);
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v25 = 141558786;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    sub_227307D58(&qword_27D7BCAE0, MEMORY[0x277D51680]);
    v42 = v24;
    v26 = sub_22766D140();
    v44 = a2;
    v28 = v27;
    (*(v51 + 8))(v14, v21);
    v29 = sub_226E97AE8(v26, v28, &v52);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v30 = v45;
    v31 = sub_22766D140();
    v33 = v32;
    (*(v6 + 8))(v9, v30);
    v34 = sub_226E97AE8(v31, v33, &v52);
    a2 = v44;

    *(v25 + 34) = v34;
    _os_log_impl(&dword_226E8E000, v23, v42, "Tracking resumable load [%{mask.hash}s] for request [%{mask.hash}s]", v25, 0x2Au);
    v35 = v43;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v35, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v45);
    (*(v51 + 8))(v14, v21);
  }

  (*(v46 + 8))(v18, v47);
  v36 = __swift_project_boxed_opaque_existential_0(v50, v50[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE620, &unk_22767FFD0);
  v37 = *(v51 + 72);
  v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_227670CD0;
  v48(v39 + v38, a2, v21);
  sub_227567234(v39, v36[1], *(v36 + 16), v36[3]);
}

uint64_t sub_227301394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v46 = a4;
  v39 = sub_227663180();
  v5 = *(v39 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = sub_2276639B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA0, &qword_22767FE58);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v37 - v14;
  sub_227663120();
  v15 = sub_227664570();
  if (v15 == sub_227664570())
  {
    v16 = v39;
    (*(v5 + 16))(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v39);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    type metadata accessor for AssetLoaderResponse();
    return sub_227669280();
  }

  else
  {
    v39 = *(v8 + 16);
    (v39)(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v7);
    v20 = *(v8 + 80);
    v21 = swift_allocObject();
    v22 = v43;
    *(v21 + 16) = v43;
    v23 = v7;
    v38 = v7;
    v24 = *(v8 + 32);
    v24(v21 + ((v20 + 24) & ~v20), &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v25 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB0, &unk_22767FE70);
    sub_227669280();
    v26 = v38;
    (v39)(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v38);
    v27 = (v20 + 16) & ~v20;
    v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v24(v29 + v27, v10, v26);
    *(v29 + v28) = v25;
    v31 = v40;
    v30 = v41;
    v32 = v45;
    v33 = v42;
    (*(v41 + 16))(v40, v45, v42);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = swift_allocObject();
    (*(v30 + 32))(v35 + v34, v31, v33);
    v36 = (v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_227307620;
    v36[1] = v29;
    type metadata accessor for AssetLoaderResponse();

    sub_227669270();
    return (*(v30 + 8))(v32, v33);
  }
}

uint64_t sub_22730182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227663180();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_22750DD6C(v7, a2);
}

uint64_t sub_227301900@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  if ((*(v7 + 24))(v6, v7))
  {
    return sub_2273019C4(a2, a1, a3);
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  return (*(v10 + 32))(a2, v9, v10);
}

uint64_t sub_2273019C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62 = a2;
  v66 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
  v65 = *(v67 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v67);
  v63 = v8;
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v55 - v9;
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v60 = v14;
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v69 = v11;
  v22 = *(v11 + 16);
  v58 = a1;
  v59 = v22;
  v68 = v11 + 16;
  v22(v16, a1, v10);
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = v17;
    v26 = v25;
    v27 = swift_slowAlloc();
    v57 = v4;
    v28 = v27;
    *&v71[0] = v27;
    *v26 = 141558274;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v29 = sub_22766D140();
    v30 = v10;
    v32 = v31;
    (*(v69 + 8))(v16, v30);
    v33 = sub_226E97AE8(v29, v32, v71);
    v10 = v30;

    *(v26 + 14) = v33;
    _os_log_impl(&dword_226E8E000, v23, v24, "Handling resume fetch for request: %{mask.hash}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v34 = v28;
    v4 = v57;
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v26, -1, -1);

    (*(v18 + 8))(v21, v56);
  }

  else
  {

    (*(v69 + 8))(v16, v10);
    (*(v18 + 8))(v21, v17);
  }

  v35 = v4[22];
  v36 = v4[23];
  v57 = __swift_project_boxed_opaque_existential_0(v4 + 19, v35);
  v37 = v61;
  v39 = v58;
  v38 = v59;
  v59(v61, v58, v10);
  v40 = v69;
  v41 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v60 += v41;
  v42 = swift_allocObject();
  v69 = *(v40 + 32);
  (v69)(v42 + v41, v37, v10);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
  sub_226ECF5D8(sub_2273077F4, v42, v35, v43, v36, v70);

  v38(v37, v39, v10);
  sub_226E91B50(v62, v71);
  v44 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (v69)(v45 + v41, v37, v10);
  sub_226F19770(v71, v45 + v44);
  v47 = v64;
  v46 = v65;
  v48 = v70;
  v49 = v67;
  (*(v65 + 16))(v64, v70, v67);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v51 = (v63 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v46 + 32))(v52 + v50, v47, v49);
  v53 = (v52 + v51);
  *v53 = sub_227307870;
  v53[1] = v45;
  type metadata accessor for AssetLoaderResponse();
  sub_227669270();
  return (*(v46 + 8))(v48, v49);
}