void sub_27220C330()
{
  v2 = v0[23];
  v3 = *(v2 + 16);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[24];
    *(v2 + 16) = v5;
    v7 = sub_27222CD4C();
    v8 = *(*v6 + 384);
    v11 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_27220C480;

    (v11)(0, 1, v7 & 1);
  }
}

uint64_t sub_27220C480(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v9 = sub_27220E440;
  }

  else
  {
    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v9 = sub_27220C5B4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_27220C5B4()
{
  v105 = v0;
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v0 + 328);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 336);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!*(v3 + 16))
  {
    v14 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);

    v17 = sub_2722C389C();
    (*(v16 + 16))(v14, v17, v15);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "processing was stopped, stop predictions", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    v21 = *(v0 + 128);
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    (*(v23 + 8))(v21, v22);
    v24 = *(v0 + 320);
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 96);
    v28 = sub_2722C389C();
    (*(v26 + 16))(v25, v28, v27);
    v29 = sub_27237725C();
    v30 = sub_272377E7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2721E4000, v29, v30, "Processing loop done, reset tasr model", v31, 2u);
      MEMORY[0x2743C69C0](v31, -1, -1);
    }

    v32 = *(v0 + 144);
    v34 = *(v0 + 104);
    v33 = *(v0 + 112);
    v35 = *(v0 + 96);
    v36 = *(v0 + 80);

    (*(v34 + 8))(v33, v35);
    v37 = *(**(v36 + v32) + 968);

    v39 = v37(v38);
    *(v0 + 440) = v40;
    if (v24)
    {
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      v45 = *(v0 + 160);
      v46 = *(v0 + 168);

      v48 = *(v0 + 128);
      v47 = *(v0 + 136);
      v50 = *(v0 + 112);
      v49 = *(v0 + 120);
      v51 = *(v0 + 88);

      v52 = *(v0 + 8);
    }

    else
    {
      v71 = v39;
      v72 = v40;
      v73 = v41;
      v74 = v42;

      v75 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v75 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v76 = *(v0 + 184);
        swift_beginAccess();
        v77 = *(v76 + 16);
        v78 = swift_task_alloc();
        *(v0 + 448) = v78;
        *v78 = v0;
        v78[1] = sub_27220E018;
        v79 = *(v0 + 80);

        return sub_272217F10(v71, v72, v73 & 1, v77, v74);
      }

      (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
      v88 = *(v0 + 184);
      v89 = *(v0 + 192);
      v90 = *(v0 + 160);
      v91 = *(v0 + 168);
      v98 = *(v0 + 128);
      v97 = *(v0 + 136);
      v100 = *(v0 + 112);
      v99 = *(v0 + 120);
      v101 = *(v0 + 88);

      v52 = *(v0 + 8);
    }

    return v52();
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & **(v0 + 168)) + 0x170))();

  (*(*v5 + 168))(v7);

  if (!v4)
  {
    __break(1u);
    return result;
  }

  if (*(*(v0 + 184) + 16) % *(v0 + 176))
  {
    goto LABEL_10;
  }

  v53 = *(**(*(v0 + 80) + *(v0 + 248)) + 536);

  v53(&v104, v54);

  *(v0 + 464) = v104;
  *(v0 + 465) = 1;
  sub_272219A30();
  sub_272377A8C();
  v55 = sub_272377A8C();
  if (*(v0 + 64) == *(v0 + 72))
  {
    v56 = *(v0 + 88);
    (*(**(v0 + 192) + 312))(v55);
    v57 = *(v56 + 78);
    v58 = sub_272216BD8(v56);
    if (v57 == 1 && ((*((*v6 & **(v0 + 80)) + 0x498))(v58) & 1) == 0)
    {
      v92 = *(v0 + 184);
      v93 = (*(v0 + 80) + *(v0 + 200));
      v94 = (*(**(v0 + 160) + 176))();
      v95 = *(v92 + 16);
      v96 = *v93;
      *v93 = v94;
      v93[1] = v95;
      v93[2] = v2;

LABEL_10:
      *(v0 + 424) = *(v0 + 320);
      v9 = *(v0 + 216);
      v10 = *(v0 + 192);
      v103 = (*(v0 + 208) + **(v0 + 208));
      v11 = *(*(v0 + 208) + 4);
      v12 = swift_task_alloc();
      *(v0 + 432) = v12;
      *v12 = v0;
      v12[1] = sub_27220D7A0;
      v13 = *(v0 + 216);

      return v103();
    }
  }

  v59 = *(v0 + 80);
  v60 = (v59 + *(v0 + 200));
  v61 = *v60;
  if (*v60)
  {
    v63 = v60[1];
    v62 = v60[2];
    v64 = *(v59 + *(v0 + 240));
    *(v0 + 344) = v64;
    v65 = swift_allocObject();
    *(v0 + 352) = v65;
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v0 + 360) = v66;
    v66[2] = v65;
    v66[3] = v61;
    v66[4] = v63;
    v66[5] = v62;
    v67 = *(*v64 + 88);

    v102 = (v67 + *v67);
    v68 = v67[1];
    v69 = swift_task_alloc();
    *(v0 + 368) = v69;
    *v69 = v0;
    v69[1] = sub_27220D004;
    v70 = &unk_27237CAB8;
  }

  else
  {
    v80 = *(v0 + 184);
    v81 = *(v0 + 160);
    if (*(v0 + 336))
    {
      v82 = *(v0 + 328);
    }

    else
    {
      v82 = 0;
    }

    v83 = *(v59 + *(v0 + 240));
    *(v0 + 384) = v83;
    v84 = swift_allocObject();
    *(v0 + 392) = v84;
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v0 + 400) = v66;
    v66[2] = v84;
    v66[3] = v81;
    v66[4] = v80;
    v66[5] = v82;
    v85 = *(*v83 + 88);

    v102 = (v85 + *v85);
    v86 = v85[1];
    v87 = swift_task_alloc();
    *(v0 + 408) = v87;
    *v87 = v0;
    v87[1] = sub_27220D3D4;
    v70 = &unk_27237CAA8;
  }

  return (v102)(v70, v66);
}

uint64_t sub_27220D004()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_27220E4FC;
  }

  else
  {
    v6 = v2[44];
    v5 = v2[45];
    v7 = v2[43];

    v4 = sub_27220D134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27220D134()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "reset model input from before unblock after using it", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[10];

  v13 = (v12 + v8);
  (*(v11 + 8))(v9, v10);
  v14 = *(v12 + v8);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;

  v15 = v0[23];
  v16 = v0[20];
  if (v0[42])
  {
    v17 = v0[41];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v0[10] + v0[30]);
  v0[48] = v18;
  v19 = swift_allocObject();
  v0[49] = v19;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v0[50] = v20;
  v20[2] = v19;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v17;
  v21 = *(*v18 + 88);

  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[51] = v23;
  *v23 = v0;
  v23[1] = sub_27220D3D4;

  return (v25)(&unk_27237CAA8, v20);
}

uint64_t sub_27220D3D4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_27220E5D8;
  }

  else
  {
    v6 = v2[49];
    v5 = v2[50];
    v7 = v2[48];

    v4 = sub_27220D504;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27220D504()
{
  v1 = *(**(*(v0 + 80) + *(v0 + 256)) + 160);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *(**(*(v0 + 80) + *(v0 + 264)) + 160);

    LOBYTE(v3) = v3(v4);

    v5 = *(v0 + 416);
    if (v3)
    {
      v6 = *(v0 + 80);
      v7 = *(v6 + *(v0 + 272));
      v8 = swift_task_alloc();
      v8[2] = v6;
      v8[3] = 0xD000000000000012;
      v8[4] = 0x8000000272388E60;
      sub_272377EEC();
      if (v5)
      {
        v10 = *(v0 + 184);
        v9 = *(v0 + 192);
        v11 = *(v0 + 160);

        v13 = *(v0 + 128);
        v12 = *(v0 + 136);
        v15 = *(v0 + 112);
        v14 = *(v0 + 120);
        v16 = *(v0 + 88);

        v17 = *(v0 + 8);

        return v17();
      }
    }
  }

  else
  {
    v5 = *(v0 + 416);
  }

  *(v0 + 424) = v5;
  v19 = *(v0 + 216);
  v20 = *(v0 + 192);
  v24 = (*(v0 + 208) + **(v0 + 208));
  v21 = *(*(v0 + 208) + 4);
  v22 = swift_task_alloc();
  *(v0 + 432) = v22;
  *v22 = v0;
  v22[1] = sub_27220D7A0;
  v23 = *(v0 + 216);

  return v24();
}

uint64_t sub_27220D7A0(char a1)
{
  v2 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 467) = a1;

  return MEMORY[0x2822009F8](sub_27220D8A0, 0, 0);
}

uint64_t sub_27220D8A0()
{
  if (*(v0 + 467))
  {
    v1 = *(v0 + 424);
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = sub_2722C389C();
    (*(v3 + 16))(v2, v5, v4);
    v6 = sub_27237725C();
    v7 = sub_272377E7C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2721E4000, v6, v7, "Processing loop done, reset tasr model", v8, 2u);
      MEMORY[0x2743C69C0](v8, -1, -1);
    }

    v9 = *(v0 + 144);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    (*(v11 + 8))(v10, v12);
    v14 = *(**(v13 + v9) + 968);

    v16 = v14(v15);
    *(v0 + 440) = v17;
    if (v1)
    {
      v20 = *(v0 + 184);
      v21 = *(v0 + 192);
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);

      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = *(v0 + 88);

      v29 = *(v0 + 8);
LABEL_6:

      return v29();
    }

    v64 = v16;
    v65 = v17;
    v66 = v18;
    v67 = v19;

    v68 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v68 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (!v68)
    {

      (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
      v73 = *(v0 + 184);
      v74 = *(v0 + 192);
      v75 = *(v0 + 160);
      v76 = *(v0 + 168);
      v78 = *(v0 + 128);
      v77 = *(v0 + 136);
      v80 = *(v0 + 112);
      v79 = *(v0 + 120);
      v81 = *(v0 + 88);

      v29 = *(v0 + 8);
      goto LABEL_6;
    }

    v69 = *(v0 + 184);
    swift_beginAccess();
    v70 = *(v69 + 16);
    v71 = swift_task_alloc();
    *(v0 + 448) = v71;
    *v71 = v0;
    v71[1] = sub_27220E018;
    v72 = *(v0 + 80);

    return sub_272217F10(v64, v65, v66 & 1, v70, v67);
  }

  else
  {
    v31 = *(**(*(v0 + 80) + *(v0 + 232)) + 160);

    LOBYTE(v31) = v31(v32);

    if (v31)
    {
      v33 = *(v0 + 136);
      v34 = *(v0 + 96);
      v35 = *(v0 + 104);
      v36 = sub_2722C389C();
      (*(v35 + 16))(v33, v36, v34);
      v37 = sub_27237725C();
      v38 = sub_272377E7C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2721E4000, v37, v38, "Reset state after getting no results for vad output", v39, 2u);
        MEMORY[0x2743C69C0](v39, -1, -1);
      }

      v40 = *(v0 + 232);
      v83 = *(v0 + 240);
      v42 = *(v0 + 184);
      v41 = *(v0 + 192);
      v43 = *(v0 + 160);
      v44 = *(v0 + 136);
      v45 = *(v0 + 96);
      v46 = *(v0 + 104);
      v47 = *(v0 + 80);

      (*(v46 + 8))(v44, v45);
      v48 = *(**&v47[v40] + 168);

      v48(0);

      v49 = *&v47[v83];
      *(v0 + 280) = v49;
      v50 = swift_allocObject();
      *(v0 + 288) = v50;
      v50[2] = v42;
      v50[3] = v41;
      v50[4] = v43;
      v50[5] = v47;
      v51 = *(*v49 + 88);

      v52 = v47;
      v82 = (v51 + *v51);
      v53 = v51[1];
      v54 = swift_task_alloc();
      *(v0 + 296) = v54;
      *v54 = v0;
      v54[1] = sub_27220C20C;

      return (v82)(&unk_27237CAC8, v50);
    }

    else
    {
      v55 = *(v0 + 184);
      v56 = *(v55 + 16);
      v57 = __CFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v59 = *(v0 + 192);
        *(v55 + 16) = v58;
        v60 = sub_27222CD4C();
        v61 = *(*v59 + 384);
        v84 = (v61 + *v61);
        v62 = v61[1];
        v63 = swift_task_alloc();
        *(v0 + 312) = v63;
        *v63 = v0;
        v63[1] = sub_27220C480;

        return (v84)(0, 1, v60 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_27220E018()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_27220E2A8;
  }

  else
  {
    v5 = *(v2 + 440);

    v4 = sub_27220E134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27220E134()
{
  v1 = *(v0 + 456);
  (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  if (v1)
  {

    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 88);
  }

  else
  {
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 88);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27220E2A8()
{
  v1 = v0[55];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[21];

  v6 = v0[57];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_27220E370()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[21];

  v7 = v0[38];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_27220E440()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];

  v5 = v0[40];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_27220E4FC()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[21];

  v8 = v0[47];
  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_27220E5D8()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[21];

  v8 = v0[52];
  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_27220E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_2723778BC() + 32;

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

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

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

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_27220E960(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v154 - v6;
  v8 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v161 = *(v8 - 8);
  v9 = *(v161 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v11;
  MEMORY[0x28223BE20](v10);
  v160 = &v154 - v12;
  v13 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v159 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v162 = &v154 - v17;
  v18 = type metadata accessor for VARuntimeParameters();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v178 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v169 = &v154 - v22;
  v23 = sub_27237728C();
  v167 = *(v23 - 8);
  v168 = v23;
  v24 = *(v167 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v165 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v163 = &v154 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v154 - v30;
  v32 = MEMORY[0x277D85000];
  v33 = *((*MEMORY[0x277D85000] & *v1) + 0x120);
  v34 = v33(v29);
  if (!v34)
  {
    sub_2722032B4();
    swift_allocError();
    *v42 = 0xD00000000000001DLL;
    v42[1] = 0x8000000272388950;
    return swift_willThrow();
  }

  v155 = v8;
  v156 = v7;
  v35 = *(*v34 + 344);
  v166 = v34;
  v35(a1);
  v36 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider + 24);
  v37 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider + 32);
  sub_27220300C((v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider), v36);
  v38 = (*(v37 + 8))(v1, &protocol witness table for VAKeywordSpotterBase, a1, v36, v37);
  (*((*v32 & *v1) + 0x158))(v38);
  v164 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig;
  v39 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig) + 488);

  LOBYTE(v39) = v39(v40);

  if (v39)
  {
    v154 = a1;
  }

  else
  {
    v44 = mach_absolute_time();
    v45 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel);

    v46 = sub_27234ED24();
    v47 = v170;
    (*(*v45 + 912))(v46);
    if (v47)
    {
    }

    v154 = a1;
    v175 = v1;
    v170 = 0;

    v48 = sub_2722C389C();
    (*(v167 + 16))(v31, v48, v168);
    v49 = sub_27237725C();
    v50 = sub_272377E6C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      type metadata accessor for VARequestContext(0);
      v52 = mach_absolute_time();
      v53 = v52 >= v44;
      v54 = v52 - v44;
      if (!v53)
      {
        goto LABEL_67;
      }

      *(v51 + 4) = sub_2722310BC(v54);
      _os_log_impl(&dword_2721E4000, v49, v50, "Updating context took %f secs", v51, 0xCu);
      MEMORY[0x2743C69C0](v51, -1, -1);
    }

    v41 = (*(v167 + 8))(v31, v168);
    v2 = v175;
  }

  v55 = v33(v41);
  if (!v55)
  {
LABEL_30:
    v95 = *(**(v2 + v164) + 536);

    v95(v180, v96);

    if (LOBYTE(v180[0]))
    {
      if (LOBYTE(v180[0]) == 1)
      {
        v97 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
        *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector) = 0;

        if (*(v154 + 78) == 1)
        {
          v99 = *MEMORY[0x277D85000] & *v2;
          if (*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 3)
          {
            (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(0);
            v127 = v170;
            sub_27220FC48();
            if (!v127)
            {
            }
          }

          if (((*((*MEMORY[0x277D85000] & *v2) + 0x498))(v98) & 1) == 0)
          {
            v139 = sub_2722C389C();
            (*(v167 + 16))(v163, v139, v168);
            v140 = sub_27237725C();
            v141 = sub_272377E7C();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              *v142 = 0;
              _os_log_impl(&dword_2721E4000, v140, v141, "block inference requested, but waiting for final", v142, 2u);
              MEMORY[0x2743C69C0](v142, -1, -1);
            }

            (*(v167 + 8))(v163, v168);
            (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(1);
          }

          sub_2722032B4();
          swift_allocError();
          *v100 = 0xD000000000000052;
          v100[1] = 0x8000000272388970;
LABEL_41:
          swift_willThrow();
        }

        v107 = sub_2722C389C();
        (*(v167 + 16))(v165, v107, v168);
        v108 = sub_27237725C();
        v109 = sub_272377E7C();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_2721E4000, v108, v109, "Unblock inference", v110, 2u);
          MEMORY[0x2743C69C0](v110, -1, -1);
        }

        (*(v167 + 8))(v165, v168);
        if (*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 1)
        {
          *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 1;
        }

        v111 = *(**(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 952);

        v111(v112);
      }

      v103 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState;
      if (!*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
      {
        type metadata accessor for VASpeechDetector();
        v114 = v164;
        v115 = *(**(v2 + v164) + 272);

        v117 = v115(v116);
        v118 = v2;
        v120 = v119;

        v121 = *(**&v118[v114] + 512);

        v121(&v181, v122);

        LOBYTE(v179[0]) = v181;
        swift_unknownObjectRetain();
        v123 = v117;
        v124 = v118;
        v125 = v170;
        v126 = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v123, v120, v179, v118);
        if (!v125)
        {
          v128 = v126;
          v129 = *&v118[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector];
          *&v118[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector] = v126;

          v130 = v154;
          v131 = *(v154 + 52);
          v132 = sub_2721F7EE4();
          v133 = v162;
          (*(*v128 + 672))(v132 & 1, v131);

          v134 = v161;
          v135 = v155;
          (*(v161 + 56))(v133, 0, 1, v155);
          v136 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream;
          swift_beginAccess();
          sub_272216C34(v133, &v118[v136]);
          swift_endAccess();
          v137 = &v118[v136];
          v138 = v159;
          sub_2721F07F4(v137, v159, &qword_2808819B8, &qword_27237C508);
          if ((*(v134 + 48))(v138, 1, v135) == 1)
          {

            result = sub_2721F40F0(v138, &qword_2808819B8, &qword_27237C508);
          }

          else
          {
            v170 = 0;
            v177 = *(v134 + 32);
            v143 = v160;
            (v177)(v160, v138, v135);
            LODWORD(v178) = *(v130 + 76);
            v144 = sub_272377C3C();
            (*(*(v144 - 8) + 56))(v156, 1, 1, v144);
            v145 = v158;
            (*(v134 + 16))(v158, v143, v135);
            v146 = v134;
            v147 = (*(v134 + 80) + 40) & ~*(v134 + 80);
            v148 = v147 + v157;
            v149 = swift_allocObject();
            v149[2] = 0;
            v149[3] = 0;
            v149[4] = v118;
            (v177)(v149 + v147, v145, v135);
            *(v149 + v148) = v178;
            v124 = v118;
            v150 = v118;
            v151 = v156;
            v152 = sub_272215108(0, 0, v156, &unk_27237C538, v149);

            sub_2721F40F0(v151, &qword_2808819D8, &qword_27237CB50);
            (*(v146 + 8))(v160, v135);
            v153 = *&v150[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask];
            *&v150[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask] = v152;
          }

          if (v124[v103] != 1)
          {
            v124[v103] = 1;
          }

          return result;
        }
      }

      v181 = 0;
      v182 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000022, 0x80000002723889D0);
      v102 = *(v2 + v103);
    }

    else
    {
      v101 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState;
      if (!*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
      {

        v113 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
        *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector) = 0;

        if (*(v2 + v101) != 1)
        {
          *(v2 + v101) = 1;
        }

        return result;
      }

      v181 = 0;
      v182 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD00000000000001ALL, 0x8000000272388A00);
      v102 = *(v2 + v101);
    }

    LOBYTE(v179[0]) = v102;
    sub_27237836C();
    v104 = v181;
    v105 = v182;
    sub_2722032B4();
    swift_allocError();
    *v106 = v104;
    v106[1] = v105;
    goto LABEL_41;
  }

  v56 = v178;
  (*(*v55 + 312))(v55);

  sub_2722164B8(v56, v169);
  v57 = *MEMORY[0x277D85000] & *v2;
  v173 = *(v57 + 0x490);
  v174 = v57 + 1168;
  v58 = v173(&v181);
  v60 = v59;
  v61 = *v59;

  *v60 = MEMORY[0x277D84F98];
  v58(&v181, 0);
  v62 = VARuntimeParameters.keywordsNoThresholds.getter();
  v63 = v62;
  v172 = *(v62 + 2);
  if (!v172)
  {
LABEL_29:
    sub_272216BD8(v169);

    goto LABEL_30;
  }

  v64 = 0;
  v65 = (v62 + 40);
  v175 = v2;
  v171 = v62;
  while (v64 < *(v63 + 2))
  {
    v176 = v65;
    v177 = v64;
    v68 = *v65;
    v178 = *(v65 - 1);
    v181 = v178;
    v182 = v68;
    v180[0] = 95;
    v180[1] = 0xE100000000000000;
    v179[0] = 32;
    v179[1] = 0xE100000000000000;
    sub_272203AC4();

    sub_2723780FC();
    v69 = sub_2723778AC();
    v71 = v70;

    v72 = sub_272216A58(v69, v71);
    v74 = v73;

    v75 = v173(&v181);
    v77 = v76;
    v78 = *v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180[0] = *v77;
    v80 = v180[0];
    *v77 = 0x8000000000000000;
    v82 = sub_27220038C(v72, v74);
    v83 = *(v80 + 16);
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      goto LABEL_65;
    }

    v86 = v81;
    if (*(v80 + 24) >= v85)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v89 = v180[0];
        if (v81)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_272215E14();
        v89 = v180[0];
        if (v86)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_272215B54(v85, isUniquelyReferenced_nonNull_native);
      v87 = sub_27220038C(v72, v74);
      if ((v86 & 1) != (v88 & 1))
      {
        goto LABEL_68;
      }

      v82 = v87;
      v89 = v180[0];
      if (v86)
      {
LABEL_15:
        v66 = (v89[7] + 16 * v82);
        v67 = v66[1];
        *v66 = v178;
        v66[1] = v68;

        goto LABEL_16;
      }
    }

    v89[(v82 >> 6) + 8] |= 1 << v82;
    v90 = (v89[6] + 16 * v82);
    *v90 = v72;
    v90[1] = v74;
    v91 = (v89[7] + 16 * v82);
    *v91 = v178;
    v91[1] = v68;
    v92 = v89[2];
    v93 = __OFADD__(v92, 1);
    v94 = v92 + 1;
    if (v93)
    {
      goto LABEL_66;
    }

    v89[2] = v94;
LABEL_16:
    v64 = v177 + 1;
    *v77 = v89;
    v75(&v181, 0);
    v2 = v175;
    v65 = v176 + 2;
    v63 = v171;
    if (v172 == v64)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

unint64_t sub_27220FC48()
{
  v3 = v0;
  v4 = sub_27237728C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
  }

  if (!v1)
  {
    v35 = v9;
    *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
    (*((*MEMORY[0x277D85000] & *v0) + 0x1A0))(0);
    v12 = *(**(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 968);

    v14 = v12(v13);
    v2 = v15;
    v17 = v16;

    v34 = v17;
    v33 = v14;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v19 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v20 = sub_2722C389C();
    v21 = v35;
    v22 = *(v35 + 16);
    if (v19)
    {
      v22(v11, v20, v4);

      v23 = sub_27237725C();
      v24 = sub_272377E7C();

      v32 = v23;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_2721FFD04(v33, v2, &v36);
        *(v25 + 12) = 1024;
        *(v25 + 14) = v34 & 1;
        v27 = v24;
        v28 = v32;
        _os_log_impl(&dword_2721E4000, v32, v27, "Block inference, ignore %s, isFinal %{BOOL}d", v25, 0x12u);
        sub_2722039C8(v26);
        MEMORY[0x2743C69C0](v26, -1, -1);
        MEMORY[0x2743C69C0](v25, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v11, v4);
    }

    else
    {
      v22(v8, v20, v4);
      v29 = sub_27237725C();
      v30 = sub_272377E7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2721E4000, v29, v30, "Block inference", v31, 2u);
        MEMORY[0x2743C69C0](v31, -1, -1);
      }

      (*(v21 + 8))(v8, v4);
    }

    if (*(v3 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 2)
    {
      *(v3 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 2;
    }
  }

  return v2;
}

void sub_272210008(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 680);

    v4(a1, a2);
  }

  else
  {
    sub_272337680(a1, a2);
  }
}

uint64_t sub_2722100C4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector;
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 688);
    v5 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);

    v4(v6);

    v7 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_272210214;
  v9 = *(v0 + 16);

  return sub_272335974();
}

uint64_t sub_272210214()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_272210344, 0, 0);
  }
}

uint64_t sub_272210344()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
  }

  return (*(v0 + 8))();
}

uint64_t sub_272210374(uint64_t a1, uint64_t a2)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v2) + 0x120))(v9);
  if (!v13)
  {
    sub_2722032B4();
    swift_allocError();
    *v22 = 0x75716552206C694ELL;
    v22[1] = 0xEF6F666E49747365;
    return swift_willThrow();
  }

  v14 = v13;
  v15 = (*((*v12 & *v2) + 0x150))();
  if (!v15)
  {
    sub_2722032B4();
    swift_allocError();
    *v24 = 0xD000000000000011;
    v24[1] = 0x8000000272388A20;
    swift_willThrow();
  }

  v16 = v15;
  (*(*a1 + 208))(v41);
  if (!v41[1])
  {
    sub_2722032B4();
    swift_allocError();
    *v25 = 0xD000000000000014;
    v25[1] = 0x8000000272388A40;
    swift_willThrow();
    goto LABEL_24;
  }

  v39 = v6;
  v40 = v3;
  v38 = v7;
  sub_2721F40F0(v41, &qword_2808819E0, &qword_27237D890);
  type metadata accessor for VAInstrumentedKeywordResult();
  v17 = (*(*a1 + 104))();
  v18 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v17);
  if (!a2)
  {
LABEL_21:
    v32 = v40;
    v33 = (*(*v14 + 432))(v18);
    if (v32)
    {
    }

    (*(*v14 + 144))(v33);
    (*(*v16 + 80))(v18, v11);
    (*(v38 + 8))(v11, v39);

LABEL_24:
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = *(a2 + 16);
    v21 = sub_272377B5C();
    *(v21 + 16) = v19;
    bzero((v21 + 32), 2 * v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26 = *(*v18 + 136);
  v27 = *v18 + 136;
  v26(v21);
  if (!v19)
  {
    v26(MEMORY[0x277D84F90]);
    goto LABEL_21;
  }

  v34[1] = v27;
  v35 = v26;
  v36 = v18;
  v37 = v16;
  v42 = MEMORY[0x277D84F90];
  sub_272215F8C(0, v19, 0);
  result = v42;
  v28 = (a2 + 32);
  while (1)
  {
    v29 = *v28;
    if ((*v28 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v29 <= -32769.0)
    {
      goto LABEL_27;
    }

    if (v29 >= 32768.0)
    {
      goto LABEL_28;
    }

    v42 = result;
    v31 = *(result + 16);
    v30 = *(result + 24);
    if (v31 >= v30 >> 1)
    {
      sub_272215F8C((v30 > 1), v31 + 1, 1);
      result = v42;
    }

    *(result + 16) = v31 + 1;
    *(result + 2 * v31 + 32) = v29;
    ++v28;
    if (!--v19)
    {
      v18 = v36;
      v16 = v37;
      v35(result);
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_2722108B8()
{
  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrDelegate);
  sub_2722039C8((v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider));
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData);

  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask);

  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor);

  v8 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeStartOfSpeech);

  v9 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock);

  v10 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces);

  v11 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask);

  v12 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector);

  v13 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate);
  swift_unknownObjectRelease();

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorFeatureOutputStream, &qword_2808819C0, &unk_27237C510);
  v14 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue);
}

id VATinyASRSpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VATinyASRSpotter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272210BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_272210C20, 0, 0);
}

uint64_t sub_272210C20()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  *(v1 + 16) = 0;
  v7 = (*v2 + 416);
  v8 = (*v7 + **v7);
  v3 = (*v7)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_272210D6C;
  v5 = v0[6];

  return v8();
}

uint64_t sub_272210D6C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_272210E68, 0, 0);
}

uint64_t sub_272210E68()
{
  v1 = *(v0 + 64);
  (*(**(v0 + 56) + 184))();
  v2 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 968);

  v2(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_272210F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_272210F9C, 0, 0);
}

uint64_t sub_272210F9C()
{
  v18 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = *(**(Strong + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 960);

    v4(&v14, v3);
    v5 = v14;
    v6 = v15;
    v0[9] = v15;
    v7 = v16;
    v8 = v17;

    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_272211190;
    v13 = v0[7];

    return sub_272217F10(v5, v6, v8, v13, v7);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x8000000272388E80;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_272211190()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_272211310;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2722112AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722112AC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272211310()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_272211378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_27221139C, 0, 0);
}

uint64_t sub_27221139C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    sub_2722032B4();
    swift_allocError();
    *v15 = 0xD00000000000001FLL;
    v15[1] = 0x8000000272388E80;
    swift_willThrow();
    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = *(**(Strong + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 160);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    v6 = *(**&v3[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech] + 160);

    LOBYTE(v6) = v6(v7);

    if (v6)
    {

      v8 = *(v0 + 8);
LABEL_7:

      return v8();
    }
  }

  v9 = *&v3[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel];
  v10 = *(**(v0 + 72) + 176);

  v12 = v10(v11);
  (*(*v9 + 960))(&v22, v12);
  v13 = v22;
  v14 = v23;
  *(v0 + 96) = v23;
  v17 = v24;
  v18 = v25;
  v19 = *(v0 + 80);

  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_272211698;

  return sub_272217F10(v13, v14, v18, v20, v17);
}

uint64_t sub_272211698()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_272211818;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2722117B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722117B4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272211818()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

void sub_272211880(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27237728C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
  if (v18)
  {
    v56 = a2;
    v57 = v7;
    v19 = v15;
    v20 = a3;
    v58 = v8;
    v59 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
    v21 = v18;
    v22 = sub_2722184E4();
    if (v3)
    {
    }

    else
    {
      v23 = v22;
      v55 = a1;
      v60[0] = 0;
      if ([v22 writeFromBuffer:v21 error:v60])
      {
        v54 = v21;
        v24 = v60[0];
        v25 = sub_2722C389C();
        v26 = v13;
        (*(v13 + 16))(v17, v25, v19);
        v27 = v20;

        v28 = v23;
        v29 = sub_27237725C();
        v30 = sub_272377E7C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v53 = v28;
          v32 = v31;
          v52 = swift_slowAlloc();
          v60[0] = v52;
          *v32 = 136315394;
          v33 = sub_2721FFD04(v56, v27, v60);
          v51 = v32;
          *(v32 + 4) = v33;
          *(v32 + 12) = 2080;
          v28 = v53;
          v34 = [v53 url];
          v50 = v29;
          v35 = v34;
          sub_272376D0C();

          sub_2722197D4(&qword_280881A48, MEMORY[0x277CC9260]);
          v56 = v19;
          v36 = v30;
          v37 = v57;
          v38 = sub_27237862C();
          v40 = v39;
          (*(v58 + 8))(v11, v37);
          v41 = sub_2721FFD04(v38, v40, v60);

          v43 = v50;
          v42 = v51;
          *(v51 + 14) = v41;
          _os_log_impl(&dword_2721E4000, v43, v36, "%s: Saved audio to %s", v42, 0x16u);
          v44 = v52;
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v44, -1, -1);
          MEMORY[0x2743C69C0](v42, -1, -1);

          (*(v26 + 8))(v17, v56);
        }

        else
        {

          (*(v26 + 8))(v17, v19);
        }

        v46 = v54;
        v47 = v55;
        [v28 close];

        v48 = *(v47 + v59);
        *(v47 + v59) = 0;
      }

      else
      {
        v45 = v60[0];
        sub_272376C6C();

        swift_willThrow();
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272211CD4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272211DBC;

  return v5();
}

uint64_t sub_272211DBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_272211EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_272377C3C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_27220E6B4(0, 0, v7, &unk_27237C560, v9);
}

uint64_t sub_272211FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_272211FF4, 0, 0);
}

uint64_t sub_272211FF4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272212074()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2722120B0(_OWORD *a1, uint64_t a2, char a3)
{
  *(v4 + 1088) = v3;
  *(v4 + 1286) = a3;
  *(v4 + 1080) = a2;
  *(v4 + 1072) = a1;
  v6 = *(*(sub_2721F065C(&qword_2808819D8, &qword_27237CB50) - 8) + 64) + 15;
  *(v4 + 1096) = swift_task_alloc();
  *(v4 + 1104) = swift_task_alloc();
  v7 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  *(v4 + 1112) = swift_task_alloc();
  v8 = sub_27237728C();
  *(v4 + 1120) = v8;
  v9 = *(v8 - 8);
  *(v4 + 1128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  *(v4 + 1168) = swift_task_alloc();
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 1184) = swift_task_alloc();
  v11 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v11;
  v12 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v12;
  v13 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v13;
  v14 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v14;

  return MEMORY[0x2822009F8](sub_272212258, 0, 0);
}

uint64_t sub_272212258()
{
  v209 = v0;
  v1 = *(v0 + 1072);
  v2 = v1[5];
  v208[4] = v1[4];
  v208[5] = v2;
  v3 = v1[7];
  v208[6] = v1[6];
  v208[7] = v3;
  v4 = v1[1];
  v208[0] = *v1;
  v208[1] = v4;
  v5 = v1[3];
  v208[2] = v1[2];
  v208[3] = v5;
  if ((VASpeechDetectorAudioOutput.shouldProcessAudio.getter() & 1) == 0)
  {
    v24 = *(v0 + 1136);
    v25 = *(v0 + 1128);
    v26 = *(v0 + 1120);
    v27 = sub_2722C389C();
    (*(v25 + 16))(v24, v27, v26);
    v28 = sub_27237725C();
    v29 = sub_272377E8C();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 1136);
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1120);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2721E4000, v28, v29, "IGNORING AUDIO", v34, 2u);
      MEMORY[0x2743C69C0](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    goto LABEL_69;
  }

  LODWORD(v6) = *(v0 + 32);
  *(v0 + 1287) = v6;
  v7 = 0x280881000;
  if (v6 == 1)
  {
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1128);
    v10 = *(v0 + 1120);
    v11 = *(v0 + 1088);
    v12 = sub_2722C389C();
    (*(v9 + 16))(v8, v12, v10);
    sub_272218D40(v0 + 16, v0 + 912);
    v13 = v11;
    v14 = sub_27237725C();
    v15 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    if (!os_log_type_enabled(v14, v15))
    {
      v51 = *(v0 + 1184);
      v52 = *(v0 + 1128);
      v53 = *(v0 + 1120);

      (*(v52 + 8))(v51, v53);
LABEL_19:
      v63 = *(v0 + 1088);
      v64 = *(**(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech) + 168);

      v64(0);

      v65 = *(**(v63 + *(v7 + 2392)) + 168);

      v65(0);

      v66 = *(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
      *(v63 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = 0;

      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v208[0] = v17;
    *v16 = 134218242;
    if ((*(v0 + 136) & 1) == 0)
    {
      v18 = v17;
      v19 = *(v0 + 1088);
      *(v16 + 4) = *(v0 + 132);
      *(v16 + 12) = 2080;
      v20 = (*((*MEMORY[0x277D85000] & *v19) + 0x120))();
      v21 = v20;
      if (v20)
      {
        v22 = *(v0 + 1112);
        (*(*v20 + 312))(v20);

        v23 = *(v22 + 52);
        sub_272216BD8(v22);
      }

      else
      {
        v23 = 0;
      }

      v57 = v21 == 0;
      v58 = *(v0 + 1184);
      v6 = *(v0 + 1128);
      v59 = *(v0 + 1120);
      *(v0 + 1288) = v23;
      *(v0 + 1292) = v57;
      sub_2721F065C(&qword_2808819F0, &qword_27237C590);
      v60 = sub_27237789C();
      v62 = sub_2721FFD04(v60, v61, v208);

      *(v16 + 14) = v62;
      _os_log_impl(&dword_2721E4000, v14, v15, "Start-of-speech: %f < %s", v16, 0x16u);
      sub_2722039C8(v18);
      MEMORY[0x2743C69C0](v18, -1, -1);
      MEMORY[0x2743C69C0](v16, -1, -1);

      (*(v6 + 8))(v58, v59);
      LOBYTE(v6) = 1;
      v7 = 0x280881000uLL;
      goto LABEL_19;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return MEMORY[0x282200460]();
  }

  if (*(v0 + 33) == 1)
  {
    v35 = *(v0 + 1176);
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1120);
    v38 = *(v0 + 1088);
    v39 = sub_2722C389C();
    (*(v36 + 16))(v35, v39, v37);
    sub_272218D40(v0 + 16, v0 + 784);
    v40 = v38;
    v41 = sub_27237725C();
    v42 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v208[0] = v44;
      *v43 = 134218242;
      if (*(v0 + 136))
      {
        goto LABEL_74;
      }

      v45 = v44;
      v46 = *(v0 + 1088);
      *(v43 + 4) = *(v0 + 132);
      *(v43 + 12) = 2080;
      v47 = (*((*MEMORY[0x277D85000] & *v46) + 0x120))();
      v48 = v47;
      if (v47)
      {
        v49 = *(v0 + 1112);
        (*(*v47 + 312))(v47);

        v50 = *(v49 + 52);
        sub_272216BD8(v49);
      }

      else
      {
        v50 = 0;
      }

      v146 = v48 == 0;
      v207 = *(v0 + 1176);
      v147 = *(v0 + 1128);
      v148 = *(v0 + 1120);
      *(v0 + 1280) = v50;
      *(v0 + 1284) = v146;
      sub_2721F065C(&qword_2808819F0, &qword_27237C590);
      v149 = sub_27237789C();
      v151 = sub_2721FFD04(v149, v150, v208);

      *(v43 + 14) = v151;
      _os_log_impl(&dword_2721E4000, v41, v42, "End-of-Speech: %f < %s", v43, 0x16u);
      sub_2722039C8(v45);
      MEMORY[0x2743C69C0](v45, -1, -1);
      MEMORY[0x2743C69C0](v43, -1, -1);

      (*(v147 + 8))(v207, v148);
      v7 = 0x280881000;
    }

    else
    {
      v54 = *(v0 + 1176);
      v55 = *(v0 + 1128);
      v56 = *(v0 + 1120);

      (*(v55 + 8))(v54, v56);
    }
  }

LABEL_20:
  v67 = *(v0 + 137);
  if (v67 == 1 && *(v0 + 138) == 1)
  {
    v68 = *(v0 + 1168);
    v69 = *(v0 + 1128);
    v70 = *(v0 + 1120);
    v71 = *(v0 + 1088);
    v72 = sub_2722C389C();
    (*(v69 + 16))(v68, v72, v70);
    sub_272218D40(v0 + 16, v0 + 272);
    v73 = v71;
    v74 = sub_27237725C();
    v75 = sub_272377E7C();
    sub_272218F7C(v0 + 16);

    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 1168);
    v78 = *(v0 + 1128);
    v79 = *(v0 + 1120);
    if (v76)
    {
      v204 = *(v0 + 1088);
      v80 = swift_slowAlloc();
      v206 = v79;
      v81 = swift_slowAlloc();
      *&v208[0] = v81;
      *v80 = 136315394;
      v82 = *(v0 + 96);
      *(v0 + 592) = *(v0 + 80);
      *(v0 + 608) = v82;
      v83 = *(v0 + 128);
      *(v0 + 624) = *(v0 + 112);
      *(v0 + 640) = v83;
      v84 = *(v0 + 32);
      *(v0 + 528) = *(v0 + 16);
      *(v0 + 544) = v84;
      v85 = *(v0 + 64);
      *(v0 + 560) = *(v0 + 48);
      *(v0 + 576) = v85;
      sub_272218D40(v0 + 16, v0 + 656);
      sub_272218FD0();
      v205 = v77;
      v86 = sub_27237862C();
      v88 = v87;
      v89 = *(v0 + 608);
      *(v0 + 464) = *(v0 + 592);
      *(v0 + 480) = v89;
      v90 = *(v0 + 640);
      *(v0 + 496) = *(v0 + 624);
      *(v0 + 512) = v90;
      v91 = *(v0 + 544);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 416) = v91;
      v92 = *(v0 + 576);
      *(v0 + 432) = *(v0 + 560);
      *(v0 + 448) = v92;
      sub_272218F7C(v0 + 400);
      v93 = sub_2721FFD04(v86, v88, v208);

      *(v80 + 4) = v93;
      *(v80 + 12) = 2080;
      *(v0 + 1285) = *(v204 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState);
      v94 = sub_27237789C();
      v96 = sub_2721FFD04(v94, v95, v208);

      *(v80 + 14) = v96;
      _os_log_impl(&dword_2721E4000, v74, v75, "End-of-Audio: %s, currentState %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v81, -1, -1);
      v97 = v80;
      v7 = 0x280881000;
      MEMORY[0x2743C69C0](v97, -1, -1);

      (*(v78 + 8))(v205, v206);
    }

    else
    {

      (*(v78 + 8))(v77, v79);
    }

    v98 = *(**(*(v0 + 1088) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech) + 168);

    v98(1);
  }

  v99 = *(v0 + 1088);
  v100 = *(v7 + 2392);
  *(v0 + 1192) = v100;
  v101 = *(**(v99 + v100) + 160);

  LOBYTE(v101) = v101(v102);

  if ((v101 & 1) == 0)
  {
    v103 = *(v0 + 1088);
    v104 = *(v0 + 16);
    v105 = mach_absolute_time();
    sub_272337680(v104, v105);
  }

  *(v0 + 1200) = 0;
  if (!v67 || *(v0 + 138) != 1 || (v117 = *(**(v99 + v100) + 160), v118 = , LOBYTE(v117) = v117(v118), , (v117 & 1) != 0))
  {
    if (*(v0 + 1286) != 1)
    {
LABEL_69:
      v193 = *(v0 + 1184);
      v194 = *(v0 + 1176);
      v195 = *(v0 + 1168);
      v196 = *(v0 + 1160);
      v197 = *(v0 + 1152);
      v198 = *(v0 + 1144);
      v199 = *(v0 + 1136);
      v200 = *(v0 + 1112);
      v201 = *(v0 + 1104);
      v202 = *(v0 + 1096);

      v116 = *(v0 + 8);
      goto LABEL_70;
    }

    if (v6)
    {
LABEL_33:
      v119 = *(v0 + 1088);
      v120 = *(v119 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
      *(v119 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech) = *(v0 + 16);
      sub_272218D40(v0 + 16, v0 + 144);

      goto LABEL_69;
    }

    goto LABEL_40;
  }

  v121 = *(v0 + 1128);
  v122 = *(*(v0 + 1088) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
  v123 = sub_2722C389C();
  *(v0 + 1208) = v123;
  v124 = *(v121 + 16);
  *(v0 + 1216) = v124;
  *(v0 + 1224) = (v121 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v125 = *(v0 + 1120);
  if (v122)
  {
    v124(*(v0 + 1160), v123, v125);
    v126 = sub_27237725C();
    v127 = sub_272377E7C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_2721E4000, v126, v127, "End of audio, got partial but no final yet. So send 0 bytes", v128, 2u);
      MEMORY[0x2743C69C0](v128, -1, -1);
    }

    v129 = *(v0 + 1160);
    v130 = *(v0 + 1128);
    v131 = *(v0 + 1120);
    v132 = *(v0 + 1088);

    v133 = *(v130 + 8);
    *(v0 + 1232) = v133;
    v133(v129, v131);
    *(v0 + 1240) = mach_absolute_time();
    v134 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
    *(v0 + 1248) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
    v135 = *(**(v99 + v100) + 160);

    LOBYTE(v135) = v135(v136);

    if (v135)
    {
      v137 = *(v132 + v134);
      *(v132 + v134) = 0;

      if ((*(v0 + 1286) & 1) == 0)
      {
        goto LABEL_69;
      }

      if (*(v0 + 1287) == 1)
      {
        goto LABEL_33;
      }

LABEL_40:
      v138 = 0;
      goto LABEL_41;
    }

    *(v0 + 1256) = 1;
    v168 = *(v0 + 1104);
    v169 = *(v0 + 1096);
    v170 = *(v0 + 1088);
    v171 = *(v0 + 1080);
    v172 = sub_272377C3C();
    v173 = *(v172 - 8);
    (*(v173 + 56))(v168, 1, 1, v172);
    v174 = swift_allocObject();
    v174[2] = 0;
    v174[3] = 0;
    v174[4] = 10;
    v174[5] = v170;
    v174[6] = v171;
    sub_2721F07F4(v168, v169, &qword_2808819D8, &qword_27237CB50);
    LODWORD(v169) = (*(v173 + 48))(v169, 1, v172);
    v175 = v170;
    v176 = v171;

    v177 = *(v0 + 1096);
    if (v169 == 1)
    {
      sub_2721F40F0(*(v0 + 1096), &qword_2808819D8, &qword_27237CB50);
    }

    else
    {
      sub_272377C2C();
      (*(v173 + 8))(v177, v172);
    }

    v179 = v174[2];
    v178 = v174[3];
    swift_unknownObjectRetain();

    if (v179)
    {
      swift_getObjectType();
      v180 = sub_272377BDC();
      v182 = v181;
      swift_unknownObjectRelease();
    }

    else
    {
      v180 = 0;
      v182 = 0;
    }

    sub_2721F40F0(*(v0 + 1104), &qword_2808819D8, &qword_27237CB50);
    v183 = swift_allocObject();
    *(v183 + 16) = &unk_27237C578;
    *(v183 + 24) = v174;
    if (v182 | v180)
    {
      *(v0 + 1040) = 0;
      *(v0 + 1048) = 0;
      *(v0 + 1056) = v180;
      *(v0 + 1064) = v182;
    }

    v184 = *(v0 + 1248);
    v185 = *(v0 + 1088);
    v186 = swift_task_create();
    *(v0 + 1264) = v186;
    v187 = *(v185 + v184);
    *(v185 + v184) = v186;

    v188 = *(MEMORY[0x277D857E0] + 4);
    v189 = swift_task_alloc();
    *(v0 + 1272) = v189;
    *v189 = v0;
    v189[1] = sub_272213438;

    return MEMORY[0x282200460]();
  }

  v124(*(v0 + 1144), v123, v125);
  v159 = sub_27237725C();
  v160 = sub_272377E7C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&dword_2721E4000, v159, v160, "End of audio, not a single result...done", v161, 2u);
    MEMORY[0x2743C69C0](v161, -1, -1);
  }

  v162 = *(v0 + 1144);
  v163 = *(v0 + 1128);
  v164 = *(v0 + 1120);
  v165 = *(v0 + 1088);
  v166 = *(v0 + 1286);

  (*(v163 + 8))(v162, v164);
  v167 = *(**(v165 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData) + 168);

  v167(1);

  if (v166 != 1)
  {
    goto LABEL_69;
  }

  if (v6)
  {
    goto LABEL_33;
  }

  v138 = 1;
LABEL_41:
  v139 = *(v0 + 1088);
  v140 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
  v141 = *(v139 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
  if (!v141)
  {
    goto LABEL_69;
  }

  v142 = *(v0 + 1200);
  v143 = *(v0 + 16);
  v144 = v141;
  sub_272218A0C(v144, v143);
  if (!v142)
  {
    v152 = *(v139 + v140);
    *(v139 + v140) = v145;

    if (*(v0 + 138))
    {
      v153 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

      v155 = v153(v154);

      if (v155)
      {
        v156 = *(v0 + 1088);
        v157 = *(v156 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue);
        v158 = swift_task_alloc();
        v158[2] = v156;
        v158[3] = 0xD000000000000012;
        v158[4] = 0x8000000272388AC0;
LABEL_67:
        sub_272377EEC();

        goto LABEL_69;
      }

      if (v138)
      {
        v190 = *(v0 + 1088);
        v191 = *(v190 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue);
        v192 = swift_task_alloc();
        v192[2] = v190;
        v192[3] = 0x6572696673694DLL;
        v192[4] = 0xE700000000000000;
        goto LABEL_67;
      }
    }

    goto LABEL_69;
  }

  v106 = *(v0 + 1184);
  v107 = *(v0 + 1176);
  v108 = *(v0 + 1168);
  v109 = *(v0 + 1160);
  v110 = *(v0 + 1152);
  v111 = *(v0 + 1144);
  v112 = *(v0 + 1136);
  v113 = *(v0 + 1112);
  v114 = *(v0 + 1104);
  v115 = *(v0 + 1096);

  v116 = *(v0 + 8);
LABEL_70:

  return v116();
}

uint64_t sub_272213438()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 1264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_272213550, 0, 0);
}

uint64_t sub_272213550()
{
  v1 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

  LOBYTE(v1) = v1(v2);

  v3 = *(v0 + 1256);
  if ((v1 & 1) == 0)
  {
    *(v0 + 1256) = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v23 = *(v0 + 1104);
      v24 = *(v0 + 1096);
      v25 = *(v0 + 1088);
      v26 = *(v0 + 1080);
      v27 = sub_272377C3C();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v23, 1, 1, v27);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = 10;
      v29[5] = v25;
      v29[6] = v26;
      sub_2721F07F4(v23, v24, &qword_2808819D8, &qword_27237CB50);
      LODWORD(v24) = (*(v28 + 48))(v24, 1, v27);
      v30 = v25;
      v31 = v26;

      v32 = *(v0 + 1096);
      if (v24 == 1)
      {
        sub_2721F40F0(*(v0 + 1096), &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (*(v28 + 8))(v32, v27);
      }

      v34 = v29[2];
      v33 = v29[3];
      swift_unknownObjectRetain();

      if (v34)
      {
        swift_getObjectType();
        v35 = sub_272377BDC();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      sub_2721F40F0(*(v0 + 1104), &qword_2808819D8, &qword_27237CB50);
      v38 = swift_allocObject();
      *(v38 + 16) = &unk_27237C578;
      *(v38 + 24) = v29;
      if (v37 | v35)
      {
        *(v0 + 1040) = 0;
        *(v0 + 1048) = 0;
        *(v0 + 1056) = v35;
        *(v0 + 1064) = v37;
      }

      v39 = *(v0 + 1248);
      v40 = *(v0 + 1088);
      v41 = swift_task_create();
      *(v0 + 1264) = v41;
      v42 = *(v40 + v39);
      *(v40 + v39) = v41;

      v43 = *(MEMORY[0x277D857E0] + 4);
      v44 = swift_task_alloc();
      *(v0 + 1272) = v44;
      *v44 = v0;
      v44[1] = sub_272213438;

      return MEMORY[0x282200460]();
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return MEMORY[0x282200460]();
  }

  v4 = *(v0 + 1248);
  v5 = *(v0 + 1088);
  v6 = *(v5 + v4);
  *(v5 + v4) = 0;

  if (v3 >= 1)
  {
    v7 = *(v0 + 1240);
    type metadata accessor for VARequestContext(0);
    v8 = mach_absolute_time();
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (!v9)
    {
      goto LABEL_36;
    }

    v11 = *(v0 + 1224);
    v12 = *(v0 + 1216);
    v13 = *(v0 + 1208);
    v14 = *(v0 + 1152);
    v15 = *(v0 + 1120);
    v16 = *(v0 + 1080);
    v17 = sub_2722310BC(v10);
    v12(v14, v13, v15);
    v18 = v16;
    v19 = sub_27237725C();
    v20 = sub_272377E7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 1080);
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      *(v22 + 4) = [v21 frameLength];

      *(v22 + 8) = 2048;
      *(v22 + 10) = v17;
      _os_log_impl(&dword_2721E4000, v19, v20, "Got final after padding speech end with %u samples of 0 audio for %f secs", v22, 0x12u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    else
    {

      v19 = *(v0 + 1080);
    }

    v45 = *(v0 + 1232);
    v46 = *(v0 + 1152);
    v47 = *(v0 + 1128);
    v48 = *(v0 + 1120);

    v45(v46, v48);
  }

  if (*(v0 + 1286) != 1)
  {
    goto LABEL_31;
  }

  v49 = *(v0 + 1088);
  if (*(v0 + 1287) == 1)
  {
    v50 = *(v49 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
    *(v49 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech) = *(v0 + 16);
    sub_272218D40(v0 + 16, v0 + 144);
LABEL_24:

LABEL_31:
    v74 = *(v0 + 1184);
    v75 = *(v0 + 1176);
    v76 = *(v0 + 1168);
    v77 = *(v0 + 1160);
    v78 = *(v0 + 1152);
    v79 = *(v0 + 1144);
    v80 = *(v0 + 1136);
    v81 = *(v0 + 1112);
    v82 = *(v0 + 1104);
    v83 = *(v0 + 1096);

    v66 = *(v0 + 8);
    goto LABEL_32;
  }

  v51 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
  v52 = *(v49 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech);
  if (!v52)
  {
    goto LABEL_31;
  }

  v53 = *(v0 + 1200);
  v54 = *(v0 + 16);
  v50 = v52;
  sub_272218A0C(v50, v54);
  if (!v53)
  {
    v67 = *(v49 + v51);
    *(v49 + v51) = v55;

    if (*(v0 + 138))
    {
      v68 = *(**(*(v0 + 1088) + *(v0 + 1192)) + 160);

      v70 = v68(v69);

      if (v70)
      {
        v71 = *(v0 + 1088);
        v72 = *(v71 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue);
        v73 = swift_task_alloc();
        v73[2] = v71;
        v73[3] = 0xD000000000000012;
        v73[4] = 0x8000000272388AC0;
        sub_272377EEC();

        goto LABEL_31;
      }
    }

    goto LABEL_24;
  }

  v56 = *(v0 + 1184);
  v57 = *(v0 + 1176);
  v58 = *(v0 + 1168);
  v59 = *(v0 + 1160);
  v60 = *(v0 + 1152);
  v61 = *(v0 + 1144);
  v62 = *(v0 + 1136);
  v63 = *(v0 + 1112);
  v64 = *(v0 + 1104);
  v65 = *(v0 + 1096);

  v66 = *(v0 + 8);
LABEL_32:

  return v66();
}

uint64_t sub_272213C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_27237728C();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v10 = sub_272377BFC();
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272213D98, 0, 0);
}

uint64_t sub_272213D98(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = *(MEMORY[0x277D857E8] + 4);
    v6 = swift_task_alloc();
    *(v1 + 104) = v6;
    *v6 = v1;
    v6[1] = sub_272213E4C;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_272213E4C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_272214218;
  }

  else
  {
    v3 = sub_272213F60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272213F60()
{
  v1 = v0[14];
  v3 = v0[4];
  v2 = v0[5];
  v4 = mach_absolute_time();
  sub_272337680(v2, v4);
  if (v1)
  {
    v5 = v0[12];
    v6 = v0[10];
    v0[2] = v1;
    v7 = v1;
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    if (swift_dynamicCast())
    {
      v9 = v0 + 8;
      v8 = v0[8];
      v10 = v0[6];
      v11 = v0[7];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v12 = sub_2722C389C();
      (*(v11 + 16))(v8, v12, v10);
      v13 = sub_27237725C();
      v14 = sub_272377E7C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2721E4000, v13, v14, "Cancelled sleep task after getting final result", v15, 2u);
LABEL_7:
        MEMORY[0x2743C69C0](v15, -1, -1);

LABEL_9:
        (*(v0[7] + 8))(*v9, v0[6]);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = v0 + 9;
      v16 = v0[9];
      v17 = v0[6];
      v18 = v0[7];
      v19 = sub_2722C389C();
      (*(v18 + 16))(v16, v19, v17);
      v20 = v1;
      v13 = sub_27237725C();
      v21 = sub_272377E8C();

      if (os_log_type_enabled(v13, v21))
      {
        v15 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v15 = 138412290;
        v23 = v1;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_2721E4000, v13, v21, "Error sleeping wating for final result: %@", v15, 0xCu);
        sub_2721F40F0(v22, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v22, -1, -1);
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v25 = v0[12];
  v26 = v0[8];
  v27 = v0[9];

  v28 = v0[1];

  return v28();
}

uint64_t sub_272214218()
{
  v1 = v0[14];
  v0[2] = v1;
  v2 = v0[12];
  v3 = v0[10];
  v4 = v1;
  sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  if (swift_dynamicCast())
  {
    v6 = v0 + 8;
    v5 = v0[8];
    v7 = v0[6];
    v8 = v0[7];
    (*(v0[11] + 8))(v0[12], v0[10]);
    v9 = sub_2722C389C();
    (*(v8 + 16))(v5, v9, v7);
    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "Cancelled sleep task after getting final result", v12, 2u);
LABEL_6:
      MEMORY[0x2743C69C0](v12, -1, -1);

      goto LABEL_8;
    }
  }

  else
  {
    v6 = v0 + 9;
    v13 = v0[9];
    v14 = v0[6];
    v15 = v0[7];
    v16 = sub_2722C389C();
    (*(v15 + 16))(v13, v16, v14);
    v17 = v1;
    v10 = sub_27237725C();
    v18 = sub_272377E8C();

    if (os_log_type_enabled(v10, v18))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v12 = 138412290;
      v20 = v1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2721E4000, v10, v18, "Error sleeping wating for final result: %@", v12, 0xCu);
      sub_2721F40F0(v19, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v19, -1, -1);
      goto LABEL_6;
    }
  }

LABEL_8:
  (*(v0[7] + 8))(*v6, v0[6]);
  v22 = v0[12];
  v23 = v0[8];
  v24 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2722144B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 760) = a6;
  *(v6 + 664) = a5;
  *(v6 + 656) = a4;
  v7 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  *(v6 + 672) = v7;
  v8 = *(v7 - 8);
  *(v6 + 680) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 688) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272214588, 0, 0);
}

uint64_t sub_272214588()
{
  *(v0 + 696) = (*((*MEMORY[0x277D85000] & **(v0 + 656)) + 0x228))(16000);
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  *(v0 + 704) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  *(v0 + 712) = v4;
  *v4 = v0;
  v4[1] = sub_2722146F8;
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v6);
}

uint64_t sub_2722146F8()
{
  v1 = *(*v0 + 712);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2722147F4, 0, 0);
}

uint64_t sub_2722147F4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 480);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  *(v0 + 368) = v3;
  *(v0 + 384) = v4;
  v5 = *(v0 + 400);
  v6 = *(v0 + 416);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 432);
  v8 = *(v0 + 448);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  if (sub_272219874((v0 + 144)) == 1)
  {
    v9 = *(v0 + 696);
    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 704);
    v13 = *(v0 + 696);
    v14 = *(v0 + 760);
    v15 = *(v0 + 656);
    v16 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v16;
    v17 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 128) = v17;
    v18 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v18;
    v19 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v19;
    v20 = *(v15 + v12);
    *(v0 + 720) = v20;
    v21 = swift_allocObject();
    *(v0 + 728) = v21;
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = *(v0 + 96);
    *(v22 + 88) = *(v0 + 80);
    *(v22 + 104) = v23;
    v24 = *(v0 + 128);
    *(v22 + 120) = *(v0 + 112);
    *(v22 + 136) = v24;
    v25 = *(v0 + 32);
    *(v22 + 24) = *(v0 + 16);
    *(v22 + 40) = v25;
    v26 = *(v0 + 64);
    *(v22 + 56) = *(v0 + 48);
    *(v0 + 736) = v22;
    *(v22 + 16) = v21;
    *(v22 + 72) = v26;
    *(v22 + 152) = v13;
    *(v22 + 160) = v14;
    v27 = *(*v20 + 88);

    sub_2721F07F4(v0 + 272, v0 + 528, &qword_280881A88, &qword_27237CA70);
    v28 = v13;
    v31 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    *(v0 + 744) = v30;
    *v30 = v0;
    v30[1] = sub_272214AC0;

    return v31(&unk_27237CA68, v22);
  }
}

uint64_t sub_272214AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  v2[94] = v0;

  v5 = v2[92];
  if (v0)
  {
    v6 = v2[90];

    v7 = sub_272214CDC;
  }

  else
  {
    v8 = v2[91];
    v9 = v2[90];

    v7 = sub_272214C1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_272214C1C()
{
  sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[89] = v2;
  *v2 = v0;
  v2[1] = sub_2722146F8;
  v3 = v0[86];
  v4 = v0[84];

  return MEMORY[0x2822003E8](v0 + 50, 0, 0, v4);
}

uint64_t sub_272214CDC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 752);
  v6 = *(v0 + 688);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_272214D98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 168) = a1;
  return MEMORY[0x2822009F8](sub_272214DC0, 0, 0);
}

uint64_t sub_272214DC0()
{
  v1 = *(v0 + 168);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 176);
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v0 + 48) = v3[2];
    *(v0 + 64) = v4;
    *(v0 + 16) = v6;
    *(v0 + 32) = v5;
    v7 = v3[7];
    v9 = v3[4];
    v8 = v3[5];
    *(v0 + 112) = v3[6];
    *(v0 + 128) = v7;
    *(v0 + 80) = v9;
    *(v0 + 96) = v8;
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_272214F2C;
    v11 = *(v0 + 216);
    v12 = *(v0 + 184);

    return sub_2722120B0((v0 + 16), v12, v11);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x8000000272388E00;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_272214F2C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2722150A4;
  }

  else
  {
    v3 = sub_272215040;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272215040()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722150A4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272215108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2723778BC() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_272215374()
{
  v21 = *((*MEMORY[0x277D85000] & *v0) + 0x480);
  result = v21();
  v2 = result;
  v22 = 0;
  v3 = 0;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_10:
    v11 = (*(v2 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v11;
    v12 = v11[1];
    v8 &= v8 - 1;
    sub_272203AC4();

    v14 = sub_27237813C();
    if ((v14 & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v3)
    {
      v15 = sub_27237791C();
      if (sub_27237791C() < v15)
      {

        goto LABEL_14;
      }

LABEL_4:
    }

    else
    {
LABEL_14:
      v16 = (v21)(v14);
      if (*(v16 + 16))
      {
        v17 = sub_27220038C(v13, v12);
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_18;
        }

        v20 = (*(v16 + 56) + 16 * v17);
        v3 = v20[1];
        v22 = *v20;
      }

      else
      {

LABEL_18:

        v22 = 0;
        v3 = 0;
      }
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v22;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722155A0()
{

  v0 = sub_27237799C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_27237799C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_27237865C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_27237799C();
      v3 = v5;
    }

    while (v5);
  }

  sub_27237799C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_272215720(id result, const char **a2, float a3, float a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate);
  if (v5)
  {
    v7 = result;
    result = [v5 respondsToSelector_];
    if (result)
    {
      v12 = *a2;
      *&v10 = a3;
      *&v11 = a4;

      return [v5 v12];
    }
  }

  return result;
}

char *sub_2722157C8(char *result, float a2, float a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v6 = *&result[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate];
  if (v6)
  {
    result = [*&result[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate] respondsToSelector_];
    if (result)
    {
      v13 = *a6;
      *&v11 = a2;
      *&v12 = a3;

      return [v6 v13];
    }
  }

  return result;
}

uint64_t sub_272215964(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272215A5C;

  return v7(a1);
}

uint64_t sub_272215A5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_272215B54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280881A90, &qword_27237CA78);
  v40 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_272215E14()
{
  v1 = v0;
  sub_2721F065C(&qword_280881A90, &qword_27237CA78);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_272215F8C(char *a1, int64_t a2, char a3)
{
  result = sub_272215FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272215FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881A78, &unk_27237CA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_2722160A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_272216154(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_272216188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881A90, &qword_27237CA78);
    v3 = sub_2723783EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_27221629C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for VATinyASRSpotter()
{
  result = qword_280885AE0;
  if (!qword_280885AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272216374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2722163D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_272216418(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272219D80;

  return sub_27220AF08(a1);
}

uint64_t sub_2722164B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VARuntimeParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27221651C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881A68, &unk_272382740);
    v3 = sub_2723783EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2721F07F4(v4, &v13, &qword_280881A60, &unk_27237CA40);
      v5 = v13;
      v6 = v14;
      result = sub_27220038C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27221981C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_27221664C(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v11[0] = sub_2723778AC();
      v11[1] = v7;
      MEMORY[0x28223BE20](v11[0]);
      v10[2] = v11;

      v8 = sub_2722160A8(sub_272219D88, v10, v12);

      if (v8)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_272216760(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_27221664C(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  v10 = v6;
  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    if (v11 == v12)
    {
      return v2;
    }

    v32 = a1;
    v33 = a2;
    v14 = 16 * result;
    v15 = v10;
    while (v11 < v12)
    {
      v36 = v15;
      v16 = &v15[v14];
      v17 = *(v16 + 6);
      v18 = *(v16 + 7);
      v35[0] = sub_2723778AC();
      v35[1] = v19;
      MEMORY[0x28223BE20](v35[0]);
      v31[2] = v35;

      v20 = v9;
      v21 = sub_2722160A8(sub_272219A04, v31, v33);
      v34 = v20;

      if (v21)
      {
        v9 = v34;
        v15 = v36;
      }

      else
      {
        if (v11 == v2)
        {
          v9 = v34;
          v15 = v36;
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v2 >= *v13)
          {
            goto LABEL_24;
          }

          if (v11 >= *v13)
          {
            goto LABEL_25;
          }

          v22 = &v36[16 * v2 + 32];
          v23 = *v22;
          v24 = *(v22 + 1);
          v26 = *(v16 + 6);
          v25 = *(v16 + 7);
          v15 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_272208CDC(v15);
          }

          v27 = &v15[16 * v2];
          v28 = *(v27 + 5);
          *(v27 + 4) = v26;
          *(v27 + 5) = v25;

          if (v11 >= *(v15 + 2))
          {
            goto LABEL_26;
          }

          v29 = &v15[v14];
          v30 = *&v15[v14 + 56];
          *(v29 + 6) = v23;
          *(v29 + 7) = v24;

          *v32 = v15;
          v9 = v34;
        }

        ++v2;
      }

      ++v11;
      v13 = (v15 + 16);
      v12 = *(v15 + 2);
      v14 += 16;
      if (v11 == v12)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_272216998(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_272216A58(uint64_t a1, uint64_t a2)
{
  v10[1] = a2;
  sub_272203AC4();
  v10[0] = sub_2723780BC();
  result = sub_272216760(v10, &unk_28817D2A0);
  v3 = v10[0];
  v4 = *(v10[0] + 16);
  if (result > v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (__OFADD__(v4, result - v4))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v3 + 24) >> 1)
  {
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v10[0] = sub_2721FFBF8(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  sub_272216998(v5, v4, 0);
  swift_arrayDestroy();
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
  v9 = sub_2723777CC();

  return v9;
}

uint64_t sub_272216BD8(uint64_t a1)
{
  v2 = type metadata accessor for VARuntimeParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272216C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272216CA4()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_272216D80()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_272219D80;

  return sub_2722144B4(v6, v7, v8, v3, v4, v5);
}

uint64_t sub_272216E8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272216ECC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272211DBC;

  return sub_272211FD4(v4, v5, v6, v2, v3);
}

void *sub_272216F64(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = v5;
  v7 = v4;
  v93 = a1;
  v94 = a2;
  v10 = sub_27237728C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v84[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for VARuntimeParameters();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v84[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84[-v21];
  v23 = (*((*MEMORY[0x277D85000] & *v4) + 0x120))(v20);
  if (!v23)
  {
    sub_2722032B4();
    swift_allocError();
    *v26 = 0xD000000000000016;
    v26[1] = 0x8000000272388EA0;
    swift_willThrow();
    return v22;
  }

  (*(*v23 + 312))(v23);

  v24 = sub_2722164B8(v19, v22);
  v25 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal);
  v92 = v22;
  if (v25 == 1)
  {
    v22 = 0;
    *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
    goto LABEL_42;
  }

  v90 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal;
  v88 = v14;
  v91 = v11;
  v89 = v10;
  v27 = sub_2723778AC();
  v29 = sub_272216A58(v27, v28);
  v31 = v30;

  v32 = sub_272215374();
  v87 = v5;
  if (v33)
  {
    v86 = a3;
    *v95 = v32;
    *&v95[8] = v33;
    v100 = 95;
    v101 = 0xE100000000000000;
    v98 = 32;
    v99 = 0xE100000000000000;
    sub_272203AC4();
    if (sub_2723780FC() == v29 && v34 == v31)
    {

      v35 = 1;
    }

    else
    {
      v36 = sub_27237865C();

      if ((v36 & 1) == 0)
      {
        if (sub_2722155A0())
        {
          v35 = 0;
          v85 = 1;
        }

        else
        {
          v35 = sub_272377A0C();
          v85 = 0;
        }

        goto LABEL_16;
      }

      v35 = 1;
    }

    v85 = 1;
LABEL_16:

    v37 = sub_2723778AC();
    v39 = v38;

    *v95 = v37;
    *&v95[8] = v39;
    v100 = 32;
    v101 = 0xE100000000000000;
    v98 = 95;
    v99 = 0xE100000000000000;
    v40 = sub_2723780FC();
    v42 = v41;

    v43 = sub_272241A18();
    v44 = sub_272241A18();
    v45 = sub_27222CD4C();
    sub_27232409C(v40, v42, 0, 0, v85, v35 & 1, v45 & 1, 0, v95, a4, v43, v44, 0);
    type metadata accessor for VAKeywordResult();
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v46 = swift_allocObject();
    v47 = *&v95[32];
    v48 = v96;
    v49 = *v95;
    v46[3] = *&v95[16];
    v46[4] = v47;
    v50 = v97;
    v46[5] = v48;
    v46[6] = v50;
    v46[1] = xmmword_27237AF80;
    v46[2] = v49;
    v22 = VAKeywordResult.__allocating_init(detections:)(v46);
    v6 = v87;
    a3 = v86;
    goto LABEL_17;
  }

  v22 = 0;
LABEL_17:
  v51 = sub_27234F188();
  v52 = 0;
  v11 = v91;
  if ((v51 & 1) == 0 || !a3)
  {
    goto LABEL_35;
  }

  v53 = *(a3 + 16);
  if (v53)
  {
    v54 = *(a3 + 16);
    v55 = sub_272377B5C();
    *(v55 + 16) = v53;
    bzero((v55 + 32), 2 * v53);

    *v95 = MEMORY[0x277D84F90];
    result = sub_272215F8C(0, v53, 0);
    v57 = *v95;
    v58 = (a3 + 32);
    while (1)
    {
      v59 = *v58;
      if ((*v58 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v59 <= -32769.0)
      {
        goto LABEL_52;
      }

      if (v59 >= 32768.0)
      {
        goto LABEL_53;
      }

      *v95 = v57;
      v61 = v57[2];
      v60 = v57[3];
      if (v61 >= v60 >> 1)
      {
        result = sub_272215F8C((v60 > 1), v61 + 1, 1);
        v57 = *v95;
      }

      v57[2] = v61 + 1;
      *(v57 + v61 + 16) = v59;
      ++v58;
      if (!--v53)
      {
        v6 = v87;
        v11 = v91;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v57 = MEMORY[0x277D84F90];

LABEL_29:
  *v95 = 0x40CF400000000000;
  *&v95[8] = xmmword_27237C4D0;
  *&v95[24] = xmmword_27237C4E0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!result)
  {
    goto LABEL_56;
  }

  v62 = v57[2];
  if (HIDWORD(v62))
  {
    goto LABEL_54;
  }

  v63 = result;
  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:result frameCapacity:v62];
  if (result)
  {
    v52 = result;
    v64 = [result int16ChannelData];
    if (v64)
    {
      v64 = *v64;
    }

    memcpy(v64, v57 + 4, 2 * v62);

    [v52 setFrameLength_];

LABEL_35:
    type metadata accessor for VAASRResult();
    v65 = *(v7 + v90);
    v66 = v52;
    v67 = v94;

    v68 = sub_2721F7EE4();
    v69 = sub_2722E2418(v93, v67, 1, v68 & 1, v65, v65, v52);
    v70 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
    v71 = *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
    *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = v69;

    v72 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
    if (*(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask))
    {
      v73 = *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask);

      sub_272377CBC();

      v74 = *(v7 + v72);
    }

    *(v7 + v72) = 0;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v75 = *(v7 + v70);
      v10 = v89;
      if (!v75)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v76 = result;
      v77 = v75;
      [v76 speechResultsWithResult_];
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = v89;
    }

    v14 = v88;
LABEL_42:
    if ((*((*MEMORY[0x277D85000] & *v7) + 0x498))(v24))
    {
      v78 = sub_2722C389C();
      (*(v11 + 16))(v14, v78, v10);
      v79 = sub_27237725C();
      v80 = sub_272377E7C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = v14;
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_2721E4000, v79, v80, "block inference pending till final, ublocked now", v82, 2u);
        v83 = v82;
        v14 = v81;
        MEMORY[0x2743C69C0](v83, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
      (*((*MEMORY[0x277D85000] & *v7) + 0x4A0))(0);
      sub_27220FC48();
      if (v6)
      {
        sub_272216BD8(v92);
      }

      else
      {

        sub_272216BD8(v92);
      }
    }

    else
    {
      sub_272216BD8(v92);
      if (*(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 1)
      {
        *(v7 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 1;
      }
    }

    return v22;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_27221793C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for VARuntimeParameters();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v60 - v16;
  v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x120))(v15);
  if (!v18)
  {
    sub_2722032B4();
    swift_allocError();
    *v38 = 0xD000000000000016;
    v38[1] = 0x8000000272388EA0;
    return swift_willThrow();
  }

  (*(*v18 + 312))(v18);

  sub_2722164B8(v14, v17);
  v19 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal;
  if (*(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) == 1)
  {
    goto LABEL_15;
  }

  if (*(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 3)
  {
    *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 3;
  }

  type metadata accessor for VAASRResult();

  v20 = sub_2721F7EE4();
  v21 = sub_2722E2418(a2, a3, 0, v20 & 1, 0, 0, 0);
  v22 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
  v23 = *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult);
  *(v4 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult) = v21;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v4 + v22);
    if (!v25)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v26 = result;
    v27 = v25;
    [v26 speechResultsWithResult_];

    swift_unknownObjectRelease();
  }

  if (v17[77] != 1)
  {
LABEL_15:
    sub_272216BD8(v17);
    return 0;
  }

  v62 = v19;
  v28 = sub_2723778AC();
  v30 = sub_272216A58(v28, v29);
  v32 = v31;

  v33 = sub_272215374();
  if (!v34)
  {

    goto LABEL_15;
  }

  v61 = a1;
  v60[0] = v33;
  v60[1] = v34;
  *&v63[0] = v33;
  *(&v63[0] + 1) = v34;
  v66 = 95;
  v67 = 0xE100000000000000;
  v64 = 32;
  v65 = 0xE100000000000000;
  v60[2] = sub_272203AC4();
  if (sub_2723780FC() == v30 && v35 == v32)
  {

    v36 = 1;
    v37 = 1;
  }

  else
  {
    v39 = sub_27237865C();

    if (v39)
    {
      v36 = 1;
      v37 = 1;
    }

    else if (sub_2722155A0())
    {
      v36 = 0;
      v37 = 1;
    }

    else
    {
      v36 = sub_272377A0C();
      v37 = 0;
    }
  }

  v40 = sub_2723778AC();
  v42 = v41;

  *&v63[0] = v40;
  *(&v63[0] + 1) = v42;
  v66 = 32;
  v67 = 0xE100000000000000;
  v64 = 95;
  v65 = 0xE100000000000000;
  v43 = sub_2723780FC();
  v45 = v44;

  v46 = v61;
  if (v61 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v47 = sub_272241A18();
  v48 = sub_272241A18();
  v49 = sub_27222CD4C();
  sub_27232409C(v43, v45, 0, v46, v37, v36 & 1, v49 & 1, 0, v63, a4, v47, v48, 0);
  type metadata accessor for VAKeywordResult();
  sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
  v50 = swift_allocObject();
  v51 = v63[2];
  v52 = v63[3];
  v53 = v63[0];
  v50[3] = v63[1];
  v50[4] = v51;
  v54 = v63[4];
  v50[5] = v52;
  v50[6] = v54;
  v50[1] = xmmword_27237AF80;
  v50[2] = v53;
  v55 = VAKeywordResult.__allocating_init(detections:)(v50);
  *(v5 + v62) = 1;
  v56 = *(**(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 168);

  v56(1);

  v57 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
  if (*(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask))
  {
    v58 = *(v5 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask);

    sub_272377CBC();
  }

  sub_272216BD8(v17);
  v59 = *(v5 + v57);
  *(v5 + v57) = 0;

  return v55;
}

uint64_t sub_272217F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, float a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 92) = a3;
  *(v6 + 88) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v8 = sub_27237728C();
  *(v6 + 56) = v8;
  v9 = *(v8 - 8);
  *(v6 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272218014, 0, 0);
}

uint64_t sub_272218014()
{
  v46 = v0;
  v1 = *(v0 + 24);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 92);
    v5 = sub_2722C389C();
    v6 = *(v3 + 16);
    v7 = *(v0 + 56);
    v8 = *(v0 + 24);
    if (v4 == 1)
    {
      v6(*(v0 + 80), v5, v7);

      v9 = sub_27237725C();
      v10 = sub_272377E7C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 80);
      v13 = *(v0 + 56);
      v14 = *(v0 + 64);
      if (v11)
      {
        v16 = *(v0 + 16);
        v15 = *(v0 + 24);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v45[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_2721FFD04(v16, v15, v45);
        _os_log_impl(&dword_2721E4000, v9, v10, "Got tasr final: %s", v17, 0xCu);
        sub_2722039C8(v18);
        MEMORY[0x2743C69C0](v18, -1, -1);
        MEMORY[0x2743C69C0](v17, -1, -1);
      }

      v19 = (*(v14 + 8))(v12, v13);
      v20 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x120))(v19);
      if (v20)
      {
        v21 = v20;
        v22 = *(v0 + 48);
        (*(*v20 + 312))(v20);
        v23 = *(v22 + 76);
        v24 = sub_272216BD8(v22);
        if (v23 == 1)
        {
          v25 = (*(*v21 + 392))(v24);

          goto LABEL_17;
        }
      }

      v25 = 0;
LABEL_17:
      v38 = *(v0 + 40);
      v37 = sub_272216F64(*(v0 + 16), *(v0 + 24), v25, *(v0 + 88));

      v39 = *(**(*(v0 + 40) + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult) + 168);

      v39(1);

      if (!v37)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v6(*(v0 + 72), v5, v7);

    v26 = sub_27237725C();
    v27 = sub_272377E7C();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    if (v28)
    {
      v33 = *(v0 + 16);
      v32 = *(v0 + 24);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2721FFD04(v33, v32, v45);
      _os_log_impl(&dword_2721E4000, v26, v27, "Got tasr partial: %s", v34, 0xCu);
      sub_2722039C8(v35);
      MEMORY[0x2743C69C0](v35, -1, -1);
      MEMORY[0x2743C69C0](v34, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    v36 = *(v0 + 40);
    v37 = sub_27221793C(*(v0 + 32), *(v0 + 16), *(v0 + 24), *(v0 + 88));

    if (v37)
    {
LABEL_18:
      (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x550))(v37, 0);
    }
  }

LABEL_19:
  v41 = *(v0 + 72);
  v40 = *(v0 + 80);
  v42 = *(v0 + 48);

  v43 = *(v0 + 8);

  return v43();
}

id sub_2722184E4()
{
  v52[36] = *MEMORY[0x277D85DE8];
  v0 = sub_272376C7C();
  v47 = *(v0 - 8);
  v48 = v0;
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = sub_272376D5C();
  v50 = *(v8 - 8);
  v9 = v50[8];
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  v15 = *MEMORY[0x277CB8280];
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v16;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  v17 = *MEMORY[0x277CB8288];
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v18;
  v19 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v20 = *MEMORY[0x277CB82A0];
  v21 = sub_27237782C();
  v22 = MEMORY[0x277D839B0];
  *(inited + 128) = v21;
  *(inited + 136) = v23;
  *(inited + 168) = v22;
  *(inited + 144) = 0;
  v24 = *MEMORY[0x277CB82E0];
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v25;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  v26 = *MEMORY[0x277CB82B0];
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v27;
  *(inited + 264) = v19;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v28 = NSTemporaryDirectory();
  sub_27237782C();

  v29 = v50[7];
  v49 = v8;
  v29(v7, 1, 1, v8);
  (*(v47 + 104))(v3, *MEMORY[0x277CC91D8], v48);
  v30 = v13;
  v31 = v46;
  sub_272376D4C();
  v52[0] = 761553270;
  v52[1] = 0xE400000000000000;
  v51 = mach_absolute_time();
  v32 = sub_27237862C();
  MEMORY[0x2743C4AD0](v32);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  sub_272376CEC();

  v33 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v34 = sub_272376CCC();
  v35 = sub_27237770C();

  v52[0] = 0;
  v36 = [v33 initForWriting:v34 settings:v35 commonFormat:3 interleaved:0 error:v52];

  if (v36)
  {
    v37 = v50[1];
    v38 = v52[0];
    v39 = v49;
    v37(v31, v49);
    v37(v30, v39);
  }

  else
  {
    v40 = v52[0];
    sub_272376C6C();

    swift_willThrow();
    v41 = v49;
    v42 = v50[1];
    v42(v31, v49);
    v42(v30, v41);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_272218A0C(void *a1, void *a2)
{
  v4 = 0xD000000000000021;
  sub_27221982C(0, &qword_280881A70, 0x277D82BB8);
  v5 = [a1 format];
  v6 = [a2 format];
  v7 = sub_272377FBC();

  if ((v7 & 1) == 0)
  {
    v28 = "v32@0:8f16f20Q24";
LABEL_13:
    v29 = v28 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v30 = v4;
    v30[1] = v29;
    swift_willThrow();
    return;
  }

  v8 = [a1 frameCapacity];
  v9 = [a2 frameCapacity];
  v10 = v8 + v9;
  if (__CFADD__(v8, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = [a1 format];
  v12 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v11 frameCapacity:v10];

  if (!v12)
  {
    v28 = "e the same format";
    v4 = 0xD000000000000024;
    goto LABEL_13;
  }

  [v12 setFrameLength_];
  v13 = *([a1 audioBufferList] + 2);
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = *([v12 audioBufferList] + 2);
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = [a1 frameLength];
  v16 = [a1 format];
  v17 = [v16 streamDescription];

  v18 = v17[6] * v15;
  if ((v18 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_15;
  }

  memcpy(v14, v13, v18);
  v19 = *([a2 audioBufferList] + 2);
  if (v19)
  {
    v20 = [a1 frameLength];
    v21 = [a1 format];
    v22 = [v21 streamDescription];

    v23 = v22[6] * v20;
    if ((v23 & 0xFFFFFFFF00000000) == 0)
    {
      v24 = [a2 frameLength];
      v25 = [a2 format];
      v26 = [v25 streamDescription];

      v27 = v26[6] * v24;
      if ((v27 & 0xFFFFFFFF00000000) == 0)
      {
        memcpy(&v14[v23 & 0xFFFFFFFE], v19, v27);
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

LABEL_20:
  __break(1u);
}

uint64_t sub_272218D9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_272218DE4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_272213C6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_272218E8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272218EC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272219D80;

  return sub_272215964(a1, v5);
}

unint64_t sub_272218FD0()
{
  result = qword_2808819E8;
  if (!qword_2808819E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808819E8);
  }

  return result;
}

unint64_t sub_272219028()
{
  result = qword_2808819F8;
  if (!qword_2808819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808819F8);
  }

  return result;
}

unint64_t sub_272219080()
{
  result = qword_280881A00;
  if (!qword_280881A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A00);
  }

  return result;
}

unint64_t sub_2722190D8()
{
  result = qword_280881A08;
  if (!qword_280881A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VATinyASRModelInferenceMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VATinyASRModelInferenceMode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_272219290()
{
  sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_272219478(319, &qword_280881A18, &qword_280881908, &qword_27237C4F8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_272219478(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2721F214C(a3, a4);
    v5 = sub_27237801C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_2722194CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2722194E0(uint64_t *a1, int a2)
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

uint64_t sub_272219528(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TinyASRGatingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TinyASRGatingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2722196D8()
{
  result = qword_280881A20;
  if (!qword_280881A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A20);
  }

  return result;
}

unint64_t sub_27221972C()
{
  result = qword_280881A28;
  if (!qword_280881A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A28);
  }

  return result;
}

unint64_t sub_272219780()
{
  result = qword_280881A30;
  if (!qword_280881A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A30);
  }

  return result;
}

uint64_t sub_2722197D4(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_27221981C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27221982C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_272219874(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27221988C()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722198C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 161, 7);
}

uint64_t sub_27221990C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272214D98(v2, v0 + 24, v3, v4);
}

uint64_t sub_2722199BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272219A30()
{
  result = qword_280881A98;
  if (!qword_280881A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881A98);
  }

  return result;
}

uint64_t sub_272219A84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219ACC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272211378(v2, v3, v4);
}

uint64_t sub_272219B74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219BB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272219D80;

  return sub_272210F78(v2, v3, v4);
}

uint64_t sub_272219C5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272219CAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_272219D80;

  return sub_272210BFC(v2, v3, v5, v4);
}

uint64_t VASpeechDetectorInput.init(buffer:hostTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t VASpeechDetectorInput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27237820C();
  [v1 frameLength];
  v3 = sub_27237862C();

  MEMORY[0x2743C4AD0](0xD000000000000012, 0x8000000272388F80);
  v4 = sub_27237862C();
  MEMORY[0x2743C4AD0](v4);

  return v3;
}

VoiceActions::VASpeechDetectorFeatureOutputType_optional __swiftcall VASpeechDetectorFeatureOutputType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VASpeechDetectorFeatureOutput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_2721F065C(&qword_280881858, &unk_27237C260);
  v6 = MEMORY[0x2743C4C60](v1, v3);
  MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  v4 = sub_27237789C();
  MEMORY[0x2743C4AD0](v4);

  return v6;
}

uint64_t sub_27221A028()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_2721F065C(&qword_280881858, &unk_27237C260);
  v6 = MEMORY[0x2743C4C60](v1, v3);
  MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  v4 = sub_27237789C();
  MEMORY[0x2743C4AD0](v4);

  return v6;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTime.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTime.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechTime.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechSampleOffsetInBuffer.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechSampleOffsetInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTimeInSecsInBuffer.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.startOfSpeechTimeInSecsInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechSampleOffsetInBuffer.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechSampleOffsetInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechTimeInSecsInBuffer.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t VASpeechDetectorAudioOutput.endOfSpeechTimeInSecsInBuffer.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.averageSilenceProbabilityOver30ms.setter(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.init(buffer:bufferStartTime:startOfSpeechInBuffer:endOfSpeechInBuffer:startOfSpeechTime:endOfSpeechTime:afterEndOfSpeech:lastAudioAfterEndOfSpeech:duringSpeech:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  *(a9 + 56) = 0;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = 0;
  *(a9 + 112) = 1;
  *(a9 + 116) = 0;
  *(a9 + 120) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 121) = a10;
  *(a9 + 122) = a11;
  *(a9 + 18) = a12;
  *(a9 + 124) = 0;
  return result;
}

uint64_t VASpeechDetectorAudioOutput.shouldProcessAudio.getter()
{
  v1 = 1;
  if ((v0[16] & 1) == 0 && (v0[18] & 1) == 0)
  {
    v1 = v0[17] | v0[121];
  }

  return v1 & 1;
}

uint64_t VASpeechDetectorAudioOutput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v6 = *(v0 + 116);
  v7 = *(v0 + 120);
  v8 = *(v0 + 124);
  if (*(v0 + 16) == 1 && (*(v0 + 32) & 1) == 0 && (*(v0 + 64) & 1) == 0 && (*(v0 + 80) & 1) == 0)
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 24);
    v26 = 0;
    sub_27237820C();
    MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    sub_272377D5C();
    MEMORY[0x2743C4AD0](8285, 0xE200000000000000);
    [v1 frameLength];
    v12 = sub_27237862C();
    MEMORY[0x2743C4AD0](v12);

    v13 = " frames during speech]";
    v14 = 0xD000000000000020;
LABEL_6:
    MEMORY[0x2743C4AD0](v14, v13 | 0x8000000000000000);
    v15 = sub_27237862C();
    MEMORY[0x2743C4AD0](v15);

    MEMORY[0x2743C4AD0](0xD000000000000010, 0x8000000272389010);
    v16 = sub_27237862C();
    MEMORY[0x2743C4AD0](v16);

    MEMORY[0x2743C4AD0](32, 0xE100000000000000);
    v17 = sub_272377D1C();
    MEMORY[0x2743C4AD0](v17);

    v18 = ", sample offset ";
    v19 = 0xD000000000000011;
    goto LABEL_9;
  }

  if (*(v0 + 18) == 1)
  {
    sub_27237820C();

    v26 = 91;
    [v1 frameLength];
    v20 = sub_27237862C();
    MEMORY[0x2743C4AD0](v20);

    v18 = " secs into buffer";
    v19 = 0xD000000000000016;
    goto LABEL_9;
  }

  if (!(*(v0 + 48) & 1 | ((*(v0 + 17) & 1) == 0) | (*(v0 + 96) | *(v0 + 112)) & 1))
  {
    v26 = 0;
    sub_27237820C();
    MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    sub_272377D5C();
    MEMORY[0x2743C4AD0](8285, 0xE200000000000000);
    [v1 frameLength];
    v23 = sub_27237862C();
    MEMORY[0x2743C4AD0](v23);

    v13 = "ter end of speech]";
    v14 = 0xD00000000000001ELL;
    goto LABEL_6;
  }

  if (*(v0 + 122))
  {
    sub_27237820C();

    v26 = 91;
    v22 = sub_27237862C();
    MEMORY[0x2743C4AD0](v22);

    v18 = " frames after end of speech]";
    v19 = 0xD000000000000022;
  }

  else
  {
    if (!*(v0 + 121))
    {
      [*v0 frameLength];
      v26 = sub_27237862C();
      MEMORY[0x2743C4AD0](0x2073656D61726620, 0xEB00000000207461);
      v25 = sub_27237862C();
      MEMORY[0x2743C4AD0](v25);

      return v26;
    }

    sub_27237820C();

    v26 = 91;
    [v1 frameLength];
    v24 = sub_27237862C();
    MEMORY[0x2743C4AD0](v24);

    v18 = " frames, hostTime ";
    v19 = 0xD00000000000001CLL;
  }

LABEL_9:
  MEMORY[0x2743C4AD0](v19, v18 | 0x8000000000000000);
  return v26;
}

uint64_t VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  VASpeechDetector.init(modelFilename:featureCount:delegate:)(a1, a2, a3, a4);
  return v11;
}

uint64_t VASpeechDetector.init(modelFilename:featureCount:delegate:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v48 = a4;
  v6 = v4;
  v9 = *a3;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  v11 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v45 = v10;
  (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  v13 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v44 = v12;
  (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
  v41 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask) = 0;
  v43 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress) = 0;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_prepareToTurnOffSpeechInProgress) = 0;
  v40 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
  v16 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v42 = v15;
  (*(*(v16 - 8) + 56))(v6 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  v18 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStream;
  v20 = sub_2721F065C(&qword_280881908, &qword_27237C4F8);
  (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder;
  v22 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  (*(*(v22 - 8) + 56))(v6 + v21, 1, 1, v22);
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability) = 1050253722;
  *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_numFramesForAveraging) = 3;
  type metadata accessor for VASilenceModel();
  LOBYTE(v46) = v9;
  v23 = sub_27228DC9C(a1, a2, &v46);
  if (!v5)
  {
    v30 = *(v6 + v14);
    *(v6 + v14) = v23;

    *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount) = v9;
    swift_unknownObjectWeakAssign();
    if (*(v6 + v14))
    {
      type metadata accessor for StopProcessingActor();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor) = sub_272230064();
      type metadata accessor for VAStrideConfiguration();
      v31 = static VAStrideConfiguration.forVAD()();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig) = v31;
      type metadata accessor for IngestionAudioBufferActor(0);
      v32 = sub_272230714(v31, 0, 0, 1);
      swift_unknownObjectRelease();
      *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor) = v32;
      return v6;
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_27237820C();

    v46 = 0xD00000000000001ELL;
    v47 = 0x80000002723890A0;
    v34 = sub_27235D480();
    v35 = *v34;
    v36 = *(v34 + 1);

    MEMORY[0x2743C4AD0](v35, v36);

    v37 = v46;
    v38 = v47;
    sub_27221AF24();
    swift_allocError();
    *v39 = v37;
    v39[1] = v38;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_272216300(v6 + 16);
  sub_2721F40F0(v6 + v45, &qword_280881AC0, &qword_27237CB18);
  sub_2721F40F0(v6 + v44, &qword_280881AC8, &unk_27237CB20);
  v24 = *(v6 + v41);

  v25 = *(v6 + v43);

  v26 = *(v6 + v14);

  v27 = *(v6 + v40);

  sub_2721F40F0(v6 + v42, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v6 + v17, &qword_280881AD0, &unk_27237CB30);
  sub_2721F40F0(v6 + v19, &qword_2808819C0, &unk_27237C510);
  sub_2721F40F0(v6 + v21, &qword_280881AD8, &qword_27237CB40);
  type metadata accessor for VASpeechDetector();
  v28 = *(*v6 + 48);
  v29 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t type metadata accessor for VASpeechDetector()
{
  result = qword_280886000;
  if (!qword_280886000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27221AF24()
{
  result = qword_280881AE0;
  if (!qword_280881AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881AE0);
  }

  return result;
}

uint64_t sub_27221AF78@<X0>(int a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  LODWORD(v99) = a1;
  v88[0] = a2;
  v4 = sub_2721F065C(&qword_280881AD0, &unk_27237CB30);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = v88 - v8;
  v9 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v106 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = v88 - v13;
  v14 = sub_2721F065C(&qword_280881AE8, &qword_27237CB48);
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v96 = v88 - v16;
  v17 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  v102 = *(v17 - 8);
  v103 = v17;
  v18 = *(v102 + 64);
  MEMORY[0x28223BE20](v17);
  v101 = v88 - v19;
  v20 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v107 = *(v20 - 8);
  v108 = v20;
  v21 = *(v107 + 64);
  MEMORY[0x28223BE20](v20);
  v95 = v88 - v22;
  v23 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v94 = v88 - v25;
  v26 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v92 = v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v90 = v88 - v30;
  v31 = sub_2721F065C(&qword_280881AC0, &qword_27237CB18);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v88 - v33;
  v35 = sub_2721F065C(&qword_280881AF0, &qword_27237CB58);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = v88 - v38;
  v40 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v89 = *(v40 - 8);
  v41 = *(v89 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = v88 - v42;
  v44 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = v88 - v47;
  v49 = *(v36 + 104);
  v93 = *MEMORY[0x277D85778];
  v49(v39);
  sub_272377C4C();
  (*(v36 + 8))(v39, v35);
  v50 = v48;
  v51 = v43;
  v52 = v40;
  v53 = v91;
  (*(v45 + 32))(v34, v50, v44);
  (*(v45 + 56))(v34, 0, 1, v44);
  v54 = v89;
  v55 = v90;
  (*(v89 + 32))(v90, v51, v52);
  (*(v54 + 56))(v55, 0, 1, v52);
  v56 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  swift_beginAccess();
  sub_27221D3B4(v34, v53 + v56, &qword_280881AC0, &qword_27237CB18);
  swift_endAccess();
  v57 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  sub_27221D3B4(v55, v53 + v57, &qword_280881AC8, &unk_27237CB20);
  swift_endAccess();
  v58 = v53 + v57;
  v59 = v92;
  sub_2721F07F4(v58, v92, &qword_280881AC8, &unk_27237CB20);
  if ((*(v54 + 48))(v59, 1, v52))
  {
    sub_2721F40F0(v59, &qword_280881AC8, &unk_27237CB20);
  }

  else
  {
    (*(v54 + 16))(v51, v59, v52);
    sub_2721F40F0(v59, &qword_280881AC8, &unk_27237CB20);
    sub_272377C5C();
    (*(v54 + 8))(v51, v52);
  }

  *(v53 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability) = a3;
  v60 = sub_272377C3C();
  v61 = *(*(v60 - 8) + 56);
  v62 = v94;
  v61(v94, 1, 1, v60);
  v63 = swift_allocObject();
  v63[2] = 0;
  v63[3] = 0;
  v63[4] = v53;

  v64 = sub_27221CA6C(0, 0, v62, &unk_27237CB68, v63);
  v65 = *(v53 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask);
  *(v53 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask) = v64;

  v61(v62, 1, 1, v60);
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v53;
  *(v66 + 40) = v99 & 1;

  v67 = sub_27221CA6C(0, 0, v62, &unk_27237CB78, v66);
  v68 = *(v53 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask);
  *(v53 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask) = v67;

  v70 = v96;
  v69 = v97;
  v71 = v98;
  (*(v97 + 104))(v96, v93, v98);
  v72 = v95;
  v73 = v101;
  sub_272377C4C();
  (*(v69 + 8))(v70, v71);
  v74 = v107;
  v75 = v108;
  v76 = v100;
  v98 = *(v107 + 32);
  v99 = v107 + 32;
  v98(v100, v72, v108);
  (*(v74 + 56))(v76, 0, 1, v75);
  v77 = v102;
  v78 = v103;
  v79 = v104;
  (*(v102 + 32))(v104, v73, v103);
  (*(v77 + 56))(v79, 0, 1, v78);
  v80 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
  swift_beginAccess();
  sub_27221D3B4(v76, v53 + v80, &qword_2808819B8, &qword_27237C508);
  swift_endAccess();
  v81 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  swift_beginAccess();
  sub_27221D3B4(v79, v53 + v81, &qword_280881AD0, &unk_27237CB30);
  swift_endAccess();
  v82 = v53 + v81;
  v83 = v105;
  sub_2721F07F4(v82, v105, &qword_280881AD0, &unk_27237CB30);
  if ((*(v77 + 48))(v83, 1, v78))
  {
    sub_2721F40F0(v83, &qword_280881AD0, &unk_27237CB30);
  }

  else
  {
    (*(v77 + 16))(v73, v83, v78);
    sub_2721F40F0(v83, &qword_280881AD0, &unk_27237CB30);
    sub_272377C5C();
    (*(v77 + 8))(v73, v78);
  }

  v84 = v106;
  sub_2721F07F4(v53 + v80, v106, &qword_2808819B8, &qword_27237C508);
  v85 = v108;
  if ((*(v107 + 48))(v84, 1, v108) != 1)
  {
    return (v98)(v88[0], v84, v85);
  }

  sub_2721F40F0(v84, &qword_2808819B8, &qword_27237C508);
  sub_27221AF24();
  swift_allocError();
  *v86 = 0xD00000000000002ELL;
  v86[1] = 0x80000002723890C0;
  return swift_willThrow();
}

uint64_t sub_27221BBB8(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2721F065C(&qword_280881B48, &qword_27237CF88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(v14 + 16))(&v34 - v16, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D85738])
  {
    v19 = sub_2722C389C();
    (*(v3 + 16))(v12, v19, v2);
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Input stream finished successfully.", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    return (*(v3 + 8))(v12, v2);
  }

  else
  {
    v24 = v18;
    v25 = *MEMORY[0x277D85740];
    v26 = sub_2722C389C();
    v27 = *(v3 + 16);
    if (v24 == v25)
    {
      v27(v10, v26, v2);
      v28 = sub_27237725C();
      v29 = sub_272377E7C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2721E4000, v28, v29, "Input stream was cancelled.", v30, 2u);
        MEMORY[0x2743C69C0](v30, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }

    else
    {
      v27(v7, v26, v2);
      v31 = sub_27237725C();
      v32 = sub_272377E7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2721E4000, v31, v32, "Unknown termination reason.", v33, 2u);
        MEMORY[0x2743C69C0](v33, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_27221BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_2721F065C(&qword_280881B58, &qword_27237CF98);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(sub_2721F065C(&qword_280881AC0, &qword_27237CB18) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221C108, 0, 0);
}

uint64_t sub_27221C108()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v3, &qword_280881AC0, &qword_27237CB18);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2721F40F0(v0[14], &qword_280881AC0, &qword_27237CB18);
    sub_27221AF24();
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000272389440;
    swift_willThrow();
    v7 = v0[17];
    v9 = v0[13];
    v8 = v0[14];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[13];
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    sub_272377C8C();
    v13 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor;
    v0[18] = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_floatBuffer;
    v0[19] = v13;
    v0[20] = 0;
    v14 = *(MEMORY[0x277D85798] + 4);
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_27221C320;
    v16 = v0[13];
    v17 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v17);
  }
}

uint64_t sub_27221C320()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27221C41C, 0, 0);
}

uint64_t sub_27221C41C()
{
  v1 = v0[8];
  v0[22] = v1;
  if (!v1)
  {
    v21 = v0[16];
    v20 = v0[17];
    v23 = v0[14];
    v22 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v21 + 8))(v20, v22);

    v19 = v0[1];
    goto LABEL_5;
  }

  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[9];
  v5 = v0[10];
  swift_beginAccess();
  v6.super.super.isa = v1;
  isa = v6.super.super.isa;
  v6.super._impl = (v5 + v3);
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v6, v8);
  if (v9)
  {
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    swift_endAccess();

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    v16 = v0[17];
    v17 = v0[13];
    v18 = v0[14];

    v19 = v0[1];
LABEL_5:

    return v19();
  }

  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[10];
  swift_endAccess();

  v28 = *(v27 + v25);
  v0[23] = v28;
  v29 = *(v27 + v26);
  v0[24] = v29;
  v30 = *(*v28 + 432);

  v33 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_27221C6F8;

  return v33(v29, v4);
}

uint64_t sub_27221C6F8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);

  if (v0)
  {
    v7 = sub_27221C900;
  }

  else
  {
    v7 = sub_27221C848;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_27221C848()
{
  *(v0 + 160) = *(v0 + 208);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_27221C320;
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v4);
}

uint64_t sub_27221C900()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 208);
  v8 = *(v0 + 136);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27221C9D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_27221BF9C(v3, v4, v5, v2);
}

uint64_t sub_27221CA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2723778BC() + 32;

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

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

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

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_27221CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 144) = a5;
  *(v5 + 64) = a4;
  v7 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v10 = *(*(sub_2721F065C(&qword_280881AD0, &unk_27237CB30) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  *(v5 + 104) = v11;
  v12 = *(v11 - 8);
  *(v5 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v14 = *(*(sub_2721F065C(&qword_280881AC8, &unk_27237CB20) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v5 + 136) = v15;
  *v15 = v5;
  v15[1] = sub_27221CEF8;

  return sub_27221F0E8(a5);
}

uint64_t sub_27221CEF8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[15];
    v5 = v2[16];
    v9 = v2 + 11;
    v7 = v2[11];
    v8 = v9[1];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27221D058, 0, 0);
  }
}

uint64_t sub_27221D058()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v4 + v5, v1, &qword_280881AC8, &unk_27237CB20);
    v6 = (*(v3 + 48))(v1, 1, v2);
    v7 = *(v0 + 128);
    if (v6)
    {
      sub_2721F40F0(*(v0 + 128), &qword_280881AC8, &unk_27237CB20);
    }

    else
    {
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);
      (*(v9 + 16))(v8, *(v0 + 128), v10);
      sub_2721F40F0(v7, &qword_280881AC8, &unk_27237CB20);
      sub_272377C7C();
      (*(v9 + 8))(v8, v10);
    }

    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v14 + v15, v11, &qword_280881AD0, &unk_27237CB30);
    v16 = (*(v13 + 48))(v11, 1, v12);
    v17 = *(v0 + 96);
    if (v16)
    {
      sub_2721F40F0(*(v0 + 96), &qword_280881AD0, &unk_27237CB30);
    }

    else
    {
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 72);
      (*(v19 + 16))(v18, *(v0 + 96), v20);
      sub_2721F40F0(v17, &qword_280881AD0, &unk_27237CB30);
      sub_272377C7C();
      (*(v19 + 8))(v18, v20);
    }
  }

  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_27221D2CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27221D318()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272219D80;

  return sub_27221CD18(v4, v5, v6, v2, v3);
}

uint64_t sub_27221D3B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2721F065C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_27221D41C(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2721F065C(&qword_280881B50, &qword_27237CF90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(v14 + 16))(&v34 - v16, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D85738])
  {
    v19 = sub_2722C389C();
    (*(v3 + 16))(v12, v19, v2);
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Speech Detector Output stream finished successfully.", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    return (*(v3 + 8))(v12, v2);
  }

  else
  {
    v24 = v18;
    v25 = *MEMORY[0x277D85740];
    v26 = sub_2722C389C();
    v27 = *(v3 + 16);
    if (v24 == v25)
    {
      v27(v10, v26, v2);
      v28 = sub_27237725C();
      v29 = sub_272377E7C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2721E4000, v28, v29, "Speech Detector Output stream was cancelled.", v30, 2u);
        MEMORY[0x2743C69C0](v30, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }

    else
    {
      v27(v7, v26, v2);
      v31 = sub_27237725C();
      v32 = sub_272377E7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2721E4000, v31, v32, "Speech Detector output stream: Unknown termination reason.", v33, 2u);
        MEMORY[0x2743C69C0](v33, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_27221D800(void *a1, char *a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  v4 = sub_27237728C();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v66 - v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v66 - v10;
  v11 = sub_2721F065C(&qword_280881AF8, &qword_27237CB80);
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - v20;
  v22 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  v27 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  v28 = v3 + v27;
  v29 = v22;
  v30 = v23;
  sub_2721F07F4(v28, v21, &qword_280881AC8, &unk_27237CB20);
  if ((*(v23 + 6))(v21, 1, v29) == 1)
  {
    sub_2721F40F0(v21, &qword_280881AC8, &unk_27237CB20);
    sub_27221AF24();
    swift_allocError();
    *v31 = 0xD000000000000022;
    v31[1] = 0x80000002723890F0;
    return swift_willThrow();
  }

  else
  {
    (*(v23 + 4))(v26, v21, v29);
    v77 = v76;
    v78 = v75;
    v33 = v76;
    sub_272377C6C();
    v34 = v74;
    (*(v74 + 16))(v15, v17, v11);
    v35 = (*(v34 + 88))(v15, v11);
    if (v35 == *MEMORY[0x277D85758])
    {

      (*(v34 + 8))(v17, v11);
      return v30[1](v26, v29);
    }

    else
    {
      v36 = v15;
      v68 = v33;
      v75 = v26;
      v76 = v29;
      if (v35 == *MEMORY[0x277D85750])
      {
        v71 = v30;
        v37 = *(v34 + 8);
        v37(v15, v11);
        v38 = sub_2722C389C();
        v40 = v72;
        v39 = v73;
        v41 = v70;
        (*(v72 + 16))(v70, v38, v73);
        v42 = sub_27237725C();
        v43 = sub_272377E8C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v67 = v17;
          v45 = v37;
          v46 = v44;
          *v44 = 0;
          _os_log_impl(&dword_2721E4000, v42, v43, "Failed to enqueue audio", v44, 2u);
          MEMORY[0x2743C69C0](v46, -1, -1);

          (*(v40 + 8))(v41, v39);
          v45(v67, v11);
        }

        else
        {

          (*(v40 + 8))(v41, v39);
          v37(v17, v11);
        }

        return (*(v71 + 1))(v75, v76);
      }

      else
      {
        v47 = *MEMORY[0x277D85748];
        v48 = v35;
        v49 = sub_2722C389C();
        v51 = v72;
        v50 = v73;
        v52 = *(v72 + 16);
        if (v48 == v47)
        {
          v53 = v69;
          v52(v69, v49, v73);
          v54 = sub_27237725C();
          v55 = sub_272377E8C();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v67 = v17;
            v57 = v30;
            v58 = v56;
            *v56 = 0;
            _os_log_impl(&dword_2721E4000, v54, v55, "Stream was terminated, failed to enqueue audio", v56, 2u);
            MEMORY[0x2743C69C0](v58, -1, -1);

            (*(v51 + 8))(v53, v50);
            (*(v34 + 8))(v67, v11);
            return v57[1](v75, v76);
          }

          else
          {

            (*(v51 + 8))(v53, v50);
            (*(v34 + 8))(v17, v11);
            return v30[1](v75, v76);
          }
        }

        else
        {
          v52(v71, v49, v73);
          v59 = sub_27237725C();
          v60 = sub_272377E8C();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v70 = v36;
            v62 = v30;
            v63 = v61;
            *v61 = 0;
            _os_log_impl(&dword_2721E4000, v59, v60, "Unknown yield result", v61, 2u);
            v64 = v63;
            v30 = v62;
            v36 = v70;
            MEMORY[0x2743C69C0](v64, -1, -1);
          }

          (*(v51 + 8))(v71, v50);
          v65 = *(v34 + 8);
          v65(v17, v11);
          v30[1](v75, v76);
          return (v65)(v36, v11);
        }
      }
    }
  }
}

uint64_t sub_27221DFD4()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280881AC8, &unk_27237CB20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_2721F065C(&qword_280881AC0, &qword_27237CB18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadTask))
  {
    v16 = dispatch_semaphore_create(0);
    v17 = sub_272377C3C();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = v1;
    v19 = v16;

    sub_27221CA6C(0, 0, v14, &unk_27237CB90, v18);

    sub_272377F5C();
    v20 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask;
    if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask))
    {
      v21 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionTask);

      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();

      v22 = *(v1 + v20);
      *(v1 + v20) = 0;
    }

    if (*(v1 + v15))
    {
      v23 = *(v1 + v15);

      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_272377CBC();

      v24 = *(v1 + v15);
      *(v1 + v15) = 0;
    }

    else
    {
    }

    v25 = sub_2721F065C(&qword_280881AA0, &qword_27237CAE8);
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v26 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStream;
    swift_beginAccess();
    sub_27221D3B4(v9, v1 + v26, &qword_280881AC0, &qword_27237CB18);
    swift_endAccess();
    v27 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
    swift_beginAccess();
    sub_27221D3B4(v5, v1 + v28, &qword_280881AC8, &unk_27237CB20);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_27221E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_2721F065C(&qword_280881AD0, &unk_27237CB30) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = *(*(sub_2721F065C(&qword_280881AD8, &qword_27237CB40) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();
  v14 = *(*(sub_2721F065C(&qword_280881AC8, &unk_27237CB20) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v15 = sub_2721F065C(&qword_280881AA8, &unk_27237CAF0);
  v5[19] = v15;
  v16 = *(v15 - 8);
  v5[20] = v16;
  v17 = *(v16 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221E5DC, 0, 0);
}

uint64_t sub_27221E5DC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor);
  v0[22] = v1;
  v2 = *(*v1 + 120);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_27221E714;

  return v6(1);
}

uint64_t sub_27221E714()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27221E82C, 0, 0);
}

uint64_t sub_27221E82C()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor);
  v0[24] = v1;
  v2 = *(*v1 + 440);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_27221E968;

  return v6();
}

uint64_t sub_27221E968()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27221EA80, 0, 0);
}

uint64_t sub_27221EA80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v3, &qword_280881AC8, &unk_27237CB20);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[21];
  if (v6 == 1)
  {
    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[10];
    v12 = v0[8];
    sub_2721F40F0(v0[18], &qword_280881AC8, &unk_27237CB20);
    sub_27221AF24();
    swift_allocError();
    *v13 = 0xD00000000000001ELL;
    v13[1] = 0x8000000272389420;
    swift_willThrow();
    sub_272377F6C();

    v14 = v0[1];
  }

  else
  {
    v15 = v0[15];
    v16 = v0[16];
    v17 = v0[14];
    v18 = v0[9];
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    sub_272377C7C();
    sub_2721F07F4(v18 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder, v17, &qword_280881AD8, &qword_27237CB40);
    if ((*(v16 + 48))(v17, 1, v15) == 1)
    {
      sub_2721F40F0(v0[14], &qword_280881AD8, &qword_27237CB40);
    }

    else
    {
      v20 = v0[16];
      v19 = v0[17];
      v21 = v0[15];
      (*(v20 + 32))(v19, v0[14], v21);
      sub_272377C7C();
      (*(v20 + 8))(v19, v21);
    }

    v22 = v0[11];
    v23 = v0[12];
    v25 = v0[9];
    v24 = v0[10];
    v26 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v25 + v26, v24, &qword_280881AD0, &unk_27237CB30);
    v27 = (*(v23 + 48))(v24, 1, v22);
    v29 = v0[20];
    v28 = v0[21];
    v30 = v0[19];
    if (v27 == 1)
    {
      v31 = v0[10];
      (*(v29 + 8))(v0[21], v0[19]);
      sub_2721F40F0(v31, &qword_280881AD0, &unk_27237CB30);
    }

    else
    {
      v33 = v0[12];
      v32 = v0[13];
      v34 = v0[11];
      (*(v33 + 32))(v32, v0[10], v34);
      sub_272377C7C();
      (*(v33 + 8))(v32, v34);
      (*(v29 + 8))(v28, v30);
    }

    v35 = v0[21];
    v37 = v0[17];
    v36 = v0[18];
    v39 = v0[13];
    v38 = v0[14];
    v40 = v0[10];
    v41 = v0[8];
    sub_272377F6C();

    v14 = v0[1];
  }

  return v14();
}

void *sub_27221EE40(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v7 frameCapacity:a1];
    if (v9)
    {
      v10 = v9;
      [v9 setFrameLength_];
      v11 = [v10 int16ChannelData];
      if (v11)
      {
        v12 = a1 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = 0;
        do
        {
          *(*v11 + v13) = 0;
          v13 += 2;
        }

        while (2 * a1 != v13);
      }
    }

    else
    {
      v10 = 0x8000000272389140;
      sub_2722032B4();
      swift_allocError();
      *v19 = 0xD000000000000019;
      v19[1] = 0x8000000272389140;
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_2722C3774();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Failed to create audio format", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = 0x8000000272389120;
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD00000000000001DLL;
    v18[1] = 0x8000000272389120;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_27221F0E8(char a1)
{
  *(v2 + 3240) = v1;
  *(v2 + 3813) = a1;
  v3 = *(*(sub_2721F065C(&qword_2808819B8, &qword_27237C508) - 8) + 64) + 15;
  *(v2 + 3248) = swift_task_alloc();
  *(v2 + 3256) = swift_task_alloc();
  v4 = sub_2721F065C(&qword_280881B28, &qword_27237CF70);
  *(v2 + 3264) = v4;
  v5 = *(v4 - 8);
  *(v2 + 3272) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 3280) = swift_task_alloc();
  v7 = sub_2721F065C(&qword_280881AB8, &qword_27237CB10);
  *(v2 + 3288) = v7;
  v8 = *(v7 - 8);
  *(v2 + 3296) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 3304) = swift_task_alloc();
  *(v2 + 3312) = swift_task_alloc();
  *(v2 + 3320) = swift_task_alloc();
  v10 = sub_2721F065C(&qword_280881B30, &unk_27237CF78);
  *(v2 + 3328) = v10;
  v11 = *(v10 - 8);
  *(v2 + 3336) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 3344) = swift_task_alloc();
  v13 = sub_27237728C();
  *(v2 + 3352) = v13;
  v14 = *(v13 - 8);
  *(v2 + 3360) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 3368) = swift_task_alloc();
  *(v2 + 3376) = swift_task_alloc();
  *(v2 + 3384) = swift_task_alloc();
  v16 = *(*(sub_2721F065C(&qword_280881AD8, &qword_27237CB40) - 8) + 64) + 15;
  *(v2 + 3392) = swift_task_alloc();
  *(v2 + 3400) = swift_task_alloc();
  *(v2 + 3408) = swift_task_alloc();
  *(v2 + 3416) = swift_task_alloc();
  v17 = *(*(sub_2721F065C(&qword_280881AD0, &unk_27237CB30) - 8) + 64) + 15;
  *(v2 + 3424) = swift_task_alloc();
  *(v2 + 3432) = swift_task_alloc();
  *(v2 + 3440) = swift_task_alloc();
  *(v2 + 3448) = swift_task_alloc();
  v18 = sub_2721F065C(&qword_280881AB0, &unk_27237CB00);
  *(v2 + 3456) = v18;
  v19 = *(v18 - 8);
  *(v2 + 3464) = v19;
  v20 = *(v19 + 64) + 15;
  *(v2 + 3472) = swift_task_alloc();
  *(v2 + 3480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27221F484, 0, 0);
}

uint64_t sub_27221F484()
{
  v1 = *(v0 + 3240);
  v2 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount;
  *(v0 + 3809) = *(v1 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_featureCount);
  *(v0 + 3812) = 0;
  sub_27222378C();
  sub_272377A8C();
  sub_272377A8C();
  if (*(v0 + 3232) == *(v0 + 3200))
  {
    v3 = 40;
  }

  else
  {
    v3 = 80;
  }

  type metadata accessor for VACircularMatrixBuffer();
  *(v0 + 3488) = sub_272302780(66, v3);
  *(v0 + 3811) = *(v1 + v2);
  *(v0 + 3810) = 0;
  sub_272377A8C();
  sub_272377A8C();
  if (*(v0 + 3208) == *(v0 + 3216))
  {
    type metadata accessor for VAFeatureExtract();
    v4 = VAFeatureExtract.__allocating_init()();
  }

  else
  {
    type metadata accessor for VATinyASRFeatureExtract();
    v4 = VATinyASRFeatureExtract.__allocating_init()();
  }

  v5 = v4;
  *(v0 + 3496) = v4;
  v6 = *(v0 + 3240);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 3224) = MEMORY[0x277D84F90];
  sub_2722237E0((v0 + 528));
  v8 = *(v6 + OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_vadModel);
  *(v0 + 3504) = v8;
  if (!v8)
  {
    sub_27221AF24();
    swift_allocError();
    *v17 = 0xD000000000000010;
    v17[1] = 0x8000000272389330;
    swift_willThrow();
    goto LABEL_11;
  }

  v9 = *(v0 + 3464);
  v10 = *(v0 + 3456);
  v11 = *(v0 + 3448);
  v12 = *(v0 + 3240);
  v13 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  *(v0 + 3512) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v12 + v13, v11, &qword_280881AD0, &unk_27237CB30);
  v14 = *(v9 + 48);
  *(v0 + 3520) = v14;
  *(v0 + 3528) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v11, 1, v10) != 1)
  {
    v30 = *(v0 + 3480);
    v31 = *(v0 + 3464);
    v32 = *(v0 + 3456);
    v33 = *(v0 + 3448);
    v34 = *(v0 + 3240);
    v35 = *(v31 + 32);
    *(v0 + 3536) = v35;
    *(v0 + 3544) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v35(v30, v33, v32);
    v36 = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig;
    *(v0 + 3552) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_strideConfig;
    v37 = *(v34 + v36);
    v38 = *((*MEMORY[0x277D85000] & *v37) + 0xD0);

    v39 = v37;
    v40 = v38();

    *(v0 + 3560) = 24 * v40;
    if ((v40 * 24) >> 64 == (24 * v40) >> 63)
    {
      if (24 * v40 + 0x4000000000000000 >= 0)
      {
        v44 = *(v0 + 3240);
        *(v0 + 3568) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_stopProcessingActor;
        *(v0 + 3576) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputFeatureStreamBuilder;
        *(v0 + 3584) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_ingestionBufferActor;
        *(v0 + 3592) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_speechInProgress;
        *(v0 + 3600) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_minimumSilenceProbability;
        *(v0 + 3608) = OBJC_IVAR____TtC12VoiceActions16VASpeechDetector_outputAudioStream;
        swift_beginAccess();
        v45 = *(v0 + 608);
        *(v0 + 720) = *(v0 + 592);
        *(v0 + 736) = v45;
        v46 = *(v0 + 640);
        *(v0 + 752) = *(v0 + 624);
        *(v0 + 768) = v46;
        v47 = *(v0 + 544);
        *(v0 + 656) = *(v0 + 528);
        *(v0 + 672) = v47;
        v48 = *(v0 + 576);
        *(v0 + 688) = *(v0 + 560);
        *(v0 + 704) = v48;
        *(v0 + 3804) = 0;
        *(v0 + 3796) = 0;
        *(v0 + 3632) = v7;
        *(v0 + 3817) = 0;
        *(v0 + 3814) = 0;
        *(v0 + 3616) = 0u;
        v49 = *(*(v0 + 3240) + *(v0 + 3568));
        *(v0 + 3640) = v49;
        v50 = *v49 + 96;
        *(v0 + 3648) = *v50;
        *(v0 + 3656) = v50 & 0xFFFFFFFFFFFFLL | 0xC0DA000000000000;

        v41 = sub_27221FA50;
        v42 = v49;
        v43 = 0;

        return MEMORY[0x2822009F8](v41, v42, v43);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v41, v42, v43);
  }

  v15 = *(v0 + 3448);

  sub_2721F40F0(v15, &qword_280881AD0, &unk_27237CB30);
  sub_27221AF24();
  swift_allocError();
  *v16 = 0xD00000000000001CLL;
  v16[1] = 0x8000000272389350;
  swift_willThrow();

LABEL_11:

  v18 = *(v0 + 3480);
  v19 = *(v0 + 3472);
  v20 = *(v0 + 3448);
  v21 = *(v0 + 3440);
  v22 = *(v0 + 3432);
  v23 = *(v0 + 3424);
  v24 = *(v0 + 3416);
  v25 = *(v0 + 3408);
  v26 = *(v0 + 3400);
  v27 = *(v0 + 3392);
  v51 = *(v0 + 3384);
  v52 = *(v0 + 3376);
  v53 = *(v0 + 3368);
  v54 = *(v0 + 3344);
  v55 = *(v0 + 3320);
  v56 = *(v0 + 3312);
  v57 = *(v0 + 3304);
  v58 = *(v0 + 3280);
  v59 = *(v0 + 3256);
  v60 = *(v0 + 3248);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_27221FA50()
{
  v1 = *(v0 + 3656);
  v2 = *(v0 + 3640);
  *(v0 + 3818) = (*(v0 + 3648))() & 1;

  return MEMORY[0x2822009F8](sub_27221FAD0, 0, 0);
}

void sub_27221FAD0()
{
  if (*(v0 + 3818))
  {
    v1 = *(v0 + 3632);
    v2 = *(v0 + 3624);
    v3 = *(v0 + 3504);
    v4 = *(v0 + 3496);
    v5 = *(v0 + 3488);
    (*(*(v0 + 3464) + 8))(*(v0 + 3480), *(v0 + 3456));

    sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

LABEL_3:
    v6 = *(v0 + 3480);
    v7 = *(v0 + 3472);
    v8 = *(v0 + 3448);
    v9 = *(v0 + 3440);
    v10 = *(v0 + 3432);
    v11 = *(v0 + 3424);
    v12 = *(v0 + 3416);
    v13 = *(v0 + 3408);
    v14 = *(v0 + 3400);
    v48 = *(v0 + 3392);
    v49 = *(v0 + 3384);
    v50 = *(v0 + 3376);
    v51 = *(v0 + 3368);
    v52 = *(v0 + 3344);
    v53 = *(v0 + 3320);
    v54 = *(v0 + 3312);
    v55 = *(v0 + 3304);
    v56 = *(v0 + 3280);
    v58 = *(v0 + 3256);
    v61 = *(v0 + 3248);

    v15 = *(v0 + 8);

    v15();
    return;
  }

  v16 = *(v0 + 3616);
  *(v0 + 3664) = v16 + 1;
  if (v16 == -1)
  {
    __break(1u);
    return;
  }

  v17 = *(v0 + 3528);
  v18 = *(v0 + 3520);
  v19 = *(v0 + 3456);
  v20 = *(v0 + 3440);
  sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v20, &qword_280881AD0, &unk_27237CB30);
  LODWORD(v19) = v18(v20, 1, v19);
  sub_2721F40F0(v20, &qword_280881AD0, &unk_27237CB30);
  if (v19 == 1)
  {
    v21 = *(v0 + 3416);
    v22 = *(v0 + 3296);
    v23 = *(v0 + 3288);
    sub_2721F07F4(*(v0 + 3240) + *(v0 + 3576), v21, &qword_280881AD8, &qword_27237CB40);
    if ((*(v22 + 48))(v21, 1, v23) == 1)
    {
      v24 = *(v0 + 3624);
      v25 = *(v0 + 3416);
      v26 = *(v0 + 3368);
      v27 = *(v0 + 3360);
      v28 = *(v0 + 3352);

      sub_2721F40F0(v25, &qword_280881AD8, &qword_27237CB40);
      v29 = sub_2722C389C();
      (*(v27 + 16))(v26, v29, v28);
      v30 = sub_27237725C();
      v31 = sub_272377E7C();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 3504);
      v34 = *(v0 + 3496);
      v35 = *(v0 + 3488);
      v36 = *(v0 + 3480);
      v37 = *(v0 + 3464);
      v38 = *(v0 + 3368);
      v59 = v38;
      v62 = *(v0 + 3456);
      v39 = *(v0 + 3360);
      v40 = *(v0 + 3352);
      if (v32)
      {
        v57 = *(v0 + 3480);
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2721E4000, v30, v31, "output stream doesn't exist, stop predictions", v41, 2u);
        MEMORY[0x2743C69C0](v41, -1, -1);

        sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

        (*(v39 + 8))(v59, v40);
        (*(v37 + 8))(v57, v62);
      }

      else
      {

        sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

        (*(v39 + 8))(v59, v40);
        (*(v37 + 8))(v36, v62);
      }

      v47 = *(v0 + 3632);
      goto LABEL_3;
    }

    sub_2721F40F0(*(v0 + 3416), &qword_280881AD8, &qword_27237CB40);
  }

  v42 = *(*(v0 + 3240) + *(v0 + 3584));
  *(v0 + 3672) = v42;
  v43 = *(*v42 + 448);

  v60 = (v43 + *v43);
  v44 = v43[1];
  v45 = swift_task_alloc();
  *(v0 + 3680) = v45;
  *v45 = v0;
  v45[1] = sub_27222007C;
  v46 = *(v0 + 3813);

  (v60)(v46, 0, 1);
}

uint64_t sub_27222007C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 3680);
  v8 = *v3;
  v6[461] = v2;

  v9 = v6[459];
  if (v2)
  {
    v10 = v6[453];

    v11 = sub_272222558;
  }

  else
  {

    v6[462] = a2;
    v6[463] = a1;
    v11 = sub_2722201D8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2722201D8()
{
  v1 = *(v0 + 3704);
  if (v1)
  {
    v2 = *(v0 + 3696);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 3704);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 3528);
    v6 = *(v0 + 3520);
    v7 = *(v0 + 3456);
    v8 = *(v0 + 3432);
    sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v8, &qword_280881AD0, &unk_27237CB30);
    v9 = v6(v8, 1, v7);
    v10 = MEMORY[0x277D85000];
    if (v9 == 1)
    {
      sub_2721F40F0(*(v0 + 3432), &qword_280881AD0, &unk_27237CB30);
      v11 = *(v0 + 736);
      *(v0 + 848) = *(v0 + 720);
      *(v0 + 864) = v11;
      v12 = *(v0 + 768);
      *(v0 + 880) = *(v0 + 752);
      *(v0 + 896) = v12;
      v13 = *(v0 + 672);
      *(v0 + 784) = *(v0 + 656);
      *(v0 + 800) = v13;
      v14 = *(v0 + 704);
      *(v0 + 816) = *(v0 + 688);
      *(v0 + 832) = v14;
      v15 = *(v0 + 3632);
LABEL_39:
      LODWORD(v88) = *(v0 + 3815);
      goto LABEL_40;
    }

    v35 = *(v0 + 3592);
    v36 = *(v0 + 3552);
    v37 = *(v0 + 3544);
    v38 = *(v0 + 3240);
    (*(v0 + 3536))(*(v0 + 3472), *(v0 + 3432), *(v0 + 3456));
    v39 = *(v38 + v35);
    v40 = *(v38 + v36);
    v41 = *((*v10 & *v40) + 0xD0);
    if (v39 == 1)
    {
      v432 = v2;
      if (*(v0 + 3817) != 1)
      {
        v123 = *(v0 + 3664);

        v124 = v40;
        v125 = v41();

        v126 = sub_272222744(v125, v3);
        v127 = sub_272223918(v126);

        v128 = *(v0 + 3472);
        v129 = *(v0 + 3464);
        v130 = *(v0 + 3456);
        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v123, 3) < 0xAAAAAAAAAAAAAABuLL)
        {
          v88 = *(v129 + 8);
          v184 = v127;
          (v88)(v128, v130);
          sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

          *(v0 + 2576) = v184;
          v2 = v432;
          *(v0 + 2584) = v432;
          *(v0 + 2592) = 0;
          *(v0 + 2594) = 1;
          *(v0 + 2600) = 0;
          *(v0 + 2608) = 1;
          *(v0 + 2616) = 0;
          *(v0 + 2624) = 1;
          *(v0 + 2632) = 0;
          *(v0 + 2640) = 1;
          *(v0 + 2648) = 0;
          *(v0 + 2656) = 1;
          *(v0 + 2664) = 0;
          *(v0 + 2672) = 1;
          *(v0 + 2680) = 0;
          *(v0 + 2688) = 1;
          *(v0 + 2692) = 0;
          *(v0 + 2696) = 1;
          *(v0 + 2697) = 0;
          *(v0 + 2700) = 0;
          nullsub_1(v0 + 2576);
          LODWORD(v88) = 0;
          v185 = *(v0 + 2656);
          *(v0 + 848) = *(v0 + 2640);
          *(v0 + 864) = v185;
          v186 = *(v0 + 2688);
          *(v0 + 880) = *(v0 + 2672);
          *(v0 + 896) = v186;
          v187 = *(v0 + 2592);
          *(v0 + 784) = *(v0 + 2576);
          *(v0 + 800) = v187;
          v135 = *(v0 + 2608);
          v136 = *(v0 + 2624);
        }

        else
        {
          v131 = *(v0 + 3344);
          v88 = *(v0 + 3336);
          v443 = *(v0 + 3328);
          *(v0 + 2704) = v127;
          *(v0 + 2712) = v432;
          *(v0 + 2720) = 0;
          *(v0 + 2722) = 1;
          *(v0 + 2728) = 0;
          *(v0 + 2736) = 1;
          *(v0 + 2744) = 0;
          *(v0 + 2752) = 1;
          *(v0 + 2760) = 0;
          *(v0 + 2768) = 1;
          *(v0 + 2776) = 0;
          *(v0 + 2784) = 1;
          *(v0 + 2792) = 0;
          *(v0 + 2800) = 1;
          *(v0 + 2808) = 0;
          *(v0 + 2816) = 1;
          *(v0 + 2820) = 0;
          *(v0 + 2824) = 1;
          *(v0 + 2825) = 0;
          *(v0 + 2828) = 0;
          sub_272377C6C();
          (*(v88 + 8))(v131, v443);
          (*(v129 + 8))(v128, v130);
          v2 = v432;
          LODWORD(v88) = 0;
          v132 = *(v0 + 736);
          *(v0 + 848) = *(v0 + 720);
          *(v0 + 864) = v132;
          v133 = *(v0 + 768);
          *(v0 + 880) = *(v0 + 752);
          *(v0 + 896) = v133;
          v134 = *(v0 + 672);
          *(v0 + 784) = *(v0 + 656);
          *(v0 + 800) = v134;
          v135 = *(v0 + 688);
          v136 = *(v0 + 704);
        }

        *(v0 + 816) = v135;
        *(v0 + 832) = v136;
        v15 = *(v0 + 3632);
        v10 = MEMORY[0x277D85000];
LABEL_40:
        v89 = *(v0 + 3664);
        v90 = *(v0 + 3488);
        v91 = (*((*v10 & **(v0 + 3496)) + 0x170))(v3);

        (*(*v90 + 168))(v91);

        if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v89, 3) >= 0xAAAAAAAAAAAAAABuLL)
        {
          v93 = *(v0 + 864);
          *(v0 + 720) = *(v0 + 848);
          *(v0 + 736) = v93;
          v94 = *(v0 + 896);
          *(v0 + 752) = *(v0 + 880);
          *(v0 + 768) = v94;
          v95 = *(v0 + 800);
          *(v0 + 656) = *(v0 + 784);
          *(v0 + 672) = v95;
          v96 = *(v0 + 832);
          *(v0 + 688) = *(v0 + 816);
          *(v0 + 704) = v96;
          v97 = *(v0 + 3804);
          v55 = *(v0 + 3796);
          v98 = *(v0 + 3624);
          v99 = *(v0 + 3817);
          v100 = *(v0 + 3814);
          goto LABEL_42;
        }

        v442 = v88;
        v104 = *(v0 + 3576);
        v105 = *(v0 + 3408);
        v106 = *(v0 + 3296);
        v107 = *(v0 + 3288);
        v108 = *(v0 + 3240);
        v98 = (*(**(v0 + 3488) + 176))(v92);
        sub_2721F07F4(v108 + v104, v105, &qword_280881AD8, &qword_27237CB40);
        v109 = *(v106 + 48);
        v110 = v109(v105, 1, v107);
        v111 = *(v0 + 3408);
        if (v110 == 1)
        {
          sub_2721F40F0(*(v0 + 3408), &qword_280881AD8, &qword_27237CB40);
        }

        else
        {
          (*(*(v0 + 3296) + 32))(*(v0 + 3320), *(v0 + 3408), *(v0 + 3288));
          v112 = *(v0 + 3320);
          v113 = *(v0 + 3296);
          v114 = *(v0 + 3288);
          if (v442)
          {
            v115 = *(v0 + 3280);
            v116 = *(v0 + 3272);
            v117 = *(v0 + 3264);
            *(v0 + 3184) = v98;
            *(v0 + 3192) = 4;
            v118 = v114;
            sub_272377C6C();
            (*(v116 + 8))(v115, v117);
            (*(v113 + 8))(v112, v118);
LABEL_49:
            v100 = 0;
            LOBYTE(v88) = 0;
            v99 = 0;
            v119 = *(v0 + 864);
            *(v0 + 720) = *(v0 + 848);
            *(v0 + 736) = v119;
            v120 = *(v0 + 896);
            *(v0 + 752) = *(v0 + 880);
            *(v0 + 768) = v120;
            v121 = *(v0 + 800);
            *(v0 + 656) = *(v0 + 784);
            *(v0 + 672) = v121;
            v122 = *(v0 + 832);
            *(v0 + 688) = *(v0 + 816);
            *(v0 + 704) = v122;
            v97 = *(v0 + 3804);
            v55 = *(v0 + 3796);
            v98 = *(v0 + 3624);
            goto LABEL_42;
          }

          (*(v113 + 8))(*(v0 + 3320), v114);
        }

        v137 = *(v0 + 3688);
        (*(**(v0 + 3504) + 128))(v98);
        if (v137)
        {
          v138 = *(v0 + 3624);
          v139 = *(v0 + 3504);
          v140 = *(v0 + 3496);
          v141 = *(v0 + 3488);
          (*(*(v0 + 3464) + 8))(*(v0 + 3480), *(v0 + 3456));

          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);

LABEL_57:

          v149 = *(v0 + 3480);
          v150 = *(v0 + 3472);
          v151 = *(v0 + 3448);
          v152 = *(v0 + 3440);
          v153 = *(v0 + 3432);
          v154 = *(v0 + 3424);
          v155 = *(v0 + 3416);
          v156 = *(v0 + 3408);
          v157 = *(v0 + 3400);
          v158 = *(v0 + 3392);
          v403 = *(v0 + 3384);
          v406 = *(v0 + 3376);
          v409 = *(v0 + 3368);
          v412 = *(v0 + 3344);
          v414 = *(v0 + 3320);
          v416 = *(v0 + 3312);
          v418 = *(v0 + 3304);
          v422 = *(v0 + 3280);
          v428 = *(v0 + 3256);
          v435 = *(v0 + 3248);

          v68 = *(v0 + 8);
          goto LABEL_58;
        }

        if (*(v0 + 3814))
        {
          v142 = *(v0 + 3624);
          v143 = *(v0 + 3504);
          v144 = *(v0 + 3496);
          v145 = *(v0 + 3488);
          v434 = *(v0 + 3480);
          v146 = *(v0 + 3464);
          v147 = *(v0 + 3456);

          sub_27221AF24();
          swift_allocError();
          *v148 = 0xD000000000000040;
          v148[1] = 0x80000002723893D0;
          swift_willThrow();

          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
          (*(v146 + 8))(v434, v147);
          goto LABEL_57;
        }

        v188 = (*(**(v0 + 3240) + 712))(*(*(v0 + 3240) + *(v0 + 3600)));
        v190 = v189;
        v192 = v191;

        if (v188)
        {
          v193 = *(v0 + 3608);
          v194 = *(v0 + 3256);
          v195 = *(v0 + 3240);
          *(v195 + *(v0 + 3592)) = 1;
          sub_2721F07F4(v195 + v193, v194, &qword_2808819B8, &qword_27237C508);
          v196 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
          if ((*(*(v196 - 8) + 48))(v194, 1, v196) == 1)
          {
            v197 = *(v0 + 3576);
            v198 = *(v0 + 3400);
            v199 = *(v0 + 3288);
            v200 = *(v0 + 3240);
            sub_2721F40F0(*(v0 + 3256), &qword_2808819B8, &qword_27237C508);
            sub_2721F07F4(v200 + v197, v198, &qword_280881AD8, &qword_27237CB40);
            if (v109(v198, 1, v199) == 1)
            {
              v201 = *(v0 + 3400);

              sub_2721F40F0(v201, &qword_280881AD8, &qword_27237CB40);
              goto LABEL_49;
            }

            v275 = *(v0 + 3624);
            (*(*(v0 + 3296) + 32))(*(v0 + 3312), *(v0 + 3400), *(v0 + 3288));
            if (!v275)
            {
              v370 = *(v0 + 3504);
              v371 = *(v0 + 3496);
              v372 = *(v0 + 3488);
              v438 = *(v0 + 3480);
              v373 = *(v0 + 3464);
              v424 = *(v0 + 3312);
              v430 = *(v0 + 3456);
              v374 = *(v0 + 3296);
              v375 = *(v0 + 3288);

              sub_27221AF24();
              swift_allocError();
              *v376 = 0xD000000000000026;
              v376[1] = 0x80000002723893A0;
              swift_willThrow();

              sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
              (*(v374 + 8))(v424, v375);
              (*(v373 + 8))(v438, v430);
              goto LABEL_57;
            }

            v276 = *(v0 + 3312);
            v277 = *(v0 + 3296);
            v278 = *(v0 + 3288);
            v279 = *(v0 + 3280);
            v88 = *(v0 + 3272);
            v280 = *(v0 + 3264);
            *(v0 + 3168) = *(v0 + 3624);
            *(v0 + 3176) = 0;
            sub_272377C6C();
            v281 = *(v88 + 8);
            v281(v279, v280);
            *(v0 + 3152) = v98;
            *(v0 + 3160) = 1;
            sub_272377C6C();
            v281(v279, v280);
            (*(v277 + 8))(v276, v278);
            v100 = 0;
            LOBYTE(v88) = 0;
            v99 = 0;
            v98 = 0;
            v282 = *(v0 + 864);
            *(v0 + 720) = *(v0 + 848);
            *(v0 + 736) = v282;
            v283 = *(v0 + 896);
            *(v0 + 752) = *(v0 + 880);
            *(v0 + 768) = v283;
            v284 = *(v0 + 800);
            *(v0 + 656) = *(v0 + 784);
            *(v0 + 672) = v284;
            v285 = *(v0 + 832);
            *(v0 + 688) = *(v0 + 816);
            *(v0 + 704) = v285;
            v97 = *(v0 + 3804);
            v55 = *(v0 + 3796);
LABEL_42:
            v101 = *(v0 + 3664);
            *(v0 + 3804) = v97;
            *(v0 + 3796) = v55;
            *(v0 + 3632) = v15;
            *(v0 + 3624) = v98;
            *(v0 + 3616) = v101;
            *(v0 + 3817) = v99;
            *(v0 + 3815) = v88;
            *(v0 + 3814) = v100;
            v102 = *(*(v0 + 3240) + *(v0 + 3568));
            *(v0 + 3640) = v102;
            v103 = *v102 + 96;
            *(v0 + 3648) = *v103;
            *(v0 + 3656) = v103 & 0xFFFFFFFFFFFFLL | 0xC0DA000000000000;

            v48 = sub_27221FA50;
            v49 = v102;
            v50 = 0;

            return MEMORY[0x2822009F8](v48, v49, v50);
          }

          v216 = *(v0 + 3560);
          v217 = *(v0 + 3256);

          sub_2721F40F0(v217, &qword_2808819B8, &qword_27237C508);
          v218 = sub_272223918(v15);

          *(v0 + 3224) = MEMORY[0x277D84F90];
          v423 = v218;
          if ([v218 frameLength] == 2 * v216)
          {
            v219 = 24;
          }

          else
          {
            v219 = 0;
          }

          v48 = type metadata accessor for VARequestContext(0);
          v444 = v190;
          if (!__OFADD__(v219, v190))
          {
            v220 = *(v0 + 3552);
            v221 = *(v0 + 3240);
            v222 = (v219 + v190);
            v223 = *(v221 + v220);
            v224 = MEMORY[0x277D85000];
            v225 = *((*MEMORY[0x277D85000] & *v223) + 0x1B0);
            v226 = v223;
            v227 = v225();

            v228 = *(v221 + v220);
            v229 = *((*v224 & *v228) + 0xA0);
            v230 = v228;
            v231 = v229();

            v48 = sub_2722325EC(v2, v227 * v222 / v231);
            v429 = v48;
            *(v0 + 3712) = 1;
            *(v0 + 3864) = 1;
            *(v0 + 3728) = 0;
            *(v0 + 3720) = 1;
            v232 = v219 + 24 - v444;
            if (!__OFSUB__(v219 + 24, v444))
            {
              if ((v232 & 0x8000000000000000) == 0)
              {
                v233 = *(*(v0 + 3240) + *(v0 + 3552));
                v234 = *((*v224 & *v233) + 0xD0);
                v235 = v233;
                v236 = v234();

                if ((v236 & 0x8000000000000000) == 0)
                {
                  if (is_mul_ok(v232, v236))
                  {
                    v88 = v2;
                    v237 = v232 * v236;
                    v238 = *(v0 + 3552);
                    v239 = *(v0 + 3240);
                    *(v0 + 3880) = 0;
                    v445 = v237;
                    v240 = v237;
                    v241 = *(v239 + v238);
                    v242 = *((*v224 & *v241) + 0xA0);
                    v243 = v241;
                    v244 = v242();

                    v245 = v240 / v244;
                    *(v0 + 3760) = 0;
                    *(v0 + 3848) = 0;
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (Strong)
                    {
                      v247 = Strong;
                      if ([Strong respondsToSelector_])
                      {
                        LODWORD(v249) = *(*(v0 + 3240) + *(v0 + 3600));
                        LODWORD(v248) = v192;
                        [v247 didDetectStartOfSpeechWithProbability:v429 threshold:v248 hostTime:v249];
                      }

                      swift_unknownObjectRelease();
                    }

                    v377 = *(v0 + 3456);
                    v379 = *(v0 + 3480);
                    v250 = *(v0 + 3344);
                    v251 = *(v0 + 3336);
                    v383 = *(v0 + 3328);
                    *(v0 + 2064) = v423;
                    *(v0 + 2072) = v88;
                    *(v0 + 2080) = 1;
                    *(v0 + 2082) = 0;
                    *(v0 + 2088) = v429;
                    v252 = *(v0 + 3728);
                    *(v0 + 2096) = v252;
                    *(v0 + 2104) = 0;
                    v253 = *(v0 + 3720);
                    *(v0 + 2112) = v253;
                    *(v0 + 2120) = v445;
                    v381 = *(v0 + 3880);
                    *(v0 + 2128) = v381;
                    *(v0 + 2136) = v245;
                    v385 = *(v0 + 3760);
                    *(v0 + 2144) = v385;
                    *(v0 + 2152) = 0;
                    v386 = *(v0 + 3712);
                    *(v0 + 2160) = v386;
                    *(v0 + 2168) = 0;
                    v389 = *(v0 + 3864);
                    *(v0 + 2176) = v389;
                    *(v0 + 2180) = v192;
                    v391 = *(v0 + 3848);
                    *(v0 + 2184) = v391;
                    *(v0 + 2185) = 0;
                    *(v0 + 2188) = 0;
                    v254 = *(v0 + 2064);
                    v255 = *(v0 + 2080);
                    v256 = *(v0 + 2112);
                    *(v0 + 2224) = *(v0 + 2096);
                    *(v0 + 2240) = v256;
                    *(v0 + 2192) = v254;
                    *(v0 + 2208) = v255;
                    v257 = *(v0 + 2128);
                    v258 = *(v0 + 2144);
                    v259 = *(v0 + 2176);
                    *(v0 + 2288) = *(v0 + 2160);
                    *(v0 + 2304) = v259;
                    *(v0 + 2256) = v257;
                    *(v0 + 2272) = v258;
                    sub_272218D40(v0 + 2064, v0 + 2320);
                    sub_272377C6C();
                    (*(v251 + 8))(v250, v383);
                    *(v0 + 1808) = v423;
                    *(v0 + 1816) = v88;
                    *(v0 + 1824) = 1;
                    *(v0 + 1826) = 0;
                    *(v0 + 1827) = *(v0 + 3777);
                    *(v0 + 1831) = *(v0 + 3781);
                    *(v0 + 1832) = v429;
                    *(v0 + 1840) = v252;
                    *(v0 + 1841) = *(v0 + 3721);
                    *(v0 + 1844) = *(v0 + 3724);
                    *(v0 + 1848) = 0;
                    *(v0 + 1856) = v253;
                    v260 = *(v0 + 3737);
                    *(v0 + 1860) = *(v0 + 3740);
                    *(v0 + 1857) = v260;
                    *(v0 + 1864) = v445;
                    *(v0 + 1872) = v381;
                    *(v0 + 1873) = *(v0 + 3753);
                    *(v0 + 1876) = *(v0 + 3756);
                    *(v0 + 1880) = v245;
                    *(v0 + 1888) = v385;
                    *(v0 + 1889) = *(v0 + 3769);
                    *(v0 + 1892) = *(v0 + 3772);
                    *(v0 + 1896) = 0;
                    *(v0 + 1904) = v386;
                    v261 = *(v0 + 3145);
                    *(v0 + 1908) = *(v0 + 3148);
                    *(v0 + 1905) = v261;
                    *(v0 + 1912) = 0;
                    *(v0 + 1920) = v389;
                    *(v0 + 1921) = *(v0 + 3801);
                    *(v0 + 1923) = *(v0 + 3803);
                    *(v0 + 1924) = v192;
                    *(v0 + 1928) = v391;
                    *(v0 + 1929) = 0;
                    *(v0 + 1932) = 0;
                    sub_272218F7C(v0 + 1808);
                    v100 = 0;
                    LOBYTE(v88) = 0;
                    v99 = 0;
                    v262 = *(v0 + 864);
                    *(v0 + 720) = *(v0 + 848);
                    *(v0 + 736) = v262;
                    v263 = *(v0 + 896);
                    *(v0 + 752) = *(v0 + 880);
                    *(v0 + 768) = v263;
                    v264 = *(v0 + 800);
                    *(v0 + 656) = *(v0 + 784);
                    *(v0 + 672) = v264;
                    v265 = *(v0 + 832);
                    *(v0 + 688) = *(v0 + 816);
                    *(v0 + 704) = v265;
                    v97 = *(v0 + 3804);
                    v55 = *(v0 + 3796);
                    v98 = *(v0 + 3624);
                    v15 = MEMORY[0x277D84F90];
                    goto LABEL_42;
                  }

LABEL_123:
                  __break(1u);
                  return MEMORY[0x2822009F8](v48, v49, v50);
                }

LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if ((v188 & 0x100) != 0)
        {
          v436 = v2;
          v266 = (v0 + 1552);
          v267 = *(v0 + 3248);
          sub_2721F07F4(*(v0 + 3240) + *(v0 + 3608), v267, &qword_2808819B8, &qword_27237C508);
          v268 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
          if ((*(*(v268 - 8) + 48))(v267, 1, v268) == 1)
          {
            v269 = *(v0 + 3576);
            v270 = *(v0 + 3392);
            v271 = *(v0 + 3288);
            v272 = *(v0 + 3240);
            sub_2721F40F0(*(v0 + 3248), &qword_2808819B8, &qword_27237C508);
            sub_2721F07F4(v272 + v269, v270, &qword_280881AD8, &qword_27237CB40);
            v273 = v109(v270, 1, v271);
            v274 = *(v0 + 3392);
            if (v273 == 1)
            {

              sub_2721F40F0(v274, &qword_280881AD8, &qword_27237CB40);
            }

            else
            {
              v324 = *(v0 + 3304);
              v325 = *(v0 + 3296);
              v326 = *(v0 + 3288);
              v327 = *(v0 + 3280);
              v328 = *(v0 + 3272);
              v446 = *(v0 + 3264);
              (*(v325 + 32))(v324, v274, v326);
              *(v0 + 3136) = v98;
              *(v0 + 3144) = 3;
              sub_272377C6C();
              (*(v328 + 8))(v327, v446);
              (*(v325 + 8))(v324, v326);
            }

            v329 = *(v0 + 864);
            *(v0 + 1616) = *(v0 + 848);
            *(v0 + 1632) = v329;
            v330 = *(v0 + 896);
            *(v0 + 1648) = *(v0 + 880);
            *(v0 + 1664) = v330;
            v331 = *(v0 + 800);
            *v266 = *(v0 + 784);
            *(v0 + 1568) = v331;
            v332 = *(v0 + 816);
            v333 = *(v0 + 832);
          }

          else
          {
            v301 = *(v0 + 3248);

            sub_2721F40F0(v301, &qword_2808819B8, &qword_27237C508);
            v302 = *(v0 + 864);
            *(v0 + 1744) = *(v0 + 848);
            *(v0 + 1760) = v302;
            v303 = *(v0 + 896);
            *(v0 + 1776) = *(v0 + 880);
            *(v0 + 1792) = v303;
            v304 = *(v0 + 800);
            *(v0 + 1680) = *(v0 + 784);
            *(v0 + 1696) = v304;
            v305 = *(v0 + 832);
            *(v0 + 1712) = *(v0 + 816);
            *(v0 + 1728) = v305;
            if (sub_272219874((v0 + 1680)) == 1)
            {
              v306 = *(v0 + 3624);
              v307 = *(v0 + 3504);
              v308 = *(v0 + 3496);
              v309 = *(v0 + 3488);
              v310 = *(v0 + 3480);
              v311 = *(v0 + 3464);
              v312 = *(v0 + 3456);

              sub_27221AF24();
              swift_allocError();
              *v313 = 0xD000000000000026;
              v313[1] = 0x8000000272389370;
              swift_willThrow();

              (*(v311 + 8))(v310, v312);
              goto LABEL_57;
            }

            v334 = *(v0 + 3552);
            v335 = *(v0 + 3240);
            type metadata accessor for VARequestContext(0);
            v336 = v190;
            v337 = *(v335 + v334);
            v338 = MEMORY[0x277D85000];
            v339 = *((*MEMORY[0x277D85000] & *v337) + 0x1B0);
            v340 = v337;
            v341 = v339();

            v342 = *(v335 + v334);
            v343 = *((*v338 & *v342) + 0xA0);
            v344 = v342;
            v345 = v343();

            v346 = sub_2722325EC(v436, v341 * v336 / v345);
            v347 = *(v0 + 1680);
            *(v0 + 3800) = 1;
            *(v0 + 3776) = 1;
            *(v0 + 3752) = 1;
            *(v0 + 3744) = 1;
            *(v0 + 3832) = 1;
            *(v0 + 3816) = 0;
            *(v0 + 3736) = 0;
            v348 = swift_unknownObjectWeakLoadStrong();
            if (v348)
            {
              v349 = v348;
              if ([v348 respondsToSelector_])
              {
                LODWORD(v351) = *(*(v0 + 3240) + *(v0 + 3600));
                LODWORD(v350) = v192;
                [v349 didDetectEndOfSpeechWithProbability:v346 threshold:v350 hostTime:v351];
              }

              swift_unknownObjectRelease();
            }

            v393 = *(v0 + 3456);
            v395 = *(v0 + 3480);
            v352 = *(v0 + 3344);
            v353 = *(v0 + 3336);
            v399 = *(v0 + 3328);
            *(v0 + 2960) = v347;
            *(v0 + 2968) = v436;
            *(v0 + 2976) = 256;
            *(v0 + 2978) = 0;
            *(v0 + 2984) = 0;
            v354 = *(v0 + 3832);
            *(v0 + 2992) = v354;
            *(v0 + 3000) = v346;
            v398 = *(v0 + 3816);
            *(v0 + 3008) = v398;
            *(v0 + 3016) = 0;
            v410 = *(v0 + 3800);
            *(v0 + 3024) = v410;
            *(v0 + 3032) = 0;
            v407 = *(v0 + 3776);
            *(v0 + 3040) = v407;
            *(v0 + 3048) = 0;
            v401 = *(v0 + 3752);
            *(v0 + 3056) = v401;
            *(v0 + 3064) = 0;
            v397 = *(v0 + 3744);
            *(v0 + 3072) = v397;
            *(v0 + 3076) = v192;
            v355 = *(v0 + 3736);
            *(v0 + 3080) = v355;
            *(v0 + 3081) = 0;
            *(v0 + 3084) = 0;
            v356 = *(v0 + 2960);
            v357 = *(v0 + 2976);
            v358 = *(v0 + 3008);
            *(v0 + 304) = *(v0 + 2992);
            *(v0 + 320) = v358;
            *(v0 + 272) = v356;
            *(v0 + 288) = v357;
            v359 = *(v0 + 3024);
            v360 = *(v0 + 3040);
            v361 = *(v0 + 3072);
            *(v0 + 368) = *(v0 + 3056);
            *(v0 + 384) = v361;
            *(v0 + 336) = v359;
            *(v0 + 352) = v360;
            sub_272218D40(v0 + 2960, v0 + 16);
            sub_272377C6C();
            (*(v353 + 8))(v352, v399);
            *(v0 + 2832) = v347;
            *(v0 + 2840) = v436;
            *(v0 + 2848) = 256;
            *(v0 + 2850) = 0;
            *(v0 + 2851) = *(v0 + 3787);
            *(v0 + 2855) = *(v0 + 3791);
            *(v0 + 2856) = 0;
            *(v0 + 2864) = v354;
            *(v0 + 2865) = *(v0 + 3729);
            *(v0 + 2868) = *(v0 + 3732);
            *(v0 + 2872) = v346;
            *(v0 + 2880) = v398;
            v362 = *(v0 + 3193);
            *(v0 + 2884) = *(v0 + 3196);
            *(v0 + 2881) = v362;
            *(v0 + 2888) = 0;
            *(v0 + 2896) = v410;
            *(v0 + 2904) = 0;
            *(v0 + 2912) = v407;
            *(v0 + 2920) = 0;
            *(v0 + 2928) = v401;
            *(v0 + 2936) = 0;
            *(v0 + 2944) = v397;
            *(v0 + 2948) = v192;
            *(v0 + 2952) = v355;
            *(v0 + 2953) = 0;
            *(v0 + 2956) = 0;
            sub_272218F7C(v0 + 2832);
            v363 = *(v0 + 608);
            *(v0 + 1616) = *(v0 + 592);
            *(v0 + 1632) = v363;
            v364 = *(v0 + 640);
            *(v0 + 1648) = *(v0 + 624);
            *(v0 + 1664) = v364;
            v365 = *(v0 + 544);
            *v266 = *(v0 + 528);
            *(v0 + 1568) = v365;
            v332 = *(v0 + 560);
            v333 = *(v0 + 576);
          }

          *(v0 + 1584) = v332;
          *(v0 + 1600) = v333;
          v366 = *(v0 + 1632);
          *(v0 + 720) = *(v0 + 1616);
          *(v0 + 736) = v366;
          v367 = *(v0 + 1664);
          *(v0 + 752) = *(v0 + 1648);
          *(v0 + 768) = v367;
          v368 = *(v0 + 1568);
          *(v0 + 656) = *v266;
          *(v0 + 672) = v368;
          v369 = *(v0 + 1600);
          *(v0 + 688) = *(v0 + 1584);
          *(v0 + 704) = v369;
          v97 = *(v0 + 3804);
          v55 = *(v0 + 3796);
          v100 = 1;
          LOBYTE(v88) = 1;
          v99 = 1;
          v98 = *(v0 + 3624);
          goto LABEL_42;
        }

        v88 = v0 + 1040;
        v202 = *(v0 + 864);
        *(v0 + 976) = *(v0 + 848);
        *(v0 + 992) = v202;
        v203 = *(v0 + 896);
        *(v0 + 1008) = *(v0 + 880);
        *(v0 + 1024) = v203;
        v204 = *(v0 + 800);
        *(v0 + 912) = *(v0 + 784);
        *(v0 + 928) = v204;
        v205 = *(v0 + 832);
        *(v0 + 944) = *(v0 + 816);
        *(v0 + 960) = v205;
        if (sub_272219874((v0 + 912)) == 1)
        {
          v206 = *(v0 + 3528);
          v207 = *(v0 + 3520);
          v208 = *(v0 + 3456);
          v209 = *(v0 + 3424);
          sub_2721F07F4(*(v0 + 3240) + *(v0 + 3512), v209, &qword_280881AD0, &unk_27237CB30);
          if (v207(v209, 1, v208) != 1)
          {
            v314 = *(v0 + 3624);
            v315 = *(v0 + 3424);

            sub_2721F40F0(v315, &qword_280881AD0, &unk_27237CB30);
            v316 = *(v0 + 864);
            *(v0 + 1104) = *(v0 + 848);
            *(v0 + 1120) = v316;
            v317 = *(v0 + 896);
            *(v0 + 1136) = *(v0 + 880);
            *(v0 + 1152) = v317;
            v318 = *(v0 + 800);
            *v88 = *(v0 + 784);
            *(v0 + 1056) = v318;
            v319 = *(v0 + 832);
            *(v0 + 1072) = *(v0 + 816);
            *(v0 + 1088) = v319;
            goto LABEL_102;
          }

          v210 = *(v0 + 3424);

          sub_2721F40F0(v210, &qword_280881AD0, &unk_27237CB30);
          v211 = *(v0 + 864);
          *(v0 + 1104) = *(v0 + 848);
          *(v0 + 1120) = v211;
          v212 = *(v0 + 896);
          *(v0 + 1136) = *(v0 + 880);
          *(v0 + 1152) = v212;
          v213 = *(v0 + 800);
          *v88 = *(v0 + 784);
          *(v0 + 1056) = v213;
          v214 = *(v0 + 816);
          v215 = *(v0 + 832);
        }

        else
        {
          v286 = *(v0 + 3480);
          v287 = *(v0 + 3456);
          v288 = *(v0 + 3344);
          v289 = *(v0 + 3336);
          v437 = *(v0 + 3328);
          v290 = *(v0 + 864);
          *(v0 + 1232) = *(v0 + 848);
          *(v0 + 1248) = v290;
          v291 = *(v0 + 896);
          *(v0 + 1264) = *(v0 + 880);
          *(v0 + 1280) = v291;
          v292 = *(v0 + 800);
          *(v0 + 1168) = *(v0 + 784);
          *(v0 + 1184) = v292;
          v293 = *(v0 + 832);
          *(v0 + 1200) = *(v0 + 816);
          *(v0 + 1216) = v293;
          sub_272218D40(v0 + 1168, v0 + 1296);

          v294 = *(v0 + 992);
          *(v0 + 1488) = *(v0 + 976);
          *(v0 + 1504) = v294;
          v295 = *(v0 + 1024);
          *(v0 + 1520) = *(v0 + 1008);
          *(v0 + 1536) = v295;
          v296 = *(v0 + 928);
          *(v0 + 1424) = *(v0 + 912);
          *(v0 + 1440) = v296;
          v297 = *(v0 + 960);
          *(v0 + 1456) = *(v0 + 944);
          *(v0 + 1472) = v297;
          sub_272377C6C();
          sub_2721F40F0(v0 + 784, &qword_280881A88, &qword_27237CA70);
          (*(v289 + 8))(v288, v437);
          v298 = *(v0 + 608);
          *(v0 + 1104) = *(v0 + 592);
          *(v0 + 1120) = v298;
          v299 = *(v0 + 640);
          *(v0 + 1136) = *(v0 + 624);
          *(v0 + 1152) = v299;
          v300 = *(v0 + 544);
          *v88 = *(v0 + 528);
          *(v0 + 1056) = v300;
          v214 = *(v0 + 560);
          v215 = *(v0 + 576);
        }

        *(v0 + 1072) = v214;
        *(v0 + 1088) = v215;
        v98 = *(v0 + 3624);
LABEL_102:
        v100 = 0;
        v320 = *(v0 + 1120);
        *(v0 + 720) = *(v0 + 1104);
        *(v0 + 736) = v320;
        v321 = *(v0 + 1152);
        *(v0 + 752) = *(v0 + 1136);
        *(v0 + 768) = v321;
        v322 = *(v0 + 1056);
        *(v0 + 656) = *v88;
        *(v0 + 672) = v322;
        v323 = *(v0 + 1088);
        *(v0 + 688) = *(v0 + 1072);
        *(v0 + 704) = v323;
        v97 = *(v0 + 3804);
        v55 = *(v0 + 3796);
        v99 = *(v0 + 3817);
        LOBYTE(v88) = v442;
        goto LABEL_42;
      }

      v42 = *(v0 + 3804);
      v43 = v40;
      v44 = v41();

      v45 = sub_272222744(v44, v3);
      v46 = sub_272223918(v45);

      *(v0 + 3808) = 1;
      *(v0 + 3824) = 1;
      *(v0 + 3840) = 1;
      *(v0 + 3856) = 1;
      *(v0 + 3872) = 1;
      *(v0 + 3768) = 1;
      *(v0 + 3792) = 1;
      v47 = v46;
      v48 = [v47 frameLength];
      v51 = v42 + v48;
      if (!__CFADD__(v42, v48))
      {
        v52 = *(v0 + 3560);
        v440 = v52 >= v51;
        v426 = v47;
        if (v52 < v51)
        {
          v160 = *(v0 + 3376);
          v161 = *(v0 + 3360);
          v162 = *(v0 + 3352);

          v163 = sub_2722C389C();
          (*(v161 + 16))(v160, v163, v162);
          v164 = sub_27237725C();
          v165 = sub_272377E7C();
          if (os_log_type_enabled(v164, v165))
          {
            v166 = *(v0 + 3796);
            v167 = swift_slowAlloc();
            *v167 = 67109120;
            *(v167 + 4) = v166;
            _os_log_impl(&dword_2721E4000, v164, v165, "SpeechDetector: Audio stopped after sending %u bytes after speech end", v167, 8u);
            MEMORY[0x2743C69C0](v167, -1, -1);
          }

          v168 = *(v0 + 3376);
          v169 = *(v0 + 3360);
          v170 = *(v0 + 3352);
          v171 = *(v0 + 3240);

          (*(v169 + 8))(v168, v170);
          v172 = swift_unknownObjectWeakLoadStrong();
          if (v172)
          {
            v173 = v172;
            if ([v172 respondsToSelector_])
            {
              [v173 endOfAudioWithByteCountAfterEndOfSpeech_];
            }

            swift_unknownObjectRelease();
          }

          v420 = 0;
          v55 = 0;
          *(*(v0 + 3240) + *(v0 + 3592)) = 0;
          v57 = *(v0 + 3796);
          v56 = 1;
          goto LABEL_68;
        }

        v53 = *(v0 + 3804);
        v54 = [v47 frameLength];

        v55 = v53 + v54;
        if (!__CFADD__(v53, v54))
        {
          v56 = 0;
          v57 = 0;
          v420 = *(v0 + 3814);
LABEL_68:
          v378 = v56;
          v380 = v57;
          v382 = *(v0 + 3456);
          v174 = *(v0 + 3344);
          v175 = *(v0 + 3336);
          v400 = *(v0 + 3328);
          v404 = *(v0 + 3472);
          v419 = *(v0 + 3464);
          *(v0 + 1936) = v426;
          *(v0 + 1944) = v2;
          *(v0 + 1952) = 0;
          *(v0 + 1954) = 0;
          *(v0 + 1955) = *(v0 + 3782);
          *(v0 + 1959) = *(v0 + 3786);
          *(v0 + 1960) = 0;
          v396 = *(v0 + 3768);
          *(v0 + 1968) = v396;
          *(v0 + 1969) = *(v0 + 3161);
          *(v0 + 1972) = *(v0 + 3164);
          *(v0 + 1976) = 0;
          v394 = *(v0 + 3792);
          *(v0 + 1984) = v394;
          *(v0 + 1985) = *(v0 + 3177);
          *(v0 + 1988) = *(v0 + 3180);
          *(v0 + 1992) = 0;
          v392 = *(v0 + 3808);
          *(v0 + 2000) = v392;
          *(v0 + 2004) = *(v0 + 3716);
          *(v0 + 2001) = *(v0 + 3713);
          *(v0 + 2008) = 0;
          v390 = *(v0 + 3824);
          *(v0 + 2016) = v390;
          *(v0 + 2020) = *(v0 + 3748);
          *(v0 + 2017) = *(v0 + 3745);
          *(v0 + 2024) = 0;
          v388 = *(v0 + 3840);
          *(v0 + 2032) = v388;
          *(v0 + 2036) = *(v0 + 3764);
          *(v0 + 2033) = *(v0 + 3761);
          *(v0 + 2040) = 0;
          v387 = *(v0 + 3856);
          *(v0 + 2048) = v387;
          *(v0 + 2051) = *(v0 + 3795);
          *(v0 + 2049) = *(v0 + 3793);
          *(v0 + 2052) = 0;
          v384 = *(v0 + 3872);
          *(v0 + 2056) = v384;
          *(v0 + 2057) = 1;
          *(v0 + 2058) = v56;
          *(v0 + 2060) = v57;
          v176 = *(v0 + 1936);
          v177 = *(v0 + 1952);
          v178 = *(v0 + 1984);
          *(v0 + 176) = *(v0 + 1968);
          *(v0 + 192) = v178;
          *(v0 + 144) = v176;
          *(v0 + 160) = v177;
          v179 = *(v0 + 2000);
          v180 = *(v0 + 2016);
          v181 = *(v0 + 2048);
          *(v0 + 240) = *(v0 + 2032);
          *(v0 + 256) = v181;
          *(v0 + 208) = v179;
          *(v0 + 224) = v180;
          sub_272218D40(v0 + 1936, v0 + 2448);
          sub_272377C6C();
          (*(v175 + 8))(v174, v400);
          *(v0 + 400) = v426;
          *(v0 + 408) = v2;
          *(v0 + 416) = 0;
          *(v0 + 418) = 0;
          *(v0 + 419) = *(v0 + 3782);
          *(v0 + 423) = *(v0 + 3786);
          *(v0 + 424) = 0;
          *(v0 + 432) = v396;
          *(v0 + 433) = *(v0 + 3161);
          *(v0 + 436) = *(v0 + 3164);
          *(v0 + 440) = 0;
          *(v0 + 448) = v394;
          v182 = *(v0 + 3177);
          *(v0 + 452) = *(v0 + 3180);
          *(v0 + 449) = v182;
          *(v0 + 456) = 0;
          *(v0 + 464) = v392;
          *(v0 + 465) = *(v0 + 3713);
          *(v0 + 468) = *(v0 + 3716);
          *(v0 + 472) = 0;
          *(v0 + 480) = v390;
          *(v0 + 481) = *(v0 + 3745);
          *(v0 + 484) = *(v0 + 3748);
          *(v0 + 488) = 0;
          *(v0 + 496) = v388;
          v183 = *(v0 + 3761);
          *(v0 + 500) = *(v0 + 3764);
          *(v0 + 497) = v183;
          *(v0 + 504) = 0;
          *(v0 + 512) = v387;
          *(v0 + 515) = *(v0 + 3795);
          *(v0 + 513) = *(v0 + 3793);
          *(v0 + 516) = 0;
          *(v0 + 520) = v384;
          *(v0 + 521) = 1;
          *(v0 + 522) = v378;
          *(v0 + 524) = v380;
          sub_272218F7C(v0 + 400);
          (*(v419 + 8))(v404, v382);
          v15 = *(v0 + 3632);
          v98 = *(v0 + 3624);
          LOBYTE(v88) = v440;
          v99 = v440;
          v97 = v55;
          v100 = v420;
          goto LABEL_42;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    else
    {
      v69 = v40;
      v70 = v41();

      if ((v70 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (v4 >= v70)
        {
          v71 = v4 - v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = *(v3 + 16);
        if (v72 >= v71 && v72 >= v4)
        {
          v73 = *(v0 + 3560);

          sub_27222291C(v74, v3 + 32, v71, (2 * v4) | 1);
          v15 = *(v0 + 3224);
          v75 = *(v15 + 2);
          if (v75 > 2 * v73)
          {
            v76 = *(v0 + 3560);
            v77 = v75 - 2 * v76;
            if (__OFSUB__(v75, 2 * v76))
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            if (v77)
            {
              if ((v77 & 0x8000000000000000) != 0)
              {
LABEL_116:
                __break(1u);
                goto LABEL_117;
              }

              v78 = 2 * v76;
              if (v75 < v77)
              {
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              v79 = *(v0 + 3224);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v78 > *(v15 + 3) >> 1)
              {
                if (v75 <= v78)
                {
                  v81 = v75 - v77;
                }

                else
                {
                  v81 = v75;
                }

                v15 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v81, 1, v15);
              }

              v82 = &v15[4 * v77 + 32];
              v83 = *(v15 + 2) - v77;
              memmove(v15 + 32, v82, 4 * v83);
              *(v15 + 2) = v83;
              *(v0 + 3224) = v15;
            }
          }

          (*(*(v0 + 3464) + 8))(*(v0 + 3472), *(v0 + 3456));
          v84 = *(v0 + 736);
          *(v0 + 848) = *(v0 + 720);
          *(v0 + 864) = v84;
          v85 = *(v0 + 768);
          *(v0 + 880) = *(v0 + 752);
          *(v0 + 896) = v85;
          v86 = *(v0 + 672);
          *(v0 + 784) = *(v0 + 656);
          *(v0 + 800) = v86;
          v87 = *(v0 + 704);
          *(v0 + 816) = *(v0 + 688);
          *(v0 + 832) = v87;
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_115;
  }

  v16 = *(v0 + 3624);
  v17 = *(v0 + 3384);
  v18 = *(v0 + 3360);
  v19 = *(v0 + 3352);

  v20 = sub_2722C389C();
  (*(v18 + 16))(v17, v20, v19);
  v21 = sub_27237725C();
  v22 = sub_272377E7C();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 3504);
  v25 = *(v0 + 3496);
  v26 = *(v0 + 3488);
  v27 = *(v0 + 3480);
  v28 = *(v0 + 3464);
  v29 = *(v0 + 3456);
  v30 = *(v0 + 3360);
  v31 = *(v0 + 3352);
  v431 = v31;
  v439 = *(v0 + 3384);
  if (v23)
  {
    v425 = *(v0 + 3456);
    v32 = *(v0 + 3480);
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2721E4000, v21, v22, "processing was stopped, stop predictions", v33, 2u);
    v34 = v33;
    v27 = v32;
    v29 = v425;
    MEMORY[0x2743C69C0](v34, -1, -1);
  }

  else
  {
  }

  sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);

  (*(v30 + 8))(v439, v431);
  (*(v28 + 8))(v27, v29);
  v58 = *(v0 + 3632);
  v59 = *(v0 + 3480);
  v60 = *(v0 + 3472);
  v61 = *(v0 + 3448);
  v62 = *(v0 + 3440);
  v63 = *(v0 + 3432);
  v64 = *(v0 + 3424);
  v65 = *(v0 + 3416);
  v66 = *(v0 + 3408);
  v67 = *(v0 + 3400);
  v402 = *(v0 + 3392);
  v405 = *(v0 + 3384);
  v408 = *(v0 + 3376);
  v411 = *(v0 + 3368);
  v413 = *(v0 + 3344);
  v415 = *(v0 + 3320);
  v417 = *(v0 + 3312);
  v421 = *(v0 + 3304);
  v427 = *(v0 + 3280);
  v433 = *(v0 + 3256);
  v441 = *(v0 + 3248);

  v68 = *(v0 + 8);
LABEL_58:

  return v68();
}

uint64_t sub_272222558()
{
  v1 = *(v0 + 3632);
  v2 = *(v0 + 3504);
  v3 = *(v0 + 3488);
  v4 = *(v0 + 3480);
  v5 = *(v0 + 3464);
  v6 = *(v0 + 3456);

  sub_2721F40F0(v0 + 656, &qword_280881A88, &qword_27237CA70);
  (*(v5 + 8))(v4, v6);

  v29 = *(v0 + 3688);
  v7 = *(v0 + 3480);
  v8 = *(v0 + 3472);
  v9 = *(v0 + 3448);
  v10 = *(v0 + 3440);
  v11 = *(v0 + 3432);
  v12 = *(v0 + 3424);
  v13 = *(v0 + 3416);
  v14 = *(v0 + 3408);
  v15 = *(v0 + 3400);
  v16 = *(v0 + 3392);
  v19 = *(v0 + 3384);
  v20 = *(v0 + 3376);
  v21 = *(v0 + 3368);
  v22 = *(v0 + 3344);
  v23 = *(v0 + 3320);
  v24 = *(v0 + 3312);
  v25 = *(v0 + 3304);
  v26 = *(v0 + 3280);
  v27 = *(v0 + 3256);
  v28 = *(v0 + 3248);

  v17 = *(v0 + 8);

  return v17();
}

unint64_t sub_272222744(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  result = sub_2722005AC(0, v4, 0);
  v6 = v16;
  v7 = *(a2 + 16);
  if (!v7)
  {

    return v6;
  }

  v8 = 0;
  v9 = 32;
  do
  {
    v11 = *(a2 + v9);
    v12 = *(v16 + 16);
    if (v12 < v3)
    {
      v10 = *(v16 + 24);
      if (v12 >= v10 >> 1)
      {
        result = sub_2722005AC((v10 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      *(v16 + 4 * v12 + 32) = v11;
    }

    else
    {
      if (v8 >= v12)
      {
        __break(1u);
        goto LABEL_27;
      }

      *(v16 + 4 * v8 + 32) = v11;
      if ((v8 + 1) < v3)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }
    }

    v9 += 4;
    --v7;
  }

  while (v7);

  if (!v8)
  {
    return v6;
  }

  v13 = *(v16 + 16);
  result = sub_2722005AC(0, v13, 0);
  if (v13 >= v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v14 = *(v16 + 16);
    if (v14 >= v8 && v14 >= v13)
    {

      sub_2722237F8(v15, v16 + 32, v8, (2 * v13) | 1);
      sub_2722237F8(v16, v16 + 32, 0, (2 * v8) | 1);
      return v5;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}