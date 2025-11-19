uint64_t sub_2274D1548()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_2274D164C, 0, 0);
}

uint64_t sub_2274D164C()
{
  v1 = v0[27] + 1;
  if (v1 == v0[26])
  {
    v2 = v0[14];

    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[27] = v1;
    sub_226E91B50(v0[25] + 40 * v1 + 32, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v10);
    v12 = *(v11 + 8);
    v16 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[28] = v14;
    *v14 = v0;
    v14[1] = sub_2274D1548;
    v15 = v0[14];

    return v16(&unk_2276886E8, v15, v10, v11);
  }
}

uint64_t sub_2274D1830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2274D1854, a3, 0);
}

uint64_t sub_2274D1854()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v2 + 112);
  v5 = sub_226E9D1B4();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + 16) = sub_2274DD634;
  *(v7 + 24) = v6;

  v8 = [v4 newBackgroundContext];
  v0[7] = v8;
  [v8 setMergePolicy_];
  *(swift_task_alloc() + 16) = v8;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v9 = v8;
  sub_22766C9C0();

  v10 = v0[2];
  v0[8] = v10;
  v11 = *(v2 + 160);
  v0[9] = v11;
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = sub_2274DD650;
  *(v12 + 24) = v7;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v5;
  *(v12 + 56) = v11;
  *(v12 + 64) = v10;
  *(v12 + 72) = v9;
  v13 = v9;
  v14 = v10;
  v15 = v13;
  v16 = v14;
  swift_bridgeObjectRetain_n();
  v17 = v15;
  v18 = v16;

  return MEMORY[0x2822009F8](sub_2274D1A5C, 0, 0);
}

uint64_t sub_2274D1A5C()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v2[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v2[2].i64[0] = sub_2274DD678;
  v2[2].i64[1] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_2274D1B68;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FE24, v2, v5);
}

uint64_t sub_2274D1B68()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2274D1D24;
    v5 = 0;
  }

  else
  {
    v6 = v2[10];
    v7 = v2[11];
    v8 = v2[5];

    v4 = sub_2274D1C98;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2274D1C98()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2274D1D24()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_2274D1D98, v3, 0);
}

uint64_t sub_2274D1D98()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_2274D1E20(void *a1, void *a2, char a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v14[3] = &type metadata for PersistenceHandle;
  v14[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v14[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = a1;
  v12 = a2;

  a5(v14);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2274D1EE0(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 184) = a1;
  v3 = sub_227669890();
  *(v2 + 136) = v3;
  v4 = *(v3 - 8);
  *(v2 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D1FA4, v1, 0);
}

uint64_t sub_2274D1FA4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 184);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.loadStoresCurrentDataProtection", 56, 2, &dword_226E8E000, 1, (v0 + 16));
  (*(v2 + 8))(v1, v3);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;

  sub_2274D8030(v5, sub_2274DE68C, v8);

  swift_beginAccess();
  v9 = *(v4 + 216);
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *(v4 + 216);
    }

    v11 = sub_22766CD20();

    if (v11)
    {
      goto LABEL_5;
    }
  }

  else if (*(v9 + 16))
  {
LABEL_5:
    v12 = *(v0 + 128);
    v13 = v12[19];
    __swift_project_boxed_opaque_existential_0(v12 + 15, v12[18]);
    sub_22766AC60();
  }

  swift_beginAccess();
  if (*v7 == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_2274D2224;
    v15 = *(v0 + 128);
    v16 = *(v0 + 184);

    return sub_2274D96A0(v16);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_2274D2538;
    v19 = *(v0 + 128);

    return sub_2274D2860();
  }
}

uint64_t sub_2274D2224()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2274D2334, v2, 0);
}

uint64_t sub_2274D2334()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 184);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  sub_2274D8030(v2, sub_2274DE6D4, v4);

  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v7 = *(v0 + 160);
  if (v5 < 1)
  {
    sub_227669930();
  }

  else
  {
    v8 = sub_227664DD0();
    sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51020], v8);
    sub_227669920();
  }

  v11 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2274D2538()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2274D2648, v2, 0);
}

uint64_t sub_2274D2648()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  v3 = v0[19];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

void sub_2274D26DC(void *a1, void *a2, uint64_t a3)
{
  swift_getErrorValue();
  if (sub_22766D270() == 134100)
  {
    swift_getErrorValue();
    v6 = sub_22766D280();
    v8 = v7;
    v9 = *MEMORY[0x277CCA050];
    if (v6 == sub_22766C000() && v8 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_22766D190();
    }
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  *(a3 + 16) = v12 & 1;
  sub_2274D88B0(a2, a1);
}

uint64_t sub_2274D27FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2274D88B0(a2, a1);
  result = swift_beginAccess();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_2274D2860()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[5] = v0;
  v2 = sub_22766B390();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2274D2990, v0, 0);
}

uint64_t sub_2274D2990()
{
  v221 = v0;
  v220[2] = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 112) = v1;
  v2 = &selRef_setFetchBatchSize_;
  v3 = [v1 persistentStoreCoordinator];
  v4 = [v3 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v5 = sub_22766C2C0();
  *(v0 + 120) = v5;

  if (v5 >> 62)
  {
LABEL_70:
    v200 = sub_22766CD20();
    *(v0 + 128) = v200;
    if (v200)
    {
      goto LABEL_3;
    }

LABEL_53:

    v142 = *(v0 + 96);
    v141 = *(v0 + 104);
    v144 = *(v0 + 80);
    v143 = *(v0 + 88);
    v146 = *(v0 + 64);
    v145 = *(v0 + 72);

    v147 = *(v0 + 8);
    v148 = *MEMORY[0x277D85DE8];

    return v147();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 128) = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

LABEL_3:
  v7 = 0;
  *(v0 + 200) = *MEMORY[0x277D50FF8];
  v8 = &unk_2813B2000;
  while (1)
  {
    v10 = *(v0 + 120);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AA991A0](v7);
    }

    else
    {
      if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v11 = *(v10 + 8 * v7 + 32);
    }

    v12 = v11;
    *(v0 + 136) = v11;
    *(v0 + 144) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v13 = [*(v0 + 112) managedObjectModel];
    v14 = sub_2274EF600();
    v16 = v15;

    v17 = sub_2274E3964(v14, v16);
    if (qword_2813A2140 != -1)
    {
      v139 = v17;
      swift_once();
      v17 = v139;
    }

    v36 = word_2813B2670;
    *(v0 + 208) = word_2813B2670;
    v37 = sub_2274E2FEC(v17);
    v39 = v38;
    if (v37 == sub_2274E2FEC(v36) && v39 == v40)
    {
    }

    else
    {
      v42 = sub_22766D190();

      if ((v42 & 1) == 0)
      {
        v43 = *(v0 + 104);
        sub_22766A770();
        v44 = v12;
        v45 = sub_22766B380();
        v46 = sub_22766C890();

        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 104);
        v50 = *(v0 + 48);
        v49 = *(v0 + 56);
        if (v47)
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v220[0] = v52;
          *v51 = 136446210;
          v53 = [v44 configurationName];
          v54 = sub_22766C000();
          v211 = v48;
          v56 = v55;

          v57 = v54;
          v2 = &selRef_setFetchBatchSize_;
          v58 = sub_226E97AE8(v57, v56, v220);

          *(v51 + 4) = v58;
          _os_log_impl(&dword_226E8E000, v45, v46, "Trying to update %{public}s without having loaded it on the current schema.", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          v59 = v52;
          v8 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v59, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);

          (*(v49 + 8))(v211, v50);
        }

        else
        {

          (*(v49 + 8))(v48, v50);
        }

        v107 = *(v0 + 200);
        v108 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
        v109 = swift_allocError();
        (*(*(v108 - 8) + 104))(v110, v107, v108);
        swift_willThrow();
        v111 = v109;
        v18 = *(v0 + 136);
        v19 = *(v0 + 64);
        sub_22766A770();
        v20 = v18;
        v21 = sub_22766B380();
        v22 = sub_22766C8B0();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = *(v0 + 136);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v23;
          *v25 = v23;
          v26 = v23;
          _os_log_impl(&dword_226E8E000, v21, v22, "Got unrecoverable error while trying to update %@", v24, 0xCu);
          sub_226E97D1C(v25, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v25, -1, -1);
          MEMORY[0x22AA9A450](v24, -1, -1);
        }

        v27 = *(v0 + 136);
        v28 = *(v0 + 112);
        v30 = *(v0 + 56);
        v29 = *(v0 + 64);
        v31 = *(v0 + 48);

        (*(v30 + 8))(v29, v31);
        v32 = [v28 v2[67]];
        *(v0 + 32) = 0;
        LODWORD(v27) = [v32 removePersistentStore:v27 error:v0 + 32];

        v33 = *(v0 + 32);
        v34 = *(v0 + 136);
        if (!v27)
        {
          v150 = v33;
          sub_2276622C0();

          swift_willThrow();
          v220[0] = 0;
          v220[1] = 0xE000000000000000;
          sub_22766CE20();
          MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
          v151 = [v34 description];
          v152 = sub_22766C000();
          v154 = v153;

          MEMORY[0x22AA98450](v152, v154);

          MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
          result = sub_22766CFB0();
          v155 = *MEMORY[0x277D85DE8];
          return result;
        }

        v35 = v33;

        goto LABEL_5;
      }
    }

    v60 = *(v0 + 112);
    v61 = sub_2274EEF88(v12);
    if (v61 == 56)
    {
      break;
    }

    v62 = v61;
    v63 = v8[1649];
    *(v0 + 210) = v63;
    v64 = *(v0 + 208);
    v65 = sub_2274E2FEC(v64);
    v67 = v66;
    if (v65 == sub_2274E2FEC(v64) && v67 == v68)
    {

LABEL_31:
      v70 = sub_2275E0328(v62);
      v72 = v71;
      if (v70 == sub_2275E0328(v63) && v72 == v73)
      {
        v9 = *(v0 + 136);

        goto LABEL_5;
      }

      v74 = sub_22766D190();

      if (v74)
      {

        goto LABEL_5;
      }

      goto LABEL_35;
    }

    v69 = sub_22766D190();

    if (v69)
    {
      goto LABEL_31;
    }

LABEL_35:
    v75 = *(v0 + 136);
    v76 = *(v0 + 88);
    sub_22766A770();
    v77 = v75;
    v78 = sub_22766B380();
    v79 = sub_22766C8B0();

    if (os_log_type_enabled(v78, v79))
    {
      v202 = *(v0 + 208);
      v80 = *(v0 + 136);
      v205 = *(v0 + 56);
      v208 = *(v0 + 48);
      v212 = *(v0 + 88);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v220[0] = v82;
      *v81 = 136446466;
      v83 = [v80 configurationName];
      v84 = sub_22766C000();
      v86 = v85;

      v87 = sub_226E97AE8(v84, v86, v220);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2082;
      v88 = sub_22709BF40();
      v90 = sub_226E97AE8(v88, v89, v220);

      *(v81 + 14) = v90;
      _os_log_impl(&dword_226E8E000, v78, v79, "Updating %{public}s to current version %{public}s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v82, -1, -1);
      v91 = v81;
      v8 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v91, -1, -1);

      v92 = *(v205 + 8);
      v92(v212, v208);
    }

    else
    {
      v93 = *(v0 + 88);
      v94 = *(v0 + 48);
      v95 = *(v0 + 56);

      v92 = *(v95 + 8);
      v92(v93, v94);
    }

    *(v0 + 168) = v92;
    v96 = *(v0 + 208);
    v97 = sub_2274E2FEC(*(v0 + 208));
    v99 = v98;
    v2 = &selRef_setFetchBatchSize_;
    if (v97 == sub_2274E2FEC(v96) && v99 == v100)
    {
    }

    else
    {
      v101 = sub_22766D190();

      if ((v101 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v102 = *(v0 + 210);
    v103 = sub_2275E0328(v62);
    v105 = v104;
    if (v103 == sub_2275E0328(v102) && v105 == v106)
    {
    }

    else
    {
      v112 = sub_22766D190();

      if ((v112 & 1) == 0)
      {
LABEL_50:
        v134 = sub_2274DDF0C(v96 | (v62 << 8));
        *(v0 + 204) = v134;
        *(v0 + 176) = v135;
        v217 = v181;
        v219 = v134;
        v182 = *(v0 + 80);
        v183 = v135;

        sub_22766A770();

        v184 = sub_22766B380();
        v185 = sub_22766C8B0();
        v186 = v183;

        if (os_log_type_enabled(v184, v185))
        {
          v210 = *(v0 + 80);
          v215 = *(v0 + 168);
          v204 = *(v0 + 56) + 8;
          v207 = *(v0 + 48);
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          v220[0] = v189;
          *v188 = 136446210;
          *(v0 + 16) = 0x2870657453;
          *(v0 + 24) = 0xE500000000000000;

          v190 = sub_22709BF40();
          MEMORY[0x22AA98450](v190);

          MEMORY[0x22AA98450](540945696, 0xE400000000000000);
          v191 = sub_22709BF40();
          MEMORY[0x22AA98450](v191);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          v192 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v220);

          *(v188 + 4) = v192;
          _os_log_impl(&dword_226E8E000, v184, v185, "Executing %{public}s.", v188, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v189);
          MEMORY[0x22AA9A450](v189, -1, -1);
          MEMORY[0x22AA9A450](v188, -1, -1);

          v215(v210, v207);
        }

        else
        {
          v193 = *(v0 + 168);
          v194 = *(v0 + 80);
          v195 = *(v0 + 48);
          v196 = *(v0 + 56);

          v193(v194, v195);
        }

        v197 = swift_task_alloc();
        *(v0 + 184) = v197;
        *v197 = v0;
        v197[1] = sub_2274D4CD8;
        v180 = *(v0 + 136);
        v174 = *(v0 + 112);
        v198 = *(v0 + 40);
        v199 = *MEMORY[0x277D85DE8];
        v178 = v219;
        v177 = v217;
        v179 = v186;
        goto LABEL_61;
      }
    }

    v113 = *(v0 + 136);
    v114 = *(v0 + 72);
    sub_22766A770();
    v115 = v113;
    v116 = sub_22766B380();
    v117 = sub_22766C8B0();

    v118 = os_log_type_enabled(v116, v117);
    v119 = *(v0 + 168);
    if (v118)
    {
      v201 = *(v0 + 208);
      v120 = *(v0 + 136);
      v209 = *(v0 + 48);
      v213 = *(v0 + 72);
      v203 = v120;
      v206 = *(v0 + 56) + 8;
      v121 = *(v0 + 210);
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v220[0] = v123;
      *v122 = 136446466;
      v124 = [v120 configurationName];
      v125 = sub_22766C000();
      v127 = v126;

      v128 = sub_226E97AE8(v125, v127, v220);

      *(v122 + 4) = v128;
      *(v122 + 12) = 2082;
      v129 = sub_22709BF40();
      v131 = sub_226E97AE8(v129, v130, v220);

      *(v122 + 14) = v131;
      _os_log_impl(&dword_226E8E000, v116, v117, "Updated %{public}s to current version %{public}s", v122, 0x16u);
      swift_arrayDestroy();
      v132 = v123;
      v8 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v132, -1, -1);
      v133 = v122;
      v2 = &selRef_setFetchBatchSize_;
      MEMORY[0x22AA9A450](v133, -1, -1);

      v119(v213, v209);
    }

    else
    {
      v136 = *(v0 + 72);
      v137 = *(v0 + 48);
      v138 = *(v0 + 56);

      v119(v136, v137);
    }

LABEL_5:
    v7 = *(v0 + 144);
    if (v7 == *(v0 + 128))
    {
      v140 = *(v0 + 120);
      goto LABEL_53;
    }
  }

  v156 = *(v0 + 96);
  sub_22766A770();
  v157 = v12;
  v158 = sub_22766B380();
  v159 = sub_22766C8B0();

  v160 = os_log_type_enabled(v158, v159);
  v161 = *(v0 + 96);
  v163 = *(v0 + 48);
  v162 = *(v0 + 56);
  v218 = v157;
  if (v160)
  {
    v216 = *(v0 + 48);
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v220[0] = v165;
    *v164 = 136446210;
    v166 = [v157 configurationName];
    v167 = sub_22766C000();
    v214 = v161;
    v169 = v168;

    v170 = sub_226E97AE8(v167, v169, v220);

    *(v164 + 4) = v170;
    _os_log_impl(&dword_226E8E000, v158, v159, "Got nil Data Version for %{public}s. Forcing to most recent.", v164, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v165);
    v171 = v165;
    v8 = &unk_2813B2000;
    MEMORY[0x22AA9A450](v171, -1, -1);
    MEMORY[0x22AA9A450](v164, -1, -1);

    (*(v162 + 8))(v214, v216);
  }

  else
  {

    (*(v162 + 8))(v161, v163);
  }

  v172 = v8[1649];
  *(v0 + 209) = v172;
  v173 = swift_task_alloc();
  *(v0 + 152) = v173;
  *v173 = v0;
  v173[1] = sub_2274D3AE0;
  v174 = *(v0 + 112);
  v175 = *(v0 + 40);
  v176 = *MEMORY[0x277D85DE8];
  v177 = nullsub_1;
  v178 = (v172 << 8) | (v36 << 16) | (v172 << 24) | v36;
  v179 = 0;
  v180 = v218;
LABEL_61:

  return sub_2274DCD0C(v178, v177, v179, v174, v180);
}

uint64_t sub_2274D3AE0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2274D5F10;
  }

  else
  {
    v6 = sub_2274D3C38;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2274D3C38()
{
  v213 = v0;
  v1 = &unk_2813B2000;
  v2 = &selRef_setFetchBatchSize_;
  v212[2] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 160);
  v4 = *(v0 + 209);
  while (1)
  {
    v6 = v1[1649];
    *(v0 + 210) = v6;
    v7 = *(v0 + 208);
    v8 = sub_2274E2FEC(v7);
    v10 = v9;
    if (v8 == sub_2274E2FEC(v7) && v10 == v11)
    {
    }

    else
    {
      v13 = sub_22766D190();

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v14 = sub_2275E0328(v4);
    v16 = v15;
    if (v14 == sub_2275E0328(v6) && v16 == v17)
    {
      v18 = *(v0 + 136);

      goto LABEL_32;
    }

    v19 = sub_22766D190();

    if (v19)
    {

      goto LABEL_32;
    }

LABEL_16:
    v20 = *(v0 + 136);
    v21 = *(v0 + 88);
    sub_22766A770();
    v22 = v20;
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();

    if (os_log_type_enabled(v23, v24))
    {
      v192 = *(v0 + 208);
      v25 = *(v0 + 136);
      v197 = *(v0 + 56);
      v200 = *(v0 + 48);
      v203 = *(v0 + 88);
      v26 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v212[0] = v194;
      *v26 = 136446466;
      v27 = [v25 configurationName];
      v28 = sub_22766C000();
      v30 = v29;

      v31 = sub_226E97AE8(v28, v30, v212);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v32 = sub_22709BF40();
      v34 = sub_226E97AE8(v32, v33, v212);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_226E8E000, v23, v24, "Updating %{public}s to current version %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v194, -1, -1);
      v35 = v26;
      v1 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v35, -1, -1);

      v36 = *(v197 + 8);
      v36(v203, v200);
    }

    else
    {
      v37 = *(v0 + 88);
      v38 = *(v0 + 48);
      v39 = *(v0 + 56);

      v36 = *(v39 + 8);
      v36(v37, v38);
    }

    *(v0 + 168) = v36;
    v40 = *(v0 + 208);
    v41 = sub_2274E2FEC(*(v0 + 208));
    v43 = v42;
    v2 = &selRef_setFetchBatchSize_;
    if (v41 == sub_2274E2FEC(v40) && v43 == v44)
    {
    }

    else
    {
      v45 = sub_22766D190();

      if ((v45 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v46 = *(v0 + 210);
    v47 = sub_2275E0328(v4);
    v49 = v48;
    if (v47 == sub_2275E0328(v46) && v49 == v50)
    {

LABEL_27:
      v52 = *(v0 + 136);
      v53 = *(v0 + 72);
      sub_22766A770();
      v54 = v52;
      v55 = sub_22766B380();
      v56 = sub_22766C8B0();

      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 168);
      if (v57)
      {
        v191 = *(v0 + 208);
        v59 = *(v0 + 136);
        v193 = v59;
        v195 = *(v0 + 168);
        v201 = *(v0 + 48);
        v204 = *(v0 + 72);
        v198 = *(v0 + 56) + 8;
        v60 = *(v0 + 210);
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v212[0] = v62;
        *v61 = 136446466;
        v63 = [v59 configurationName];
        v64 = sub_22766C000();
        v66 = v65;

        v67 = sub_226E97AE8(v64, v66, v212);

        *(v61 + 4) = v67;
        *(v61 + 12) = 2082;
        v68 = sub_22709BF40();
        v70 = sub_226E97AE8(v68, v69, v212);

        *(v61 + 14) = v70;
        _os_log_impl(&dword_226E8E000, v55, v56, "Updated %{public}s to current version %{public}s", v61, 0x16u);
        swift_arrayDestroy();
        v71 = v62;
        v1 = &unk_2813B2000;
        MEMORY[0x22AA9A450](v71, -1, -1);
        v72 = v61;
        v2 = &selRef_setFetchBatchSize_;
        MEMORY[0x22AA9A450](v72, -1, -1);

        v195(v204, v201);
      }

      else
      {
        v76 = *(v0 + 72);
        v77 = *(v0 + 48);
        v78 = *(v0 + 56);

        v58(v76, v77);
      }

      goto LABEL_32;
    }

    v51 = sub_22766D190();

    if (v51)
    {
      goto LABEL_27;
    }

LABEL_29:
    v73 = sub_2274DDF0C(v40 | (v4 << 8));
    *(v0 + 204) = v73;
    *(v0 + 176) = v75;
    if (!v3)
    {
      break;
    }

    while (1)
    {
      do
      {
        v88 = *(v0 + 136);
        v89 = *(v0 + 64);
        sub_22766A770();
        v90 = v88;
        v91 = sub_22766B380();
        v92 = sub_22766C8B0();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = *(v0 + 136);
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *v94 = 138412290;
          *(v94 + 4) = v93;
          *v95 = v93;
          v96 = v93;
          _os_log_impl(&dword_226E8E000, v91, v92, "Got unrecoverable error while trying to update %@", v94, 0xCu);
          sub_226E97D1C(v95, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v95, -1, -1);
          MEMORY[0x22AA9A450](v94, -1, -1);
        }

        v97 = *(v0 + 136);
        v98 = *(v0 + 112);
        v100 = *(v0 + 56);
        v99 = *(v0 + 64);
        v101 = *(v0 + 48);

        (*(v100 + 8))(v99, v101);
        v102 = [v98 persistentStoreCoordinator];
        *(v0 + 32) = 0;
        LODWORD(v98) = [v102 removePersistentStore:v97 error:v0 + 32];

        v103 = *(v0 + 32);
        v104 = *(v0 + 136);
        if (!v98)
        {
          v143 = v103;
          sub_2276622C0();

          swift_willThrow();
          v212[0] = 0;
          v212[1] = 0xE000000000000000;
          sub_22766CE20();
          MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
          v144 = [v104 description];
          v145 = sub_22766C000();
          v147 = v146;

          MEMORY[0x22AA98450](v145, v147);

          MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
          result = sub_22766CFB0();
          v148 = *MEMORY[0x277D85DE8];
          return result;
        }

        v105 = v103;

        v3 = 0;
LABEL_32:
        v79 = *(v0 + 144);
        v80 = *(v0 + 120);
        if (v79 == *(v0 + 128))
        {
          v133 = *(v0 + 120);

          v135 = *(v0 + 96);
          v134 = *(v0 + 104);
          v137 = *(v0 + 80);
          v136 = *(v0 + 88);
          v139 = *(v0 + 64);
          v138 = *(v0 + 72);

          v140 = *(v0 + 8);
          v141 = *MEMORY[0x277D85DE8];

          return v140();
        }

        if ((v80 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x22AA991A0](*(v0 + 144));
        }

        else
        {
          if (v79 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v81 = *(v80 + 8 * v79 + 32);
        }

        v82 = v81;
        *(v0 + 136) = v81;
        *(v0 + 144) = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          __break(1u);
LABEL_68:
          __break(1u);
        }

        v83 = [*(v0 + 112) v2[66]];
        v84 = sub_2274EF600();
        v86 = v85;

        v87 = sub_2274E3964(v84, v86);
      }

      while (v3);
      if (qword_2813A2140 != -1)
      {
        v132 = v87;
        swift_once();
        v87 = v132;
      }

      v106 = word_2813B2670;
      *(v0 + 208) = word_2813B2670;
      v107 = sub_2274E2FEC(v87);
      v109 = v108;
      if (v107 == sub_2274E2FEC(v106) && v109 == v110)
      {
        break;
      }

      v111 = sub_22766D190();

      if (v111)
      {
        goto LABEL_3;
      }

      v112 = *(v0 + 104);
      sub_22766A770();
      v113 = v82;
      v114 = sub_22766B380();
      v115 = sub_22766C890();

      v116 = os_log_type_enabled(v114, v115);
      v117 = *(v0 + 104);
      v119 = *(v0 + 48);
      v118 = *(v0 + 56);
      if (v116)
      {
        v205 = *(v0 + 104);
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v212[0] = v121;
        *v120 = 136446210;
        v122 = [v113 configurationName];
        v123 = sub_22766C000();
        v125 = v124;

        v126 = v123;
        v2 = &selRef_setFetchBatchSize_;
        v127 = sub_226E97AE8(v126, v125, v212);
        v1 = &unk_2813B2000;

        *(v120 + 4) = v127;
        _os_log_impl(&dword_226E8E000, v114, v115, "Trying to update %{public}s without having loaded it on the current schema.", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v121);
        MEMORY[0x22AA9A450](v121, -1, -1);
        MEMORY[0x22AA9A450](v120, -1, -1);

        (*(v118 + 8))(v205, v119);
      }

      else
      {

        (*(v118 + 8))(v117, v119);
      }

      v128 = *(v0 + 200);
      v129 = sub_227664DD0();
      sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
      v130 = swift_allocError();
      (*(*(v129 - 8) + 104))(v131, v128, v129);
      swift_willThrow();
      v3 = v130;
    }

LABEL_3:
    v5 = *(v0 + 112);
    v4 = sub_2274EEF88(v82);
    v3 = 0;
    if (v4 == 56)
    {
      v149 = *(v0 + 96);
      sub_22766A770();
      v150 = v82;
      v151 = sub_22766B380();
      v152 = sub_22766C8B0();

      v153 = os_log_type_enabled(v151, v152);
      v154 = *(v0 + 96);
      v156 = *(v0 + 48);
      v155 = *(v0 + 56);
      v210 = v150;
      if (v153)
      {
        v208 = *(v0 + 48);
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v212[0] = v158;
        *v157 = 136446210;
        v159 = [v150 configurationName];
        v160 = sub_22766C000();
        v206 = v154;
        v162 = v161;

        v1 = &unk_2813B2000;
        v163 = sub_226E97AE8(v160, v162, v212);

        *(v157 + 4) = v163;
        _os_log_impl(&dword_226E8E000, v151, v152, "Got nil Data Version for %{public}s. Forcing to most recent.", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v158);
        MEMORY[0x22AA9A450](v158, -1, -1);
        MEMORY[0x22AA9A450](v157, -1, -1);

        (*(v155 + 8))(v206, v208);
      }

      else
      {

        (*(v155 + 8))(v154, v156);
      }

      v164 = v1[1649];
      *(v0 + 209) = v164;
      v165 = swift_task_alloc();
      *(v0 + 152) = v165;
      *v165 = v0;
      v165[1] = sub_2274D3AE0;
      v166 = *(v0 + 112);
      v167 = *(v0 + 40);
      v168 = *MEMORY[0x277D85DE8];
      v169 = nullsub_1;
      v170 = (v164 << 8) | (v106 << 16) | (v164 << 24) | v106;
      v171 = 0;
      v172 = v210;
      goto LABEL_60;
    }
  }

  v209 = v74;
  v211 = v73;
  v173 = *(v0 + 80);
  v174 = v75;

  sub_22766A770();

  v175 = sub_22766B380();
  v176 = sub_22766C8B0();
  v177 = v174;

  if (os_log_type_enabled(v175, v176))
  {
    v202 = *(v0 + 80);
    v207 = *(v0 + 168);
    v196 = *(v0 + 56) + 8;
    v199 = *(v0 + 48);
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v212[0] = v180;
    *v179 = 136446210;
    *(v0 + 16) = 0x2870657453;
    *(v0 + 24) = 0xE500000000000000;

    v181 = sub_22709BF40();
    MEMORY[0x22AA98450](v181);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v182 = sub_22709BF40();
    MEMORY[0x22AA98450](v182);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v183 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v212);

    *(v179 + 4) = v183;
    _os_log_impl(&dword_226E8E000, v175, v176, "Executing %{public}s.", v179, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v180);
    MEMORY[0x22AA9A450](v180, -1, -1);
    MEMORY[0x22AA9A450](v179, -1, -1);

    v207(v202, v199);
  }

  else
  {
    v184 = *(v0 + 168);
    v185 = *(v0 + 80);
    v186 = *(v0 + 48);
    v187 = *(v0 + 56);

    v184(v185, v186);
  }

  v188 = swift_task_alloc();
  *(v0 + 184) = v188;
  *v188 = v0;
  v188[1] = sub_2274D4CD8;
  v172 = *(v0 + 136);
  v166 = *(v0 + 112);
  v189 = *(v0 + 40);
  v190 = *MEMORY[0x277D85DE8];
  v170 = v211;
  v169 = v209;
  v171 = v177;
LABEL_60:

  return sub_2274DCD0C(v170, v169, v171, v166, v172);
}

uint64_t sub_2274D4CD8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2274D6F9C;
  }

  else
  {
    v6 = sub_2274D4E30;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2274D4E30()
{
  v218 = v0;
  v217[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);

  v2 = *(v0 + 204);
  v3 = HIBYTE(v2);
  LODWORD(v4) = HIWORD(v2);
  v5 = *(v0 + 192);
  v6 = *(v0 + 208);
  v7 = &unk_2813B2000;
LABEL_2:
  v8 = sub_2274E2FEC(v4);
  v10 = v9;
  if (v8 == sub_2274E2FEC(v6) && v10 == v11)
  {
  }

  else
  {
    v12 = sub_22766D190();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v0 + 210);
  v14 = sub_2275E0328(v3);
  v16 = v15;
  if (v14 == sub_2275E0328(v13) && v16 == v17)
  {

LABEL_10:
    v19 = *(v0 + 136);
    v20 = *(v0 + 72);
    sub_22766A770();
    v21 = v19;
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 168);
    if (v24)
    {
      v197 = *(v0 + 208);
      v26 = *(v0 + 136);
      v198 = v26;
      v205 = *(v0 + 48);
      v208 = *(v0 + 72);
      v202 = *(v0 + 56) + 8;
      v27 = *(v0 + 210);
      v28 = swift_slowAlloc();
      v199 = v25;
      v29 = swift_slowAlloc();
      v217[0] = v29;
      *v28 = 136446466;
      v30 = [v26 configurationName];
      v31 = sub_22766C000();
      v33 = v32;

      v34 = sub_226E97AE8(v31, v33, v217);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;
      v35 = sub_22709BF40();
      v37 = sub_226E97AE8(v35, v36, v217);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_226E8E000, v22, v23, "Updated %{public}s to current version %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v29, -1, -1);
      v38 = v28;
      v7 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v38, -1, -1);

      v199(v208, v205);
    }

    else
    {
      v44 = *(v0 + 72);
      v45 = *(v0 + 48);
      v46 = *(v0 + 56);

      v25(v44, v45);
    }

    goto LABEL_17;
  }

  v18 = sub_22766D190();

  if (v18)
  {
    goto LABEL_10;
  }

LABEL_12:
  v39 = v4 | (v3 << 8);
  v40 = v5;
  v41 = sub_2274DDF0C(v39);
  *(v0 + 204) = v41;
  *(v0 + 176) = v43;
  if (v5)
  {
LABEL_50:
    v120 = *(v0 + 136);
    v121 = *(v0 + 64);
    sub_22766A770();
    v122 = v120;
    v123 = sub_22766B380();
    v124 = sub_22766C8B0();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = *(v0 + 136);
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v125;
      *v127 = v125;
      v128 = v125;
      _os_log_impl(&dword_226E8E000, v123, v124, "Got unrecoverable error while trying to update %@", v126, 0xCu);
      sub_226E97D1C(v127, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v127, -1, -1);
      MEMORY[0x22AA9A450](v126, -1, -1);
    }

    v129 = *(v0 + 136);
    v130 = *(v0 + 112);
    v132 = *(v0 + 56);
    v131 = *(v0 + 64);
    v133 = *(v0 + 48);

    (*(v132 + 8))(v131, v133);
    v134 = [v130 persistentStoreCoordinator];
    *(v0 + 32) = 0;
    LODWORD(v129) = [v134 removePersistentStore:v129 error:v0 + 32];

    v135 = *(v0 + 32);
    v136 = *(v0 + 136);
    if (v129)
    {
      v137 = v135;

      v5 = 0;
LABEL_17:
      while (1)
      {
        v48 = *(v0 + 144);
        if (v48 == *(v0 + 128))
        {
          break;
        }

        v49 = *(v0 + 120);
        if ((v49 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x22AA991A0](*(v0 + 144));
        }

        else
        {
          if (v48 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v50 = *(v49 + 8 * v48 + 32);
        }

        v51 = v50;
        *(v0 + 136) = v50;
        *(v0 + 144) = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
        }

        v52 = [*(v0 + 112) managedObjectModel];
        v53 = sub_2274EF600();
        v55 = v54;

        v56 = v53;
        v40 = v5;
        v57 = sub_2274E3964(v56, v55);
        if (v5)
        {
          goto LABEL_50;
        }

        if (qword_2813A2140 != -1)
        {
          v79 = v57;
          swift_once();
          v57 = v79;
        }

        v58 = word_2813B2670;
        *(v0 + 208) = word_2813B2670;
        v59 = sub_2274E2FEC(v57);
        v61 = v60;
        if (v59 == sub_2274E2FEC(v58) && v61 == v62)
        {
        }

        else
        {
          v64 = sub_22766D190();

          if ((v64 & 1) == 0)
          {
            v97 = *(v0 + 104);
            sub_22766A770();
            v98 = v51;
            v99 = sub_22766B380();
            v100 = sub_22766C890();

            v101 = os_log_type_enabled(v99, v100);
            v102 = *(v0 + 104);
            v104 = *(v0 + 48);
            v103 = *(v0 + 56);
            if (v101)
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v217[0] = v106;
              *v105 = 136446210;
              v107 = [v98 configurationName];
              v108 = sub_22766C000();
              v210 = v102;
              v110 = v109;

              v111 = sub_226E97AE8(v108, v110, v217);

              *(v105 + 4) = v111;
              _os_log_impl(&dword_226E8E000, v99, v100, "Trying to update %{public}s without having loaded it on the current schema.", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v106);
              v112 = v106;
              v7 = &unk_2813B2000;
              MEMORY[0x22AA9A450](v112, -1, -1);
              MEMORY[0x22AA9A450](v105, -1, -1);

              (*(v103 + 8))(v210, v104);
            }

            else
            {

              (*(v103 + 8))(v102, v104);
            }

            v116 = *(v0 + 200);
            v117 = sub_227664DD0();
            sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
            v118 = swift_allocError();
            (*(*(v117 - 8) + 104))(v119, v116, v117);
            swift_willThrow();
            v40 = v118;
            goto LABEL_50;
          }
        }

        v65 = *(v0 + 112);
        v66 = sub_2274EEF88(v51);
        if (v66 == 56)
        {
          v148 = *(v0 + 96);
          sub_22766A770();
          v149 = v51;
          v150 = sub_22766B380();
          v151 = sub_22766C8B0();

          v152 = os_log_type_enabled(v150, v151);
          v153 = *(v0 + 96);
          v155 = *(v0 + 48);
          v154 = *(v0 + 56);
          v215 = v149;
          if (v152)
          {
            v213 = *(v0 + 48);
            v156 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v217[0] = v157;
            *v156 = 136446210;
            v158 = [v149 configurationName];
            v159 = sub_22766C000();
            v212 = v153;
            v161 = v160;

            v162 = sub_226E97AE8(v159, v161, v217);

            *(v156 + 4) = v162;
            _os_log_impl(&dword_226E8E000, v150, v151, "Got nil Data Version for %{public}s. Forcing to most recent.", v156, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v157);
            v163 = v157;
            v7 = &unk_2813B2000;
            MEMORY[0x22AA9A450](v163, -1, -1);
            MEMORY[0x22AA9A450](v156, -1, -1);

            (*(v154 + 8))(v212, v213);
          }

          else
          {

            (*(v154 + 8))(v153, v155);
          }

          v164 = v7[1649];
          *(v0 + 209) = v164;
          v165 = swift_task_alloc();
          *(v0 + 152) = v165;
          *v165 = v0;
          v165[1] = sub_2274D3AE0;
          v166 = *(v0 + 112);
          v167 = *(v0 + 40);
          v168 = *MEMORY[0x277D85DE8];
          v169 = nullsub_1;
          v170 = (v164 << 8) | (v58 << 16) | (v164 << 24) | v58;
          v171 = 0;
          v172 = v215;
          goto LABEL_61;
        }

        LOWORD(v3) = v66;
        v67 = v7[1649];
        *(v0 + 210) = v67;
        v68 = *(v0 + 208);
        v69 = sub_2274E2FEC(v68);
        v71 = v70;
        if (v69 == sub_2274E2FEC(v68) && v71 == v72)
        {
        }

        else
        {
          v73 = sub_22766D190();

          if ((v73 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v74 = sub_2275E0328(v3);
        v76 = v75;
        if (v74 == sub_2275E0328(v67) && v76 == v77)
        {
          v47 = *(v0 + 136);
        }

        else
        {
          v78 = sub_22766D190();

          if ((v78 & 1) == 0)
          {
LABEL_42:
            v80 = *(v0 + 136);
            v81 = *(v0 + 88);
            sub_22766A770();
            v82 = v80;
            v83 = sub_22766B380();
            v84 = sub_22766C8B0();

            if (os_log_type_enabled(v83, v84))
            {
              v200 = *(v0 + 208);
              v85 = *(v0 + 136);
              v203 = *(v0 + 56);
              v206 = *(v0 + 48);
              v209 = *(v0 + 88);
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v217[0] = v87;
              *v86 = 136446466;
              v88 = [v85 configurationName];
              v89 = sub_22766C000();
              v91 = v90;

              v92 = sub_226E97AE8(v89, v91, v217);

              *(v86 + 4) = v92;
              *(v86 + 12) = 2082;
              v93 = sub_22709BF40();
              v95 = sub_226E97AE8(v93, v94, v217);

              *(v86 + 14) = v95;
              _os_log_impl(&dword_226E8E000, v83, v84, "Updating %{public}s to current version %{public}s", v86, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v87, -1, -1);
              v96 = v86;
              v7 = &unk_2813B2000;
              MEMORY[0x22AA9A450](v96, -1, -1);

              v4 = *(v203 + 8);
              v4(v209, v206);
            }

            else
            {
              v113 = *(v0 + 88);
              v114 = *(v0 + 48);
              v115 = *(v0 + 56);

              v4 = *(v115 + 8);
              v4(v113, v114);
            }

            v5 = 0;
            *(v0 + 168) = v4;
            v6 = *(v0 + 208);
            LOBYTE(v4) = v6;
            goto LABEL_2;
          }

          v47 = *(v0 + 136);
        }

        v5 = 0;
      }

      v138 = *(v0 + 120);

      v140 = *(v0 + 96);
      v139 = *(v0 + 104);
      v142 = *(v0 + 80);
      v141 = *(v0 + 88);
      v144 = *(v0 + 64);
      v143 = *(v0 + 72);

      v145 = *(v0 + 8);
      v146 = *MEMORY[0x277D85DE8];

      return v145();
    }

    else
    {
      v173 = v135;
      sub_2276622C0();

      swift_willThrow();
      v217[0] = 0;
      v217[1] = 0xE000000000000000;
      sub_22766CE20();
      MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
      v174 = [v136 description];
      v175 = sub_22766C000();
      v177 = v176;

      MEMORY[0x22AA98450](v175, v177);

      MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
      result = sub_22766CFB0();
      v178 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v214 = v42;
    v216 = v41;
    v179 = *(v0 + 80);
    v180 = v43;

    sub_22766A770();

    v181 = sub_22766B380();
    v182 = sub_22766C8B0();
    v183 = v180;

    if (os_log_type_enabled(v181, v182))
    {
      v207 = *(v0 + 80);
      v211 = *(v0 + 168);
      v201 = *(v0 + 56) + 8;
      v204 = *(v0 + 48);
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v217[0] = v186;
      *v185 = 136446210;
      *(v0 + 16) = 0x2870657453;
      *(v0 + 24) = 0xE500000000000000;

      v187 = sub_22709BF40();
      MEMORY[0x22AA98450](v187);

      MEMORY[0x22AA98450](540945696, 0xE400000000000000);
      v188 = sub_22709BF40();
      MEMORY[0x22AA98450](v188);

      MEMORY[0x22AA98450](41, 0xE100000000000000);

      v189 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v217);

      *(v185 + 4) = v189;
      _os_log_impl(&dword_226E8E000, v181, v182, "Executing %{public}s.", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v186);
      MEMORY[0x22AA9A450](v186, -1, -1);
      MEMORY[0x22AA9A450](v185, -1, -1);

      v211(v207, v204);
    }

    else
    {
      v190 = *(v0 + 168);
      v191 = *(v0 + 80);
      v192 = *(v0 + 48);
      v193 = *(v0 + 56);

      v190(v191, v192);
    }

    v194 = swift_task_alloc();
    *(v0 + 184) = v194;
    *v194 = v0;
    v194[1] = sub_2274D4CD8;
    v172 = *(v0 + 136);
    v166 = *(v0 + 112);
    v195 = *(v0 + 40);
    v196 = *MEMORY[0x277D85DE8];
    v170 = v216;
    v169 = v214;
    v171 = v183;
LABEL_61:

    return sub_2274DCD0C(v170, v169, v171, v166, v172);
  }

  return result;
}

uint64_t sub_2274D5F10()
{
  v209 = v0;
  v208[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = &unk_2813B2000;
LABEL_2:
  v3 = *(v0 + 136);
  v4 = *(v0 + 64);
  sub_22766A770();
  v5 = v3;
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_226E8E000, v6, v7, "Got unrecoverable error while trying to update %@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v16 = *(v0 + 48);

  (*(v15 + 8))(v14, v16);
  v17 = [v13 persistentStoreCoordinator];
  *(v0 + 32) = 0;
  LODWORD(v12) = [v17 removePersistentStore:v12 error:v0 + 32];

  v18 = *(v0 + 32);
  v19 = *(v0 + 136);
  if (!v12)
  {
    v166 = v18;
    sub_2276622C0();

    swift_willThrow();
    v208[0] = 0;
    v208[1] = 0xE000000000000000;
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
    v167 = [v19 description];
    v168 = sub_22766C000();
    v170 = v169;

    MEMORY[0x22AA98450](v168, v170);

    MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
    result = sub_22766CFB0();
    v171 = *MEMORY[0x277D85DE8];
    return result;
  }

  v20 = v18;

  while (1)
  {
    v24 = *(v0 + 144);
    if (v24 == *(v0 + 128))
    {
      break;
    }

    v25 = *(v0 + 120);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x22AA991A0](*(v0 + 144));
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v26 = *(v25 + 8 * v24 + 32);
    }

    v29 = v26;
    *(v0 + 136) = v26;
    *(v0 + 144) = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    v30 = [*(v0 + 112) managedObjectModel];
    v31 = sub_2274EF600();
    v33 = v32;

    v34 = sub_2274E3964(v31, v33);
    if (qword_2813A2140 != -1)
    {
      v111 = v34;
      swift_once();
      v34 = v111;
    }

    v35 = word_2813B2670;
    *(v0 + 208) = word_2813B2670;
    v36 = sub_2274E2FEC(v34);
    v38 = v37;
    if (v36 == sub_2274E2FEC(v35) && v38 == v39)
    {
    }

    else
    {
      v41 = sub_22766D190();

      if ((v41 & 1) == 0)
      {
        v112 = *(v0 + 104);
        sub_22766A770();
        v113 = v29;
        v114 = sub_22766B380();
        v115 = sub_22766C890();

        v116 = os_log_type_enabled(v114, v115);
        v117 = *(v0 + 104);
        v119 = *(v0 + 48);
        v118 = *(v0 + 56);
        if (v116)
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v208[0] = v121;
          *v120 = 136446210;
          v122 = [v113 configurationName];
          v123 = sub_22766C000();
          v203 = v117;
          v125 = v124;

          v126 = v123;
          v2 = &unk_2813B2000;
          v127 = sub_226E97AE8(v126, v125, v208);

          *(v120 + 4) = v127;
          _os_log_impl(&dword_226E8E000, v114, v115, "Trying to update %{public}s without having loaded it on the current schema.", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x22AA9A450](v121, -1, -1);
          MEMORY[0x22AA9A450](v120, -1, -1);

          (*(v118 + 8))(v203, v119);
        }

        else
        {

          (*(v118 + 8))(v117, v119);
        }

        v128 = *(v0 + 200);
        v129 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
        v130 = swift_allocError();
        (*(*(v129 - 8) + 104))(v131, v128, v129);
        swift_willThrow();
        v1 = v130;
        goto LABEL_2;
      }
    }

    v42 = *(v0 + 112);
    v43 = sub_2274EEF88(v29);
    if (v43 == 56)
    {
      v142 = *(v0 + 96);
      sub_22766A770();
      v143 = v29;
      v144 = sub_22766B380();
      v145 = sub_22766C8B0();

      v146 = os_log_type_enabled(v144, v145);
      v147 = *(v0 + 96);
      v149 = *(v0 + 48);
      v148 = *(v0 + 56);
      v206 = v143;
      if (v146)
      {
        v204 = *(v0 + 48);
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v208[0] = v151;
        *v150 = 136446210;
        v152 = [v143 configurationName];
        v153 = sub_22766C000();
        v199 = v147;
        v155 = v154;

        v2 = &unk_2813B2000;
        v156 = sub_226E97AE8(v153, v155, v208);

        *(v150 + 4) = v156;
        _os_log_impl(&dword_226E8E000, v144, v145, "Got nil Data Version for %{public}s. Forcing to most recent.", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v151);
        MEMORY[0x22AA9A450](v151, -1, -1);
        MEMORY[0x22AA9A450](v150, -1, -1);

        (*(v148 + 8))(v199, v204);
      }

      else
      {

        (*(v148 + 8))(v147, v149);
      }

      v157 = v2[1649];
      *(v0 + 209) = v157;
      v158 = swift_task_alloc();
      *(v0 + 152) = v158;
      *v158 = v0;
      v158[1] = sub_2274D3AE0;
      v159 = *(v0 + 112);
      v160 = *(v0 + 40);
      v161 = *MEMORY[0x277D85DE8];
      v162 = nullsub_1;
      v163 = (v157 << 8) | (v35 << 16) | (v157 << 24) | v35;
      v164 = 0;
      v165 = v206;
LABEL_57:

      return sub_2274DCD0C(v163, v162, v164, v159, v165);
    }

    v44 = v43;
    v45 = v2[1649];
    *(v0 + 210) = v45;
    v46 = *(v0 + 208);
    v47 = sub_2274E2FEC(v46);
    v49 = v48;
    if (v47 == sub_2274E2FEC(v46) && v49 == v50)
    {
    }

    else
    {
      v51 = sub_22766D190();

      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v52 = sub_2275E0328(v44);
    v54 = v53;
    if (v52 == sub_2275E0328(v45) && v54 == v55)
    {
      v56 = *(v0 + 136);
    }

    else
    {
      v57 = sub_22766D190();

      if (v57)
      {
      }

      else
      {
LABEL_32:
        v58 = *(v0 + 136);
        v59 = *(v0 + 88);
        sub_22766A770();
        v60 = v58;
        v61 = sub_22766B380();
        v62 = sub_22766C8B0();

        if (os_log_type_enabled(v61, v62))
        {
          v191 = *(v0 + 208);
          v63 = *(v0 + 136);
          v194 = *(v0 + 56);
          v197 = *(v0 + 48);
          v201 = *(v0 + 88);
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v208[0] = v65;
          *v64 = 136446466;
          v66 = [v63 configurationName];
          v67 = sub_22766C000();
          v69 = v68;

          v70 = sub_226E97AE8(v67, v69, v208);

          *(v64 + 4) = v70;
          *(v64 + 12) = 2082;
          v71 = sub_22709BF40();
          v73 = sub_226E97AE8(v71, v72, v208);

          *(v64 + 14) = v73;
          _os_log_impl(&dword_226E8E000, v61, v62, "Updating %{public}s to current version %{public}s", v64, 0x16u);
          swift_arrayDestroy();
          v74 = v65;
          v2 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v74, -1, -1);
          MEMORY[0x22AA9A450](v64, -1, -1);

          v75 = *(v194 + 8);
          v75(v201, v197);
        }

        else
        {
          v76 = *(v0 + 88);
          v77 = *(v0 + 48);
          v78 = *(v0 + 56);

          v75 = *(v78 + 8);
          v75(v76, v77);
        }

        *(v0 + 168) = v75;
        v79 = *(v0 + 208);
        v80 = sub_2274E2FEC(*(v0 + 208));
        v82 = v81;
        if (v80 == sub_2274E2FEC(v79) && v82 == v83)
        {
        }

        else
        {
          v84 = sub_22766D190();

          if ((v84 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v85 = *(v0 + 210);
        v86 = sub_2275E0328(v44);
        v88 = v87;
        if (v86 == sub_2275E0328(v85) && v88 == v89)
        {
        }

        else
        {
          v90 = sub_22766D190();

          if ((v90 & 1) == 0)
          {
LABEL_47:
            LODWORD(v26) = sub_2274DDF0C(v79 | (v44 << 8));
            *(v0 + 204) = v26;
            *(v0 + 176) = v28;
LABEL_62:
            v207 = v26;
            v205 = v27;
            v172 = *(v0 + 80);
            v173 = v28;

            sub_22766A770();

            v174 = sub_22766B380();
            v175 = sub_22766C8B0();
            v176 = v173;

            if (os_log_type_enabled(v174, v175))
            {
              v196 = *(v0 + 80);
              v200 = *(v0 + 168);
              v190 = *(v0 + 56) + 8;
              v193 = *(v0 + 48);
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              v208[0] = v178;
              *v177 = 136446210;
              *(v0 + 16) = 0x2870657453;
              *(v0 + 24) = 0xE500000000000000;

              v179 = sub_22709BF40();
              MEMORY[0x22AA98450](v179);

              MEMORY[0x22AA98450](540945696, 0xE400000000000000);
              v180 = sub_22709BF40();
              MEMORY[0x22AA98450](v180);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              v181 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v208);

              *(v177 + 4) = v181;
              _os_log_impl(&dword_226E8E000, v174, v175, "Executing %{public}s.", v177, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v178);
              MEMORY[0x22AA9A450](v178, -1, -1);
              MEMORY[0x22AA9A450](v177, -1, -1);

              v200(v196, v193);
            }

            else
            {
              v182 = *(v0 + 168);
              v183 = *(v0 + 80);
              v184 = *(v0 + 48);
              v185 = *(v0 + 56);

              v182(v183, v184);
            }

            v186 = swift_task_alloc();
            *(v0 + 184) = v186;
            *v186 = v0;
            v186[1] = sub_2274D4CD8;
            v165 = *(v0 + 136);
            v159 = *(v0 + 112);
            v187 = *(v0 + 40);
            v188 = *MEMORY[0x277D85DE8];
            v163 = v207;
            v162 = v205;
            v164 = v176;
            goto LABEL_57;
          }
        }

        v91 = *(v0 + 136);
        v92 = *(v0 + 72);
        sub_22766A770();
        v93 = v91;
        v94 = sub_22766B380();
        v95 = sub_22766C8B0();

        v96 = os_log_type_enabled(v94, v95);
        v97 = *(v0 + 168);
        if (v96)
        {
          v189 = *(v0 + 208);
          v98 = *(v0 + 136);
          v198 = *(v0 + 48);
          v202 = *(v0 + 72);
          v192 = v98;
          v195 = *(v0 + 56) + 8;
          v99 = *(v0 + 210);
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v208[0] = v101;
          *v100 = 136446466;
          v102 = [v98 configurationName];
          v103 = sub_22766C000();
          v105 = v104;

          v106 = v103;
          v2 = &unk_2813B2000;
          v107 = sub_226E97AE8(v106, v105, v208);

          *(v100 + 4) = v107;
          *(v100 + 12) = 2082;
          v108 = sub_22709BF40();
          v110 = sub_226E97AE8(v108, v109, v208);

          *(v100 + 14) = v110;
          _os_log_impl(&dword_226E8E000, v94, v95, "Updated %{public}s to current version %{public}s", v100, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v101, -1, -1);
          MEMORY[0x22AA9A450](v100, -1, -1);

          v97(v202, v198);
        }

        else
        {
          v21 = *(v0 + 72);
          v22 = *(v0 + 48);
          v23 = *(v0 + 56);

          v97(v21, v22);
        }
      }
    }
  }

  v132 = *(v0 + 120);

  v134 = *(v0 + 96);
  v133 = *(v0 + 104);
  v136 = *(v0 + 80);
  v135 = *(v0 + 88);
  v138 = *(v0 + 64);
  v137 = *(v0 + 72);

  v139 = *(v0 + 8);
  v140 = *MEMORY[0x277D85DE8];

  return v139();
}

uint64_t sub_2274D6F9C()
{
  v210 = v0;
  v209[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);

  v2 = *(v0 + 192);
  v3 = &unk_2813B2000;
LABEL_2:
  v4 = *(v0 + 136);
  v5 = *(v0 + 64);
  sub_22766A770();
  v6 = v4;
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_226E8E000, v7, v8, "Got unrecoverable error while trying to update %@", v10, 0xCu);
    sub_226E97D1C(v11, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 48);

  (*(v16 + 8))(v15, v17);
  v18 = [v14 persistentStoreCoordinator];
  *(v0 + 32) = 0;
  LODWORD(v13) = [v18 removePersistentStore:v13 error:v0 + 32];

  v19 = *(v0 + 32);
  v20 = *(v0 + 136);
  if (!v13)
  {
    v167 = v19;
    sub_2276622C0();

    swift_willThrow();
    v209[0] = 0;
    v209[1] = 0xE000000000000000;
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
    v168 = [v20 description];
    v169 = sub_22766C000();
    v171 = v170;

    MEMORY[0x22AA98450](v169, v171);

    MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
    result = sub_22766CFB0();
    v172 = *MEMORY[0x277D85DE8];
    return result;
  }

  v21 = v19;

  while (1)
  {
    v25 = *(v0 + 144);
    if (v25 == *(v0 + 128))
    {
      break;
    }

    v26 = *(v0 + 120);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x22AA991A0](*(v0 + 144));
    }

    else
    {
      if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v27 = *(v26 + 8 * v25 + 32);
    }

    v30 = v27;
    *(v0 + 136) = v27;
    *(v0 + 144) = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    v31 = [*(v0 + 112) managedObjectModel];
    v32 = sub_2274EF600();
    v34 = v33;

    v35 = sub_2274E3964(v32, v34);
    if (qword_2813A2140 != -1)
    {
      v112 = v35;
      swift_once();
      v35 = v112;
    }

    v36 = word_2813B2670;
    *(v0 + 208) = word_2813B2670;
    v37 = sub_2274E2FEC(v35);
    v39 = v38;
    if (v37 == sub_2274E2FEC(v36) && v39 == v40)
    {
    }

    else
    {
      v42 = sub_22766D190();

      if ((v42 & 1) == 0)
      {
        v113 = *(v0 + 104);
        sub_22766A770();
        v114 = v30;
        v115 = sub_22766B380();
        v116 = sub_22766C890();

        v117 = os_log_type_enabled(v115, v116);
        v118 = *(v0 + 104);
        v120 = *(v0 + 48);
        v119 = *(v0 + 56);
        if (v117)
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v209[0] = v122;
          *v121 = 136446210;
          v123 = [v114 configurationName];
          v124 = sub_22766C000();
          v204 = v118;
          v126 = v125;

          v127 = v124;
          v3 = &unk_2813B2000;
          v128 = sub_226E97AE8(v127, v126, v209);

          *(v121 + 4) = v128;
          _os_log_impl(&dword_226E8E000, v115, v116, "Trying to update %{public}s without having loaded it on the current schema.", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x22AA9A450](v122, -1, -1);
          MEMORY[0x22AA9A450](v121, -1, -1);

          (*(v119 + 8))(v204, v120);
        }

        else
        {

          (*(v119 + 8))(v118, v120);
        }

        v129 = *(v0 + 200);
        v130 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
        v131 = swift_allocError();
        (*(*(v130 - 8) + 104))(v132, v129, v130);
        swift_willThrow();
        v2 = v131;
        goto LABEL_2;
      }
    }

    v43 = *(v0 + 112);
    v44 = sub_2274EEF88(v30);
    if (v44 == 56)
    {
      v143 = *(v0 + 96);
      sub_22766A770();
      v144 = v30;
      v145 = sub_22766B380();
      v146 = sub_22766C8B0();

      v147 = os_log_type_enabled(v145, v146);
      v148 = *(v0 + 96);
      v150 = *(v0 + 48);
      v149 = *(v0 + 56);
      v207 = v144;
      if (v147)
      {
        v205 = *(v0 + 48);
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v209[0] = v152;
        *v151 = 136446210;
        v153 = [v144 configurationName];
        v154 = sub_22766C000();
        v200 = v148;
        v156 = v155;

        v3 = &unk_2813B2000;
        v157 = sub_226E97AE8(v154, v156, v209);

        *(v151 + 4) = v157;
        _os_log_impl(&dword_226E8E000, v145, v146, "Got nil Data Version for %{public}s. Forcing to most recent.", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v152);
        MEMORY[0x22AA9A450](v152, -1, -1);
        MEMORY[0x22AA9A450](v151, -1, -1);

        (*(v149 + 8))(v200, v205);
      }

      else
      {

        (*(v149 + 8))(v148, v150);
      }

      v158 = v3[1649];
      *(v0 + 209) = v158;
      v159 = swift_task_alloc();
      *(v0 + 152) = v159;
      *v159 = v0;
      v159[1] = sub_2274D3AE0;
      v160 = *(v0 + 112);
      v161 = *(v0 + 40);
      v162 = *MEMORY[0x277D85DE8];
      v163 = nullsub_1;
      v164 = (v158 << 8) | (v36 << 16) | (v158 << 24) | v36;
      v165 = 0;
      v166 = v207;
LABEL_57:

      return sub_2274DCD0C(v164, v163, v165, v160, v166);
    }

    v45 = v44;
    v46 = v3[1649];
    *(v0 + 210) = v46;
    v47 = *(v0 + 208);
    v48 = sub_2274E2FEC(v47);
    v50 = v49;
    if (v48 == sub_2274E2FEC(v47) && v50 == v51)
    {
    }

    else
    {
      v52 = sub_22766D190();

      if ((v52 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v53 = sub_2275E0328(v45);
    v55 = v54;
    if (v53 == sub_2275E0328(v46) && v55 == v56)
    {
      v57 = *(v0 + 136);
    }

    else
    {
      v58 = sub_22766D190();

      if (v58)
      {
      }

      else
      {
LABEL_32:
        v59 = *(v0 + 136);
        v60 = *(v0 + 88);
        sub_22766A770();
        v61 = v59;
        v62 = sub_22766B380();
        v63 = sub_22766C8B0();

        if (os_log_type_enabled(v62, v63))
        {
          v192 = *(v0 + 208);
          v64 = *(v0 + 136);
          v195 = *(v0 + 56);
          v198 = *(v0 + 48);
          v202 = *(v0 + 88);
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v209[0] = v66;
          *v65 = 136446466;
          v67 = [v64 configurationName];
          v68 = sub_22766C000();
          v70 = v69;

          v71 = sub_226E97AE8(v68, v70, v209);

          *(v65 + 4) = v71;
          *(v65 + 12) = 2082;
          v72 = sub_22709BF40();
          v74 = sub_226E97AE8(v72, v73, v209);

          *(v65 + 14) = v74;
          _os_log_impl(&dword_226E8E000, v62, v63, "Updating %{public}s to current version %{public}s", v65, 0x16u);
          swift_arrayDestroy();
          v75 = v66;
          v3 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v75, -1, -1);
          MEMORY[0x22AA9A450](v65, -1, -1);

          v76 = *(v195 + 8);
          v76(v202, v198);
        }

        else
        {
          v77 = *(v0 + 88);
          v78 = *(v0 + 48);
          v79 = *(v0 + 56);

          v76 = *(v79 + 8);
          v76(v77, v78);
        }

        *(v0 + 168) = v76;
        v80 = *(v0 + 208);
        v81 = sub_2274E2FEC(*(v0 + 208));
        v83 = v82;
        if (v81 == sub_2274E2FEC(v80) && v83 == v84)
        {
        }

        else
        {
          v85 = sub_22766D190();

          if ((v85 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v86 = *(v0 + 210);
        v87 = sub_2275E0328(v45);
        v89 = v88;
        if (v87 == sub_2275E0328(v86) && v89 == v90)
        {
        }

        else
        {
          v91 = sub_22766D190();

          if ((v91 & 1) == 0)
          {
LABEL_47:
            LODWORD(v27) = sub_2274DDF0C(v80 | (v45 << 8));
            *(v0 + 204) = v27;
            *(v0 + 176) = v29;
LABEL_62:
            v208 = v27;
            v206 = v28;
            v173 = *(v0 + 80);
            v174 = v29;

            sub_22766A770();

            v175 = sub_22766B380();
            v176 = sub_22766C8B0();
            v177 = v174;

            if (os_log_type_enabled(v175, v176))
            {
              v197 = *(v0 + 80);
              v201 = *(v0 + 168);
              v191 = *(v0 + 56) + 8;
              v194 = *(v0 + 48);
              v178 = swift_slowAlloc();
              v179 = swift_slowAlloc();
              v209[0] = v179;
              *v178 = 136446210;
              *(v0 + 16) = 0x2870657453;
              *(v0 + 24) = 0xE500000000000000;

              v180 = sub_22709BF40();
              MEMORY[0x22AA98450](v180);

              MEMORY[0x22AA98450](540945696, 0xE400000000000000);
              v181 = sub_22709BF40();
              MEMORY[0x22AA98450](v181);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              v182 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v209);

              *(v178 + 4) = v182;
              _os_log_impl(&dword_226E8E000, v175, v176, "Executing %{public}s.", v178, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v179);
              MEMORY[0x22AA9A450](v179, -1, -1);
              MEMORY[0x22AA9A450](v178, -1, -1);

              v201(v197, v194);
            }

            else
            {
              v183 = *(v0 + 168);
              v184 = *(v0 + 80);
              v185 = *(v0 + 48);
              v186 = *(v0 + 56);

              v183(v184, v185);
            }

            v187 = swift_task_alloc();
            *(v0 + 184) = v187;
            *v187 = v0;
            v187[1] = sub_2274D4CD8;
            v166 = *(v0 + 136);
            v160 = *(v0 + 112);
            v188 = *(v0 + 40);
            v189 = *MEMORY[0x277D85DE8];
            v164 = v208;
            v163 = v206;
            v165 = v177;
            goto LABEL_57;
          }
        }

        v92 = *(v0 + 136);
        v93 = *(v0 + 72);
        sub_22766A770();
        v94 = v92;
        v95 = sub_22766B380();
        v96 = sub_22766C8B0();

        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 168);
        if (v97)
        {
          v190 = *(v0 + 208);
          v99 = *(v0 + 136);
          v199 = *(v0 + 48);
          v203 = *(v0 + 72);
          v193 = v99;
          v196 = *(v0 + 56) + 8;
          v100 = *(v0 + 210);
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v209[0] = v102;
          *v101 = 136446466;
          v103 = [v99 configurationName];
          v104 = sub_22766C000();
          v106 = v105;

          v107 = v104;
          v3 = &unk_2813B2000;
          v108 = sub_226E97AE8(v107, v106, v209);

          *(v101 + 4) = v108;
          *(v101 + 12) = 2082;
          v109 = sub_22709BF40();
          v111 = sub_226E97AE8(v109, v110, v209);

          *(v101 + 14) = v111;
          _os_log_impl(&dword_226E8E000, v95, v96, "Updated %{public}s to current version %{public}s", v101, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v102, -1, -1);
          MEMORY[0x22AA9A450](v101, -1, -1);

          v98(v203, v199);
        }

        else
        {
          v22 = *(v0 + 72);
          v23 = *(v0 + 48);
          v24 = *(v0 + 56);

          v98(v22, v23);
        }
      }
    }
  }

  v133 = *(v0 + 120);

  v135 = *(v0 + 96);
  v134 = *(v0 + 104);
  v137 = *(v0 + 80);
  v136 = *(v0 + 88);
  v139 = *(v0 + 64);
  v138 = *(v0 + 72);

  v140 = *(v0 + 8);
  v141 = *MEMORY[0x277D85DE8];

  return v140();
}

void sub_2274D8030(char a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v61 = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 112);
  swift_beginAccess();
  v56 = v3;
  v6 = *(v3 + 216);
  v60 = a1;
  if ((v6 & 0xC000000000000001) == 0)
  {
    v24 = *(v6 + 32);
    v25 = v24 & 0x3F;
    v26 = ((1 << v24) + 63) >> 6;
    v27 = 8 * v26;

    if (v25 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v49 = swift_slowAlloc();
        v7 = sub_2274DD690(v49, v26, v6, sub_2274DE614);

        MEMORY[0x22AA9A450](v49, -1, -1);
        goto LABEL_37;
      }
    }

    v51 = v26;
    v50 = &v50;
    MEMORY[0x28223BE20](v28);
    v29 = &v50 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v27);
    v52 = 0;
    v53 = v5;
    v30 = 0;
    v31 = 1 << *(v6 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v6 + 56);
    v34 = (v31 + 63) >> 6;
    while (v33)
    {
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_32:
      v5 = v35 | (v30 << 6);
      v38 = *(*(v6 + 48) + 8 * v5);
      sub_22706FA40();
      v39 = sub_227669C10();

      if ((v39 & 1) == 0)
      {
        *&v29[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_36:
          v7 = sub_22726C3F4(v29, v51, v52, v6);
          goto LABEL_37;
        }
      }
    }

    v36 = v30;
    v5 = v53;
    while (1)
    {
      v30 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
        goto LABEL_36;
      }

      v37 = *(v6 + 56 + 8 * v30);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v33 = (v37 - 1) & v37;
        goto LABEL_32;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84FA0];
  aBlock[0] = MEMORY[0x277D84FA0];

  sub_22766CCE0();
  v8 = sub_22766CD50();
  if (v8)
  {
    v9 = v8;
    sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
    v10 = v9;
    do
    {
      v57 = v10;
      swift_dynamicCast();
      sub_22706FA40();
      v11 = v58;
      if (sub_227669C10())
      {
      }

      else
      {
        v12 = v7[2];
        if (v7[3] <= v12)
        {
          sub_2270D905C(v12 + 1);
        }

        v7 = aBlock[0];
        v13 = *(aBlock[0] + 40);
        v14 = sub_22766CB20();
        v15 = aBlock[0] + 56;
        v16 = -1 << *(aBlock[0] + 32);
        v17 = v14 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(aBlock[0] + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(aBlock[0] + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              goto LABEL_42;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(v7[6] + 8 * v19) = v11;
        ++v7[2];
      }

      v10 = sub_22766CD50();
    }

    while (v10);
  }

LABEL_37:
  sub_22726CF64(v7);

  sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  v41 = sub_22766C2B0();

  [v5 setPersistentStoreDescriptions_];

  v42 = [v5 persistentStoreDescriptions];
  v43 = sub_22766C2C0();

  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_43:
  v44 = sub_22766CD20();
LABEL_39:

  if (v44)
  {
    v45 = swift_allocObject();
    v46 = v55;
    v45[2] = v54;
    v45[3] = v46;
    v45[4] = v56;
    aBlock[4] = sub_2274DE680;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2274EF574;
    aBlock[3] = &block_descriptor_35;
    v47 = _Block_copy(aBlock);

    [v5 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v47);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2274D8600(void *a1, void *a2, void (*a3)(void *, void *))
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    a3(a1, a2);
  }

  else
  {
    swift_beginAccess();
    v12 = sub_22700D1B4(a1);
    swift_endAccess();

    sub_22766A770();
    v13 = a1;
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136446210;
      v18 = [v13 configuration];
      if (v18)
      {
        v19 = v18;
        v20 = sub_22766C000();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v27[1] = v20;
      v27[2] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v23 = sub_22766CB80();
      v25 = v24;

      v26 = sub_226E97AE8(v23, v25, v27);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_226E8E000, v14, v15, "Loaded persistent store: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9A450](v17, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void sub_2274D88B0(void *a1, void *a2)
{
  v141 = a2;
  v3 = sub_22766B390();
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v139 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v136 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v137 = &v136 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v136 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v138 = &v136 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v136 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v136 - v19;
  swift_getErrorValue();
  v21 = sub_22766D280();
  v23 = v22;
  swift_getErrorValue();
  v24 = sub_22766D270();
  v25 = *MEMORY[0x277CCA050];
  v27 = sub_22766C000() == v21 && v26 == v23;
  v144 = v23;
  if (v27)
  {

    if (v24 == 260)
    {
LABEL_7:
      sub_22766A770();
      v29 = v141;
      v30 = sub_22766B380();
      v31 = sub_22766C890();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v153 = v33;
        *v32 = 136446210;
        v34 = [v29 configuration];
        if (v34)
        {
          v35 = v34;
          v36 = sub_22766C000();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        v154 = v36;
        v155 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v79 = sub_22766CB80();
        v81 = v80;

        v82 = sub_226E97AE8(v79, v81, &v153);

        *(v32 + 4) = v82;
        _os_log_impl(&dword_226E8E000, v30, v31, "Load - Failed for %{public}s. File doesn't exist.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x22AA9A450](v33, -1, -1);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      (*(v142 + 8))(v20, v143);
      return;
    }
  }

  else
  {
    v28 = sub_22766D190();

    if ((v28 & 1) != 0 && v24 == 260)
    {
      goto LABEL_7;
    }
  }

  if (sub_22766C000() == v21 && v39 == v144)
  {
  }

  else
  {
    v40 = sub_22766D190();

    if ((v40 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v24 == 256)
  {
    swift_getErrorValue();
    if ((sub_22722D968() & 0x1FFFFFFFFLL) == 0x17)
    {
      sub_22766A770();
      v41 = v141;
      v42 = a1;
      v43 = sub_22766B380();
      v44 = sub_22766C890();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v153 = v46;
        *v45 = 136446466;
        v47 = [v41 configuration];
        if (v47)
        {
          v48 = v47;
          v49 = sub_22766C000();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v154 = v49;
        v155 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v111 = sub_22766CB80();
        v113 = v112;

        v114 = sub_226E97AE8(v111, v113, &v153);

        *(v45 + 4) = v114;
        *(v45 + 12) = 2082;
        swift_getErrorValue();
        v115 = MEMORY[0x22AA995D0](v145, v146);
        v117 = sub_226E97AE8(v115, v116, &v153);

        *(v45 + 14) = v117;
        _os_log_impl(&dword_226E8E000, v43, v44, "Load - Failed for %{public}s due to data protection error: %{public}s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      v118 = *(v142 + 8);
      v118(v18, v143);
      v106 = v138;
      sub_22766A770();
      v119 = v140;
      goto LABEL_54;
    }
  }

LABEL_20:
  if (sub_22766C000() == v21 && v52 == v144)
  {
  }

  else
  {
    v53 = sub_22766D190();

    if ((v53 & 1) == 0)
    {
LABEL_28:
      if (sub_22766C000() == v21 && v65 == v144)
      {
      }

      else
      {
        v66 = sub_22766D190();

        if ((v66 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v24 == 259)
      {
        swift_getErrorValue();
        if ((sub_22722D968() & 0x1FFFFFFFFLL) != 0xB)
        {
          swift_getErrorValue();
          if ((sub_22722D968() & 0x1FFFFFFFFLL) != 0x1A)
          {
            v98 = v137;
            sub_22766A770();
            v99 = v141;
            v100 = a1;
            v101 = sub_22766B380();
            v102 = sub_22766C890();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v153 = v104;
              *v103 = 136446466;
              v105 = [v99 configuration];
              v106 = v136;
              if (v105)
              {
                v107 = v105;
                v108 = sub_22766C000();
                v110 = v109;
              }

              else
              {
                v108 = 0;
                v110 = 0;
              }

              v154 = v108;
              v155 = v110;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
              v129 = sub_22766CB80();
              v131 = v130;

              v132 = sub_226E97AE8(v129, v131, &v153);

              *(v103 + 4) = v132;
              *(v103 + 12) = 2082;
              swift_getErrorValue();
              v133 = MEMORY[0x22AA995D0](v149, v150);
              v135 = sub_226E97AE8(v133, v134, &v153);

              *(v103 + 14) = v135;
              _os_log_impl(&dword_226E8E000, v101, v102, "Load - Failed for %{public}s due to recoverable error: %{public}s", v103, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v104, -1, -1);
              MEMORY[0x22AA9A450](v103, -1, -1);

              v118 = *(v142 + 8);
              v118(v137, v143);
              v119 = v140;
            }

            else
            {

              v118 = *(v142 + 8);
              v118(v98, v143);
              v119 = v140;
              v106 = v136;
            }

            sub_22766A770();
LABEL_54:

            v120 = sub_22766B380();
            v121 = sub_22766C8A0();

            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              v154 = v123;
              *v122 = 136446210;
              v124 = v119[19];
              __swift_project_boxed_opaque_existential_0(v119 + 15, v119[18]);
              LOBYTE(v153) = sub_22766AC70();
              v125 = sub_2271115CC();
              v126 = MEMORY[0x22AA958B0](MEMORY[0x277D4F1D0], v125);
              v128 = sub_226E97AE8(v126, v127, &v154);

              *(v122 + 4) = v128;
              _os_log_impl(&dword_226E8E000, v120, v121, "Persistent store load lost class B. Current class: %{public}s", v122, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v123);
              MEMORY[0x22AA9A450](v123, -1, -1);
              MEMORY[0x22AA9A450](v122, -1, -1);
            }

            v118(v106, v143);
            return;
          }
        }
      }

LABEL_35:

      v67 = v139;
      sub_22766A770();
      v68 = v141;
      v69 = a1;
      v70 = sub_22766B380();
      v71 = sub_22766C890();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v153 = v73;
        *v72 = 136446466;
        v74 = [v68 configuration];
        if (v74)
        {
          v75 = v74;
          v76 = sub_22766C000();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        v154 = v76;
        v155 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v90 = sub_22766CB80();
        v92 = v91;

        v93 = sub_226E97AE8(v90, v92, &v153);

        *(v72 + 4) = v93;
        *(v72 + 12) = 2082;
        swift_getErrorValue();
        v94 = MEMORY[0x22AA995D0](v151, v152);
        v96 = sub_226E97AE8(v94, v95, &v153);

        *(v72 + 14) = v96;
        _os_log_impl(&dword_226E8E000, v70, v71, "Load - Failed for %{public}s due to unrecoverable error: %{public}s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v73, -1, -1);
        MEMORY[0x22AA9A450](v72, -1, -1);

        (*(v142 + 8))(v139, v143);
      }

      else
      {

        (*(v142 + 8))(v67, v143);
      }

      swift_beginAccess();
      v97 = sub_22700D1B4(v68);
      swift_endAccess();

      return;
    }
  }

  if (v24 != 134100)
  {
    goto LABEL_28;
  }

  sub_22766A770();
  v54 = v141;
  v55 = a1;
  v56 = sub_22766B380();
  v57 = sub_22766C8B0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v153 = v59;
    *v58 = 136446466;
    v60 = [v54 configuration];
    if (v60)
    {
      v61 = v60;
      v62 = sub_22766C000();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v154 = v62;
    v155 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v83 = sub_22766CB80();
    v85 = v84;

    v86 = sub_226E97AE8(v83, v85, &v153);

    *(v58 + 4) = v86;
    *(v58 + 12) = 2082;
    swift_getErrorValue();
    v87 = MEMORY[0x22AA995D0](v147, v148);
    v89 = sub_226E97AE8(v87, v88, &v153);

    *(v58 + 14) = v89;
    _os_log_impl(&dword_226E8E000, v56, v57, "Load - Failed for %{public}s due to recoverable version hash mismatch error: %{public}s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v58, -1, -1);
  }

  (*(v142 + 8))(v13, v143);
}

uint64_t sub_2274D96A0(char a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v2 + 160) = v1;
  *(v2 + 338) = a1;
  v3 = sub_22766B390();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v6 = sub_2276624A0();
  *(v2 + 192) = v6;
  v7 = *(v6 - 8);
  *(v2 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v9 = sub_227669890();
  *(v2 + 216) = v9;
  v10 = *(v9 - 8);
  *(v2 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2274D9848, v1, 0);
}

uint64_t sub_2274D9848()
{
  v104 = v0;
  v103 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 160);
  v5 = *(v0 + 338);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.attemptMigrationCurrentDataProtection", 62, 2, &dword_226E8E000, 1, (v0 + 56));
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v6 = *(v4 + 216);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v101 = v7;
  if ((v6 & 0xC000000000000001) == 0)
  {
    v29 = *(v6 + 32);
    v30 = v29 & 0x3F;
    v8 = ((1 << v29) + 63) >> 6;
    v18 = (8 * v8);

    if (v30 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

  v8 = MEMORY[0x277D84FA0];
  v102 = MEMORY[0x277D84FA0];

  sub_22766CCE0();
  v9 = sub_22766CD50();
  if (!v9)
  {
LABEL_20:

    goto LABEL_37;
  }

  v10 = v9;
  v6 = sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  v11 = v10;
  while (1)
  {
    *(v0 + 152) = v11;
    v12 = *(v0 + 338);
    swift_dynamicCast();
    v13 = *(v0 + 144);
    sub_22706FA40();
    v14 = sub_227669C10();
    v15 = *(v0 + 144);
    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_5:
    v11 = sub_22766CD50();
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v16 = *(v8 + 16);
  if (*(v8 + 24) <= v16)
  {
    sub_2270D905C(v16 + 1);
    v8 = v102;
  }

  v17 = *(v8 + 40);
  v18 = v15;
  v19 = sub_22766CB20();
  v20 = v8 + 56;
  v21 = -1 << *(v8 + 32);
  v22 = v19 & ~v21;
  v23 = v22 >> 6;
  if (((-1 << v22) & ~*(v8 + 56 + 8 * (v22 >> 6))) != 0)
  {
    v24 = __clz(__rbit64((-1 << v22) & ~*(v8 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v8 + 48) + 8 * v24) = v15;
    ++*(v8 + 16);
    goto LABEL_5;
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v20 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_70:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v98 = &v98;
    v99 = v8;
    MEMORY[0x28223BE20](v31);
    v8 = &v98 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v18);
    v100 = 0;
    v32 = 0;
    v33 = 1 << *(v6 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v6 + 56);
    v36 = (v33 + 63) >> 6;
    while (v35)
    {
      v37 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_32:
      v40 = v37 | (v32 << 6);
      v41 = *(v0 + 338);
      v18 = *(*(v6 + 48) + 8 * v40);
      sub_22706FA40();
      LOBYTE(v41) = sub_227669C10();

      if ((v41 & 1) == 0)
      {
        *(v8 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v100++, 1))
        {
          __break(1u);
LABEL_36:
          v8 = sub_22726C3F4(v8, v99, v100, v6);
          goto LABEL_37;
        }
      }
    }

    v38 = v32;
    while (1)
    {
      v32 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v32 >= v36)
      {
        goto LABEL_36;
      }

      v39 = *(v6 + 56 + 8 * v32);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v35 = (v39 - 1) & v39;
        goto LABEL_32;
      }
    }
  }

  v97 = swift_slowAlloc();
  v8 = sub_2274DD690(v97, v8, v6, sub_2274DE6F8);

  MEMORY[0x22AA9A450](v97, -1, -1);
LABEL_37:
  *(v0 + 240) = v8;
  v43 = *(v0 + 160);

  v44 = v43[26];
  __swift_project_boxed_opaque_existential_0(v43 + 22, v43[25]);
  *(v0 + 336) = 13;
  *(v0 + 248) = sub_226F19410();
  *(v0 + 256) = sub_226F19464();

  v100 = "MigrationCurrentDataProtection";
  v101 = "PersistenceStoreDelegate.swift";
  sub_22766A130();

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_22766CCE0();
    sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
    sub_2274DD5CC();
    sub_22766C700();
    v8 = *(v0 + 16);
    v18 = *(v0 + 24);
    v45 = *(v0 + 32);
    v46 = *(v0 + 40);
    v47 = *(v0 + 48);
  }

  else
  {
    v48 = -1 << *(v8 + 32);
    v18 = (v8 + 56);
    v45 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = v50 & *(v8 + 56);

    v46 = 0;
  }

  *(v0 + 272) = v18;
  *(v0 + 280) = v45;
  v6 = 0x277CBE000uLL;
  for (*(v0 + 264) = v8; ; v8 = *(v0 + 264))
  {
    if (v8 < 0)
    {
      v62 = sub_22766CD50();
      if (!v62)
      {
        break;
      }

      *(v0 + 136) = v62;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v61 = *(v0 + 128);
      i = v46;
      v60 = v47;
    }

    else
    {
      v57 = v46;
      v58 = v47;
      for (i = v46; !v58; ++v57)
      {
        i = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_68;
        }

        v18 = *(v0 + 280);
        if (i >= ((v18 + 64) >> 6))
        {
          v47 = 0;
          goto LABEL_59;
        }

        v58 = *(*(v0 + 272) + 8 * i);
      }

      v60 = (v58 - 1) & v58;
      v61 = *(*(v8 + 48) + ((i << 9) | (8 * __clz(__rbit64(v58)))));
    }

    *(v0 + 296) = i;
    *(v0 + 304) = v60;
    *(v0 + 288) = v61;
    if (!v61)
    {
      break;
    }

    v63 = [v61 URL];
    if (!v63)
    {
      result = sub_22766CFB0();
      v92 = *MEMORY[0x277D85DE8];
      return result;
    }

    v64 = v63;
    v65 = *(v0 + 208);
    sub_227662430();

    v66 = objc_opt_self();
    v67 = sub_2276623E0();
    *(v0 + 120) = 0;
    v68 = [v66 cachedModelForPersistentStoreWithURL:v67 options:0 error:v0 + 120];
    *(v0 + 312) = v68;

    v69 = *(v0 + 120);
    if (v68)
    {
      v70 = v69;
      v71 = sub_2274EF600();
      v93 = sub_2274E3964(v71, v72);
      v94 = swift_task_alloc();
      *(v0 + 320) = v94;
      *v94 = v0;
      v94[1] = sub_2274DA328;
      v95 = *(v0 + 160);
      v96 = *MEMORY[0x277D85DE8];

      return sub_2274DAF98(v61, v93);
    }

    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v53 = *(v0 + 192);
    v54 = v69;
    v55 = sub_2276622C0();

    swift_willThrow();
    (*(v52 + 8))(v51, v53);
    v56 = *(v0 + 288);
    v18 = *(v0 + 160);
    sub_2274D88B0(v55, v56);

    v46 = *(v0 + 296);
    v47 = *(v0 + 304);
  }

  v18 = *(v0 + 280);
  v8 = *(v0 + 264);
LABEL_59:
  v73 = *(v0 + 272);
  v75 = *(v0 + 248);
  v74 = *(v0 + 256);
  v76 = *(v0 + 240);
  v77 = *(v0 + 184);
  v78 = *(v0 + 160);

  sub_226EBB218(v8, v73, v18, v46, v47);
  v79 = v78[26];
  __swift_project_boxed_opaque_existential_0(v78 + 22, v78[25]);
  *(v0 + 337) = 13;
  sub_22766A120();
  v80 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_227669930();
  sub_22766A710();
  v81 = sub_22766B380();
  v82 = sub_22766C8B0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_226E8E000, v81, v82, "Finished Attempted database migration", v83, 2u);
    MEMORY[0x22AA9A450](v83, -1, -1);
  }

  v84 = *(v0 + 232);
  v85 = *(v0 + 208);
  v87 = *(v0 + 176);
  v86 = *(v0 + 184);
  v88 = *(v0 + 168);

  (*(v87 + 8))(v86, v88);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v89 = *(v0 + 8);
  v90 = *MEMORY[0x277D85DE8];

  return v89();
}

uint64_t sub_2274DA328()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_2274DAA10;
  }

  else
  {
    v6 = sub_2274DA480;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2274DA480()
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  (*(v3 + 8))(v2, v4);
  for (i = *(v0 + 328); ; i = 0)
  {
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = *(v0 + 264);
    if (v15 < 0)
    {
      v22 = sub_22766CD50();
      if (!v22)
      {
        goto LABEL_18;
      }

      *(v0 + 136) = v22;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v21 = *(v0 + 128);
      v18 = v13;
      v20 = v14;
      goto LABEL_12;
    }

    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = v16;
    if (!v14)
    {
      break;
    }

LABEL_9:
    v20 = (v17 - 1) & v17;
    v21 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
LABEL_12:
    *(v0 + 296) = v18;
    *(v0 + 304) = v20;
    *(v0 + 288) = v21;
    if (!v21)
    {
LABEL_18:
      v19 = *(v0 + 280);
      v15 = *(v0 + 264);
      goto LABEL_19;
    }

    v23 = [v21 URL];
    if (!v23)
    {
      result = sub_22766CFB0();
      v51 = *MEMORY[0x277D85DE8];
      return result;
    }

    v24 = v23;
    v25 = *(v0 + 208);
    sub_227662430();

    v26 = objc_opt_self();
    v27 = sub_2276623E0();
    *(v0 + 120) = 0;
    v28 = [v26 cachedModelForPersistentStoreWithURL:v27 options:0 error:v0 + 120];
    *(v0 + 312) = v28;

    v29 = *(v0 + 120);
    if (v28)
    {
      v30 = v29;
      v31 = sub_2274EF600();
      v33 = sub_2274E3964(v31, v32);
      if (!i)
      {
        v52 = v33;
        v53 = swift_task_alloc();
        *(v0 + 320) = v53;
        *v53 = v0;
        v53[1] = sub_2274DA328;
        v54 = *(v0 + 160);
        v55 = *MEMORY[0x277D85DE8];

        return sub_2274DAF98(v21, v52);
      }

      v10 = i;
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    }

    else
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = *(v0 + 192);
      v9 = v29;
      v10 = sub_2276622C0();

      swift_willThrow();
      (*(v7 + 8))(v6, v8);
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 160);
    sub_2274D88B0(v10, v11);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    v19 = *(v0 + 280);
    if (v18 >= ((v19 + 64) >> 6))
    {
      break;
    }

    v17 = *(*(v0 + 272) + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_19:
  v34 = *(v0 + 272);
  v35 = *(v0 + 248);
  v36 = *(v0 + 240);
  v56 = *(v0 + 256);
  v57 = *(v0 + 184);
  v37 = *(v0 + 160);

  sub_226EBB218(v15, v34, v19, v13, v14);
  v38 = v37[26];
  __swift_project_boxed_opaque_existential_0(v37 + 22, v37[25]);
  *(v0 + 337) = 13;
  sub_22766A120();
  v39 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_227669930();
  sub_22766A710();
  v40 = sub_22766B380();
  v41 = sub_22766C8B0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_226E8E000, v40, v41, "Finished Attempted database migration", v42, 2u);
    MEMORY[0x22AA9A450](v42, -1, -1);
  }

  v43 = *(v0 + 232);
  v44 = *(v0 + 208);
  v46 = *(v0 + 176);
  v45 = *(v0 + 184);
  v47 = *(v0 + 168);

  (*(v46 + 8))(v45, v47);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v48 = *(v0 + 8);
  v49 = *MEMORY[0x277D85DE8];

  return v48();
}

uint64_t sub_2274DAA10()
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);
  while (1)
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 160);
    sub_2274D88B0(v4, v9);

    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 264);
    if (v13 < 0)
    {
      v20 = sub_22766CD50();
      if (!v20)
      {
        goto LABEL_16;
      }

      *(v0 + 136) = v20;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v19 = *(v0 + 128);
      v16 = v11;
      v18 = v12;
      goto LABEL_11;
    }

    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = v14;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v18 = (v15 - 1) & v15;
    v19 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
LABEL_11:
    *(v0 + 296) = v16;
    *(v0 + 304) = v18;
    *(v0 + 288) = v19;
    if (!v19)
    {
LABEL_16:
      v17 = *(v0 + 280);
      v13 = *(v0 + 264);
      goto LABEL_17;
    }

    v21 = [v19 URL];
    if (!v21)
    {
      result = sub_22766CFB0();
      v48 = *MEMORY[0x277D85DE8];
      return result;
    }

    v22 = v21;
    v23 = *(v0 + 208);
    sub_227662430();

    v24 = objc_opt_self();
    v25 = sub_2276623E0();
    *(v0 + 120) = 0;
    v26 = [v24 cachedModelForPersistentStoreWithURL:v25 options:0 error:v0 + 120];
    *(v0 + 312) = v26;

    v27 = *(v0 + 120);
    if (v26)
    {
      v28 = v27;
      v29 = sub_2274EF600();
      v49 = sub_2274E3964(v29, v30);
      v50 = swift_task_alloc();
      *(v0 + 320) = v50;
      *v50 = v0;
      v50[1] = sub_2274DA328;
      v51 = *(v0 + 160);
      v52 = *MEMORY[0x277D85DE8];

      return sub_2274DAF98(v19, v49);
    }

    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = v27;
    v4 = sub_2276622C0();

    swift_willThrow();
    (*(v6 + 8))(v5, v7);
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    v17 = *(v0 + 280);
    if (v16 >= ((v17 + 64) >> 6))
    {
      break;
    }

    v15 = *(*(v0 + 272) + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_17:
  v31 = *(v0 + 272);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v53 = *(v0 + 256);
  v54 = *(v0 + 184);
  v34 = *(v0 + 160);

  sub_226EBB218(v13, v31, v17, v11, v12);
  v35 = v34[26];
  __swift_project_boxed_opaque_existential_0(v34 + 22, v34[25]);
  *(v0 + 337) = 13;
  sub_22766A120();
  v36 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_227669930();
  sub_22766A710();
  v37 = sub_22766B380();
  v38 = sub_22766C8B0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_226E8E000, v37, v38, "Finished Attempted database migration", v39, 2u);
    MEMORY[0x22AA9A450](v39, -1, -1);
  }

  v40 = *(v0 + 232);
  v41 = *(v0 + 208);
  v43 = *(v0 + 176);
  v42 = *(v0 + 184);
  v44 = *(v0 + 168);

  (*(v43 + 8))(v42, v44);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v45 = *(v0 + 8);
  v46 = *MEMORY[0x277D85DE8];

  return v45();
}

uint64_t sub_2274DAF98(uint64_t a1, char a2)
{
  *(v3 + 369) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  v4 = sub_227669890();
  *(v3 + 200) = v4;
  v5 = *(v4 - 8);
  *(v3 + 208) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v7 = sub_22766B390();
  *(v3 + 224) = v7;
  v8 = *(v7 - 8);
  *(v3 + 232) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274DB0F4, v2, 0);
}

uint64_t sub_2274DB0F4()
{
  v202 = v0;
  v1 = v0;
  v2 = *(v0 + 280);
  v3 = *(v0 + 184);
  sub_22766A770();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v201[0] = v9;
    *v8 = 136446466;
    v10 = [v7 configuration];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22766C000();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v19 = *(v1 + 232);
    v191 = *(v1 + 224);
    v196 = *(v1 + 280);
    v20 = *(v1 + 369);
    *(v1 + 160) = v12;
    *(v1 + 168) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v21 = sub_22766CB80();
    v23 = v22;

    v24 = sub_226E97AE8(v21, v23, v201);

    *(v8 + 4) = v24;
    *(v8 + 12) = 2082;
    *(v1 + 368) = v20;
    v25 = sub_22709C030();
    v26 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v25);
    v28 = sub_226E97AE8(v26, v27, v201);

    *(v8 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v5, v6, "Migrating store %{public}s on schema version %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18 = *(v19 + 8);
    v18(v196, v191);
  }

  else
  {
    v15 = *(v1 + 280);
    v16 = *(v1 + 224);
    v17 = *(v1 + 232);

    v18 = *(v17 + 8);
    v18(v15, v16);
  }

  *(v1 + 288) = v18;
  v30 = *(v1 + 208);
  v29 = *(v1 + 216);
  v31 = *(v1 + 200);
  v32 = *(v1 + 369);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.migrateStore", 37, 2, &dword_226E8E000, 1, (v1 + 16));
  (*(v30 + 8))(v29, v31);
  v33 = swift_allocObject();
  *(v1 + 296) = v33;
  *(v1 + 304) = sub_226E99364(0, &unk_28139D268, 0x277CBE4A0);
  v34 = sub_2274EE780(v32);
  v35 = *(v1 + 184);
  *(v33 + 16) = v34;
  v36 = v34;
  sub_2274EFEFC(v35);

  v37 = *(v33 + 16);
  v39 = sub_2274DDD4C(v33);
  v40 = sub_2274EEF88(v39);

  if (v40 == 56)
  {
    v41 = *(v1 + 272);
    v42 = *(v1 + 184);
    v40 = sub_2275E0B44(*(v1 + 369));
    sub_22766A770();
    v43 = v42;
    v44 = sub_22766B380();
    v45 = sub_22766C890();

    if (os_log_type_enabled(v44, v45))
    {
      v197 = v40;
      v46 = *(v1 + 184);
      v47 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v201[0] = v192;
      *v47 = 136315650;
      v48 = [v46 configuration];
      if (v48)
      {
        v49 = v48;
        v50 = sub_22766C000();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      v180 = *(v1 + 232);
      v183 = *(v1 + 224);
      v186 = *(v1 + 272);
      v58 = *(v1 + 369);
      *(v1 + 144) = v50;
      *(v1 + 152) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v59 = sub_22766CB80();
      v61 = v60;

      v62 = sub_226E97AE8(v59, v61, v201);

      *(v47 + 4) = v62;
      *(v47 + 12) = 2080;
      *(v1 + 366) = v58;
      v63 = sub_22709C030();
      v64 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v63);
      v66 = sub_226E97AE8(v64, v65, v201);

      *(v47 + 14) = v66;
      *(v47 + 22) = 2080;
      v40 = v197;
      *(v1 + 367) = v197;
      v67 = sub_22709C084();
      v68 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v67);
      v70 = sub_226E97AE8(v68, v69, v201);

      *(v47 + 24) = v70;
      _os_log_impl(&dword_226E8E000, v44, v45, "Found nil data version for %s on %s. Setting it to %s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v192, -1, -1);
      MEMORY[0x22AA9A450](v47, -1, -1);

      v57 = v183;
      v56 = v186;
    }

    else
    {
      v53 = *(v1 + 272);
      v54 = *(v1 + 224);
      v55 = *(v1 + 232);

      v56 = v53;
      v57 = v54;
    }

    v18(v56, v57);
  }

  v71 = *(v1 + 264);
  v72 = *(v1 + 184);
  sub_22766A770();
  v73 = v72;
  v74 = sub_22766B380();
  v75 = sub_22766C8B0();

  if (os_log_type_enabled(v74, v75))
  {
    v198 = v40;
    v76 = *(v1 + 184);
    v77 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v201[0] = v193;
    *v77 = 136446466;
    v78 = [v76 configuration];
    if (v78)
    {
      v79 = v78;
      v80 = sub_22766C000();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    v181 = *(v1 + 232);
    v184 = *(v1 + 224);
    v187 = *(v1 + 264);
    v89 = *(v1 + 369);
    *(v1 + 128) = v80;
    *(v1 + 136) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v90 = sub_22766CB80();
    v92 = v91;

    v93 = sub_226E97AE8(v90, v92, v201);

    *(v77 + 4) = v93;
    *(v77 + 12) = 2080;
    v40 = v198;
    v94 = sub_22709BF40();
    v96 = sub_226E97AE8(v94, v95, v201);

    *(v77 + 14) = v96;
    _os_log_impl(&dword_226E8E000, v74, v75, "Starting migration steps for %{public}s on %s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v193, -1, -1);
    MEMORY[0x22AA9A450](v77, -1, -1);

    v88 = v184;
    v86 = v181 + 8;
    v87 = v187;
  }

  else
  {
    v83 = *(v1 + 264);
    v84 = *(v1 + 224);
    v85 = *(v1 + 232);

    v86 = v85 + 8;
    v87 = v83;
    v88 = v84;
  }

  v18(v87, v88);
  *(v1 + 312) = v86;
  swift_beginAccess();
  v97 = *(v1 + 369);
  *(v1 + 370) = v97;
  if (qword_2813A2140 != -1)
  {
    swift_once();
  }

  v98 = HIBYTE(word_2813B2670);
  v99 = word_2813B2670;
  v100 = sub_2274E2FEC(v97);
  v102 = v101;
  if (v100 == sub_2274E2FEC(v99) && v102 == v103)
  {
  }

  else
  {
    v104 = sub_22766D190();

    if ((v104 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v105 = sub_2275E0328(v40);
  v107 = v106;
  if (v105 == sub_2275E0328(v98) && v107 == v108)
  {

LABEL_35:
    v110 = *(v1 + 240);
    v111 = *(v1 + 184);
    sub_22766A770();
    v112 = v111;
    v113 = sub_22766B380();
    v114 = sub_22766C8B0();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = *(v1 + 184);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v201[0] = v117;
      *v116 = 136446210;
      v118 = [v115 configuration];
      if (v118)
      {
        v119 = v118;
        v120 = sub_22766C000();
        v122 = v121;
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      v195 = *(v1 + 312);
      v200 = *(v1 + 296);
      v189 = *(v1 + 288);
      v147 = *(v1 + 240);
      v148 = *(v1 + 224);
      *(v1 + 112) = v120;
      *(v1 + 120) = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v149 = sub_22766CB80();
      v151 = v150;

      v152 = sub_226E97AE8(v149, v151, v201);

      *(v116 + 4) = v152;
      _os_log_impl(&dword_226E8E000, v113, v114, "Finished migration steps for %{public}s.", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x22AA9A450](v117, -1, -1);
      MEMORY[0x22AA9A450](v116, -1, -1);

      v189(v147, v148);
    }

    else
    {
      v125 = *(v1 + 312);
      v127 = *(v1 + 288);
      v126 = *(v1 + 296);
      v128 = *(v1 + 240);
      v129 = *(v1 + 224);

      v127(v128, v129);
    }

    v154 = *(v1 + 272);
    v153 = *(v1 + 280);
    v156 = *(v1 + 256);
    v155 = *(v1 + 264);
    v157 = v1;
    v160 = v1 + 240;
    v159 = *(v1 + 240);
    v158 = *(v160 + 8);
    v161 = v157[27];
    v162 = v157[6];
    __swift_project_boxed_opaque_existential_0(v157 + 2, v157[5]);
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0(v157 + 2);

    v163 = v157[1];

    return v163();
  }

  v109 = sub_22766D190();

  if (v109)
  {
    goto LABEL_35;
  }

LABEL_38:
  v123 = sub_2274DDF0C(v97 | (v40 << 8));
  *(v1 + 360) = v123;
  *(v1 + 320) = v124;
  v130 = v123;
  v131 = v124;
  v199 = v132;
  v133 = *(v1 + 256);
  v134 = *(v1 + 184);

  sub_22766A770();
  v135 = v134;

  v136 = sub_22766B380();
  v137 = sub_22766C8B0();

  if (os_log_type_enabled(v136, v137))
  {
    v188 = *(v1 + 184);
    v138 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    *(v1 + 176) = v194;
    *v138 = 136446466;
    *(v1 + 80) = 0x2870657453;
    *(v1 + 88) = 0xE500000000000000;

    v139 = sub_22709BF40();
    MEMORY[0x22AA98450](v139);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v140 = sub_22709BF40();
    MEMORY[0x22AA98450](v140);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v141 = sub_226E97AE8(*(v1 + 80), *(v1 + 88), (v1 + 176));

    *(v138 + 4) = v141;
    *(v138 + 12) = 2082;
    v142 = [v188 configuration];
    if (v142)
    {
      v143 = v142;
      v144 = sub_22766C000();
      v146 = v145;
    }

    else
    {
      v144 = 0;
      v146 = 0;
    }

    v185 = *(v1 + 288);
    v190 = *(v1 + 312);
    v168 = *(v1 + 256);
    v182 = *(v1 + 224);
    *(v1 + 96) = v144;
    *(v1 + 104) = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v169 = sub_22766CB80();
    v171 = v170;

    v172 = sub_226E97AE8(v169, v171, (v1 + 176));

    *(v138 + 14) = v172;
    _os_log_impl(&dword_226E8E000, v136, v137, "Executing %{public}s on %{public}s", v138, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v194, -1, -1);
    MEMORY[0x22AA9A450](v138, -1, -1);

    v185(v168, v182);
  }

  else
  {
    v164 = *(v1 + 312);
    v165 = *(v1 + 288);
    v166 = *(v1 + 256);
    v167 = *(v1 + 224);

    v165(v166, v167);
  }

  v173 = *(v1 + 296);
  v174 = *(v173 + 16);
  *(v1 + 328) = v174;
  v175 = v174;
  v176 = sub_2274DDD4C(v173);
  *(v1 + 336) = v176;
  v177 = v176;
  v178 = swift_task_alloc();
  *(v1 + 344) = v178;
  *v178 = v1;
  v178[1] = sub_2274DC020;
  v179 = *(v1 + 192);

  return sub_2274DCD0C(v130, v199, v131, v175, v177);
}

uint64_t sub_2274DC020()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = v2[42];
  v6 = v2[41];
  v7 = v2[24];

  if (v0)
  {
    v8 = sub_2274DCC00;
  }

  else
  {
    v8 = sub_2274DC180;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2274DC180()
{
  v145 = v0;
  v1 = *(v0 + 370);
  v2 = sub_2274E2FEC(*(v0 + 362));
  v4 = v3;
  if (v2 == sub_2274E2FEC(v1) && v4 == v5)
  {
    v23 = *(v0 + 320);

    goto LABEL_9;
  }

  v7 = sub_22766D190();

  v8 = *(v0 + 320);
  if (v7)
  {
LABEL_9:

    v24 = *(v0 + 352);
    goto LABEL_10;
  }

  v9 = *(v0 + 248);
  sub_22766A770();

  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 362);
    v13 = *(v0 + 370);
    v138 = *(v0 + 288);
    v141 = *(v0 + 312);
    v133 = *(v0 + 224);
    v135 = *(v0 + 248);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v144[0] = v15;
    *v14 = 136315394;
    *(v0 + 364) = v13;
    v16 = sub_22709C030();
    v17 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v16);
    v19 = sub_226E97AE8(v17, v18, v144);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v0 + 365) = v12;
    v20 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v16);
    v22 = sub_226E97AE8(v20, v21, v144);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v10, v11, "Updating Schema from %s to %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v138(v135, v133);
  }

  else
  {
    v77 = *(v0 + 312);
    v78 = *(v0 + 288);
    v79 = *(v0 + 248);
    v80 = *(v0 + 224);

    v78(v79, v80);
  }

  v24 = *(v0 + 352);
  v81 = *(v0 + 304);
  v82 = sub_2274EE780(*(v0 + 362));
  if (v24)
  {
    v83 = *(v0 + 320);
    v84 = *(v0 + 296);

    goto LABEL_40;
  }

  v85 = *(v0 + 296);
  v86 = *(v0 + 184);
  v87 = *(v85 + 16);
  *(v85 + 16) = v82;
  v88 = v82;

  v89 = v88;
  v90 = sub_22706FBD8();
  sub_2274EFEFC(v90);
  v91 = *(v0 + 320);

LABEL_10:
  v25 = *(v0 + 360);
  *(v0 + 370) = BYTE2(v25);
  if (qword_2813A2140 != -1)
  {
    swift_once();
  }

  v26 = HIBYTE(word_2813B2670);
  v27 = word_2813B2670;
  v28 = sub_2274E2FEC(SBYTE2(v25));
  v30 = v29;
  if (v28 == sub_2274E2FEC(v27) && v30 == v31)
  {
  }

  else
  {
    v32 = sub_22766D190();

    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v33 = sub_2275E0328(SHIBYTE(v25));
  v35 = v34;
  if (v33 == sub_2275E0328(v26) && v35 == v36)
  {

LABEL_20:
    v38 = *(v0 + 240);
    v39 = *(v0 + 184);
    sub_22766A770();
    v40 = v39;
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 184);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v144[0] = v45;
      *v44 = 136446210;
      v46 = [v43 configuration];
      if (v46)
      {
        v47 = v46;
        v48 = sub_22766C000();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v140 = *(v0 + 312);
      v143 = *(v0 + 296);
      v136 = *(v0 + 288);
      v92 = *(v0 + 240);
      v93 = *(v0 + 224);
      *(v0 + 112) = v48;
      *(v0 + 120) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v94 = sub_22766CB80();
      v96 = v95;

      v97 = sub_226E97AE8(v94, v96, v144);

      *(v44 + 4) = v97;
      _os_log_impl(&dword_226E8E000, v41, v42, "Finished migration steps for %{public}s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA9A450](v45, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);

      v136(v92, v93);
    }

    else
    {
      v55 = *(v0 + 312);
      v57 = *(v0 + 288);
      v56 = *(v0 + 296);
      v58 = *(v0 + 240);
      v59 = *(v0 + 224);

      v57(v58, v59);
    }

    v99 = *(v0 + 272);
    v98 = *(v0 + 280);
    v101 = *(v0 + 256);
    v100 = *(v0 + 264);
    v103 = *(v0 + 240);
    v102 = *(v0 + 248);
    v104 = *(v0 + 216);
    v105 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v106 = *(v0 + 8);
    goto LABEL_41;
  }

  v37 = sub_22766D190();

  if (v37)
  {
    goto LABEL_20;
  }

LABEL_23:
  v51 = sub_2274DDF0C(SHIWORD(v25));
  *(v0 + 360) = v51;
  *(v0 + 320) = v53;
  if (v24)
  {
    v54 = *(v0 + 296);
LABEL_40:

    v121 = *(v0 + 272);
    v120 = *(v0 + 280);
    v123 = *(v0 + 256);
    v122 = *(v0 + 264);
    v125 = *(v0 + 240);
    v124 = *(v0 + 248);
    v126 = *(v0 + 216);
    v127 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v106 = *(v0 + 8);
LABEL_41:

    return v106();
  }

  v60 = v51;
  v61 = v53;
  v142 = v52;
  v62 = *(v0 + 256);
  v63 = *(v0 + 184);

  sub_22766A770();
  v64 = v63;

  v65 = sub_22766B380();
  v66 = sub_22766C8B0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = *(v0 + 184);
    v68 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *(v0 + 176) = v139;
    *v68 = 136446466;
    *(v0 + 80) = 0x2870657453;
    *(v0 + 88) = 0xE500000000000000;

    v69 = sub_22709BF40();
    MEMORY[0x22AA98450](v69);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v70 = sub_22709BF40();
    MEMORY[0x22AA98450](v70);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v71 = sub_226E97AE8(*(v0 + 80), *(v0 + 88), (v0 + 176));

    *(v68 + 4) = v71;
    *(v68 + 12) = 2082;
    v72 = [v67 configuration];
    if (v72)
    {
      v73 = v72;
      v74 = sub_22766C000();
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v134 = *(v0 + 288);
    v137 = *(v0 + 312);
    v111 = *(v0 + 256);
    v132 = *(v0 + 224);
    *(v0 + 96) = v74;
    *(v0 + 104) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v112 = sub_22766CB80();
    v114 = v113;

    v115 = sub_226E97AE8(v112, v114, (v0 + 176));

    *(v68 + 14) = v115;
    _os_log_impl(&dword_226E8E000, v65, v66, "Executing %{public}s on %{public}s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v139, -1, -1);
    MEMORY[0x22AA9A450](v68, -1, -1);

    v134(v111, v132);
  }

  else
  {
    v107 = *(v0 + 312);
    v108 = *(v0 + 288);
    v109 = *(v0 + 256);
    v110 = *(v0 + 224);

    v108(v109, v110);
  }

  v116 = *(v0 + 296);
  v117 = *(v116 + 16);
  *(v0 + 328) = v117;
  v118 = v117;
  v119 = sub_2274DDD4C(v116);
  *(v0 + 336) = v119;
  v129 = v119;
  v130 = swift_task_alloc();
  *(v0 + 344) = v130;
  *v130 = v0;
  v130[1] = sub_2274DC020;
  v131 = *(v0 + 192);

  return sub_2274DCD0C(v60, v142, v61, v118, v129);
}

uint64_t sub_2274DCC00()
{
  v1 = v0[40];
  v2 = v0[37];

  v13 = v0[44];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[27];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2274DCD0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a2;
  *(v6 + 128) = a1;
  return MEMORY[0x2822009F8](sub_2274DCD38, v5, 0);
}

uint64_t sub_2274DCD38()
{
  v1 = *(v0 + 48);
  v22 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 128);
  v5 = *(v0 + 24);
  v6 = sub_226E9B4B4();
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v6;
  *(v7 + 48) = v3;
  *(v7 + 56) = v1;

  v8 = v3;
  v9 = v1;
  v10 = [v8 newBackgroundContext];
  *(v0 + 72) = v10;
  [v10 setMergePolicy_];
  *(swift_task_alloc() + 16) = v10;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v11 = v10;
  sub_22766C9C0();

  v12 = *(v0 + 16);
  *(v0 + 80) = v12;
  v13 = *(v22 + 160);
  *(v0 + 88) = v13;
  v14 = swift_allocObject();
  *(v0 + 96) = v14;
  *(v14 + 16) = sub_2274DDD18;
  *(v14 + 24) = v7;
  *(v14 + 32) = v12;
  *(v14 + 40) = v11;
  *(v14 + 48) = v6;
  *(v14 + 56) = v13;
  *(v14 + 64) = v12;
  *(v14 + 72) = v11;
  v15 = v11;
  v16 = v12;
  v17 = v15;
  v18 = v16;
  swift_bridgeObjectRetain_n();
  v19 = v17;
  v20 = v18;

  return MEMORY[0x2822009F8](sub_2274DCF5C, 0, 0);
}

uint64_t sub_2274DCF5C()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v2[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v2[2].i64[0] = sub_2274DE6E0;
  v2[2].i64[1] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_2274DD068;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2274DD068()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2274DD224;
    v5 = 0;
  }

  else
  {
    v6 = v2[12];
    v7 = v2[13];
    v8 = v2[7];

    v4 = sub_2274DD198;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2274DD198()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2274DD224()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2274DD298, v3, 0);
}

uint64_t sub_2274DD298()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

void sub_2274DD368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = HIBYTE(a5);
  a6(a1, a2, a3, a4, a8);
  if (!v10)
  {
    v12 = [a9 persistentStoreCoordinator];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000002276A1760;
    v14 = sub_2275E0328(v11);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    v16 = sub_22766BE90();

    [v12 setMetadata:v16 forPersistentStore:a10];
  }
}

uint64_t sub_2274DD524(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2274D1830(a1, a2, v2);
}

unint64_t sub_2274DD5CC()
{
  result = qword_281398A38;
  if (!qword_281398A38)
  {
    sub_226E99364(255, &qword_28139D238, 0x277CBE4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398A38);
  }

  return result;
}

uint64_t sub_2274DD650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_2274DD690(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2272C57F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_2274DD7F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA99060](a1, a2, v11);
      sub_226E99364(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226E99364(0, a5, a6);
    if (sub_22766CD00() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22766CD10();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_22766CB20();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_22766CB30();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

void sub_2274DDA50(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA99060](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_22766CD00() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22766CD10();
    swift_dynamicCast();
    v5 = v18;
    v10 = *(a4 + 40);
    v11 = sub_22766CB20();
    v12 = -1 << *(a4 + 32);
    v8 = v11 & ~v12;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * v8);
        v15 = sub_22766CB30();

        if (v15)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v13;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v16 = *(*(a4 + 48) + 8 * v8);

  v17 = v16;
}

uint64_t sub_2274DDD4C(uint64_t a1)
{
  swift_beginAccess();
  v2 = [*(a1 + 16) persistentStoreCoordinator];
  v3 = [v2 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v4 = sub_22766C2C0();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = sub_227664DD0();
    sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51020], v7);
    swift_willThrow();
    return v3;
  }

  result = sub_22766CD20();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v3 = v6;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2274DDF0C(__int16 a1)
{
  v70 = sub_22766B390();
  v2 = *(v70 - 1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v70);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v66 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  if (qword_27D7B7F18 != -1)
  {
    swift_once();
  }

  v15 = qword_27D7CE360;
  if (*(qword_27D7CE360 + 16))
  {
    v16 = sub_226F3B95C(a1);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  if (sub_2274E3784(67, a1))
  {
    sub_22766A770();
    v22 = sub_22766B380();
    v23 = sub_22766C8A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v72 = v25;
      *v24 = 136315138;
      v26 = sub_22709BF40();
      v28 = sub_226E97AE8(v26, v27, &v72);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v22, v23, "Couldn't find a step for version %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v2 + 8))(v6, v70);
  }

  else
  {
    v69 = sub_2275E0B44(a1);
    if (sub_2275E0808(SHIBYTE(a1), v69))
    {
      sub_22766A770();
      v29 = sub_22766B380();
      v30 = sub_22766C8B0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v67 = v30;
        v32 = v31;
        v68 = swift_slowAlloc();
        v72 = v68;
        *v32 = 136446466;
        v33 = sub_22709BF40();
        v66 = v29;
        v35 = sub_226E97AE8(v33, v34, &v72);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2082;
        v71 = v69;
        v36 = sub_22709C084();
        v37 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v36);
        v39 = sub_226E97AE8(v37, v38, &v72);

        *(v32 + 14) = v39;
        v29 = v66;
        _os_log_impl(&dword_226E8E000, v66, v67, "Found invalid version %{public}s. Attempting recovery by forcing data version %{public}s", v32, 0x16u);
        v40 = v68;
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      v41 = *(v2 + 8);
      v42 = v14;
      v43 = v70;
      (v41)(v42, v70);
      if (*(v15 + 16))
      {
        v16 = sub_226F3B95C(a1 | (v69 << 8));
        if (v44)
        {
LABEL_5:
          v18 = (*(v15 + 56) + 24 * v16);
          v19 = v18[1];
          v20 = v18[2];
          return *v18;
        }
      }

      sub_22766A770();
      v45 = sub_22766B380();
      v46 = sub_22766C8A0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v72 = v48;
        *v47 = 136446210;
        v49 = sub_22709BF40();
        v51 = sub_226E97AE8(v49, v50, &v72);
        v70 = v41;
        v52 = v51;

        *(v47 + 4) = v52;
        _os_log_impl(&dword_226E8E000, v45, v46, "Couldn't find a step for fallback version %{public}s.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);

        (v70)(v12, v43);
      }

      else
      {

        (v41)(v12, v43);
      }
    }

    else
    {
      sub_22766A770();
      v53 = sub_22766B380();
      v54 = sub_22766C8A0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v72 = v56;
        *v55 = 136446466;
        v57 = sub_22709BF40();
        v59 = sub_226E97AE8(v57, v58, &v72);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2082;
        v71 = v69;
        v60 = sub_22709C084();
        v61 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v60);
        v63 = sub_226E97AE8(v61, v62, &v72);

        *(v55 + 14) = v63;
        _os_log_impl(&dword_226E8E000, v53, v54, "Found newer data version than expected %{public}s. Expected: %{public}s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      (*(v2 + 8))(v9, v70);
    }
  }

  v64 = sub_227664DD0();
  sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D50FF8], v64);
  return swift_willThrow();
}

BOOL sub_2274DE630(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  sub_22706FA40();
  return (sub_227669C10() & 1) == 0;
}

void sub_2274DE680(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_2274D8600(a1, a2, *(v2 + 16));
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2274DE714(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v35 = v6;
    v31 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1FC28(0, v7, 0);
    v38 = v39;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v32 = a1 + 72;
    v33 = v7;
    v34 = v13;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 48) + 8 * v11);
      v17 = *(*(a1 + 56) + 8 * v11);
      v18 = *(v37 + 48);

      v19 = v35;
      sub_2276653F0();
      *(v19 + v18) = v17;
      v20 = v38;
      v39 = v38;
      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1FC28(v21 > 1, v22 + 1, 1);
        v19 = v35;
        v20 = v39;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = v20;
      result = sub_2274E20DC(v19, v20 + v23 + *(v36 + 72) * v22);
      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_25;
      }

      v24 = *(v9 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v13) = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v28 = (v32 + 8 * v15);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v11, v34, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v34, 0);
      }

LABEL_4:
      ++v12;
      v11 = v14;
      if (v12 == v33)
      {
        return v38;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274DEA20(uint64_t a1, uint64_t a2, char *a3)
{
  v48 = a1;
  v45 = a3;
  v49 = a2;
  v3 = sub_22766B390();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276681F0();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662860();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = sub_227662940();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662920();
  sub_227662880();
  v22 = *(v18 + 8);
  v22(v21, v17);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9830], v9);
  v23 = sub_227662850();
  v24 = *(v10 + 8);
  v24(v13, v9);
  v24(v16, v9);
  sub_227662890();
  v25 = sub_227663530();
  v22(v21, v17);
  if (v23)
  {
    if (v25 == 2)
    {
    }

    if (__OFSUB__(v25--, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v27 = v47;
    if (!v25)
    {
      v28 = v40;
      sub_227667240();
      v25 = sub_227668090();
      (*(v41 + 8))(v28, v42);
    }

    v29 = (v25 - 1);
    v30 = v46;
    if (!__OFSUB__(v25, 1))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v29 = (v25 - 1);
  if (v25 == 1)
  {
  }

  v30 = v46;
  v27 = v47;
  if (__OFSUB__(v25, 1))
  {
LABEL_19:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_12:
  sub_22766A630();
  v32 = sub_22766B380();
  v33 = sub_22766C8B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_226E8E000, v32, v33, "Plan does not start on first day of week. Adjusting dayOffsets in plan.", v34, 2u);
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  v35 = (*(v43 + 8))(v30, v44);
  MEMORY[0x28223BE20](v35);
  v36 = v45;
  *(&v40 - 4) = v29;
  *(&v40 - 3) = v36;
  *(&v40 - 2) = v27;
  v37 = sub_2274E187C(v48, sub_2274E214C);
  if (v37[2])
  {
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9810, &qword_227674C68);
    v39 = sub_22766D010();
    v37 = v38;
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  v50 = v39;
  sub_2274E0FD4(v37, 1, &v50);
  return v50;
}

void sub_2274DEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2276681F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __OFSUB__(a1, a3);
  v14 = a1 - a3;
  if (v13)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
LABEL_5:

    return;
  }

  v15 = v10;
  sub_227667240();
  v16 = sub_227668090();
  (*(v8 + 8))(v12, v15);
  if ((a4 * v16) >> 64 != (a4 * v16) >> 63)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(a4 * v16, v14))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_2274DF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v32;
  *(v9 + 248) = v8;
  *(v9 + 224) = v30;
  *(v9 + 232) = v31;
  *(v9 + 49) = v29;
  *(v9 + 208) = a8;
  *(v9 + 216) = v28;
  *(v9 + 192) = a6;
  *(v9 + 200) = a7;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v10 = sub_227663540();
  *(v9 + 256) = v10;
  v11 = *(v10 - 8);
  *(v9 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  v13 = sub_2276627D0();
  *(v9 + 280) = v13;
  v14 = *(v13 - 8);
  *(v9 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  v16 = *(*(sub_227662750() - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  v17 = sub_227666B60();
  *(v9 + 320) = v17;
  v18 = *(v17 - 8);
  *(v9 + 328) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v20 = sub_22766B390();
  *(v9 + 360) = v20;
  v21 = *(v20 - 8);
  *(v9 + 368) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v23 = sub_2276681F0();
  *(v9 + 416) = v23;
  v24 = *(v23 - 8);
  *(v9 + 424) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274DF32C, 0, 0);
}

uint64_t sub_2274DF32C()
{
  v103 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 248) + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_configuration;
  sub_227667240();
  v6 = sub_227668090();
  *(v0 + 440) = v6;
  (*(v2 + 8))(v1, v3);
  sub_22766A630();
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 224);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_226E8E000, v7, v8, "Filling plan with %ld weeks from weekly schedule", v10, 0xCu);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v11 = *(v0 + 408);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v14 = *(v0 + 224);

  v15 = *(v13 + 8);
  *(v0 + 448) = v15;
  *(v0 + 456) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v15(v11, v12);
  if (v14 < 0)
  {
    goto LABEL_47;
  }

  v17 = *(v0 + 224);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    v20 = MEMORY[0x277D84F98];
LABEL_40:
    v71 = *(v0 + 248);
    v72 = *(v0 + 208);
    sub_2274E1AF8(v20, v17, *(v0 + 440));
    v73 = sub_2274DEA20(v20, v72, v17);
    v74 = sub_2274DE714(v73);

    if (*(v74 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
      v75 = sub_22766D010();
    }

    else
    {
      v75 = MEMORY[0x277D84F98];
    }

    v102 = v75;
    sub_2274E1340(v74, 1, &v102);
    v93 = *(v0 + 432);
    v94 = *(v0 + 408);
    v95 = *(v0 + 400);
    v96 = *(v0 + 392);
    v97 = *(v0 + 384);
    v98 = *(v0 + 376);
    v99 = *(v0 + 352);
    v100 = *(v0 + 344);
    v101 = *(v0 + 336);
    v76 = *(v0 + 304);
    v77 = *(v0 + 288);
    v78 = *(v0 + 272);
    v79 = *(v0 + 280);
    v81 = *(v0 + 256);
    v80 = *(v0 + 264);
    v87 = *(v0 + 232);
    v88 = *(v0 + 312);
    v89 = *(v0 + 49);
    v82 = *(v0 + 208);
    v83 = *(v0 + 192);
    v90 = *(v0 + 176);
    v91 = *(v0 + 296);
    v92 = *(v0 + 216);
    sub_227662740();
    v84 = *(v77 + 16);
    v84(v76, v83, v79);
    (*(v80 + 16))(v78, v82, v81);
    v84(v91, v87, v79);
    sub_2276637F0();

    v85 = *(v0 + 8);
    v86.n128_u64[0] = 0;

    return v85(v86);
  }

  if (v6 < 0)
  {
    goto LABEL_48;
  }

  v19 = 0;
  *(v0 + 464) = OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_objectiveUtils;
  v20 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 472) = v19;
    v21 = *(v0 + 440);
    if (v21)
    {
      break;
    }

LABEL_8:
    if (++v19 == v17)
    {
      goto LABEL_40;
    }
  }

  v22 = v19 * v21;
  *(v0 + 480) = v19 * v21;
  if ((v19 * v21) >> 64 != (v19 * v21) >> 63)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v23 = 0;
  *(v0 + 504) = v18;
  *(v0 + 512) = v20;
  *(v0 + 488) = v20;
  *(v0 + 496) = 0;
  *(v0 + 520) = v22;
  while (1)
  {
    v24 = *(v0 + 400);
    sub_22766A630();
    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 472);
      v28 = swift_slowAlloc();
      *v28 = 134218496;
      *(v28 + 4) = v27;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v23;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v22;
      _os_log_impl(&dword_226E8E000, v25, v26, "At week %ld and day %ld. Day offset=%ld", v28, 0x20u);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    v29 = *(v0 + 448);
    v30 = *(v0 + 456);
    v31 = *(v0 + 400);
    v32 = *(v0 + 360);

    v29(v31, v32);
    v33 = MEMORY[0x22AA95620](v23);
    if (v33 == 7)
    {
      v34 = *(v0 + 376);
      sub_22766A630();
      v35 = sub_22766B380();
      v36 = sub_22766C890();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v23;
        _os_log_impl(&dword_226E8E000, v35, v36, "Failed to create weekday for index: %ld", v37, 0xCu);
        MEMORY[0x22AA9A450](v37, -1, -1);
      }

      v39 = *(v0 + 448);
      v38 = *(v0 + 456);
      v40 = *(v0 + 376);
      v41 = *(v0 + 360);

      v39(v40, v41);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A5780(0, v18[2] + 1, 1, v18);
        v18 = result;
      }

      v42 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    if (!*(*(v0 + 200) + 16) || (v43 = sub_226F3AC2C(v33), (v44 & 1) == 0))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = MEMORY[0x277D84F90];
      if ((result & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v45 = *(v0 + 392);
    v46 = *(*(*(v0 + 200) + 56) + 8 * v43);
    *(v0 + 528) = v46;

    sub_22766A630();

    v47 = sub_22766B380();
    v48 = sub_22766C8B0();
    v49 = os_log_type_enabled(v47, v48);
    v42 = MEMORY[0x277D84F90];
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      *(v50 + 4) = *(v46 + 16);

      *(v50 + 12) = 2048;
      *(v50 + 14) = v22;
      _os_log_impl(&dword_226E8E000, v47, v48, "Adding %ld scheduled items at day=%ld", v50, 0x16u);
      MEMORY[0x22AA9A450](v50, -1, -1);
    }

    else
    {
    }

    v56 = *(v0 + 456);
    result = (*(v0 + 448))(*(v0 + 392), *(v0 + 360));
    v57 = *(v46 + 16);
    *(v0 + 536) = v57;
    if (v57)
    {
      break;
    }

    v58 = *(v0 + 528);
    v59 = *(v0 + 520);
    v60 = *(v0 + 504);
    v61 = *(v0 + 488);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v61;
    sub_22736A74C(v42, v59, isUniquelyReferenced_nonNull_native);
    v20 = v61;
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 504);
    if ((result & 1) == 0)
    {
LABEL_34:
      result = sub_2273A5780(0, v18[2] + 1, 1, v18);
      v18 = result;
    }

LABEL_25:
    v52 = v18[2];
    v51 = v18[3];
    if (v52 >= v51 >> 1)
    {
      result = sub_2273A5780((v51 > 1), v52 + 1, 1, v18);
      v18 = result;
    }

    v53 = *(v0 + 440);
    v54 = *(v0 + 496) + 1;
    v18[2] = v52 + 1;
    v18[v52 + 4] = v42;
    if (v54 == v53)
    {
      v19 = *(v0 + 472);
      v17 = *(v0 + 224);
      goto LABEL_8;
    }

    v23 = *(v0 + 496) + 1;
    *(v0 + 504) = v18;
    *(v0 + 512) = v20;
    *(v0 + 488) = v20;
    *(v0 + 496) = v23;
    v55 = *(v0 + 480);
    v22 = v55 + v23;
    *(v0 + 520) = v55 + v23;
    if (__OFADD__(v55, v23))
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  *(v0 + 552) = 0u;
  *(v0 + 544) = v42;
  v63 = *(v0 + 528);
  if (!*(v63 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v64 = *(v63 + 32);
  *(v0 + 568) = v64;
  v65 = *(v63 + 40);
  *(v0 + 576) = v65;
  v66 = *(v63 + 48);
  *(v0 + 584) = v66;
  v67 = *(v63 + 56);
  *(v0 + 592) = v67;
  v68 = *(v63 + 64);
  *(v0 + 50) = v68;

  sub_226EB396C(v66, v67, v68);
  *(v0 + 16) = v64;
  *(v0 + 24) = v65;
  *(v0 + 32) = v66;
  *(v0 + 40) = v67;
  *(v0 + 48) = v68;
  v69 = swift_task_alloc();
  *(v0 + 600) = v69;
  *v69 = v0;
  v69[1] = sub_2274DFC18;
  v70 = *(v0 + 184);

  return sub_227016634(v0 + 16);
}

uint64_t sub_2274DFC18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 600);
  v8 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
    v5 = v3[66];

    v6 = sub_2274E01EC;
  }

  else
  {
    v6 = sub_2274DFD38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2274DFD38()
{
  v78 = v0;
  *(v0 + 56) = *(v0 + 568);
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 50);
  v4 = *(v0 + 184);
  *(v0 + 64) = *(v0 + 576);
  *(v0 + 72) = *(v0 + 584);
  *(v0 + 88) = v3;
  v5 = sub_227016004(v2, v0 + 56);
  v6 = *(v0 + 608);
  if (v1)
  {
    v7 = *(v0 + 528);

    v8 = *(v0 + 544);
    v9 = *(v0 + 504);

    v19 = *(v0 + 50);
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);
    v23 = *(v0 + 512);

    sub_226EB2DFC(v21, v20, v19);

    v24 = *(v0 + 432);
    v25 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 384);
    v27 = *(v0 + 392);
    v29 = *(v0 + 376);
    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    v32 = *(v0 + 336);
    v33 = *(v0 + 312);
    v68 = *(v0 + 304);
    v71 = *(v0 + 296);
    v73 = *(v0 + 272);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v10 = v5;
    v70 = *(v0 + 50);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v65 = *(v0 + 568);
    v72 = *(v0 + 504);
    v13 = *(v0 + 464);
    v14 = *(v0 + 344);
    v15 = *(v0 + 248);
    v67 = *(v0 + 240);
    v16 = *(v0 + 184);

    v17 = *(v15 + v13);
    *(v0 + 96) = v65;
    *(v0 + 112) = v12;
    *(v0 + 120) = v11;
    *(v0 + 128) = v70;
    sub_2271322AC(v14, v10, v0 + 96, v72, v16, v67);
    *(v0 + 624) = v18;
    v36 = *(v0 + 384);
    v38 = *(v0 + 336);
    v37 = *(v0 + 344);
    v39 = *(v0 + 320);
    v40 = *(v0 + 328);

    sub_22766A630();
    (*(v40 + 16))(v38, v37, v39);
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v0 + 448);
    v44 = *(v0 + 456);
    v46 = *(v0 + 384);
    v47 = *(v0 + 360);
    v49 = *(v0 + 328);
    v48 = *(v0 + 336);
    v50 = *(v0 + 320);
    if (v43)
    {
      v75 = *(v0 + 448);
      v51 = swift_slowAlloc();
      v74 = v46;
      v52 = swift_slowAlloc();
      v77 = v52;
      *v51 = 136315138;
      sub_2274E2014();
      v69 = v47;
      v53 = sub_22766D140();
      v55 = v54;
      v66 = v42;
      v56 = *(v49 + 8);
      v56(v48, v50);
      v57 = sub_226E97AE8(v53, v55, &v77);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_226E8E000, v41, v66, "Selected workout %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AA9A450](v52, -1, -1);
      MEMORY[0x22AA9A450](v51, -1, -1);

      v75(v74, v69);
    }

    else
    {

      v56 = *(v49 + 8);
      v56(v48, v50);
      v45(v46, v47);
    }

    *(v0 + 632) = v56;
    v58 = *(v0 + 50);
    v59 = *(v0 + 592);
    v60 = *(v0 + 584);
    v76 = *(v0 + 568);
    v61 = *(v0 + 184);
    (*(*(v0 + 328) + 32))(*(v0 + 352), *(v0 + 344), *(v0 + 320));
    sub_227016E6C();
    *(v0 + 136) = v76;
    *(v0 + 152) = v60;
    *(v0 + 160) = v59;
    *(v0 + 168) = v58;
    v62 = swift_task_alloc();
    *(v0 + 640) = v62;
    *v62 = v0;
    v62[1] = sub_2274E0344;
    v63 = *(v0 + 352);
    v64 = *(v0 + 184);

    return sub_2270172E0(v63, (v0 + 136));
  }
}

uint64_t sub_2274E01EC()
{
  v22 = *(v0 + 616);
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);

  LOBYTE(v2) = *(v0 + 50);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 512);

  sub_226EB2DFC(v4, v3, v2);

  v7 = *(v0 + 432);
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v11 = *(v0 + 384);
  v10 = *(v0 + 392);
  v12 = *(v0 + 376);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 336);
  v16 = *(v0 + 312);
  v19 = *(v0 + 304);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2274E0344()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v11 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v4 = *(v2 + 528);

    v5 = sub_2274E0D54;
  }

  else
  {
    v6 = *(v2 + 50);
    v7 = *(v2 + 592);
    v8 = *(v2 + 584);
    v9 = *(v2 + 576);

    sub_226EB2DFC(v8, v7, v6);
    v5 = sub_2274E048C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2274E048C()
{
  v105 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 352);
  v5 = sub_227666A50();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 544);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2273A57A4((v10 > 1), v11 + 1, 1, v9);
    }

    v1 = v1 + v2;
    v12 = *(v0 + 536);
    v13 = *(v0 + 552) + 1;
    v14 = (*(v0 + 328) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    result = (*(v0 + 632))(*(v0 + 352), *(v0 + 320));
    *(v9 + 2) = v11 + 1;
    v16 = &v9[16 * v11];
    *(v16 + 4) = v5;
    *(v16 + 5) = v7;
    if (v13 != v12)
    {
      break;
    }

    v99 = *(v0 + 648);
    v17 = MEMORY[0x277D84F90];
LABEL_6:
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 504);
    v21 = *(v0 + 488);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v21;
    sub_22736A74C(v9, v19, v22);
    v102 = v21;
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 504);
    if ((result & 1) == 0)
    {
      result = sub_2273A5780(0, v23[2] + 1, 1, *(v0 + 504));
      v23 = result;
    }

    v25 = v23[2];
    v24 = v23[3];
    v5 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      result = sub_2273A5780((v24 > 1), v25 + 1, 1, v23);
      v23 = result;
    }

    while (1)
    {
      v26 = *(v0 + 440);
      v27 = *(v0 + 496) + 1;
      v23[2] = v5;
      v23[v25 + 4] = v9;
      if (v27 == v26)
      {
        v28 = *(v0 + 224);
        v29 = *(v0 + 472) + 1;
        do
        {
          if (v28 == v29)
          {
            v70 = *(v0 + 248);
            v71 = *(v0 + 208);
            sub_2274E1AF8(v102, v28, *(v0 + 440));
            v72 = sub_2274DEA20(v102, v71, v28);
            v73 = sub_2274DE714(v72);

            if (*(v73 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
              v74 = sub_22766D010();
            }

            else
            {
              v74 = MEMORY[0x277D84F98];
            }

            v104[0] = v74;
            sub_2274E1340(v73, 1, v104);
            if (v99)
            {

              return swift_unexpectedError();
            }

            else
            {
              v93 = *(v0 + 432);
              v94 = *(v0 + 408);
              v95 = *(v0 + 400);
              v96 = *(v0 + 392);
              v97 = *(v0 + 384);
              v98 = *(v0 + 376);
              v100 = *(v0 + 352);
              v101 = *(v0 + 344);
              v103 = *(v0 + 336);
              v75 = *(v0 + 304);
              v76 = *(v0 + 288);
              v77 = *(v0 + 272);
              v78 = *(v0 + 280);
              v80 = *(v0 + 256);
              v79 = *(v0 + 264);
              v87 = *(v0 + 232);
              v88 = *(v0 + 312);
              v89 = *(v0 + 49);
              v81 = *(v0 + 208);
              v82 = *(v0 + 192);
              v90 = *(v0 + 176);
              v91 = *(v0 + 296);
              v92 = *(v0 + 216);
              sub_227662740();
              v83 = *(v76 + 16);
              v83(v75, v82, v78);
              (*(v79 + 16))(v77, v81, v80);
              v83(v91, v87, v78);
              sub_2276637F0();

              v84 = *(v0 + 8);
              v85.n128_f64[0] = v1;

              return v84(v85);
            }
          }

          *(v0 + 472) = v29;
          v30 = *(v0 + 440);
          ++v29;
        }

        while (!v30);
        v31 = v29 - 1;
        v32 = (v29 - 1) * v30;
        *(v0 + 480) = v32;
        if ((v31 * v30) >> 64 != v32 >> 63)
        {
          goto LABEL_53;
        }

        v9 = 0;
      }

      else
      {
        v9 = (*(v0 + 496) + 1);
        v32 = *(v0 + 480);
      }

      *(v0 + 504) = v23;
      *(v0 + 512) = v102;
      *(v0 + 488) = v102;
      *(v0 + 496) = v9;
      v7 = &v9[v32];
      *(v0 + 520) = &v9[v32];
      if (__OFADD__(v32, v9))
      {
        break;
      }

      v33 = *(v0 + 400);
      sub_22766A630();
      v34 = sub_22766B380();
      v35 = sub_22766C8B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 472);
        v37 = swift_slowAlloc();
        *v37 = 134218496;
        *(v37 + 4) = v36;
        *(v37 + 12) = 2048;
        *(v37 + 14) = v9;
        *(v37 + 22) = 2048;
        *(v37 + 24) = v7;
        _os_log_impl(&dword_226E8E000, v34, v35, "At week %ld and day %ld. Day offset=%ld", v37, 0x20u);
        MEMORY[0x22AA9A450](v37, -1, -1);
      }

      v39 = *(v0 + 448);
      v38 = *(v0 + 456);
      v40 = *(v0 + 400);
      v41 = *(v0 + 360);

      v39(v40, v41);
      v42 = MEMORY[0x22AA95620](v9);
      if (v42 == 7)
      {
        v43 = *(v0 + 376);
        sub_22766A630();
        v44 = sub_22766B380();
        v45 = sub_22766C890();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 134217984;
          *(v46 + 4) = v9;
          _os_log_impl(&dword_226E8E000, v44, v45, "Failed to create weekday for index: %ld", v46, 0xCu);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        v48 = *(v0 + 448);
        v47 = *(v0 + 456);
        v49 = *(v0 + 376);
        v50 = *(v0 + 360);

        v48(v49, v50);
      }

      else if (*(*(v0 + 200) + 16))
      {
        v51 = sub_226F3AC2C(v42);
        if (v52)
        {
          v54 = *(v0 + 392);
          v55 = *(*(*(v0 + 200) + 56) + 8 * v51);
          *(v0 + 528) = v55;

          sub_22766A630();

          v56 = sub_22766B380();
          v57 = sub_22766C8B0();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 134218240;
            *(v58 + 4) = *(v55 + 16);

            *(v58 + 12) = 2048;
            *(v58 + 14) = v7;
            _os_log_impl(&dword_226E8E000, v56, v57, "Adding %ld scheduled items at day=%ld", v58, 0x16u);
            MEMORY[0x22AA9A450](v58, -1, -1);
          }

          else
          {
          }

          v59 = *(v0 + 456);
          result = (*(v0 + 448))(*(v0 + 392), *(v0 + 360));
          v60 = *(v55 + 16);
          *(v0 + 536) = v60;
          v9 = v17;
          if (v60)
          {
            v86 = 0;
            goto LABEL_36;
          }

          goto LABEL_6;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A5780(0, v23[2] + 1, 1, v23);
        v23 = result;
      }

      v25 = v23[2];
      v53 = v23[3];
      v5 = v25 + 1;
      v9 = v17;
      if (v25 >= v53 >> 1)
      {
        result = sub_2273A5780((v53 > 1), v25 + 1, 1, v23);
        v23 = result;
        v9 = v17;
      }
    }

    __break(1u);
LABEL_51:
    v9 = sub_2273A57A4(0, *(v9 + 2) + 1, 1, v9);
  }

  v86 = *(v0 + 552) + 1;
  v17 = v9;
LABEL_36:
  *(v0 + 560) = v1;
  *(v0 + 552) = v86;
  *(v0 + 544) = v17;
  v61 = *(v0 + 528);
  if (v86 >= *(v61 + 16))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
    v62 = v61 + 40 * v86;
    v63 = *(v62 + 32);
    *(v0 + 568) = v63;
    v64 = *(v62 + 40);
    *(v0 + 576) = v64;
    v65 = *(v62 + 48);
    *(v0 + 584) = v65;
    v66 = *(v62 + 56);
    *(v0 + 592) = v66;
    v67 = *(v62 + 64);
    *(v0 + 50) = v67;

    sub_226EB396C(v65, v66, v67);
    *(v0 + 16) = v63;
    *(v0 + 24) = v64;
    *(v0 + 32) = v65;
    *(v0 + 40) = v66;
    *(v0 + 48) = v67;
    v68 = swift_task_alloc();
    *(v0 + 600) = v68;
    *v68 = v0;
    v68[1] = sub_2274DFC18;
    v69 = *(v0 + 184);

    return sub_227016634(v0 + 16);
  }

  return result;
}

uint64_t sub_2274E0D54()
{
  v26 = *(v0 + 632);
  v1 = *(v0 + 50);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 544);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 352);
  v9 = *(v0 + 320);
  v10 = *(v0 + 328);

  sub_226EB2DFC(v3, v2, v1);
  v26(v8, v9);
  v11 = *(v0 + 432);
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v16 = *(v0 + 376);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 312);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v25 = *(v0 + 272);
  v27 = *(v0 + 648);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2274E0ED4()
{
  v1 = OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_objectiveUtils);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanContentUtils()
{
  result = qword_27D7BE0C0;
  if (!qword_27D7BE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274E0FD4(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_226F491D4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF23B0();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_226FE69BC(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_226F491D4(v7);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_22766D220();
    __break(1u);
LABEL_29:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v22[6] + 8 * v14) = v7;
  *(v22[7] + 8 * v14) = v6;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = a1 + 7;
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *a3;
      v31 = sub_226F491D4(v29);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];

      if (v38 < v35)
      {
        sub_226FE69BC(v35, 1);
        v39 = *a3;
        v40 = sub_226F491D4(v29);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + 8 * v36) = v29;
      *(v42[7] + 8 * v36) = v28;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_2274E1340(uint64_t a1, int a2, void *a3)
{
  v7 = sub_227665440();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v57 - v16;
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v61 = *(v15 + 72);
  v63 = a1;
  v57[0] = v19;
  sub_2274E206C(a1 + v19, v57 - v16);
  v58 = v8;
  v64 = *(v8 + 32);
  v65 = v7;
  v64(v11, v17, v7);
  v60 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v23 = sub_226F39F04(v11);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v59)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_226FF23C4();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_226FE69D0(v26, v59 & 1);
  v28 = *a3;
  v29 = sub_226F39F04(v11);
  if ((v27 & 1) == (v30 & 1))
  {
    v23 = v29;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v36 = v35[6];
      v59 = *(v58 + 72);
      v64((v36 + v59 * v23), v11, v65);
      *(v35[7] + 8 * v23) = v20;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v35[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v57[0];
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2274E206C(v41, v17);
            v64(v11, v17, v65);
            v43 = *&v17[v60];
            v44 = *a3;
            v45 = sub_226F39F04(v11);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_226FE69D0(v49, 1);
              v51 = *a3;
              v45 = sub_226F39F04(v11);
              if ((v50 & 1) != (v52 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v53 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v54 = v45;
            v64((v53[6] + v59 * v45), v11, v65);
            *(v53[7] + 8 * v54) = v43;
            v55 = v53[2];
            v38 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v53[2] = v56;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v31 = swift_allocError();
    swift_willThrow();

    v68 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v33 = swift_dynamicCast();
    v34 = v65;
    if ((v33 & 1) == 0)
    {

      (*(v58 + 8))(v11, v34);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_22766D220();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2274E187C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v35 = MEMORY[0x277D84F90];
    sub_226F1FC08(0, v3, 0);
    v5 = v35;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v34 = *(v2 + 36);
    v29 = v2 + 72;
    v30 = v3;
    v31 = v2 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v34 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v33 = v9;
      v12 = *(*(v2 + 48) + 8 * v8);
      v13 = *(*(v2 + 56) + 8 * v8);

      v14 = a2(v12, v13);
      v16 = v15;

      v17 = v5;
      v36 = v5;
      v18 = v2;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1FC08((v19 > 1), v20 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v20 + 1;
      v21 = v17 + 16 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      v10 = 1 << *(v18 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v6 = v31;
      v22 = *(v31 + 8 * v11);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v18;
      v5 = v17;
      if (v34 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (v29 + 8 * v11);
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v8, v34, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v34, 0);
      }

LABEL_4:
      v9 = v33 + 1;
      v8 = v10;
      if (v33 + 1 == v30)
      {
        return v5;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274E1AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v52 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = &v52 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  sub_22766A630();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v55 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v18, v19, "Logging %ld week workout plan", v21, 0xCu);
    v22 = v21;
    v10 = v55;
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  v25 = *(v7 + 8);
  v23 = v7 + 8;
  v24 = v25;
  result = v25(v17, v6);
  v28 = a3 * a2;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
    goto LABEL_31;
  }

  if (v28 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v60 = a3 * a2;
    if (v28)
    {
      v29 = 0;
      *&v27 = 134217984;
      v58 = v27;
      *&v27 = 134218242;
      v52 = v27;
      v57 = v24;
      v53 = v23;
      v54 = a3;
      while (a3 != -1)
      {
        if (!a3)
        {
          if (!v29)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }

        if (!(v29 % a3))
        {
          goto LABEL_16;
        }

LABEL_20:
        if (*(a1 + 16) && (v34 = sub_226F491D4(v29), (v35 & 1) != 0))
        {
          v36 = *(*(a1 + 56) + 8 * v34);

          v37 = v56;
          sub_22766A630();

          v38 = sub_22766B380();
          v39 = sub_22766C8B0();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v61 = v41;
            *v40 = v52;
            *(v40 + 4) = v29;
            *(v40 + 12) = 2080;
            v42 = v6;
            v43 = a1;
            v44 = MEMORY[0x22AA98660](v36, MEMORY[0x277D52CC8]);
            v46 = v45;

            v47 = sub_226E97AE8(v44, v46, &v61);

            *(v40 + 14) = v47;
            a1 = v43;
            v6 = v42;
            a3 = v54;
            _os_log_impl(&dword_226E8E000, v38, v39, "Day: %ld -> Items: %s", v40, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x22AA9A450](v41, -1, -1);
            MEMORY[0x22AA9A450](v40, -1, -1);

            v48 = v56;
          }

          else
          {

            v48 = v37;
          }

          v24 = v57;
          result = v57(v48, v6);
          v10 = v55;
        }

        else
        {
          sub_22766A630();
          v49 = sub_22766B380();
          v50 = sub_22766C8B0();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = v58;
            *(v51 + 4) = v29;
            _os_log_impl(&dword_226E8E000, v49, v50, "Day: %ld -> Unscheduled", v51, 0xCu);
            MEMORY[0x22AA9A450](v51, -1, -1);
          }

          result = v24(v10, v6);
        }

        if (v60 == ++v29)
        {
          return result;
        }
      }

      if (v29 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

LABEL_16:
      if (__OFADD__(v29 / a3, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_22766A630();
      v30 = sub_22766B380();
      v31 = sub_22766C8B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = v58;
        *(v32 + 4) = v29 / a3 + 1;
        _os_log_impl(&dword_226E8E000, v30, v31, "--- Week %ld ---", v32, 0xCu);
        v33 = v32;
        v24 = v57;
        MEMORY[0x22AA9A450](v33, -1, -1);
      }

      v24(v59, v6);
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2274E2014()
{
  result = qword_27D7BB360;
  if (!qword_27D7BB360)
  {
    sub_227666B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB360);
  }

  return result;
}

uint64_t sub_2274E206C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E20DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E21BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_2274E2258(&qword_27D7BE0D8);
  v5 = sub_2274E2258(&qword_28139B8D0);

  return a3(a1, v4, v5);
}

uint64_t sub_2274E2258(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274E229C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a1;
  v47 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v46 = &v44 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v17 + 8))(v20, v16);
  if (!a3)
  {
    v29 = *(*__swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40)) + 16);
    v30 = swift_allocObject();
    *(v30 + 16) = v44;
    *(v30 + 24) = a2;

    sub_227669280();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = 0;
    v32 = v45;
    (*(v9 + 16))(v45, v14, v8);
    v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v9 + 32))(v35 + v33, v32, v8);
    v36 = (v35 + v34);
    *v36 = sub_2274E2E88;
    v36[1] = v31;
    v37 = v29;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v21 = *(*__swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40)) + 24);
    v22 = swift_allocObject();
    *(v22 + 16) = v44;
    *(v22 + 24) = a2;

    sub_227669280();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = 8;
    v24 = v45;
    (*(v9 + 16))(v45, v14, v8);
    v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v9 + 32))(v27 + v25, v24, v8);
    v28 = (v27 + v26);
    *v28 = sub_2274E2E3C;
    v28[1] = v23;

LABEL_5:
    v38 = v46;
    sub_227669270();
    v39 = *(v9 + 8);
    v39(v14, v8);
    sub_2272A3158(v38, v47);
    return (v39)(v38, v8);
  }

  v41 = sub_2276646E0();
  sub_2274E2DB4();
  v42 = swift_allocError();
  (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D50B40], v41);
  *(swift_allocObject() + 16) = v42;
  return sub_227669280();
}

uint64_t sub_2274E27F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = *(*__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40)) + 16);
  sub_227287EEC(1, 0, 0, v8);
  sub_2272A3688(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2274E29D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = *(*__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40)) + 24);
  sub_2272884A4(20, 0, 0, v8);
  sub_2272A3BBC(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2274E2BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = *(*__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40)) + 24);
  sub_227288A30(21, 0, 0, v8);
  sub_2272A40F0(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2274E2DB4()
{
  result = qword_27D7B8C40;
  if (!qword_27D7B8C40)
  {
    sub_2276646E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C40);
  }

  return result;
}

uint64_t sub_2274E2ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273D33A8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_2274E2F98()
{
  result = qword_27D7BE0E0;
  if (!qword_27D7BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE0E0);
  }

  return result;
}

uint64_t sub_2274E2FEC(char a1)
{
  result = 12630;
  switch(a1)
  {
    case 1:
      return 12886;
    case 2:
      return 13142;
    case 3:
      return 13398;
    case 4:
      return 13654;
    case 5:
      return 13910;
    case 6:
      return 14166;
    case 7:
      return 14422;
    case 8:
      return 14678;
    case 9:
      return 3158358;
    case 10:
      return 3223894;
    case 11:
      return 3289430;
    case 12:
      return 3354966;
    case 13:
      return 3420502;
    case 14:
      return 3486038;
    case 15:
      return 3551574;
    case 16:
      return 3617110;
    case 17:
      return 3682646;
    case 18:
      return 3748182;
    case 19:
      return 3158614;
    case 20:
      return 3224150;
    case 21:
      return 3289686;
    case 22:
      return 3355222;
    case 23:
      return 3420758;
    case 24:
      return 3486294;
    case 25:
      return 3551830;
    case 26:
      return 3617366;
    case 27:
      return 3682902;
    case 28:
      return 3748438;
    case 29:
      return 3158870;
    case 30:
      return 3224406;
    case 31:
      return 0x315F313356;
    case 32:
      return 3289942;
    case 33:
      return 3355478;
    case 34:
      return 3421014;
    case 35:
      return 3486550;
    case 36:
      return 3552086;
    case 37:
      return 3617622;
    case 38:
      return 3683158;
    case 39:
      return 3748694;
    case 40:
      return 3159126;
    case 41:
      return 3224662;
    case 42:
      return 3290198;
    case 43:
      return 3355734;
    case 44:
      return 3421270;
    case 45:
      return 3486806;
    case 46:
      return 3552342;
    case 47:
      return 3617878;
    case 48:
      return 3683414;
    case 49:
      return 3748950;
    case 50:
      return 3159382;
    case 51:
      return 3224918;
    case 52:
      return 3290454;
    case 53:
      return 3355990;
    case 54:
      return 3421526;
    case 55:
      return 3487062;
    case 56:
      return 3552598;
    case 57:
      return 3618134;
    case 58:
      return 3683670;
    case 59:
      return 3749206;
    case 60:
      v3 = 3158358;
      return v3 + 1280;
    case 61:
      return 3225174;
    case 62:
      v3 = 3289430;
      return v3 + 1280;
    case 63:
      return 3356246;
    case 64:
      v3 = 3420502;
      return v3 + 1280;
    case 65:
      return 3487318;
    case 66:
      v3 = 3551574;
      return v3 + 1280;
    case 67:
      return 3618390;
    case 68:
      v3 = 3682646;
      return v3 + 1280;
    case 69:
      return 3749462;
    case 70:
      return 3159894;
    case 71:
      return 3225430;
    case 72:
      return 3290966;
    case 73:
      return 3356502;
    case 74:
      return 3422038;
    case 75:
      return 3487574;
    case 76:
      return 3553110;
    case 77:
      return 3618646;
    case 78:
      return 3684182;
    case 79:
      return 3749718;
    case 80:
      v4 = 3158358;
      goto LABEL_29;
    case 81:
      return 3225686;
    case 82:
      v4 = 3289430;
LABEL_29:
      result = v4 + 1792;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2274E3504(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2274E2FEC(*a1);
  v5 = v4;
  if (v3 == sub_2274E2FEC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_2274E358C()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2274E35F0()
{
  sub_2274E2FEC(*v0);
  sub_22766C100();
}

uint64_t sub_2274E3644()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2274E36A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2274E3910();
  *a2 = result;
  return result;
}

uint64_t sub_2274E36D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2274E2FEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2274E3784(char a1, char a2)
{
  v3 = sub_2274E2FEC(a1);
  v5 = v4;
  v6 = 0;
  while (sub_2274E2FEC(byte_283A917F8[v6 + 32]) != v3 || v7 != v5)
  {
    v9 = sub_22766D190();

    if (v9)
    {
      goto LABEL_10;
    }

    if (++v6 == 83)
    {
LABEL_17:
      sub_22766CFB0();
      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_10:
  v10 = sub_2274E2FEC(a2);
  v12 = v11;
  v9 = 0;
  while (sub_2274E2FEC(byte_283A917F8[v9 + 32]) != v10 || v13 != v12)
  {
    v15 = sub_22766D190();

    if (v15)
    {
      return v6 < v9;
    }

    if (++v9 == 83)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v6 < v9;
}

uint64_t sub_2274E3910()
{
  v0 = sub_22766D1E0();

  if (v0 >= 0x53)
  {
    return 83;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2274E3964(uint64_t a1, unint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662570();
  v11 = v9;
  if (v10 == 0xD00000000000002CLL && 0x80000002276A1AF0 == v9 || (sub_22766D190() & 1) != 0)
  {
    v4 = 0;
LABEL_5:
    sub_226EDC420(a1, a2);

    return v4;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1B20 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1B50 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1B80 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1BB0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1BE0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1C10 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 6;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1C40 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 7;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1C70 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 8;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1CA0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 9;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1CD0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 10;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1D00 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 11;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1D30 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 12;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1D60 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 13;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1D90 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 14;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1DC0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 15;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1DF0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1E20 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 17;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1E50 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 18;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1E80 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 19;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1EB0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 20;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1EE0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 21;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1F10 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 22;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1F40 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 23;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1F70 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 24;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1FA0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 25;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A1FD0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 26;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2000 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 27;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2030 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 28;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2060 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 29;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2090 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 30;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A20C0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 31;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A20F0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 32;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2120 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 33;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2150 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 34;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2180 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 35;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A21B0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 36;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A21E0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 37;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2210 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 38;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2240 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 39;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2270 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 40;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A22A0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 41;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A22D0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 42;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2300 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 43;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2330 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 44;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2360 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 45;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2390 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 46;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A23C0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 47;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A23F0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 48;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2420 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 49;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2450 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 50;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2480 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 51;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A24B0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 52;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A24E0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 53;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2510 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 54;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2540 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 55;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2570 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 56;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A25A0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 57;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A25D0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 58;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2600 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 59;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2630 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 60;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2660 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 61;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2690 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 62;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A26C0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 63;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A26F0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 64;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2720 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 65;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2750 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 66;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2780 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 67;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A27B0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 68;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A27E0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 69;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2810 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 70;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2840 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 71;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2870 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 72;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A28A0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 73;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A28D0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 74;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2900 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 75;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2930 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 76;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2960 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 77;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2990 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 78;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A29C0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 79;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A29F0 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 80;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2A20 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 81;
    goto LABEL_5;
  }

  if (v10 == 0xD00000000000002CLL && 0x80000002276A2A50 == v11 || (sub_22766D190() & 1) != 0)
  {
    v4 = 82;
    goto LABEL_5;
  }

  sub_22766A770();
  v13 = swift_allocObject();
  v27 = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;

  v31 = sub_22766B380();
  v30 = sub_22766C8A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 34;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v27;
  *(v14 + 16) = sub_2274E531C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2274E5354;
  *(v16 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE0E8, &unk_227688880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227675BD0;
  v18 = v28;
  v19 = v29;
  *(inited + 32) = sub_2274E534C;
  *(inited + 40) = v19;
  *(inited + 48) = sub_2274E551C;
  *(inited + 56) = v18;
  *(inited + 64) = sub_2274E535C;
  *(inited + 72) = v16;

  if (os_log_type_enabled(v31, v30))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136446210;
    v22 = sub_226E97AE8(v10, v11, &v32);

    *(v20 + 4) = v22;
    v23 = v31;
    _os_log_impl(&dword_226E8E000, v31, v30, "Unrecognized version hash: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9A450](v21, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  v24 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51030], v24);
  swift_willThrow();
  sub_226EDC420(a1, a2);
  return v4;
}

uint64_t sub_2274E531C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t getEnumTagSinglePayload for PersistenceSchemaVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAE)
  {
    goto LABEL_17;
  }

  if (a2 + 82 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 82) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 82;
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

      return (*a1 | (v4 << 8)) - 82;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 82;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x53;
  v8 = v6 - 83;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceSchemaVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 82 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 82) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAE)
  {
    v4 = 0;
  }

  if (a2 > 0xAD)
  {
    v5 = ((a2 - 174) >> 8) + 1;
    *result = a2 + 82;
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
    *result = a2 + 82;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2274E54B8()
{
  result = qword_27D7BE0F0;
  if (!qword_27D7BE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE0F8, qword_2276888B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE0F0);
  }

  return result;
}

uint64_t sub_2274E556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_227665030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v22 - v17;
  sub_2274E57D8(a1, &v22 - v17);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v19 = *(*__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40)) + 16);
    sub_2272917DC(31, 0, 0, v9);
    sub_2272AFD60(v9, a2);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v21 = *__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    sub_227323114(31, v14, a2);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2274E57D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E5858(uint64_t a1, uint64_t a2)
{
  v4 = sub_227666B60();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666FF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = sub_227666A90();
  if (*(a2 + 16))
  {
    v19 = sub_226E92000(v17, v18);
    v21 = v20;

    if (v21)
    {
      (*(v12 + 16))(v15, *(a2 + 56) + *(v12 + 72) * v19, v11);
      v22 = sub_227666FC0();
      (*(v12 + 8))(v15, v11);
      return v22;
    }
  }

  else
  {
  }

  v24 = v39;
  sub_22766A730();
  v25 = v37;
  v26 = v16;
  v27 = v38;
  (*(v37 + 16))(v7, v26, v38);
  v28 = sub_22766B380();
  v29 = sub_22766C890();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = sub_227666A90();
    v33 = v25;
    v35 = v34;
    (*(v33 + 8))(v7, v27);
    v36 = sub_226E97AE8(v32, v35, &v42);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "[CatalogWorkoutReferenceSortDataProvider] Modality reference with identifier %s not found", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v7, v27);
  }

  (*(v40 + 8))(v24, v41);
  return 0;
}

uint64_t sub_2274E5D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), const char *a6)
{
  v34 = a5;
  v35 = a6;
  v10 = sub_22766B390();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  v20 = a4(v17);
  if (v20[2])
  {
    v36 = v6;
    v22 = v20[4];
    v21 = v20[5];

    if (*(a2 + 16) && (v23 = sub_226E92000(v22, v21), (v24 & 1) != 0))
    {
      v25 = v23;

      v26 = (*(v15 + 16))(v19, *(a2 + 56) + *(v15 + 72) * v25, v14);
      v27 = v34(v26);
      (*(v15 + 8))(v19, v14);
      return v27;
    }

    else
    {
      sub_22766A730();

      v29 = sub_22766B380();
      v30 = sub_22766C890();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        v33 = sub_226E97AE8(v22, v21, &v38);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_226E8E000, v29, v30, v35, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x22AA9A450](v32, -1, -1);
        MEMORY[0x22AA9A450](v31, -1, -1);
      }

      else
      {
      }

      (*(v37 + 8))(v13, v10);
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t Array<A>.count(forModalityKind:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  if (v3)
  {
    v4 = a2 + 32;
    sub_226F48150();
    sub_226EC1E18();
    v5 = 0;
    v6 = (a2 + 64);
    while (1)
    {
      v13 = *(v6 - 1);
      v15 = *v6;
      result = sub_227663B20();
      if (result)
      {
        break;
      }

      ++v5;
      v6 += 40;
      if (v3 == v5)
      {
        v8 = 0;
        goto LABEL_16;
      }
    }

    v9 = 0;
LABEL_8:
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      if (v5 == v3)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      while (1)
      {
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v10 == v3)
        {
          v8 = v12;
          goto LABEL_16;
        }

        if (v10 >= v3)
        {
          goto LABEL_18;
        }

        v11 = v4 + 40 * v10;
        v14 = *(v11 + 16);
        v16 = *(v11 + 32);
        result = sub_227663B20();
        ++v5;
        if (result)
        {
          v5 = v10;
          v9 = v12;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

uint64_t Array<A>.numberOfUniqueModalities.getter()
{

  v1 = sub_226F43E68(v0, sub_2274E8434, 0);

  v2 = *(v1 + 16);

  return v2;
}

BOOL Array<A>.contains(modalityKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);

  v6 = (a4 + 64);
  v7 = v5 + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 40;
    v11 = *(v6 - 1);
    v12 = *v6;
    sub_226F48150();
    sub_226EC1E18();
    v9 = sub_227663B20();
    v6 = v8;
  }

  while ((v9 & 1) == 0);

  return v7 != 0;
}

uint64_t Array<A>.modalityDescriptions.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v5 = *(v3 - 4);
      v4 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;

      sub_226EB396C(v6, v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_22713A9EC();
      v16 = sub_227663B60();
      v17 = v9;
      MEMORY[0x22AA98450](40, 0xE100000000000000);
      v10 = sub_22766D140();
      MEMORY[0x22AA98450](v10);

      MEMORY[0x22AA98450](41, 0xE100000000000000);

      sub_226EB2DFC(v6, v7, v8);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_226F1EF90(v11 > 1, v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v16;
      *(v13 + 40) = v17;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_22713AA40();
  v14 = sub_22766BF70();

  return v14;
}

uint64_t Array<A>.modalityCounts.getter(uint64_t a1)
{
  v2 = sub_227149B3C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 64); ; i += 40)
  {
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;

    sub_226EB396C(v5, v7, v8);
    sub_226EB396C(v5, v7, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_226F491D8(v5, v7, v8);
    v12 = v2[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_226FF6748(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_226F491D8(v5, v7, v8);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v19 = v10;
    sub_226FF6744(v10);
    v10 = v19;
    if (v16)
    {
LABEL_9:
      v18 = v10;
      sub_226EB2DFC(v5, v7, v8);
      v10 = v18;
      goto LABEL_13;
    }

LABEL_11:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v2[6] + 24 * v10;
    *v20 = v5;
    *(v20 + 8) = v7;
    *(v20 + 16) = v8;
    *(v2[7] + 8 * v10) = 0;
    v21 = v2[2];
    v14 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v14)
    {
      goto LABEL_18;
    }

    v2[2] = v22;
LABEL_13:
    v23 = v2[7];
    v24 = *(v23 + 8 * v10);
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    *(v23 + 8 * v10) = v25;

    sub_226EB2DFC(v5, v7, v8);
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}