uint64_t sub_22805409C(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22805419C, 0, 0);
}

uint64_t sub_22805419C()
{
  v128 = v0;
  v1 = v0[37];
  if (!v1)
  {
LABEL_41:
    v107 = v0[34];
    v106 = v0[35];
    v109 = v0[30];
    v108 = v0[31];
    v111 = v0[28];
    v110 = v0[29];
    v112 = v0[27];

    v105 = v0[1];
    goto LABEL_42;
  }

  v120 = *(v1 + 16);
  v115 = v0[37];
  if (!v120)
  {
LABEL_30:
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v2 = 0;
  v118 = v0[33];
  v119 = (v118 + 8);
  v117 = v0 + 31;
  v114 = v0 + 30;
  while (v2 < *(v1 + 16))
  {
    v3 = v0[31];
    (*(v118 + 16))(v0[35], v1 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v2, v0[32]);
    sub_22813710C();
    v4 = sub_22813701C();
    v5 = *(v4 - 8);
    v6 = *(v5 + 48);
    v7 = v6(v3, 1, v4);
    v8 = v117;
    if (v7 == 1)
    {
      goto LABEL_8;
    }

    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[24];
    v12 = sub_228136FFC();
    v116 = v13;
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_22813710C();
    if (v6(v10, 1, v4) == 1)
    {

      v8 = v114;
      v1 = v115;
      v0 = v122;
LABEL_8:
      sub_228059C78(*v8, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_9;
    }

    v15 = *v114;
    v16 = sub_228136FFC();
    v18 = v17;
    v14(v15, v4);
    if (v12 == v16 && v116 == v18)
    {

      v0 = v122;
    }

    else
    {
      v19 = sub_2281399BC();

      v0 = v122;
      v1 = v115;
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = v0[35];
    v21 = v0[28];
    sub_22813712C();
    v22 = sub_2281370BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v21, 1, v22);
    v26 = v0[28];
    if (v25 == 1)
    {
      sub_228059C78(v0[28], &qword_27D81E320, &unk_22813A7D0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = sub_228136FFC();
      v28 = v29;
      (*(v23 + 8))(v26, v22);
    }

    v30 = v0[27];
    v31 = v0[24];
    sub_22813712C();
    v32 = v24(v30, 1, v22);
    v33 = v0[27];
    if (v32 == 1)
    {
      sub_228059C78(v0[27], &qword_27D81E320, &unk_22813A7D0);
      v1 = v115;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v34 = sub_228136FFC();
    v36 = v35;
    (*(v23 + 8))(v33, v22);
    if (!v28)
    {
      v1 = v115;
      if (!v36)
      {
        goto LABEL_39;
      }

LABEL_29:

LABEL_9:
      (*v119)(v0[35], v0[32]);
      goto LABEL_10;
    }

    v1 = v115;
    if (!v36)
    {
      goto LABEL_29;
    }

    if (v27 == v34 && v28 == v36)
    {

LABEL_39:
      (*v119)(v0[35], v0[32]);
LABEL_40:

      goto LABEL_41;
    }

    v37 = v0[35];
    v38 = v0[32];
    v39 = sub_2281399BC();

    v40 = v38;
    v1 = v115;
    (*v119)(v37, v40);
    if (v39)
    {
      goto LABEL_40;
    }

LABEL_10:
    if (v120 == ++v2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_31:
  v41 = v0[34];
  v42 = v122[33];
  v43 = v122[32];
  v44 = v122[25];
  v45 = v122[24];
  v46 = sub_22813882C();
  __swift_project_value_buffer(v46, qword_2813C8A20);
  sub_228004954(v44, (v122 + 2));
  sub_228004954(v44, (v122 + 7));
  sub_228004954(v44, (v122 + 12));
  sub_228004954(v44, (v122 + 17));
  (*(v42 + 16))(v41, v45, v43);

  v47 = sub_22813880C();
  v48 = sub_2281396DC();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v122[34];
  if (v49)
  {
    v51 = v122[29];
    v52 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v124 = v121;
    *v52 = 136316674;
    v54 = v122[5];
    v53 = v122[6];
    __swift_project_boxed_opaque_existential_1(v122 + 2, v54);
    v55 = (*(v53 + 16))(v54, v53);
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 2);
    v58 = sub_227FCC340(v55, v57, &v124);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v60 = v122[10];
    v59 = v122[11];
    __swift_project_boxed_opaque_existential_1(v122 + 7, v60);
    v61 = (*(*(v59 + 8) + 8))(v60);
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 7);
    v64 = sub_227FCC340(v61, v63, &v124);

    *(v52 + 14) = v64;
    *(v52 + 22) = 2080;
    v66 = v122[15];
    v65 = v122[16];
    __swift_project_boxed_opaque_existential_1(v122 + 12, v66);
    v67 = (*(*(v65 + 8) + 16))(v66);
    v69 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 12);
    v70 = sub_227FCC340(v67, v69, &v124);

    *(v52 + 24) = v70;
    *(v52 + 32) = 1024;
    v72 = v122[20];
    v71 = v122[21];
    __swift_project_boxed_opaque_existential_1(v122 + 17, v72);
    LODWORD(v71) = (*(*(v71 + 8) + 24))(v72);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 17);
    *(v52 + 34) = v71;
    *(v52 + 38) = 2082;
    sub_22813710C();
    v73 = sub_22813701C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v51, 1, v73);
    v76 = v122[29];
    if (v75 == 1)
    {
      sub_228059C78(v122[29], &qword_27D81E328, &qword_2281402C0);
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v82 = v122[29];
      v78 = sub_228136FFC();
      v77 = v83;
      (*(v74 + 8))(v76, v73);
    }

    v84 = v122[26];
    (*(v122[33] + 8))(v122[34], v122[32]);
    v85 = sub_227FCC340(v78, v77, &v124);

    *(v52 + 40) = v85;
    *(v52 + 48) = 2082;
    v122[22] = v84;
    swift_getMetatypeMetadata();
    v86 = sub_2281392EC();
    v88 = sub_227FCC340(v86, v87, &v124);

    *(v52 + 50) = v88;
    *(v52 + 58) = 2082;
    v81 = v122;
    v125 = MEMORY[0x277D84FA0];
    v89 = sub_228046378(v115, &v125);
    v126 = 91;
    v127 = 0xE100000000000000;
    v122[23] = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_228059C14();
    v90 = sub_22813925C();
    v92 = v91;

    MEMORY[0x22AAB1970](v90, v92);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v93 = v126;
    v94 = v127;

    v95 = sub_227FCC340(v93, v94, &v124);

    *(v52 + 60) = v95;
    _os_log_impl(&dword_227FC3000, v47, v48, "The dominant language detected is not supported for topic summary request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, type: %{public}s, supportedLanguages: %{public}s", v52, 0x44u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v121, -1, -1);
    MEMORY[0x22AAB28A0](v52, -1, -1);
  }

  else
  {
    v79 = v122[33];
    v80 = v122[32];
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 17);

    (*(v79 + 8))(v50, v80);
    v81 = v122;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v122 + 12);
  }

  v96 = v81[34];
  v97 = v81[35];
  v98 = v81[30];
  v99 = v81[31];
  v101 = v81[28];
  v100 = v81[29];
  v123 = v81[27];
  v102 = swift_allocObject();
  *(v102 + 16) = 17;
  *(v102 + 24) = 0;
  *(v102 + 32) = 0;
  v103 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146000, 143, sub_228059E80);
  sub_227FDB3CC();
  swift_allocError();
  *v104 = 17;
  *(v104 + 8) = v103;
  swift_willThrow();

  v105 = v81[1];
LABEL_42:

  return v105();
}

uint64_t sub_228054D04(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228054DCC, 0, 0);
}

uint64_t sub_228054DCC()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_228055234;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = type metadata accessor for SKMailMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE8, &qword_22813DCB0);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_228055234()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EAC, 0, 0);
}

uint64_t sub_22805535C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228055424, 0, 0);
}

uint64_t sub_228055424()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_22805588C;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = &type metadata for SKTextChunk;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF0, &qword_22813DCC8);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_22805588C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280559B4, 0, 0);
}

uint64_t sub_2280559B4()
{
  v1 = v0[6];
  v2 = GMSModelInfo.supportedLanguagesForTopicSummaries.getter();
  sub_228059CD8(v1);
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_228055A34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228055AFC, 0, 0);
}

uint64_t sub_228055AFC()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_228055F64;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = type metadata accessor for SKNoteMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB0, &qword_22813DB78);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_228055F64()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB0, 0, 0);
}

uint64_t sub_22805608C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228056154, 0, 0);
}

uint64_t sub_228056154()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_2280565BC;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = type metadata accessor for SKTextMessage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC8, &qword_22813DC10);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_2280565BC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB4, 0, 0);
}

uint64_t sub_2280566E4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280567AC, 0, 0);
}

uint64_t sub_2280567AC()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_228056C14;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = type metadata accessor for SKUserNotification();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBE0, &qword_22813DC88);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_228056C14()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EB8, 0, 0);
}

uint64_t sub_228056D3C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228056E04, 0, 0);
}

uint64_t sub_228056E04()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_22805726C;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = &type metadata for SKMailMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD0, &qword_22813DC38);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_22805726C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EBC, 0, 0);
}

uint64_t sub_228057394(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22805745C, 0, 0);
}

uint64_t sub_22805745C()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_2280578C4;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = &type metadata for SKTextMessageThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBC0, &qword_22813DBE8);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_2280578C4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC0, 0, 0);
}

uint64_t sub_2280579EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228057AB4, 0, 0);
}

uint64_t sub_228057AB4()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_228057F1C;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = &type metadata for SKUserNotificationThread;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBB8, &qword_22813DBC0);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_228057F1C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC4, 0, 0);
}

uint64_t sub_228058044(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22805810C, 0, 0);
}

uint64_t sub_22805810C()
{
  v29 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v27, v7);

    if ((v27 & 1) == 0)
    {
LABEL_14:
      v8 = v0[5];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_228058574;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v0[2] = &type metadata for SKText;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBD8, &qword_22813DC60);
    v21 = sub_2281392EC();
    v23 = sub_227FCC340(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v20);
    MEMORY[0x22AAB28A0](v20, -1, -1);
    MEMORY[0x22AAB28A0](v19, -1, -1);
  }

  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_228058574()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228059EC8, 0, 0);
}

uint64_t sub_22805869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228058768, 0, 0);
}

uint64_t sub_228058768()
{
  v30 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 312);
  v4 = *(*v2 + 320);
  v6 = *(*v2 + 328);
  v5 = *(*v2 + 336);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v28, v7);

    if ((v28 & 1) == 0)
    {
LABEL_14:
      v8 = v0[6];
      v9 = sub_2281376EC();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      if (qword_2813C73E8 != -1)
      {
        swift_once();
      }

      v10 = swift_task_alloc();
      v0[8] = v10;
      *v10 = v0;
      v10[1] = sub_228058BC0;
      v12 = v0[6];
      v11 = v0[7];
      v13 = v0[3];
      v14 = v0[4];

      return sub_228011668(v11, v13, v14, v12);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = sub_22813882C();
  __swift_project_value_buffer(v16, qword_2813C8A20);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[5];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v0[2] = v19;
    swift_getMetatypeMetadata();
    v22 = sub_2281392EC();
    v24 = sub_227FCC340(v22, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_227FC3000, v17, v18, "Allowing all train-allowed languages for topic summarization for %s because InternalSettings override is set.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v21);
    MEMORY[0x22AAB28A0](v21, -1, -1);
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  v26 = v0[6];
  v25 = v0[7];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_228058BC0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  sub_228059C78(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_228058CE8, 0, 0);
}

uint64_t sub_228058CE8()
{
  v1 = v0[7];
  v2 = GMSModelInfo.supportedLanguagesForTopicSummaries.getter();
  sub_228059CD8(v1);
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_228058D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D90;

  return sub_2280485F8(a1, a2, a3, a4);
}

uint64_t sub_228058E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059D94;

  return sub_2280477A8(a1, a2, a3, a4);
}

uint64_t sub_228058F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_228059D98;

  return sub_22804A5AC(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_228059024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_228059114;

  return sub_228046EEC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_228059114()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228059208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DA0;

  return sub_228048D0C(a1, a2, a3, a4, v10);
}

uint64_t sub_2280592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_228059DA4;

  return sub_228047EBC(a1, a2, a3, a4);
}

uint64_t sub_2280593B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DA8;

  return sub_228049684(a1, a2, a3, a4, v10);
}

uint64_t sub_228059494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_228059DAC;

  return sub_228049E18(a1, a2, a3, a4, v10);
}

uint64_t sub_228059570(uint64_t a1, unint64_t a2)
{
  v4 = sub_228136CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22804B614(a1, a2);
  v10 = [objc_opt_self() sharedAssistant];
  v11 = sub_22813927C();

  v12 = [v10 stringFromString:v11 byApplyingSmartQuotes:1 smartDashes:1 quotesArray:0];

  v13 = sub_2281392AC();
  v15 = v14;

  v18[0] = v13;
  v18[1] = v15;
  sub_228136C8C();
  sub_227FDB420();
  v16 = sub_2281397AC();
  (*(v5 + 8))(v9, v4);

  return v16;
}

uint64_t dispatch thunk of Summarizable.preprocess(sharedSessionData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22805986C;

  return v11(a1, a2, a3);
}

uint64_t sub_22805986C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of Summarizable.checkSupportedLanguage(modelBundleID:requestInfo:styles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_228059B14;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_228059B14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_228059C14()
{
  result = qword_2813C4678;
  if (!qword_2813C4678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EB10, &unk_22813DB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4678);
  }

  return result;
}

uint64_t sub_228059C78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228059CD8(uint64_t a1)
{
  v2 = type metadata accessor for GMSModelInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228059EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v8 + 624) = v23;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 600) = a5;
  *(v8 + 592) = a4;
  *(v8 + 584) = a3;
  *(v8 + 576) = a2;
  *(v8 + 568) = a1;
  v10 = sub_22813882C();
  *(v8 + 632) = v10;
  v11 = *(v10 - 8);
  *(v8 + 640) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v13 = sub_228136F8C();
  *(v8 + 664) = v13;
  v14 = *(v13 - 8);
  *(v8 + 672) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  v16 = type metadata accessor for SummarizationResult();
  *(v8 + 696) = v16;
  v17 = *(v16 - 8);
  *(v8 + 704) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF8, &qword_22813DD20) - 8) + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  v20 = *(*(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) - 8) + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 856) = *a8;

  return MEMORY[0x2822009F8](sub_22805A130, 0, 0);
}

void *sub_22805A130()
{
  v173 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 624);
  v3 = *(v0 + 600);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(*(v5 + 8) + 16))(v4);
  v8 = v7;
  v10 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  v11 = (*(*(v9 + 8) + 8))(v10);
  sub_22805DD40(v6, v8, v11, v12, v1);
  LOBYTE(v6) = *(v0 + 856);
  v13 = *(v0 + 760);
  v14 = *(v0 + 600);

  LOBYTE(v172[0]) = v6;
  *(v0 + 768) = sub_2280DEE74(v14, v13, v172);
  v162 = (v0 + 552);
  v16 = *(v0 + 592);
  v17 = *(v16 + 64);
  v163 = v16 + 64;
  v164 = *(v0 + 704);
  v166 = v16;
  v167 = *(v0 + 696);
  v18 = -1;
  v19 = -1 << *(v16 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & v17;
  v21 = (63 - v19) >> 6;

  v22 = 0;
  v23 = &unk_27D81EC00;
  v169 = v0;
  while (1)
  {
    if (v20)
    {
      v24 = v22;
      goto LABEL_18;
    }

    v25 = v21 <= v22 + 1 ? v22 + 1 : v21;
    v26 = v25 - 1;
    do
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_85:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

        return sub_2281399EC();
      }

      if (v24 >= v21)
      {
        v43 = *(v0 + 744);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, &qword_22813DD28);
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
        v20 = 0;
        v22 = v26;
        goto LABEL_19;
      }

      v20 = *(v163 + 8 * v24);
      ++v22;
    }

    while (!v20);
    v22 = v24;
LABEL_18:
    v27 = *(v0 + 744);
    v28 = *(v0 + 720);
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v30 = v29 | (v24 << 6);
    v31 = *(*(v166 + 48) + v30);
    sub_22805CF8C(*(v166 + 56) + *(v164 + 72) * v30, v28);
    v32 = v23;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, &qword_22813DD28);
    v34 = *(v33 + 48);
    *v27 = v31;
    sub_22805DCCC(v28, &v27[v34], type metadata accessor for SummarizationResult);
    v35 = *(*(v33 - 8) + 56);
    v36 = v33;
    v23 = v32;
    v0 = v169;
    v35(v27, 0, 1, v36);
LABEL_19:
    v37 = *(v0 + 752);
    sub_22805CFF0(*(v0 + 744), v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, &qword_22813DD28);
    *(v0 + 776) = v38;
    v39 = *(v38 - 8);
    *(v0 + 784) = v39;
    v40 = *(v39 + 48);
    *(v0 + 792) = v40;
    *(v0 + 800) = (v39 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v40(v37, 1, v38) == 1)
    {
      break;
    }

    v41 = *(v0 + 752) + *(v38 + 48);
    v42 = *(v41 + *(v167 + 40));
    sub_22805DC6C(v41, type metadata accessor for SummarizationResult);
    if (v42 == 1)
    {
      v117 = *(v0 + 592);
      v118 = *(v0 + 568);
      sub_22805DC6C(*(v0 + 760), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

      v119 = sub_228138E0C();
      (*(*(v119 - 8) + 56))(v118, 1, 1, v119);
      goto LABEL_83;
    }
  }

  v45 = *(v0 + 592);

  v46 = *(v166 + 32);
  *(v0 + 857) = v46;
  v47 = 1 << v46;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v166 + 64);

  v50 = 0;
  if (v49)
  {
    while (1)
    {
      v51 = *(v0 + 592);
LABEL_36:
      v56 = *(v0 + 784);
      v57 = *(v0 + 776);
      v58 = *(v0 + 728);
      v59 = *(v0 + 720);
      v60 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v61 = v60 | (v50 << 6);
      v62 = *(*(v51 + 48) + v61);
      sub_22805CF8C(*(v51 + 56) + *(*(v0 + 704) + 72) * v61, v59);
      v63 = *(v57 + 48);
      *v58 = v62;
      sub_22805DCCC(v59, &v58[v63], type metadata accessor for SummarizationResult);
      (*(v56 + 56))(v58, 0, 1, v57);
      v54 = v50;
LABEL_37:
      *(v0 + 816) = v54;
      *(v0 + 808) = v49;
      v64 = *(v0 + 800);
      v65 = *(v0 + 792);
      v66 = *(v0 + 776);
      v67 = *(v0 + 736);
      sub_22805CFF0(*(v0 + 728), v67);
      v68 = v65(v67, 1, v66);
      v69 = *(v0 + 760);
      if (v68 == 1)
      {
        v120 = *(v0 + 768);
        v121 = *(v0 + 592);
        v122 = *(v0 + 568);

        sub_228138DEC();

        sub_22805DC6C(v69, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v123 = sub_228138E0C();
        (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
        goto LABEL_83;
      }

      v70 = *(v0 + 712);
      v71 = *(v0 + 600);
      sub_22805DCCC(*(v0 + 736) + *(*(v0 + 776) + 48), v70, type metadata accessor for SummarizationResult);
      if ((sub_22805D060(v70, v69, v71) & 1) == 0)
      {
        if (qword_2813C49E0[0] != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_76;
      }

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      *(v0 + 824) = qword_2813C8B60;
      sub_228139B6C();
      v72 = *(*(v0 + 544) + 24);

      if (v72)
      {
        break;
      }

LABEL_52:
      v103 = *(v0 + 768);
      v104 = *(v0 + 688);
      sub_228136F7C();
      if (v103)
      {
        v135 = *(v0 + 768);
        v136 = *(v0 + 856);
        v137 = *(v0 + 712);
        v138 = *(v0 + 584);
        v139 = *(v0 + 576);
        v141 = *v137;
        v140 = v137[1];
        v170 = *(v0 + 608);
        sub_228004954(*(v0 + 600), v0 + 72);
        *(v0 + 16) = v139;
        *(v0 + 24) = v138;
        *(v0 + 32) = v141;
        *(v0 + 40) = v140;
        *(v0 + 48) = v170;
        *(v0 + 64) = v136;

        v142 = swift_task_alloc();
        *(v0 + 832) = v142;
        *v142 = v0;
        v142[1] = sub_22805B178;

        return sub_2280DD00C(v0 + 16);
      }

      v105 = *(v0 + 712);
      (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));
      sub_22805DC6C(v105, type metadata accessor for SummarizationResult);
      v50 = v54;
      if (!v49)
      {
        goto LABEL_28;
      }
    }

    v168 = v54;
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v72 + 16));
    *(v0 + 216) = MEMORY[0x277D839B0];
    *(v0 + 192) = 0;
    sub_227FE5EAC((v0 + 192), (v0 + 224));

    v74 = *(v72 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v72 + 24);
    *(v0 + 552) = v76;
    *(v72 + 24) = 0x8000000000000000;
    v77 = *(v0 + 248);
    v78 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v77);
    v79 = *(v77 - 8);
    v80 = *(v79 + 64) + 15;
    v81 = swift_task_alloc();
    (*(v79 + 16))(v81, v78, v77);
    v82 = *v81;
    v0 = v169;
    *(v169 + 280) = MEMORY[0x277D839B0];
    *(v169 + 256) = v82;

    v85 = sub_227FEB408(v83, v76);
    v86 = *(v76 + 16);
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_89;
    }

    v89 = v84;
    if (*(v76 + 24) >= v88)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v90 = v76;
        if ((v84 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_50;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
      v106 = sub_22813991C();
      v90 = v106;
      v107 = *(v76 + 16);
      if (v107)
      {
        result = (v106 + 64);
        v108 = ((1 << *(v90 + 32)) + 63) >> 6;
        if (v90 != v76 || result >= v76 + 64 + 8 * v108)
        {
          result = memmove(result, (v76 + 64), 8 * v108);
          v107 = *(v76 + 16);
        }

        v109 = 0;
        *(v90 + 16) = v107;
        v110 = 1 << *(v76 + 32);
        if (v110 < 64)
        {
          v111 = ~(-1 << v110);
        }

        else
        {
          v111 = -1;
        }

        v160 = (v110 + 63) >> 6;
        v0 = v169;
        v112 = v111 & *(v76 + 64);
        if (v112)
        {
          do
          {
            v113 = __clz(__rbit64(v112));
            v165 = (v112 - 1) & v112;
LABEL_70:
            v161 = v113 | (v109 << 6);
            v116 = *(*(v76 + 48) + 8 * v161);
            sub_227FEB0D4(*(v76 + 56) + 32 * v161, v169 + 512);
            *(*(v90 + 48) + 8 * v161) = v116;
            sub_227FE5EAC((v169 + 512), (*(v90 + 56) + 32 * v161));

            v112 = v165;
          }

          while (v165);
        }

        v114 = v109;
        while (1)
        {
          v109 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            break;
          }

          if (v109 >= v160)
          {
            goto LABEL_72;
          }

          v115 = *(v76 + 64 + 8 * v109);
          ++v114;
          if (v115)
          {
            v113 = __clz(__rbit64(v115));
            v165 = (v115 - 1) & v115;
            goto LABEL_70;
          }
        }

        __break(1u);
        return result;
      }

LABEL_72:

      if (v89)
      {
        goto LABEL_50;
      }

LABEL_46:
      v93 = *(v0 + 280);
      v94 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 256, v93);
      v95 = *(v93 - 8);
      v96 = *(v95 + 64) + 15;
      v97 = swift_task_alloc();
      (*(v95 + 16))(v97, v94, v93);
      v0 = v169;
      v98 = *v97;
      *(v169 + 312) = MEMORY[0x277D839B0];
      *(v169 + 288) = v98;
      *(v90 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(v90 + 48) + 8 * v85) = KeyPath;
      sub_227FE5EAC((v169 + 288), (*(v90 + 56) + 32 * v85));
      v99 = *(v90 + 16);
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (v100)
      {
        goto LABEL_90;
      }

      *(v90 + 16) = v101;

      __swift_destroy_boxed_opaque_existential_1Tm_6((v169 + 256));
    }

    else
    {
      sub_2280196BC(v88, isUniquelyReferenced_nonNull_native);
      v90 = *v162;
      v91 = sub_227FEB408(KeyPath, *v162);
      if ((v89 & 1) != (v92 & 1))
      {
        goto LABEL_85;
      }

      v85 = v91;
      if ((v89 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_50:
      v102 = (*(v90 + 56) + 32 * v85);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v102);
      sub_227FE5EAC((v0 + 256), v102);
    }

    v54 = v168;
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 224));

    *(v72 + 24) = v90;
    os_unfair_lock_unlock((v72 + 16));

    goto LABEL_52;
  }

LABEL_28:
  v52 = ((1 << *(v0 + 857)) + 63) >> 6;
  if (v52 <= (v50 + 1))
  {
    v53 = v50 + 1;
  }

  else
  {
    v53 = ((1 << *(v0 + 857)) + 63) >> 6;
  }

  v54 = v53 - 1;
  while (1)
  {
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v55 >= v52)
    {
      (*(*(v0 + 784) + 56))(*(v0 + 728), 1, 1, *(v0 + 776));
      v49 = 0;
      goto LABEL_37;
    }

    v51 = *(v0 + 592);
    v49 = *(v51 + 8 * v55 + 64);
    ++v50;
    if (v49)
    {
      v50 = v55;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_76:
  v124 = *(v0 + 600);
  __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
  sub_228004954(v124, v0 + 112);
  v125 = sub_22813880C();
  v126 = sub_2281396DC();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v172[0] = v128;
    *v127 = 136446210;
    v129 = *(v0 + 136);
    v130 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v129);
    v131 = (*(v130 + 16))(v129, v130);
    v133 = v132;
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
    v134 = sub_227FCC340(v131, v133, v172);

    *(v127 + 4) = v134;
    _os_log_impl(&dword_227FC3000, v125, v126, "Request %{public}s rejected by safety guardrails.", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v128);
    MEMORY[0x22AAB28A0](v128, -1, -1);
    MEMORY[0x22AAB28A0](v127, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
  }

  v143 = *(v0 + 768);
  v144 = *(v0 + 760);
  v145 = *(v0 + 712);
  v146 = *(v0 + 592);
  v147 = *(v0 + 568);
  sub_228138DEC();

  sub_22805DC6C(v145, type metadata accessor for SummarizationResult);
  sub_22805DC6C(v144, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  v148 = sub_228138E0C();
  (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
LABEL_83:
  v149 = *(v0 + 760);
  v150 = *(v0 + 752);
  v151 = *(v0 + 744);
  v152 = *(v0 + 736);
  v153 = *(v0 + 728);
  v154 = *(v0 + 720);
  v155 = *(v0 + 712);
  v156 = *(v0 + 688);
  v157 = *(v0 + 680);
  v158 = *(v0 + 656);
  v171 = *(v0 + 648);

  v159 = *(v0 + 8);

  return v159();
}

uint64_t sub_22805B178(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 832);
  v7 = *v3;
  *(v5 + 840) = a1;
  *(v5 + 848) = v2;

  if (v2)
  {
    v8 = *(v5 + 768);

    v9 = sub_22805CBAC;
  }

  else
  {
    *(v5 + 858) = a2;
    v9 = sub_22805B2AC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

char *sub_22805B2AC()
{
  v242 = v0;
  if (*(v0 + 858) > 1u)
  {
    if (*(v0 + 858) == 2)
    {
      v11 = *(v0 + 840);
      v12 = *(v0 + 824);
      sub_228139B6C();
      v13 = *(*(v0 + 560) + 24);

      if (v13)
      {
        v225 = *(v0 + 840);
        v227 = *(v0 + 688);
        v14 = *(v0 + 680);
        v15 = *(v0 + 672);
        v229 = *(v0 + 664);
        v232 = *(v0 + 768);
        KeyPath = swift_getKeyPath();
        os_unfair_lock_lock((v13 + 16));
        *(v0 + 344) = MEMORY[0x277D839B0];
        *(v0 + 320) = 1;
        sub_227FE5EAC((v0 + 320), (v0 + 352));

        v17 = *(v13 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v241[0] = *(v13 + 24);
        v19 = *(v0 + 376);
        v20 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 352, v19);
        v235 = v11;
        v21 = *(v19 - 8);
        v22 = *(v21 + 64) + 15;
        v23 = swift_task_alloc();
        (*(v21 + 16))(v23, v20, v19);
        LOBYTE(v19) = *v23;

        sub_22805CD30(v19, KeyPath, isUniquelyReferenced_nonNull_native, v241);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 352));

        *(v13 + 24) = v241[0];
        os_unfair_lock_unlock((v13 + 16));

        v24 = swift_getKeyPath();
        os_unfair_lock_lock((v13 + 16));
        *(v0 + 408) = MEMORY[0x277D839B0];
        *(v0 + 384) = v225 & 1;
        sub_227FE5EAC((v0 + 384), (v0 + 416));

        v25 = *(v13 + 24);
        LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
        v241[0] = *(v13 + 24);
        v26 = *(v0 + 440);
        v27 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 416, v26);
        v28 = *(v26 - 8);
        v29 = *(v28 + 64) + 15;
        v30 = swift_task_alloc();
        (*(v28 + 16))(v30, v27, v26);
        LOBYTE(v26) = *v30;

        sub_22805CD30(v26, v24, v23, v241);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 416));

        *(v13 + 24) = v241[0];
        os_unfair_lock_unlock((v13 + 16));

        sub_228136F7C();
        sub_228136F1C();
        v32 = v31;
        (*(v15 + 8))(v14, v229);
        swift_getKeyPath();
        os_unfair_lock_lock((v13 + 16));
        *(v0 + 472) = MEMORY[0x277D839F8];
        *(v0 + 448) = v32 * 1000.0;
        sub_227FE5EAC((v0 + 448), (v0 + 480));

        v33 = *(v13 + 24);
        LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
        v241[0] = *(v13 + 24);
        v34 = *(v0 + 504);
        v35 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 480, v34);
        v36 = *(v34 - 8);
        v37 = *(v36 + 64) + 15;
        v38 = swift_task_alloc();
        (*(v36 + 16))(v38, v35, v34);
        v39 = *v38;

        sub_22805D944(v40, v23, v241, v39);
        __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 480));

        *(v13 + 24) = v241[0];
        os_unfair_lock_unlock((v13 + 16));

        if ((v235 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v78 = *(v0 + 768);

        if ((v11 & 1) == 0)
        {
LABEL_87:
          if (qword_2813C49E0[0] != -1)
          {
            swift_once();
          }

          v156 = *(v0 + 600);
          __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
          sub_228004954(v156, v0 + 152);
          v157 = sub_22813880C();
          v158 = sub_2281396DC();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v241[0] = v160;
            *v159 = 136446210;
            v161 = *(v0 + 176);
            v162 = *(v0 + 184);
            __swift_project_boxed_opaque_existential_1((v0 + 152), v161);
            v163 = (*(v162 + 16))(v161, v162);
            v165 = v164;
            __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 152));
            v166 = sub_227FCC340(v163, v165, v241);

            *(v159 + 4) = v166;
            _os_log_impl(&dword_227FC3000, v157, v158, "Request %{public}s rejected by factual consistency classifier.", v159, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm_6(v160);
            MEMORY[0x22AAB28A0](v160, -1, -1);
            MEMORY[0x22AAB28A0](v159, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 152));
          }

          v194 = *(v0 + 768);
          v234 = *(v0 + 760);
          v49 = *(v0 + 712);
          v50 = *(v0 + 688);
          v51 = *(v0 + 672);
          v52 = *(v0 + 664);
          v195 = *(v0 + 592);
          v196 = swift_allocObject();
          v55 = 47;
          *(v196 + 16) = 47;
          *(v196 + 24) = 0;
          *(v196 + 32) = 0;
          v56 = sub_22805D938;
          v57 = 121;
          goto LABEL_102;
        }
      }
    }

    else
    {
      v47 = *(*(v0 + 768) + 16);

      if (v47)
      {
        v48 = *(v0 + 768);
        v234 = *(v0 + 760);
        v49 = *(v0 + 712);
        v50 = *(v0 + 688);
        v51 = *(v0 + 672);
        v52 = *(v0 + 664);
        v53 = *(v0 + 592);
        v54 = swift_allocObject();
        v55 = 49;
        *(v54 + 16) = 49;
        *(v54 + 24) = 0;
        *(v54 + 32) = 0;
        v56 = sub_22805DD3C;
        v57 = 77;
LABEL_102:
        v197 = sub_227FF96D4(0, 0xD00000000000007ELL, 0x8000000228146080, v57, v56);
        sub_227FDB3CC();
        swift_allocError();
        *v198 = v55;
        *(v198 + 8) = v197;
        swift_willThrow();

        sub_22805D8E4(v0 + 16);
        (*(v51 + 8))(v50, v52);
        v46 = v49;
        goto LABEL_103;
      }
    }

    v64 = *(v0 + 712);
    v79 = *(v0 + 688);
    v80 = *(v0 + 672);
    v81 = *(v0 + 664);
    sub_22805D8E4(v0 + 16);
    (*(v80 + 8))(v79, v81);
    goto LABEL_38;
  }

  if (*(v0 + 858))
  {
    if ((*(*(v0 + 768) + 16) & 1) == 0)
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v72 = __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v72 = __swift_project_value_buffer(*(v0 + 632), qword_2813C4990);
      }

      (*(*(v0 + 640) + 16))(*(v0 + 648), v72, *(v0 + 632));
      v73 = sub_22813880C();
      v74 = sub_2281396BC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_227FC3000, v73, v74, "Factual consistency classifier didn't run due to a model manager error, but FCC is not required.", v75, 2u);
        MEMORY[0x22AAB28A0](v75, -1, -1);
      }

      v76 = *(v0 + 840);
      v77 = *(v0 + 768);
      v64 = *(v0 + 712);
      v236 = *(v0 + 688);
      v65 = *(v0 + 672);
      v66 = *(v0 + 664);
      v67 = *(v0 + 648);
      v68 = *(v0 + 640);
      v69 = *(v0 + 632);

      v70 = v76;
      v71 = 1;
      goto LABEL_35;
    }

    v41 = *(v0 + 840);
    v231 = *(v0 + 712);
    v234 = *(v0 + 760);
    v2 = *(v0 + 688);
    v3 = *(v0 + 672);
    v4 = *(v0 + 664);
    v42 = *(v0 + 592);

    v43 = swift_allocObject();
    *(v43 + 16) = 50;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    sub_22805DB30(v41, 1u);
    v44 = sub_227FF96D4(v41, 0xD00000000000007ELL, 0x8000000228146080, 96, sub_22805DD34);
    sub_22805DB1C(v41, 1u);
    sub_227FDB3CC();
    swift_allocError();
    *v45 = 50;
    *(v45 + 8) = v44;
    swift_willThrow();

    v9 = v41;
    v10 = 1;
    goto LABEL_11;
  }

  if ((*(*(v0 + 768) + 16) & 1) == 0)
  {
    if (qword_2813C49E0[0] != -1)
    {
      goto LABEL_117;
    }

    while (1)
    {
      v58 = __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v58 = __swift_project_value_buffer(*(v0 + 632), qword_2813C4990);
      }

      (*(*(v0 + 640) + 16))(*(v0 + 656), v58, *(v0 + 632));
      v59 = sub_22813880C();
      v60 = sub_2281396BC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_227FC3000, v59, v60, "Factual consistency classifier didn't run because the asset is missing, but FCC is not required.", v61, 2u);
        MEMORY[0x22AAB28A0](v61, -1, -1);
      }

      v62 = *(v0 + 840);
      v63 = *(v0 + 768);
      v64 = *(v0 + 712);
      v236 = *(v0 + 688);
      v65 = *(v0 + 672);
      v66 = *(v0 + 664);
      v67 = *(v0 + 656);
      v68 = *(v0 + 640);
      v69 = *(v0 + 632);

      v70 = v62;
      v71 = 0;
LABEL_35:
      sub_22805DB1C(v70, v71);

      (*(v68 + 8))(v67, v69);
      sub_22805D8E4(v0 + 16);
      (*(v65 + 8))(v236, v66);
LABEL_38:
      v230 = (v0 + 552);
      sub_22805DC6C(v64, type metadata accessor for SummarizationResult);
      v82 = *(v0 + 848);
      v83 = *(v0 + 816);
      v84 = *(v0 + 808);
      if (v84)
      {
        break;
      }

LABEL_40:
      v86 = ((1 << *(v0 + 857)) + 63) >> 6;
      if (v86 <= (v83 + 1))
      {
        v87 = v83 + 1;
      }

      else
      {
        v87 = ((1 << *(v0 + 857)) + 63) >> 6;
      }

      v88 = v87 - 1;
      while (1)
      {
        v89 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v89 >= v86)
        {
          (*(*(v0 + 784) + 56))(*(v0 + 728), 1, 1, *(v0 + 776));
          v84 = 0;
          goto LABEL_49;
        }

        v85 = *(v0 + 592);
        v84 = *(v85 + 8 * v89 + 64);
        ++v83;
        if (v84)
        {
          v83 = v89;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      swift_once();
    }

    while (1)
    {
      v85 = *(v0 + 592);
LABEL_48:
      v90 = *(v0 + 784);
      v91 = *(v0 + 776);
      v92 = *(v0 + 728);
      v93 = *(v0 + 720);
      v94 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v95 = v94 | (v83 << 6);
      v96 = *(*(v85 + 48) + v95);
      sub_22805CF8C(*(v85 + 56) + *(*(v0 + 704) + 72) * v95, v93);
      v97 = *(v91 + 48);
      *v92 = v96;
      sub_22805DCCC(v93, &v92[v97], type metadata accessor for SummarizationResult);
      (*(v90 + 56))(v92, 0, 1, v91);
      v88 = v83;
LABEL_49:
      *(v0 + 816) = v88;
      *(v0 + 808) = v84;
      v98 = *(v0 + 800);
      v99 = *(v0 + 792);
      v100 = *(v0 + 776);
      v101 = *(v0 + 736);
      sub_22805CFF0(*(v0 + 728), v101);
      v102 = v99(v101, 1, v100);
      v103 = *(v0 + 760);
      if (v102 == 1)
      {
        v167 = *(v0 + 768);
        v168 = *(v0 + 592);
        v169 = *(v0 + 568);

        sub_228138DEC();

LABEL_107:
        sub_22805DC6C(v103, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
        v212 = sub_228138E0C();
        (*(*(v212 - 8) + 56))(v169, 0, 1, v212);
        v213 = *(v0 + 760);
        v214 = *(v0 + 752);
        v215 = *(v0 + 744);
        v216 = *(v0 + 736);
        v217 = *(v0 + 728);
        v218 = *(v0 + 720);
        v219 = *(v0 + 712);
        v220 = *(v0 + 688);
        v221 = *(v0 + 680);
        v222 = *(v0 + 656);
        v240 = *(v0 + 648);

        v208 = *(v0 + 8);
        goto LABEL_108;
      }

      v104 = *(v0 + 712);
      v105 = *(v0 + 600);
      sub_22805DCCC(*(v0 + 736) + *(*(v0 + 776) + 48), v104, type metadata accessor for SummarizationResult);
      v106 = sub_22805D060(v104, v103, v105);
      if (v82)
      {
        v170 = *(v0 + 768);
        v171 = *(v0 + 760);
        v172 = *(v0 + 712);
        v173 = *(v0 + 592);

        sub_22805DC6C(v172, type metadata accessor for SummarizationResult);
        v174 = v171;
        goto LABEL_104;
      }

      if ((v106 & 1) == 0)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v175 = *(v0 + 600);
        __swift_project_value_buffer(*(v0 + 632), qword_2813C8A20);
        sub_228004954(v175, v0 + 112);
        v176 = sub_22813880C();
        v177 = sub_2281396DC();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v241[0] = v179;
          *v178 = 136446210;
          v180 = *(v0 + 136);
          v181 = *(v0 + 144);
          __swift_project_boxed_opaque_existential_1((v0 + 112), v180);
          v182 = (*(v181 + 16))(v180, v181);
          v184 = v183;
          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
          v185 = sub_227FCC340(v182, v184, v241);

          *(v178 + 4) = v185;
          _os_log_impl(&dword_227FC3000, v176, v177, "Request %{public}s rejected by safety guardrails.", v178, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v179);
          MEMORY[0x22AAB28A0](v179, -1, -1);
          MEMORY[0x22AAB28A0](v178, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 112));
        }

        v209 = *(v0 + 768);
        v103 = *(v0 + 760);
        v210 = *(v0 + 712);
        v211 = *(v0 + 592);
        v169 = *(v0 + 568);
        sub_228138DEC();

        sub_22805DC6C(v210, type metadata accessor for SummarizationResult);
        goto LABEL_107;
      }

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      *(v0 + 824) = qword_2813C8B60;
      sub_228139B6C();
      v107 = *(*(v0 + 544) + 24);

      if (v107)
      {
        break;
      }

LABEL_84:
      v153 = *(v0 + 768);
      v154 = *(v0 + 688);
      sub_228136F7C();
      if (v153)
      {
        v186 = *(v0 + 768);
        v187 = *(v0 + 856);
        v188 = *(v0 + 712);
        v189 = *(v0 + 584);
        v190 = *(v0 + 576);
        v192 = *v188;
        v191 = v188[1];
        v238 = *(v0 + 608);
        sub_228004954(*(v0 + 600), v0 + 72);
        *(v0 + 16) = v190;
        *(v0 + 24) = v189;
        *(v0 + 32) = v192;
        *(v0 + 40) = v191;
        *(v0 + 48) = v238;
        *(v0 + 64) = v187;

        v193 = swift_task_alloc();
        *(v0 + 832) = v193;
        *v193 = v0;
        v193[1] = sub_22805B178;

        return sub_2280DD00C(v0 + 16);
      }

      v155 = *(v0 + 712);
      (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));
      sub_22805DC6C(v155, type metadata accessor for SummarizationResult);
      v82 = 0;
      v83 = v88;
      if (!v84)
      {
        goto LABEL_40;
      }
    }

    v237 = v88;
    v108 = swift_getKeyPath();
    os_unfair_lock_lock((v107 + 16));
    *(v0 + 216) = MEMORY[0x277D839B0];
    *(v0 + 192) = 0;
    sub_227FE5EAC((v0 + 192), (v0 + 224));

    v109 = *(v107 + 24);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v107 + 24);
    *(v0 + 552) = v111;
    *(v107 + 24) = 0x8000000000000000;
    v112 = *(v0 + 248);
    v113 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 224, v112);
    v114 = *(v112 - 8);
    v115 = *(v114 + 64) + 15;
    v116 = swift_task_alloc();
    (*(v114 + 16))(v116, v113, v112);
    v117 = *v116;
    *(v0 + 280) = MEMORY[0x277D839B0];
    *(v0 + 256) = v117;

    v120 = sub_227FEB408(v118, v111);
    v121 = *(v111 + 16);
    v122 = (v119 & 1) == 0;
    v123 = v121 + v122;
    if (__OFADD__(v121, v122))
    {
      goto LABEL_115;
    }

    v124 = v119;
    if (*(v111 + 24) >= v123)
    {
      if (v110)
      {
        v125 = v111;
        if ((v119 & 1) == 0)
        {
LABEL_81:
          v144 = *(v0 + 280);
          v145 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 256, v144);
          v146 = *(v144 - 8);
          v147 = *(v146 + 64) + 15;
          v148 = swift_task_alloc();
          (*(v146 + 16))(v148, v145, v144);
          v149 = *v148;
          *(v0 + 312) = MEMORY[0x277D839B0];
          *(v0 + 288) = v149;
          *(v125 + 8 * (v120 >> 6) + 64) |= 1 << v120;
          *(*(v125 + 48) + 8 * v120) = v108;
          sub_227FE5EAC((v0 + 288), (*(v125 + 56) + 32 * v120));
          v150 = *(v125 + 16);
          v151 = __OFADD__(v150, 1);
          v152 = v150 + 1;
          if (v151)
          {
            goto LABEL_116;
          }

          *(v125 + 16) = v152;

          __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 256));

          goto LABEL_83;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
        v129 = sub_22813991C();
        v125 = v129;
        v130 = *(v111 + 16);
        if (v130)
        {
          result = (v129 + 64);
          v132 = (v111 + 64);
          v133 = ((1 << *(v125 + 32)) + 63) >> 6;
          if (v125 != v111 || result >= &v132[8 * v133])
          {
            result = memmove(result, v132, 8 * v133);
            v130 = *(v111 + 16);
          }

          v134 = 0;
          *(v125 + 16) = v130;
          v135 = 1 << *(v111 + 32);
          if (v135 < 64)
          {
            v136 = ~(-1 << v135);
          }

          else
          {
            v136 = -1;
          }

          v137 = v136 & *(v111 + 64);
          v138 = (v135 + 63) >> 6;
          v223 = v138;
          if (v137)
          {
            do
            {
              v139 = __clz(__rbit64(v137));
              v228 = (v137 - 1) & v137;
LABEL_78:
              v142 = v139 | (v134 << 6);
              v143 = *(*(v111 + 48) + 8 * v142);
              v224 = v142;
              v226 = 32 * v142;
              sub_227FEB0D4(*(v111 + 56) + 32 * v142, v0 + 512);
              *(*(v125 + 48) + 8 * v224) = v143;
              sub_227FE5EAC((v0 + 512), (*(v125 + 56) + v226));

              v138 = v223;
              v137 = v228;
            }

            while (v228);
          }

          v140 = v134;
          while (1)
          {
            v134 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
              break;
            }

            if (v134 >= v138)
            {
              goto LABEL_80;
            }

            v141 = *(v111 + 64 + 8 * v134);
            ++v140;
            if (v141)
            {
              v139 = __clz(__rbit64(v141));
              v228 = (v141 - 1) & v141;
              goto LABEL_78;
            }
          }

          __break(1u);
          return result;
        }

LABEL_80:

        if ((v124 & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      sub_2280196BC(v123, v110);
      v125 = *v230;
      v126 = sub_227FEB408(v108, *v230);
      if ((v124 & 1) != (v127 & 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

        return sub_2281399EC();
      }

      v120 = v126;
      if ((v124 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    v128 = (*(v125 + 56) + 32 * v120);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v128);
    sub_227FE5EAC((v0 + 256), v128);
LABEL_83:
    __swift_destroy_boxed_opaque_existential_1Tm_6((v0 + 224));

    *(v107 + 24) = v125;
    os_unfair_lock_unlock((v107 + 16));

    v88 = v237;
    goto LABEL_84;
  }

  v1 = *(v0 + 840);
  v231 = *(v0 + 712);
  v234 = *(v0 + 760);
  v2 = *(v0 + 688);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 592);

  v6 = swift_allocObject();
  *(v6 + 16) = 48;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  sub_22805DB30(v1, 0);
  v7 = sub_227FF96D4(v1, 0xD00000000000007ELL, 0x8000000228146080, 85, sub_22805DD38);
  sub_22805DB1C(v1, 0);
  sub_227FDB3CC();
  swift_allocError();
  *v8 = 48;
  *(v8 + 8) = v7;
  swift_willThrow();

  v9 = v1;
  v10 = 0;
LABEL_11:
  sub_22805DB1C(v9, v10);

  sub_22805D8E4(v0 + 16);
  (*(v3 + 8))(v2, v4);
  v46 = v231;
LABEL_103:
  sub_22805DC6C(v46, type metadata accessor for SummarizationResult);
  v174 = v234;
LABEL_104:
  sub_22805DC6C(v174, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  v199 = *(v0 + 760);
  v200 = *(v0 + 752);
  v201 = *(v0 + 744);
  v202 = *(v0 + 736);
  v203 = *(v0 + 728);
  v204 = *(v0 + 720);
  v205 = *(v0 + 712);
  v206 = *(v0 + 688);
  v207 = *(v0 + 680);
  v233 = *(v0 + 656);
  v239 = *(v0 + 648);

  v208 = *(v0 + 8);
LABEL_108:

  return v208();
}

uint64_t sub_22805CBAC()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[89];
  v4 = v0[86];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[74];

  sub_22805D8E4((v0 + 2));
  (*(v5 + 8))(v4, v6);
  sub_22805DC6C(v3, type metadata accessor for SummarizationResult);
  sub_22805DC6C(v2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[89];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[82];
  v20 = v0[81];
  v21 = v0[106];

  v18 = v0[1];

  return v18();
}

_OWORD *sub_22805CD30(char a1, uint64_t a2, char a3, void *a4)
{
  v7 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D839B0];
  LOBYTE(v26[0]) = a1;
  v8 = *a4;
  v10 = sub_227FEB408(a2, *a4);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *a4;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v17);
      return sub_227FE5EAC(v26, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v13, a3 & 1);
  v19 = sub_227FEB408(a2, *a4);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v26, v7);
  v22 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v21, v21);
  v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  sub_22805CF0C(v10, a2, *v24, v16);

  return __swift_destroy_boxed_opaque_existential_1Tm_6(v26);
}

_OWORD *sub_22805CF0C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(&v9, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22805CF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22805CFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF8, &qword_22813DD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22805D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v108 = a2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v96 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v100 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v102 = &v92 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v103 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v99 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v92 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v92 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v92 - v35;
  v37 = type metadata accessor for SummarizationResult();
  v94 = v37[6];
  v38 = a1;
  sub_22805DC04(a1 + v94, v36, &qword_27D81E598, &qword_22813B300);
  v39 = sub_2281386FC();
  v40 = *(*(v39 - 8) + 48);
  v41 = v40(v36, 1, v39);
  sub_227FCB6F8(v36, &qword_27D81E598, &qword_22813B300);
  v106 = v37;
  if (v41 == 1 && (sub_22805DC04(v38 + v37[7], v33, &qword_27D81E598, &qword_22813B300), v42 = v40(v33, 1, v39), sub_227FCB6F8(v33, &qword_27D81E598, &qword_22813B300), v42 == 1))
  {
    v107 = *(v38 + v37[11]) ^ 1;
  }

  else
  {
    v107 = 0;
  }

  v43 = v38;
  v44 = v106;
  v93 = v106[8];
  sub_22805DC04(v43 + v93, v29, &qword_27D81E598, &qword_22813B300);
  v45 = v40(v29, 1, v39);
  sub_227FCB6F8(v29, &qword_27D81E598, &qword_22813B300);
  v101 = v43;
  if (v45 == 1 && (v46 = v99, sub_22805DC04(v43 + v44[9], v99, &qword_27D81E598, &qword_22813B300), v47 = v40(v46, 1, v39), sub_227FCB6F8(v46, &qword_27D81E598, &qword_22813B300), v47 == 1))
  {
    v48 = 2;
    if ((v107 & 1) == 0)
    {
      v48 = 0;
    }

    v95 = v48;
    v99 = 1;
    v49 = 1;
    v50 = v108;
    v51 = v104;
  }

  else
  {
    v50 = v108;
    v51 = v104;
    v99 = 0;
    if (v107)
    {
      v49 = 0;
      v95 = 2;
    }

    else
    {
      v95 = 0;
      v49 = 0;
    }
  }

  v52 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  v53 = v103;
  sub_22805DC04(v50 + v52, v103, &qword_27D81E8C8, &qword_22813C4D8);
  v56 = *(v51 + 48);
  v55 = v51 + 48;
  v54 = v56;
  v57 = v105;
  v58 = v56(v53, 1, v105);
  sub_227FCB6F8(v53, &qword_27D81E8C8, &qword_22813C4D8);
  v59 = v58 == 1;
  Kind_high = v108;
  if (!v59)
  {
    v61 = v102;
    sub_22805DC04(v108 + v52, v102, &qword_27D81E8C8, &qword_22813C4D8);
    if (v54(v61, 1, v57) == 1)
    {
      v62 = v100;
      sub_228137D6C();
      v63 = *(v57 + 20);
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      *(v62 + v63) = qword_2813C5448;
      v64 = v102;
      v65 = v54(v102, 1, v57);

      if (v65 != 1)
      {
        sub_227FCB6F8(v64, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      v66 = v61;
      v62 = v100;
      sub_22805DCCC(v66, v100, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }

    v67 = *(v62 + *(v57 + 20));
    v68 = &type metadata for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray;
    v69 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    v70 = *(v67 + v69);

    sub_22805DC6C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    v71 = *(v70 + 16);
    v72 = v105;

    if (v71 >= 4)
    {
      v78 = v95 | v99;
      v79 = v97;
      sub_22805DC04(Kind_high + v52, v97, &qword_27D81E8C8, &qword_22813C4D8);
      if (v54(v79, 1, v72) != 1)
      {
        v80 = v96;
        sub_22805DCCC(v79, v96, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        v76 = v101;
        v77 = v106;
        goto LABEL_28;
      }

      v104 = v55;
      v80 = v96;
      sub_228137D6C();
      Kind_high = SHIDWORD(v72[1].Kind);
      v76 = v101;
      v68 = v72;
      v77 = v106;
      if (qword_2813C5440 != -1)
      {
        goto LABEL_36;
      }

      while (1)
      {
        *(v80 + Kind_high) = qword_2813C5448;
        v81 = v97;
        v82 = v54(v97, 1, v68);

        Kind_high = v108;
        v72 = v68;
        v68 = &type metadata for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray;
        if (v82 != 1)
        {
          sub_227FCB6F8(v81, &qword_27D81E8C8, &qword_22813C4D8);
        }

LABEL_28:
        v83 = *(v80 + SHIDWORD(v72[1].Kind));
        Kind = v68[69].Kind;
        swift_beginAccess();
        v85 = *(v83 + Kind);

        sub_22805DC6C(v80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        if (v78 < *(v85 + 16))
        {
          break;
        }

        __break(1u);
LABEL_36:
        swift_once();
      }

      v86 = *(v85 + 4 * v78 + 32);

      v87 = sub_2280244DC(Kind_high);
      if (v86 != 1)
      {
        v75 = v87;
        goto LABEL_32;
      }

      return 1;
    }
  }

  v73 = v107 & v49;
  v74 = sub_2280244DC(Kind_high);
  if (v73)
  {
    return 1;
  }

  v75 = v74;
  v76 = v101;
  v77 = v106;
LABEL_32:
  v89 = v77[7];
  v90 = v77[9];
  v91 = v98;
  if (sub_228099260(v76 + v89, v76 + v90, v75 & 1, v98))
  {
    sub_228099F40(*(v76 + v77[11]), (v76 + v94), v76 + v89, (v76 + v93), (v76 + v90), v91);
  }

  return 0;
}

_OWORD *sub_22805D944(uint64_t a1, char a2, void *a3, double a4)
{
  v7 = MEMORY[0x277D839F8];
  v27 = MEMORY[0x277D839F8];
  v26[0] = a4;
  v8 = *a3;
  v10 = sub_227FEB40C(a1, *a3);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= v13 && (a2 & 1) != 0)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v17);
      return sub_227FE5EAC(v26, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a2 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v13, a2 & 1);
  v19 = sub_227FEB40C(a1, *a3);
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a3;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v26, v7);
  v22 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v21, v21);
  v24 = (v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_22805DB84(v10, a1, v16, *v24);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v26);
}

void sub_22805DB1C(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

id sub_22805DB30(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

_OWORD *sub_22805DB84(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v10 = MEMORY[0x277D839F8];
  v9[0] = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(v9, (a3[7] + 32 * a1));
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_22805DC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22805DC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22805DCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22805DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a2;
  v102 = a5;
  v127 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v130 = *(v127 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v127, v10);
  v122 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v126 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v116 = &v102 - v18;
  v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v129 = *(v121 - 8);
  v25 = *(v129 + 64);
  MEMORY[0x28223BE20](v121, v26);
  v108 = (&v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v111 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v119 = &v102 - v34;
  v118 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v35 = *(v118 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v118, v37);
  v112 = (&v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC08, &unk_22813DE10);
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39 - 8, v41);
  v103 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v102 - v45;
  v123 = a3;
  v124 = a4;
  v109 = sub_22805FB50(a1, v132, a3, a4);
  v110 = v47;
  v131 = v20;
  v48 = *(v20 + 56);
  v128 = v19;
  v105 = v20 + 56;
  v104 = v48;
  v48(v46, 1, 1, v19);
  v49 = v5 + *(*v5 + 96);
  swift_beginAccess();
  v50 = *(v49 + 8);
  v117 = *(v50 + 16);
  if (v117)
  {
    v106 = v46;
    v115 = v50 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v120 = (v129 + 48);
    v51 = (v130 + 48);

    v53 = 0;
    v46 = v116;
    v54 = v112;
    v114 = v35;
    v113 = v52;
    v107 = v51;
    while (1)
    {
      if (v53 >= *(v52 + 16))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
LABEL_35:
        v88 = sub_22813882C();
        __swift_project_value_buffer(v88, qword_2813C8A20);
        v89 = v110;

        v90 = v124;

        v91 = sub_22813880C();
        v92 = sub_2281396EC();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v133 = v94;
          *v93 = 136446466;
          v95 = v109;
          *(v93 + 4) = sub_227FCC340(v109, v89, &v133);
          *(v93 + 12) = 2082;
          v96 = v123;
          *(v93 + 14) = sub_227FCC340(v123, v90, &v133);
          _os_log_impl(&dword_227FC3000, v91, v92, "Can't find usecase safety config for %{public}s, %{public}s", v93, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v94, -1, -1);
          MEMORY[0x22AAB28A0](v93, -1, -1);
        }

        else
        {

          v96 = v123;
          v95 = v109;
        }

        v98 = swift_allocObject();
        v98[2] = v95;
        v98[3] = v89;
        v98[4] = v96;
        v98[5] = v90;
        v99 = swift_allocObject();
        *(v99 + 16) = 39;
        *(v99 + 24) = sub_228060190;
        *(v99 + 32) = v98;

        v100 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228146180, 132, sub_22806019C);
        sub_227FDB3CC();
        swift_allocError();
        *v101 = 39;
        *(v101 + 8) = v100;
        swift_willThrow();
        return sub_22806038C(v46, &qword_27D81EC08, &unk_22813DE10);
      }

      v55 = *(v35 + 72);
      v125 = v53;
      sub_2280601A8(v115 + v55 * v53, v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      v56 = v119;
      v57 = *(v118 + 24);
      sub_228060324(v54 + v57, v119, &qword_27D81E4B0, &qword_22813AB20);
      v58 = *v120;
      v59 = (*v120)(v56, 1, v121);
      sub_22806038C(v56, &qword_27D81E4B0, &qword_22813AB20);
      if (v59 != 1)
      {
        v60 = v111;
        sub_228060324(v54 + v57, v111, &qword_27D81E4B0, &qword_22813AB20);
        v61 = v121;
        if (v58(v60, 1, v121) == 1)
        {
          v62 = v108;
          *v108 = 0;
          v62[1] = 0xE000000000000000;
          v63 = v62 + *(v61 + 20);
          sub_228137D6C();
          v64 = v62;
          if (v58(v60, 1, v61) != 1)
          {
            sub_22806038C(v111, &qword_27D81E4B0, &qword_22813AB20);
          }
        }

        else
        {
          v64 = v108;
          sub_228060270(v60, v108, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        }

        v66 = *v64;
        v65 = v64[1];

        sub_228060210(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        if (v66 == v109 && v65 == v110)
        {

          v54 = v112;
        }

        else
        {
          v67 = sub_2281399BC();

          v54 = v112;
          if ((v67 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v132 = *v54;
        v68 = v107;
        v130 = *(v132 + 16);
        if (v130)
        {
          v69 = 0;
          v129 = v132 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
          while (v69 < *(v132 + 16))
          {
            sub_2280601A8(v129 + *(v131 + 72) * v69, v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
            v70 = *(v128 + 20);
            sub_228060324(&v24[v70], v46, &qword_27D81E4A8, &unk_22813DE00);
            v71 = *v68;
            v72 = v127;
            if ((*v68)(v46, 1, v127) == 1)
            {
              sub_228060210(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
              sub_22806038C(v46, &qword_27D81E4A8, &unk_22813DE00);
            }

            else
            {
              sub_22806038C(v46, &qword_27D81E4A8, &unk_22813DE00);
              v73 = &v24[v70];
              v74 = v126;
              sub_228060324(v73, v126, &qword_27D81E4A8, &unk_22813DE00);
              if (v71(v74, 1, v72) == 1)
              {
                v75 = v74;
                v76 = v122;
                *v122 = 0;
                v76[1] = 0xE000000000000000;
                v77 = v76 + *(v72 + 20);
                sub_228137D6C();
                v78 = v75;
                v46 = v116;
                if (v71(v78, 1, v72) != 1)
                {
                  sub_22806038C(v126, &qword_27D81E4A8, &unk_22813DE00);
                }
              }

              else
              {
                v79 = v74;
                v76 = v122;
                sub_228060270(v79, v122, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
              }

              v80 = v76;
              v81 = *v76;
              v82 = *(v80 + 8);

              sub_228060210(v80, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
              if (v81 == v123 && v82 == v124)
              {

LABEL_31:
                v84 = v112;
                sub_228060210(v112, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
                v85 = v106;
                sub_22806038C(v106, &qword_27D81EC08, &unk_22813DE10);
                sub_228060270(v24, v85, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
                v86 = v85;
                v54 = v84;
                v104(v86, 0, 1, v128);
                goto LABEL_4;
              }

              v83 = sub_2281399BC();

              if (v83)
              {
                goto LABEL_31;
              }

              sub_228060210(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
            }

            if (v130 == ++v69)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_41;
        }

LABEL_29:
        v54 = v112;
      }

LABEL_3:
      sub_228060210(v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
LABEL_4:
      v53 = v125 + 1;
      v35 = v114;
      v52 = v113;
      if (v125 + 1 == v117)
      {

        v46 = v106;
        break;
      }
    }
  }

  v87 = v103;
  sub_228060324(v46, v103, &qword_27D81EC08, &unk_22813DE10);
  if ((*(v131 + 48))(v87, 1, v128) == 1)
  {
    sub_22806038C(v87, &qword_27D81EC08, &unk_22813DE10);
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  sub_22806038C(v46, &qword_27D81EC08, &unk_22813DE10);

  return sub_228060270(v87, v102, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
}

uint64_t ClientSafetyConfiguration.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = (v3 + qword_2813C6C50);
  *v4 = 0xD000000000000019;
  v4[1] = 0x800000022813DD90;
  v5 = (v3 + qword_2813C6C58);
  *v5 = 0x7478746270;
  v5[1] = 0xE500000000000000;
  v6 = (v3 + qword_2813C6C48);
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000228143AB0;
  return sub_227FDC18C(0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010);
}

uint64_t ClientSafetyConfiguration.init()()
{
  v1 = (v0 + qword_2813C6C50);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000022813DD90;
  v2 = (v0 + qword_2813C6C58);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6C48);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  return sub_227FDC18C(0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010);
}

uint64_t ClientSafetyConfiguration.__allocating_init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = (v7 + qword_2813C6C50);
  *v8 = 0xD000000000000019;
  v8[1] = 0x800000022813DD90;
  v9 = (v7 + qword_2813C6C58);
  *v9 = 0x7478746270;
  v9[1] = 0xE500000000000000;
  v10 = (v7 + qword_2813C6C48);
  *v10 = 0xD000000000000010;
  v10[1] = 0x8000000228143AB0;
  return sub_227FDE360(a1, a2);
}

uint64_t ClientSafetyConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_2813C6C50);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000022813DD90;
  v4 = (v2 + qword_2813C6C58);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C6C48);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  return sub_227FDE360(a1, a2);
}

uint64_t ClientSafetyConfiguration.__allocating_init(assetManager:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = (v5 + qword_2813C6C50);
  *v6 = 0xD000000000000019;
  v6[1] = 0x800000022813DD90;
  v7 = (v5 + qword_2813C6C58);
  *v7 = 0x7478746270;
  v7[1] = 0xE500000000000000;
  v8 = (v5 + qword_2813C6C48);
  *v8 = 0xD000000000000010;
  v8[1] = 0x8000000228143AB0;
  return sub_227FE02B4(a1, 0, 0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClientSafetyConfiguration.init(assetManager:)(uint64_t a1)
{
  v2 = (v1 + qword_2813C6C50);
  *v2 = 0xD000000000000019;
  v2[1] = 0x800000022813DD90;
  v3 = (v1 + qword_2813C6C58);
  *v3 = 0x7478746270;
  v3[1] = 0xE500000000000000;
  v4 = (v1 + qword_2813C6C48);
  *v4 = 0xD000000000000010;
  v4[1] = 0x8000000228143AB0;
  return sub_227FE02B4(a1, 0, 0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

BOOL sub_22805EE28(_DWORD *a1, _DWORD *a2)
{
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_227FCC340(0xD00000000000003ELL, 0x8000000228146140, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

uint64_t sub_22805EFC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v18 = v9;
  v10 = sub_2280603EC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v19 = v10;
  v15 = 0xD00000000000001BLL;
  v16 = 0x8000000228146200;
  v17 = 3;
  sub_227FE77E0(&v15, v20);
  __swift_project_boxed_opaque_existential_1(&v15, v18);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm_0(&v15);
  v21 = DynamicType;
  v12 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D837D0];
  v15 = a2;
  v16 = a3;
  sub_228024ABC(&v15, v20);
  v18 = v9;
  v19 = v10;
  v15 = 0xD000000000000011;
  v16 = 0x8000000228146220;
  v17 = 3;
  sub_227FE77E0(&v15, v20);
  __swift_project_boxed_opaque_existential_1(&v15, v18);
  v13 = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm_0(&v15);
  v21 = v13;
  v18 = v12;
  v15 = a4;
  v16 = a5;
  return sub_228024ABC(&v15, v20);
}

uint64_t sub_22805F154()
{
  v1 = *(v0 + qword_2813C6C50 + 8);

  v2 = *(v0 + qword_2813C6C58 + 8);

  v3 = *(v0 + qword_2813C6C48 + 8);
}

uint64_t ClientSafetyConfiguration.deinit()
{
  sub_228060210(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6C50 + 8);

  v3 = *(v0 + qword_2813C6C58 + 8);

  v4 = *(v0 + qword_2813C6C48 + 8);

  return v0;
}

uint64_t ClientSafetyConfiguration.__deallocating_deinit()
{
  sub_228060210(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6C50 + 8);

  v3 = *(v0 + qword_2813C6C58 + 8);

  v4 = *(v0 + qword_2813C6C48 + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClientSafetyConfiguration()
{
  result = qword_2813C6C38;
  if (!qword_2813C6C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22805F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v17 = sub_2280603EC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v13 = a3;
  v14 = a4;
  LOBYTE(v15) = a5;
  sub_227FE77E0(&v13, v18);
  __swift_project_boxed_opaque_existential_1(&v13, v16);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v13);
  v18[5] = DynamicType;
  if (a2)
  {
    v11 = MEMORY[0x277D837D0];
  }

  else
  {
    a1 = 0;
    v11 = 0;
    v15 = 0;
  }

  v13 = a1;
  v14 = a2;
  v16 = v11;
  return sub_228024ABC(&v13, v18);
}

uint64_t sub_22805F5EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void (*a8)(__int128 *, _BYTE *))
{
  v26 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v25 - v18;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v29 = sub_2280603EC(a7, a5, a6);
  *&v27 = a2;
  *(&v27 + 1) = a3;
  LOBYTE(v28) = a4;
  sub_227FE77E0(&v27, v30);
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v27);
  v31 = DynamicType;
  sub_228060324(a1, v19, &qword_27D81E5F8, &qword_22813DE20);
  v21 = sub_2281385EC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    sub_22806038C(v19, &qword_27D81E5F8, &qword_22813DE20);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(v22 + 32))(boxed_opaque_existential_0, v19, v21);
  }

  v26(&v27, v30);
  return sub_22806038C(a1, &qword_27D81E5F8, &qword_22813DE20);
}

uint64_t sub_22805F81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void (*a8)(__int128 *, _BYTE *))
{
  v26 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v25 - v18;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v29 = sub_2280603EC(a7, a5, a6);
  *&v27 = a2;
  *(&v27 + 1) = a3;
  LOBYTE(v28) = a4;
  sub_227FE77E0(&v27, v30);
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v27);
  v31 = DynamicType;
  sub_228060324(a1, v19, &qword_27D81E598, &qword_22813B300);
  v21 = sub_2281386FC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    sub_22806038C(v19, &qword_27D81E598, &qword_22813B300);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(v22 + 32))(boxed_opaque_existential_0, v19, v21);
  }

  v26(&v27, v30);
  return sub_22806038C(a1, &qword_27D81E598, &qword_22813B300);
}

uint64_t sub_22805FA4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t (*a8)(uint64_t *, _BYTE *))
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v23 = sub_2280603EC(a7, a5, a6);
  v19 = a2;
  v20 = a3;
  LOBYTE(v21) = a4;
  sub_227FE77E0(&v19, v24);
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v19);
  v25 = DynamicType;
  if (a1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v21 = 0;
  }

  v19 = a1;
  v22 = v17;
  return a8(&v19, v24);
}

unint64_t sub_22805FB50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1 && (sub_22808DA70(a1, a2) & 1) != 0)
  {
    a1 = 0xD000000000000012;
    if ((a3 != 0xD000000000000022 || 0x8000000228143160 != a4) && (sub_2281399BC() & 1) == 0)
    {
      if (a3 == 0xD00000000000002ALL && 0x80000002281432B0 == a4 || (sub_2281399BC() & 1) != 0)
      {
        return 0xD000000000000014;
      }

      else if ((a3 != 0xD000000000000028 || 0x8000000228143190 != a4) && (sub_2281399BC() & 1) == 0)
      {
        if (a3 == 0xD000000000000030 && 0x80000002281432E0 == a4 || (sub_2281399BC() & 1) != 0)
        {
          return 0xD000000000000014;
        }

        else if ((a3 != 0xD000000000000022 || 0x80000002281431C0 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD000000000000028 || 0x80000002281431F0 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD000000000000027 || 0x8000000228143220 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD00000000000002DLL || 0x8000000228143250 != a4) && (sub_2281399BC() & 1) == 0)
        {
          v9 = 0xD00000000000001FLL;
          if (a3 == 0xD00000000000001BLL && 0x8000000228143340 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000016;
          if (a3 == 0xD00000000000001ALL && 0x8000000228143320 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000022;
          if (a3 == 0xD000000000000026 && 0x8000000228143360 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000015;
          if (a3 == 0xD000000000000022 && 0x8000000228143130 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000015;
          if (a3 == 0xD00000000000002ALL && 0x8000000228143280 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          else if (a3 == 0xD000000000000018 && 0x80000002281433E0 == a4 || (sub_2281399BC() & 1) != 0)
          {
            return 0xD000000000000015;
          }

          else if (a3 == 0xD000000000000022 && 0x8000000228143390 == a4 || (sub_2281399BC() & 1) != 0)
          {
            return 0xD000000000000033;
          }

          else if ((sub_22813941C() & 1) == 0)
          {
            if (qword_2813C49A8 != -1)
            {
              swift_once();
            }

            v10 = sub_22813882C();
            __swift_project_value_buffer(v10, qword_2813C89F0);

            v11 = sub_22813880C();
            v12 = sub_2281396DC();

            if (os_log_type_enabled(v11, v12))
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v15 = v14;
              *v13 = 136446210;
              *(v13 + 4) = sub_227FCC340(a3, a4, &v15);
              _os_log_impl(&dword_227FC3000, v11, v12, "Invalid useCase identifier and inference route combination: %{public}s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm_0(v14);
              MEMORY[0x22AAB28A0](v14, -1, -1);
              MEMORY[0x22AAB28A0](v13, -1, -1);
            }
          }
        }
      }
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_2280601A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228060210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228060270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_228060324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22806038C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280603EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

BOOL sub_228060464(void *a1, void *a2)
{
  v4 = (v2 + *a2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (v7 == (*(*(v10 + 8) + 8))(v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_2281399BC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v19 = v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  if (v17 == (*(*(v20 + 8) + 16))(v21) && v19 == v22)
  {
  }

  else
  {
    v24 = sub_2281399BC();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v4[3];
  v26 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v25);
  LODWORD(v25) = (*(v26 + 24))(v25, v26);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (v25 == (*(*(v27 + 8) + 24))(v28))
  {
    v29 = v4[3];
    v30 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v29);
    v31 = (*(v30 + 32))(v29, v30);
    v33 = v32;
    v35 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    if (v31 == (*(*(v34 + 8) + 32))(v35) && v33 == v36)
    {

LABEL_20:
      v38 = v4[3];
      v39 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v38);
      v40 = (*(v39 + 40))(v38, v39);
      v42 = a1[3];
      v41 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v42);
      return v40 == (*(*(v41 + 8) + 40))(v42);
    }

    v37 = sub_2281399BC();

    if (v37)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t sub_2280607B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_228088344(a3, v28 - v12, &qword_27D81E788, &unk_22813BC90);
  v14 = sub_22813959C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_2280883AC(v13, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22813957C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v28[0] = a3;
      v22 = sub_22813931C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;
      type metadata accessor for GMSModelInfo(0);

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_2280883AC(v28[0], &qword_27D81E788, &unk_22813BC90);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  type metadata accessor for GMSModelInfo(0);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_228060AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_228088344(a3, v28 - v12, &qword_27D81E788, &unk_22813BC90);
  v14 = sub_22813959C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_2280883AC(v13, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22813957C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22813931C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_228060DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2281397FC();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_228085784(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for SummarizationResult();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t *sub_228060E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v108 = a4;
  v74 = *v8;
  v76 = type metadata accessor for ModelBundleIdentifier();
  v14 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v15);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SummarizationSession.Configuration();
  v17 = *(*(v71 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v71, v18);
  v70 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v69 = &v69 - v22;
  v23 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v81 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  sub_228084B4C(a1, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  v72 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo;
  sub_22808764C(a2, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo);
  *(v23 + 8) = a6;
  v73 = v23;
  v78 = a5;
  swift_unknownObjectWeakAssign();
  v24 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v75 = v7;
  v82 = a1;
  v79 = a3;
  v80 = a2;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v25 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v25 = &qword_2813C76F8;
  }

  v26 = *(*v25 + 712);
  v27 = *(*v25 + 720);
  v28 = *(*v25 + 728);
  v29 = *(*v25 + 736);
  v30 = *(*v25 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v31 = v108;
  if (byte_2813C4638 == 1)
  {
    v28(&v86, v30);

    v32 = v82;
    v33 = v80;
    if ((v86 & 1) == 0)
    {
LABEL_14:
      v34 = v79;
      v35 = &unk_2813C8000;
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v36 = sub_22813882C();
      __swift_project_value_buffer(v36, qword_2813C8A20);
      v37 = sub_22813880C();
      v38 = sub_2281396DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_227FC3000, v37, v38, "Using nil safetyContext; model safety has been disabled by internal override.", v39, 2u);
        MEMORY[0x22AAB28A0](v39, -1, -1);
      }

      *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext) = 0;
      goto LABEL_23;
    }
  }

  else
  {

    v32 = v82;
    v33 = v80;
    if (!v27)
    {
      goto LABEL_14;
    }
  }

  v40 = v31;
  v34 = v79;
  v35 = &unk_2813C8000;
  if (!v31)
  {
    v41 = v69;
    sub_228084B4C(v32, v69, type metadata accessor for SummarizationSession.Configuration);
    v40 = *(v41 + *(v71 + 32));

    sub_228084CF0(v41, type metadata accessor for SummarizationSession.Configuration);
  }

  *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext) = v40;

LABEL_23:
  v42 = v77;
  swift_storeEnumTagMultiPayload();
  v43 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v32, v42);
  sub_228084CF0(v42, type metadata accessor for ModelBundleIdentifier);
  if ((v43 & 1) == 0)
  {
    sub_228088344(v34, &v102, &qword_27D81ED10, &unk_22813E4A0);
    if (*(&v103 + 1))
    {
      swift_unknownObjectRelease();

      sub_2280883AC(v34, &qword_27D81ED10, &unk_22813E4A0);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
      sub_227FD0F5C(&v102, &v105);
    }

    else
    {
      v62 = v70;
      sub_228084B4C(v32, v70, type metadata accessor for SummarizationSession.Configuration);
      sub_22808764C(v33, v100);
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v63 = type metadata accessor for GMSSummarizationModelEngine(0);
      v83 = 0u;
      v84 = 0u;
      v85 = 0;
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = v75;
      sub_2280AB4E8(v62, v100, &v86, &v83);
      v75 = v66;
      if (v66)
      {
        swift_unknownObjectRelease();

        sub_2280883AC(v34, &qword_27D81ED10, &unk_22813E4A0);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
        sub_228084CF0(v32, type metadata accessor for SummarizationSession.Configuration);
        if (*(&v103 + 1))
        {
          sub_2280883AC(&v102, &qword_27D81ED10, &unk_22813E4A0);
        }

        v35 = &unk_2813C8000;
        goto LABEL_25;
      }

      v68 = v67;
      *(&v106 + 1) = v63;
      v107 = &off_283B5E840;
      swift_unknownObjectRelease();

      *&v105 = v68;
      sub_2280883AC(v34, &qword_27D81ED10, &unk_22813E4A0);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
      if (*(&v103 + 1))
      {
        sub_2280883AC(&v102, &qword_27D81ED10, &unk_22813E4A0);
      }
    }

    v50 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
    sub_227FD0F5C(&v105, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine);
    v51 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
    sub_2280876B0(v32, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for SummarizationSession.Configuration);
    v52 = type metadata accessor for TokenCounter();
    sub_22808764C(v8 + v50, v51 + *(v52 + 20));
    v53 = *(v81 + *(v71 + 32));
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    *&v86 = v53;
    BYTE8(v86) = 0;

    sub_22808840C(&v102, &v92);
    sub_22808840C(v100, &v94 + 8);
    sub_22808840C(&v83, &v97);
    sub_22808840C(&v105, &v89 + 8);
    v54 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory;
    v55 = v97;
    *(v54 + 160) = v96;
    *(v54 + 176) = v55;
    *(v54 + 192) = v98;
    *(v54 + 208) = v99;
    v56 = v93;
    *(v54 + 96) = v92;
    *(v54 + 112) = v56;
    v57 = v95;
    *(v54 + 128) = v94;
    *(v54 + 144) = v57;
    v58 = v89;
    *(v54 + 32) = v88;
    *(v54 + 48) = v58;
    v59 = v91;
    *(v54 + 64) = v90;
    *(v54 + 80) = v59;
    v60 = v87;
    *v54 = v86;
    *(v54 + 16) = v60;
    return v8;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = 24;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  v45 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 90, sub_2280889AC);
  sub_227FDB3CC();
  swift_allocError();
  *v46 = 24;
  *(v46 + 8) = v45;
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_2280883AC(v34, &qword_27D81ED10, &unk_22813E4A0);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
  sub_228084CF0(v32, type metadata accessor for SummarizationSession.Configuration);
LABEL_25:
  sub_228084CF0(v81, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v8 + v72));
  sub_228084D50(v73);
  v47 = *(v8 + v35[77]);

  v48 = *(*v8 + 48);
  v49 = *(*v8 + 52);
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t SummarizationSession.__allocating_init(configuration:sessionInfo:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for SummarizationSession.Configuration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228084B4C(a1, v9, type metadata accessor for SummarizationSession.Configuration);
  sub_22808764C(a2, v16);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  sub_228060E7C(v9, v16, v14, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
  sub_228084CF0(a1, type metadata accessor for SummarizationSession.Configuration);
  return v12;
}

uint64_t SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2281386AC();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  v10 = sub_2281385BC();
  v6[34] = v10;
  v11 = *(v10 - 8);
  v6[35] = v11;
  v12 = *(v11 + 64) + 15;
  v6[36] = swift_task_alloc();
  v13 = sub_2281386DC();
  v6[37] = v13;
  v14 = *(v13 - 8);
  v6[38] = v14;
  v15 = *(v14 + 64) + 15;
  v6[39] = swift_task_alloc();
  v16 = sub_2281386CC();
  v6[40] = v16;
  v17 = *(v16 - 8);
  v6[41] = v17;
  v18 = *(v17 + 64) + 15;
  v6[42] = swift_task_alloc();
  v19 = sub_2281386FC();
  v6[43] = v19;
  v20 = *(v19 - 8);
  v6[44] = v20;
  v21 = *(v20 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v22 = sub_22813757C();
  v6[47] = v22;
  v23 = *(v22 - 8);
  v6[48] = v23;
  v24 = *(v23 + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v25 = type metadata accessor for ModelBundleIdentifier();
  v6[52] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[53] = swift_task_alloc();
  v27 = sub_228138F9C();
  v6[54] = v27;
  v28 = *(v27 - 8);
  v6[55] = v28;
  v29 = *(v28 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228061D24, 0, 0);
}

uint64_t sub_228061D24()
{
  if (v0[29])
  {
    v1 = v0[29];
  }

  else
  {
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    v1 = sub_2280D5C74();
  }

  v2 = v0[30];
  v3 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[62] = v1;
  v0[63] = v3;
  v4 = *(v2 + v3 + 24);
  v5 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v3), v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 32);

  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[64] = v9;
  *v9 = v0;
  v9[1] = sub_228061EA4;

  return v11(v4, v6);
}

uint64_t sub_228061EA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 512);
  v7 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v5 = sub_228063BDC;
  }

  else
  {
    v5 = sub_228061FBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228061FBC()
{
  v1 = (v0[30] + v0[63]);
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_228062060;

  return sub_2280AC248();
}

uint64_t sub_228062060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  v7 = *v2;
  *(v3 + 544) = a1;
  *(v3 + 552) = v1;

  if (v1)
  {
    v5 = sub_228063A9C;
  }

  else
  {
    v5 = sub_228062178;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228062178()
{
  v168 = v0;
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  os_unfair_lock_lock((v1 + 16));
  v5 = *(v1 + 24);

  v163 = (v1 + 24);
  *(v1 + 24) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock((v1 + 16));
  sub_228136F6C();
  v6 = sub_228136F8C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  sub_228088344(v2, v4, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v1 + 16));
  sub_228088344(v4, v3, &qword_27D81EC50, &unk_228140BB0);
  v9 = (*(v7 + 48))(v3, 1, v6);
  v10 = *(v0 + 472);
  if (v9 == 1)
  {

    sub_2280883AC(v10, &qword_27D81EC50, &unk_228140BB0);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  else
  {
    *(v0 + 168) = v6;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 144));
    (*(v7 + 32))(boxed_opaque_existential_0Tm_0, v10, v6);
  }

  v12 = *(v0 + 488);
  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 216);
  sub_228044D20(v0 + 144, KeyPath, v163);
  os_unfair_lock_unlock((v1 + 16));

  sub_2280883AC(v12, &qword_27D81EC50, &unk_228140BB0);
  sub_2280883AC(v14, &qword_27D81EC50, &unk_228140BB0);
  v16 = swift_getKeyPath();

  os_unfair_lock_lock((v1 + 16));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  v167 = v17;
  v166[0] = v15;

  sub_228044C70(v166, v16, v163);
  os_unfair_lock_unlock((v1 + 16));

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 240);
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v21 = *(v0 + 208);
  v22 = sub_22813882C();
  __swift_project_value_buffer(v22, qword_2813C8A20);
  sub_22808764C(v19, v0 + 64);
  sub_22808764C(v21, v0 + 104);

  v23 = sub_22813880C();
  v24 = sub_2281396BC();

  if (os_log_type_enabled(v23, v24))
  {
    v157 = *(v0 + 240);
    v161 = v13;
    v25 = *(v0 + 216);
    v26 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v166[0] = v159;
    *v26 = 136315906;
    v27 = v17;
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v28);
    v30 = (*(v29 + 16))(v28, v29);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    v33 = sub_227FCC340(v30, v32, v166);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    swift_getDynamicType();
    v34 = sub_228139B8C();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    v37 = sub_227FCC340(v34, v36, v166);

    *(v26 + 14) = v37;
    *(v26 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22813A4B0;
    *(v38 + 32) = v25;
    v13 = v161;

    v39 = MEMORY[0x22AAB1AD0](v38, v27);
    v41 = v40;

    v42 = sub_227FCC340(v39, v41, v166);

    *(v26 + 24) = v42;
    *(v26 + 32) = 2080;
    v43 = ModelBundleIdentifier.loggingDescription.getter();
    v45 = sub_227FCC340(v43, v44, v166);

    *(v26 + 34) = v45;
    _os_log_impl(&dword_227FC3000, v23, v24, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v26, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v159, -1, -1);
    MEMORY[0x22AAB28A0](v26, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  }

  v46 = *(v0 + 416);
  sub_228084B4C(*(v0 + 240) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 424), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v48 = 1;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v48 = 2;
LABEL_13:
    sub_228084CF0(*(v0 + 424), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_15;
  }

  v48 = 3;
LABEL_15:
  v49 = *(v0 + 552);
  v50 = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  v167 = MEMORY[0x277D84A28];
  v166[0] = v48;

  sub_2280449E4(v166, v50, v163);
  os_unfair_lock_unlock((v1 + 16));

  type metadata accessor for SharedData();
  v51 = swift_allocObject();
  *(v0 + 560) = v51;
  type metadata accessor for SKAssetManager();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  swift_initStackObject();
  v52 = SKAssetManager.init()();
  v53 = type metadata accessor for FilterRules();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = FilterRules.init(assetManager:)(v52);
  if (v49)
  {
    v57 = v49;
    v58 = (v0 + 176);

    v59 = *(v0 + 408);
    v60 = *(v0 + 376);
    *(v0 + 176) = v49;
    v61 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v63 = *(v0 + 400);
      v62 = *(v0 + 408);
      v65 = *(v0 + 384);
      v64 = *(v0 + 392);
      v66 = *(v0 + 376);

      (*(v65 + 32))(v63, v62, v66);
      v67 = *(v65 + 16);
      v67(v64, v63, v66);
      if ((*(v65 + 88))(v64, v66) == *MEMORY[0x277D71AC8])
      {
        v68 = *(v0 + 392);
        v69 = *(v0 + 400);
        v70 = *(v0 + 376);
        (*(*(v0 + 384) + 96))(v68, v70);
        v72 = *v68;
        v71 = v68[1];
        *(v0 + 640) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
        sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
        v73 = swift_allocError();
        *(v0 + 592) = v73;
        v67(v74, v69, v70);
        v75 = swift_task_alloc();
        *(v0 + 600) = v75;
        *v75 = v0;
        v75[1] = sub_228063D1C;
        v76 = *(v0 + 520);
        v77 = *(v0 + 496);
        v78 = *(v0 + 456);
        v79 = *(v0 + 240);
        v81 = *(v0 + 216);
        v80 = *(v0 + 224);
        v170 = *(v0 + 208);
        v171 = v81;
        v82 = v73;
        v83 = v72;
        v84 = v71;
LABEL_19:

        return sub_228064640(v78, v82, v83, v84, v76, v79, v80, v77);
      }

      v129 = *(v0 + 496);
      v130 = *(v0 + 400);
      v164 = *(v0 + 392);
      v132 = *(v0 + 376);
      v131 = *(v0 + 384);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
      swift_allocError();
      v67(v133, v130, v132);
      swift_willThrow();

      v134 = *(v131 + 8);
      v134(v130, v132);
      v134(v164, v132);
    }

    else
    {
      v58 = (v0 + 184);
      v98 = *(v0 + 368);
      v99 = *(v0 + 344);

      *(v0 + 184) = v49;
      v100 = v49;
      if (swift_dynamicCast())
      {
        v102 = *(v0 + 360);
        v101 = *(v0 + 368);
        v103 = *(v0 + 344);
        v104 = *(v0 + 352);
        v106 = *(v0 + 304);
        v105 = *(v0 + 312);
        v107 = *(v0 + 296);

        (*(v104 + 32))(v102, v101, v103);
        sub_2281386EC();
        if ((*(v106 + 88))(v105, v107) == *MEMORY[0x277D0DB78])
        {
          v109 = (v0 + 248);
          v108 = *(v0 + 248);
          v111 = *(v0 + 328);
          v110 = *(v0 + 336);
          v113 = *(v0 + 312);
          v112 = *(v0 + 320);
          v115 = *(v0 + 256);
          v114 = *(v0 + 264);
          (*(*(v0 + 304) + 96))(v113, *(v0 + 296));
          (*(v111 + 32))(v110, v113, v112);
          sub_2281386BC();
          if ((*(v115 + 88))(v114, v108) == *MEMORY[0x277D0DA90])
          {
            v117 = *(v0 + 352);
            v116 = *(v0 + 360);
            v118 = *(v0 + 344);
            v120 = *(v0 + 280);
            v119 = *(v0 + 288);
            v122 = *(v0 + 264);
            v121 = *(v0 + 272);
            (*(*(v0 + 256) + 96))(v122, *(v0 + 248));
            (*(v120 + 32))(v119, v122, v121);
            sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
            v123 = swift_allocError();
            *(v0 + 616) = v123;
            (*(v117 + 16))(v124, v116, v118);
            v125 = sub_22813859C();
            v126 = sub_2281385AC();
            v127 = swift_task_alloc();
            *(v0 + 624) = v127;
            *v127 = v0;
            v127[1] = sub_228063FFC;
            v76 = *(v0 + 520);
            v77 = *(v0 + 496);
            v78 = *(v0 + 448);
            v79 = *(v0 + 240);
            v128 = *(v0 + 216);
            v80 = *(v0 + 224);
            v170 = *(v0 + 208);
            v171 = v128;
            v82 = v123;
            v83 = v125;
            v84 = v126;
            goto LABEL_19;
          }

          v136 = (v0 + 264);
          v137 = v0 + 256;
          (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
        }

        else
        {
          v136 = (v0 + 312);
          v137 = v0 + 304;
          v109 = (v0 + 296);
        }

        v138 = *v109;
        v139 = *(v0 + 496);
        v141 = *(v0 + 352);
        v140 = *(v0 + 360);
        v142 = *(v0 + 344);
        (*(*v137 + 8))(*v136, v138);
        sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
        swift_allocError();
        (*(v141 + 16))(v143, v140, v142);
        swift_willThrow();

        (*(v141 + 8))(v140, v142);
      }

      else
      {
        v135 = *(v0 + 496);
      }
    }

    v145 = *(v0 + 480);
    v144 = *(v0 + 488);
    v147 = *(v0 + 464);
    v146 = *(v0 + 472);
    v149 = *(v0 + 448);
    v148 = *(v0 + 456);
    v150 = *(v0 + 424);
    v152 = *(v0 + 400);
    v151 = *(v0 + 408);
    v154 = *(v0 + 392);
    v155 = *(v0 + 368);
    v156 = *(v0 + 360);
    v158 = *(v0 + 336);
    v160 = *(v0 + 312);
    v162 = *(v0 + 288);
    v165 = *(v0 + 264);

    v153 = *(v0 + 8);

    return v153();
  }

  else
  {
    v86 = *(v0 + 496);
    v87 = *(v51 + 16);
    *(v51 + 16) = v56;

    v88 = *(v51 + 24);
    *(v51 + 24) = v13;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v89 = *(v0 + 544);
    v90 = *(v0 + 240);
    v91 = *(v0 + 224);
    *(v0 + 192) = v51;
    v92 = swift_task_alloc();
    *(v0 + 568) = v92;
    v93 = *(v0 + 208);
    *(v92 + 16) = v90;
    *(v92 + 24) = v93;
    *(v92 + 40) = v91;
    *(v92 + 48) = 0;
    *(v92 + 56) = v89;
    *(v92 + 64) = v13;
    v94 = *(MEMORY[0x277D85A70] + 4);
    v95 = swift_task_alloc();
    *(v0 + 576) = v95;
    *v95 = v0;
    v95[1] = sub_2280630AC;
    v96 = *(v0 + 464);
    v97 = *(v0 + 432);
    v170 = 834;
    v171 = v97;

    return MEMORY[0x282200908](v96, v0 + 192, &unk_22813DF30, v92, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_2280630AC()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  v4 = *(v2 + 568);

  if (v0)
  {
    v5 = sub_22806333C;
  }

  else
  {
    v5 = sub_2280631D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280631D0()
{
  v1 = v0[70];
  v2 = v0[62];
  v3 = v0[58];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[25];

  (*(v5 + 32))(v6, v3, v4);
  v8 = v0[60];
  v7 = v0[61];
  v10 = v0[58];
  v9 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  v13 = v0[53];
  v14 = v0[50];
  v15 = v0[51];
  v16 = v0[49];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[42];
  v22 = v0[39];
  v23 = v0[36];
  v24 = v0[33];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22806333C()
{
  v1 = *(v0 + 560);

  v2 = *(v0 + 584);
  *(v0 + 176) = v2;
  v3 = (v0 + 176);
  v4 = *(v0 + 408);
  v5 = *(v0 + 376);
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);
    v11 = *(v0 + 376);

    (*(v10 + 32))(v8, v7, v11);
    v12 = *(v10 + 16);
    v12(v9, v8, v11);
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D71AC8])
    {
      v13 = *(v0 + 392);
      v14 = *(v0 + 400);
      v15 = *(v0 + 376);
      (*(*(v0 + 384) + 96))(v13, v15);
      v17 = *v13;
      v16 = v13[1];
      *(v0 + 640) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
      v18 = swift_allocError();
      *(v0 + 592) = v18;
      v12(v19, v14, v15);
      v20 = swift_task_alloc();
      *(v0 + 600) = v20;
      *v20 = v0;
      v20[1] = sub_228063D1C;
      v21 = *(v0 + 520);
      v22 = *(v0 + 496);
      v23 = *(v0 + 456);
      v24 = *(v0 + 240);
      v25 = *(v0 + 224);
      v94 = *(v0 + 208);
      v96 = *(v0 + 216);
      v26 = v18;
      v27 = v17;
      v28 = v16;
LABEL_4:

      return sub_228064640(v23, v26, v27, v28, v21, v24, v25, v22);
    }

    v60 = *(v0 + 496);
    v61 = *(v0 + 400);
    v91 = *(v0 + 392);
    v63 = *(v0 + 376);
    v62 = *(v0 + 384);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
    swift_allocError();
    v12(v64, v61, v63);
    swift_willThrow();

    v65 = *(v62 + 8);
    v65(v61, v63);
    v65(v91, v63);
  }

  else
  {
    v3 = (v0 + 184);
    v30 = *(v0 + 368);
    v31 = *(v0 + 344);

    *(v0 + 184) = v2;
    v32 = v2;
    if (swift_dynamicCast())
    {
      v34 = *(v0 + 360);
      v33 = *(v0 + 368);
      v35 = *(v0 + 344);
      v36 = *(v0 + 352);
      v38 = *(v0 + 304);
      v37 = *(v0 + 312);
      v39 = *(v0 + 296);

      (*(v36 + 32))(v34, v33, v35);
      sub_2281386EC();
      if ((*(v38 + 88))(v37, v39) == *MEMORY[0x277D0DB78])
      {
        v41 = (v0 + 248);
        v40 = *(v0 + 248);
        v43 = *(v0 + 328);
        v42 = *(v0 + 336);
        v45 = *(v0 + 312);
        v44 = *(v0 + 320);
        v47 = *(v0 + 256);
        v46 = *(v0 + 264);
        (*(*(v0 + 304) + 96))(v45, *(v0 + 296));
        (*(v43 + 32))(v42, v45, v44);
        sub_2281386BC();
        if ((*(v47 + 88))(v46, v40) == *MEMORY[0x277D0DA90])
        {
          v49 = *(v0 + 352);
          v48 = *(v0 + 360);
          v50 = *(v0 + 344);
          v52 = *(v0 + 280);
          v51 = *(v0 + 288);
          v54 = *(v0 + 264);
          v53 = *(v0 + 272);
          (*(*(v0 + 256) + 96))(v54, *(v0 + 248));
          (*(v52 + 32))(v51, v54, v53);
          sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
          v55 = swift_allocError();
          *(v0 + 616) = v55;
          (*(v49 + 16))(v56, v48, v50);
          v57 = sub_22813859C();
          v58 = sub_2281385AC();
          v59 = swift_task_alloc();
          *(v0 + 624) = v59;
          *v59 = v0;
          v59[1] = sub_228063FFC;
          v21 = *(v0 + 520);
          v22 = *(v0 + 496);
          v23 = *(v0 + 448);
          v24 = *(v0 + 240);
          v25 = *(v0 + 224);
          v95 = *(v0 + 208);
          v97 = *(v0 + 216);
          v26 = v55;
          v27 = v57;
          v28 = v58;
          goto LABEL_4;
        }

        v67 = (v0 + 264);
        v68 = v0 + 256;
        (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      }

      else
      {
        v67 = (v0 + 312);
        v68 = v0 + 304;
        v41 = (v0 + 296);
      }

      v69 = *v41;
      v70 = *(v0 + 496);
      v72 = *(v0 + 352);
      v71 = *(v0 + 360);
      v73 = *(v0 + 344);
      (*(*v68 + 8))(*v67, v69);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      swift_allocError();
      (*(v72 + 16))(v74, v71, v73);
      swift_willThrow();

      (*(v72 + 8))(v71, v73);
    }

    else
    {
      v66 = *(v0 + 496);
    }
  }

  v76 = *(v0 + 480);
  v75 = *(v0 + 488);
  v78 = *(v0 + 464);
  v77 = *(v0 + 472);
  v80 = *(v0 + 448);
  v79 = *(v0 + 456);
  v81 = *(v0 + 424);
  v83 = *(v0 + 400);
  v82 = *(v0 + 408);
  v85 = *(v0 + 392);
  v86 = *(v0 + 368);
  v87 = *(v0 + 360);
  v88 = *(v0 + 336);
  v89 = *(v0 + 312);
  v90 = *(v0 + 288);
  v92 = *(v0 + 264);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_228063A9C()
{
  v1 = v0[62];

  v20 = v0[69];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  v11 = v0[49];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[42];
  v17 = v0[39];
  v18 = v0[36];
  v19 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_228063BDC()
{
  v1 = v0[62];

  v20 = v0[66];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  v11 = v0[49];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[42];
  v17 = v0[39];
  v18 = v0[36];
  v19 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_228063D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v6 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = sub_2280642DC;
  }

  else
  {

    v4 = sub_228063E38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228063E38()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 496);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v10 = *(v0 + 200);

  (*(v9 + 8))(v6, v8);
  (*(v5 + 32))(v10, v3, v4);
  v11 = sub_22813756C();
  (*(*(v11 - 8) + 8))(v7 + v1, v11);

  v13 = *(v0 + 480);
  v12 = *(v0 + 488);
  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  v17 = *(v0 + 448);
  v16 = *(v0 + 456);
  v18 = *(v0 + 424);
  v19 = *(v0 + 400);
  v20 = *(v0 + 408);
  v21 = *(v0 + 392);
  v24 = *(v0 + 368);
  v25 = *(v0 + 360);
  v26 = *(v0 + 336);
  v27 = *(v0 + 312);
  v28 = *(v0 + 288);
  v29 = *(v0 + 264);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_228063FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v6 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = sub_22806448C;
  }

  else
  {

    v4 = sub_228064118;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228064118()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 440);
  v29 = *(v0 + 432);
  v31 = *(v0 + 448);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v25 = *(v0 + 344);
  v27 = *(v0 + 360);
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 200);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v27, v25);
  (*(v2 + 32))(v10, v31, v29);

  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v14 = *(v0 + 464);
  v13 = *(v0 + 472);
  v16 = *(v0 + 448);
  v15 = *(v0 + 456);
  v17 = *(v0 + 424);
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v20 = *(v0 + 392);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v26 = *(v0 + 336);
  v28 = *(v0 + 312);
  v30 = *(v0 + 288);
  v32 = *(v0 + 264);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2280642DC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 640);
  v3 = *(v0 + 496);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);

  (*(v7 + 8))(v4, v6);

  v8 = sub_22813756C();
  (*(*(v8 - 8) + 8))(v5 + v2, v8);

  v27 = *(v0 + 608);
  v10 = *(v0 + 480);
  v9 = *(v0 + 488);
  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v14 = *(v0 + 448);
  v13 = *(v0 + 456);
  v15 = *(v0 + 424);
  v17 = *(v0 + 400);
  v16 = *(v0 + 408);
  v18 = *(v0 + 392);
  v21 = *(v0 + 368);
  v22 = *(v0 + 360);
  v23 = *(v0 + 336);
  v24 = *(v0 + 312);
  v25 = *(v0 + 288);
  v26 = *(v0 + 264);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22806448C()
{
  v29 = *(v0 + 616);
  v1 = *(v0 + 496);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v30 = *(v0 + 632);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  v14 = *(v0 + 464);
  v13 = *(v0 + 472);
  v16 = *(v0 + 448);
  v15 = *(v0 + 456);
  v17 = *(v0 + 424);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 392);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v25 = *(v0 + 336);
  v26 = *(v0 + 312);
  v27 = *(v0 + 288);
  v28 = *(v0 + 264);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_228064640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = v13;
  v8[53] = v14;
  v8[50] = a7;
  v8[51] = a8;
  v8[48] = a5;
  v8[49] = a6;
  v8[46] = a3;
  v8[47] = a4;
  v8[44] = a1;
  v8[45] = a2;
  v9 = type metadata accessor for ModelBundleIdentifier();
  v8[54] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228064704, 0, 0);
}

uint64_t sub_228064704()
{
  v137 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 392);
  v3 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  sub_228084B4C(v2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, *(v0 + 456), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_228084CF0(*(v0 + 456), type metadata accessor for ModelBundleIdentifier);
      goto LABEL_6;
    }
  }

  else
  {
    sub_228084CF0(*(v0 + 456), type metadata accessor for ModelBundleIdentifier);
  }

  v5 = *(v0 + 448);
  v6 = *(v0 + 432);
  swift_storeEnumTagMultiPayload();
  v7 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v2 + v3, v5);
  sub_228084CF0(v5, type metadata accessor for ModelBundleIdentifier);
  if ((v7 & 1) == 0)
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 400);
    v48 = *(v0 + 360);
    v49 = sub_22813882C();
    __swift_project_value_buffer(v49, qword_2813C8A20);
    sub_22808764C(v47, v0 + 64);
    v50 = v48;
    v51 = sub_22813880C();
    v52 = sub_2281396EC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 360);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v136[0] = v55;
      *v54 = 136446466;
      v56 = *(v0 + 88);
      v57 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v56);
      v58 = (*(v57 + 16))(v56, v57);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
      v61 = sub_227FCC340(v58, v60, v136);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      swift_getErrorValue();
      v62 = *(v0 + 304);
      v63 = Error.loggingDescription.getter(*(v0 + 312), *(v0 + 320));
      v65 = sub_227FCC340(v63, v64, v136);

      *(v54 + 14) = v65;
      _os_log_impl(&dword_227FC3000, v51, v52, "Unexpected .tooManyTokensError for [requestIdentifier: %{public}s]: TokenCounter is using actual token counts; InputTruncator should have arrived at the correct answer: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v55, -1, -1);
      MEMORY[0x22AAB28A0](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    }

    v73 = *(v0 + 360);
    swift_willThrow();
    v74 = v73;
    goto LABEL_38;
  }

LABEL_6:
  v135 = sub_228085CEC(*(v0 + 408), *(v0 + 368), *(v0 + 376));
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 400);
  v9 = sub_22813882C();
  __swift_project_value_buffer(v9, qword_2813C8A20);
  sub_22808764C(v8, v0 + 104);
  v10 = sub_22813880C();
  v11 = sub_2281396BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 384);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v136[0] = v14;
    *v13 = 136446722;
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v15);
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    v20 = sub_227FCC340(v17, v19, v136);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v12;
    *(v13 + 22) = 2050;
    *(v13 + 24) = v135;
    _os_log_impl(&dword_227FC3000, v10, v11, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum token length from %{public}ld to %{public}ld", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v14);
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  }

  v21 = *(v0 + 360);
  v22 = objc_opt_self();
  v23 = v21;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v24 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v24 = &qword_2813C76F8;
  }

  v25 = *(*v24 + 552);
  v26 = *(*v24 + 560);
  v27 = *(*v24 + 568);
  v28 = *(*v24 + 576);
  v29 = *(*v24 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v27(v136, v29);

    if ((v136[0] & 1) == 0)
    {
LABEL_24:
      v30 = *(v0 + 360);
      swift_willThrow();
LABEL_38:
      v75 = *(v0 + 360);
      v77 = *(v0 + 448);
      v76 = *(v0 + 456);
      v78 = *(v0 + 440);

      v79 = *(v0 + 8);

      return v79();
    }
  }

  else
  {

    if (!v26)
    {
      goto LABEL_24;
    }
  }

  v31 = *(v0 + 360);
  sub_22808764C(*(v0 + 400), v0 + 144);
  v32 = v31;
  v33 = sub_22813880C();
  v34 = sub_2281396BC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 360);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v136[0] = v38;
    *v36 = 136446722;
    v39 = *(v0 + 168);
    v40 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v39);
    v41 = (*(v40 + 16))(v39, v40);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v44 = sub_227FCC340(v41, v43, v136);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2050;
    *(v36 + 14) = v135;
    *(v36 + 22) = 2114;
    v45 = v35;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 24) = v46;
    *v37 = v46;
    _os_log_impl(&dword_227FC3000, v33, v34, "Retrying summarization for [requestIdentifier: %{public}s] with [maxTokenLength: %{public}ld] after failure: %{public}@", v36, 0x20u);
    sub_2280883AC(v37, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v38);
    MEMORY[0x22AAB28A0](v38, -1, -1);
    MEMORY[0x22AAB28A0](v36, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  if (qword_27D81E2C0 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 400);
  v67 = *(v0 + 408);
  v68 = *(v0 + 360);
  v69 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v69, qword_27D823270);
  sub_22808764C(v66, v0 + 184);
  v70 = swift_allocObject();
  sub_227FD0F5C((v0 + 184), v70 + 16);
  *(v70 + 56) = v68;
  v71 = v68;
  sub_22812F9A4(sub_2280889F4);

  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v67 + 16));
  sub_228084228((v67 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v67 + 16));
  v82 = *(v0 + 416);
  v81 = *(v0 + 424);
  v83 = *(v0 + 400);
  v84 = *(v0 + 408);
  v85 = *(v0 + 392);

  sub_22808764C(v83, v0 + 224);
  sub_22808764C(v82, v0 + 264);

  v86 = sub_22813880C();
  v87 = sub_2281396BC();

  if (os_log_type_enabled(v86, v87))
  {
    v89 = *(v0 + 424);
    v133 = *(v0 + 392);
    v90 = swift_slowAlloc();
    v134 = v84;
    v91 = swift_slowAlloc();
    v136[0] = v91;
    *v90 = 136315906;
    v92 = *(v0 + 248);
    v93 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v92);
    v94 = (*(v93 + 16))(v92, v93);
    v96 = v95;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
    v97 = sub_227FCC340(v94, v96, v136);

    *(v90 + 4) = v97;
    *(v90 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
    swift_getDynamicType();
    v98 = sub_228139B8C();
    v100 = v99;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    v101 = sub_227FCC340(v98, v100, v136);

    *(v90 + 14) = v101;
    *(v90 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_22813A4B0;
    *(v102 + 32) = v89;

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v104 = MEMORY[0x22AAB1AD0](v102, v103);
    v106 = v105;

    v107 = sub_227FCC340(v104, v106, v136);

    *(v90 + 24) = v107;
    *(v90 + 32) = 2080;
    v108 = ModelBundleIdentifier.loggingDescription.getter();
    v110 = sub_227FCC340(v108, v109, v136);

    *(v90 + 34) = v110;
    _os_log_impl(&dword_227FC3000, v86, v87, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v90, 0x2Au);
    swift_arrayDestroy();
    v111 = v91;
    v84 = v134;
    MEMORY[0x22AAB28A0](v111, -1, -1);
    MEMORY[0x22AAB28A0](v90, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
  }

  v112 = *(v0 + 432);
  sub_228084B4C(*(v0 + 392) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 440), type metadata accessor for ModelBundleIdentifier);
  v113 = swift_getEnumCaseMultiPayload();
  if (v113)
  {
    if (v113 != 1)
    {
      v114 = 3;
      goto LABEL_50;
    }

    v114 = 2;
  }

  else
  {
    v114 = 1;
  }

  sub_228084CF0(*(v0 + 440), type metadata accessor for ModelBundleIdentifier);
LABEL_50:
  v115 = swift_getKeyPath();
  os_unfair_lock_lock((v67 + 16));
  v136[3] = MEMORY[0x277D84A28];
  v136[0] = v114;

  sub_2280449E4(v136, v115, (v67 + 24));
  os_unfair_lock_unlock((v67 + 16));

  type metadata accessor for SharedData();
  v116 = swift_allocObject();
  *(v0 + 464) = v116;
  type metadata accessor for SKAssetManager();
  *(v116 + 16) = 0;
  *(v116 + 24) = 0;
  swift_initStackObject();
  v117 = SKAssetManager.init()();
  v118 = type metadata accessor for FilterRules();
  v119 = *(v118 + 48);
  v120 = *(v118 + 52);
  swift_allocObject();
  v121 = FilterRules.init(assetManager:)(v117);
  v122 = *(v0 + 408);
  v123 = *(v116 + 16);
  *(v116 + 16) = v121;

  v124 = *(v116 + 24);
  *(v116 + 24) = v84;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v126 = *(v0 + 392);
  v125 = *(v0 + 400);
  *(v0 + 344) = v116;
  v127 = swift_task_alloc();
  *(v0 + 472) = v127;
  v128 = *(v0 + 416);
  *(v127 + 16) = v126;
  *(v127 + 24) = v128;
  *(v127 + 40) = v125;
  *(v127 + 48) = 0;
  *(v127 + 56) = v135;
  *(v127 + 64) = v84;
  v129 = *(MEMORY[0x277D85A70] + 4);
  v130 = swift_task_alloc();
  *(v0 + 480) = v130;
  v131 = sub_228138F9C();
  *v130 = v0;
  v130[1] = sub_2280655D4;
  v132 = *(v0 + 352);
  v139 = 834;
  v140 = v131;

  return MEMORY[0x282200908](v132, v0 + 344, &unk_22813E470, v127, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_2280655D4()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  v4 = *(v2 + 472);

  if (v0)
  {
    v5 = sub_228065780;
  }

  else
  {
    v5 = sub_2280656F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280656F8()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];

  v5 = v0[1];

  return v5();
}

uint64_t sub_228065780()
{
  v1 = v0[58];

  v2 = v0[61];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  v6 = v0[1];

  return v6();
}

uint64_t SummarizationSession.deinit()
{
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo));
  sub_228084D50(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine));
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for TokenCounter);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory);
  return v0;
}

uint64_t SummarizationSession.__deallocating_deinit()
{
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo));
  sub_228084D50(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine));
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for TokenCounter);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SummarizationSession.partialSummaries(for:requestInfo:signalCollector:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a1;
  v5[10] = a3;
  v6 = a2[1];
  v5[13] = *a2;
  v5[14] = v6;
  return MEMORY[0x2822009F8](sub_2280659D0, 0, 0);
}

uint64_t sub_2280659D0()
{
  type metadata accessor for SharedData();
  v1 = swift_allocObject();
  *(v0 + 120) = v1;
  type metadata accessor for SKAssetManager();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_initStackObject();
  v2 = SKAssetManager.init()();
  v3 = type metadata accessor for FilterRules();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = FilterRules.init(assetManager:)(v2);
  v7 = *(v0 + 88);
  v8 = *(v1 + 16);
  *(v1 + 16) = v6;

  v9 = *(v1 + 24);
  *(v1 + 24) = v7;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 112);
  v18 = *(v0 + 96);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 64) = v1;
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = v18;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 48) = v11;
  v14 = *(MEMORY[0x277D85A70] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
  *v15 = v0;
  v15[1] = sub_228065C2C;
  v16 = *(v0 + 72);

  return MEMORY[0x282200908](v16, v0 + 64, &unk_22813DF50, v13, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228065C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  v4 = *(v2 + 128);

  if (v0)
  {
    v5 = sub_228065DB4;
  }

  else
  {
    v5 = sub_228065D50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228065D50()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_228065DB4()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_228065E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_228065EE8;

  return sub_228066034(a1, v6 + 2, a5, a6);
}

uint64_t sub_228065EE8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22806601C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_228066034(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a1;
  v5[17] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA8, &qword_22813E110);
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v5[29] = *(v13 + 64);
  v5[30] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a2;
  v16 = a2[1];
  v5[31] = v14;
  v5[32] = v15;
  v5[33] = v16;

  return MEMORY[0x2822009F8](sub_228066214, 0, 0);
}

uint64_t sub_228066214()
{
  v64 = v0;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v1 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_2813C76F8;
  }

  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 136);
  v5 = *v1;
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);

  v10 = v9(v6, v8);
  v12 = sub_22808E410(v10, v11);

  if (sub_2280AA14C(0, 0, v12, v3, v2) >= v12)
  {
    v28 = *(v0 + 248);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v31 = *(v0 + 192);
    v32 = *(v0 + 144);
    v33 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
    (*(v30 + 104))(v29, *MEMORY[0x277D858A0], v31);
    sub_22813960C();
    (*(v30 + 8))(v29, v31);
    v34 = *(v0 + 144);
    if (v32)
    {
      v35 = *(v0 + 144);
    }

    else
    {
      type metadata accessor for TelemetrySignalCollector();
      swift_allocObject();
      v35 = sub_2280D5C74();
    }

    *(v0 + 272) = v35;
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = *(v0 + 168);

    os_unfair_lock_lock((v35 + 16));
    v39 = *(v35 + 24);

    v60 = (v35 + 24);
    *(v35 + 24) = MEMORY[0x277D84F98];
    os_unfair_lock_unlock((v35 + 16));
    sub_228136F6C();
    v40 = sub_228136F8C();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v37, 0, 1, v40);
    KeyPath = swift_getKeyPath();
    sub_228088344(v37, v36, &qword_27D81EC50, &unk_228140BB0);
    os_unfair_lock_lock((v35 + 16));
    sub_228088344(v36, v38, &qword_27D81EC50, &unk_228140BB0);
    v43 = (*(v41 + 48))(v38, 1, v40);
    v44 = *(v0 + 168);
    if (v43 == 1)
    {

      sub_2280883AC(v44, &qword_27D81EC50, &unk_228140BB0);
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    else
    {
      *(v0 + 120) = v40;
      boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 96));
      (*(v41 + 32))(boxed_opaque_existential_0Tm_0, v44, v40);
    }

    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v49 = *(v0 + 176);
    v48 = *(v0 + 184);
    v50 = *(v0 + 152);
    sub_228044D20(v0 + 96, KeyPath, v60);
    os_unfair_lock_unlock((v35 + 16));

    sub_2280883AC(v48, &qword_27D81EC50, &unk_228140BB0);
    sub_2280883AC(v49, &qword_27D81EC50, &unk_228140BB0);
    v51 = swift_getKeyPath();

    os_unfair_lock_lock((v35 + 16));
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v62[0] = &unk_283B5B380;

    sub_228044C70(v62, v51, v60);
    os_unfair_lock_unlock((v35 + 16));

    v52 = sub_22813936C();
    v53 = swift_getKeyPath();
    os_unfair_lock_lock((v35 + 16));
    v63 = MEMORY[0x277D84A28];
    v62[0] = v52;

    sub_2280449E4(v62, v53, v60);
    os_unfair_lock_unlock((v35 + 16));

    v54 = *(v50 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24);
    v55 = *(v50 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 32);
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), v54);
    v56 = *(v55 + 8);
    v57 = *(v56 + 32);
    v61 = (v57 + *v57);
    v58 = v57[1];
    v59 = swift_task_alloc();
    *(v0 + 280) = v59;
    *v59 = v0;
    v59[1] = sub_22806696C;

    return v61(v54, v56);
  }

  else
  {
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = 3;
    *(v16 + 24) = sub_228085540;
    *(v16 + 32) = v15;

    v17 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 274, sub_22808554C);
    sub_227FDB3CC();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = v17;
    swift_willThrow();
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 208);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v25 = *(v0 + 160);
    v24 = *(v0 + 168);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_22806696C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_228066D64;
  }

  else
  {
    *(v4 + 296) = a1;
    v7 = sub_228066A94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228066A94()
{
  v25 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  v18 = *(v0 + 240);
  v19 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v22 = *(v0 + 208);
  v23 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v17 = v6;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v2 + 16));
  v24[3] = MEMORY[0x277D84A28];
  v24[0] = v1;

  sub_2280449E4(v24, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  v10 = sub_22813959C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_22808764C(v8, v0 + 16);
  (*(v4 + 16))(v18, v3, v5);
  v11 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  sub_227FD0F5C((v0 + 16), (v12 + 32));
  *(v12 + 9) = v7;
  *(v12 + 10) = v2;
  *(v12 + 11) = v20;
  *(v12 + 12) = v21;
  (*(v4 + 32))(&v12[v11], v18, v5);

  v13 = sub_228060AC0(0, 0, v17, &unk_22813E180, v12);
  sub_22808764C(v8, v0 + 56);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_227FD0F5C((v0 + 56), v14 + 24);
  sub_22813961C();

  (*(v4 + 8))(v3, v5);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_228066D64()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[16];

  (*(v4 + 8))(v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v0[36];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_228066E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v17 = v7;
  v8 = sub_228087D9C(&qword_27D81E878, &qword_27D81E870, &qword_22813C008);
  v18 = v8;
  v14 = 0xD00000000000001ELL;
  v15 = 0x8000000228146530;
  v16 = 3;
  sub_22808764C(&v14, v19);
  __swift_project_boxed_opaque_existential_1(&v14, v17);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v14);
  v20 = DynamicType;
  v10 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83B88];
  v14 = a2;
  sub_228024ABC(&v14, v19);
  v11 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, a3, a4);
  v17 = v7;
  v18 = v8;
  v14 = 0xD00000000000001CLL;
  v15 = 0x8000000228146550;
  v16 = 3;
  sub_22808764C(&v14, v19);
  __swift_project_boxed_opaque_existential_1(&v14, v17);
  v12 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v14);
  v20 = v12;
  v17 = v10;
  v14 = v11;
  return sub_228024ABC(&v14, v19);
}

uint64_t sub_228067034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v25;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  v9 = sub_2281386DC();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v13 = sub_2281386FC();
  v8[34] = v13;
  v14 = *(v13 - 8);
  v8[35] = v14;
  v15 = *(v14 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v16 = *(*(type metadata accessor for PartialSummariesOperation(0) - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v17 = sub_22813882C();
  v8[39] = v17;
  v18 = *(v17 - 8);
  v8[40] = v18;
  v19 = *(v18 + 64) + 15;
  v8[41] = swift_task_alloc();
  v20 = sub_22813716C();
  v8[42] = v20;
  v21 = *(v20 - 8);
  v8[43] = v21;
  v22 = *(v21 + 64) + 15;
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280672A0, 0, 0);
}

uint64_t sub_2280672A0()
{
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = __swift_project_value_buffer(v0[39], qword_2813C8A20);
  v0[47] = v3;
  sub_22810B534(v3, v2);
  v4 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), *(v1 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24));
  v5 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_2280673C0;

  return sub_2280FA5A0(v4 + v5);
}

uint64_t sub_2280673C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v7 = sub_228067BD4;
  }

  else
  {
    *(v4 + 400) = a1;
    v7 = sub_2280674E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280674E8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 48) = type metadata accessor for TokenCounter();
  *(v0 + 56) = &off_283B5BC30;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 24));
  sub_228084B4C(v5 + v8, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v7, v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 104) = v6;
  *(v0 + 112) = 1;

  v10 = sub_2280A7954(v4, v3, v7, v6);
  *(v0 + 408) = v11;
  if (v1)
  {
    sub_228085A2C(v0 + 16);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = *(v0 + 264);
    *(v0 + 160) = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v16 = swift_dynamicCast();
    v17 = *(v13 + 56);
    if (v16)
    {
      v18 = *(v0 + 288);
      v19 = *(v0 + 296);
      v20 = *(v0 + 272);
      v21 = *(v0 + 280);
      v23 = *(v0 + 256);
      v22 = *(v0 + 264);
      v24 = *(v0 + 248);
      v60 = v18;
      v61 = *(v0 + 240);
      v64 = *(v0 + 232);
      v17(v22, 0, 1, v20);
      v63 = v19;
      (*(v21 + 32))(v19, v22, v20);
      v62 = *(v21 + 16);
      v62(v60, v19, v20);
      sub_2281386EC();
      v25 = (*(v24 + 88))(v23, v61);
      if (v25 == *MEMORY[0x277D0DB88])
      {
        v26 = 53;
      }

      else
      {
        v26 = 7;
      }

      if (v25 == *MEMORY[0x277D0DB58])
      {
        v27 = 54;
      }

      else
      {
        v27 = v26;
      }

      (*(v24 + 8))(v23, v61);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v28 = swift_allocError();
      v62(v29, v60, v20);
      v30 = swift_allocObject();
      *(v30 + 16) = v27;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      v31 = sub_227FF96D4(v28, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990);

      v32 = *(v21 + 8);
      v32(v60, v20);
      sub_227FDB3CC();
      v33 = swift_allocError();
      *v34 = v27;
      *(v34 + 8) = v31;
      *(v0 + 176) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
      sub_22813963C();
      v32(v63, v20);
    }

    else
    {
      v39 = *(v0 + 264);
      v40 = *(v0 + 232);
      v17(v39, 1, 1, *(v0 + 272));
      sub_2280883AC(v39, &qword_27D81E598, &qword_22813B300);
      *(v0 + 168) = v1;
      v41 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
      sub_22813963C();
    }

    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 192);
    sub_22810B5D0(*(v0 + 376), v44, v1);
    v45 = v1;
    sub_2280D4DD0(v44, v42, v1);
    v46 = v43 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v0 + 192);
      v48 = *(v46 + 8);
      ObjectType = swift_getObjectType();
      (*(v48 + 8))(v47, v42, v1, ObjectType, v48);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v51 = *(v0 + 360);
    v50 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 328);
    v55 = *(v0 + 296);
    v54 = *(v0 + 304);
    v56 = *(v0 + 288);
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v35 = v10;
    v36 = v11;
    v37 = swift_task_alloc();
    *(v0 + 416) = v37;
    *v37 = v0;
    v37[1] = sub_228067A98;

    return sub_2280C1424(v35, v36);
  }
}

uint64_t sub_228067A98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  v7 = *(v3 + 408);

  if (v1)
  {
    v8 = sub_228068DBC;
  }

  else
  {
    v8 = sub_228068060;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_228067BD4()
{
  v1 = v0[49];
  v0[20] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[31];
    v48 = v0[30];
    v50 = v0[29];
    v7(v12, 0, 1, v10);
    v49 = v8;
    (*(v11 + 32))(v8, v12, v10);
    v15 = *(v11 + 16);
    v15(v9, v8, v10);
    sub_2281386EC();
    v16 = (*(v14 + 88))(v13, v48);
    if (v16 == *MEMORY[0x277D0DB88])
    {
      v17 = 53;
    }

    else
    {
      v17 = 7;
    }

    if (v16 == *MEMORY[0x277D0DB58])
    {
      v18 = 54;
    }

    else
    {
      v18 = v17;
    }

    (*(v14 + 8))(v13, v48);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v15(v20, v9, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990);

    v23 = *(v11 + 8);
    v23(v9, v10);
    sub_227FDB3CC();
    v24 = swift_allocError();
    *v25 = v18;
    *(v25 + 8) = v22;
    v0[22] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v23(v49, v10);
  }

  else
  {
    v26 = v0[33];
    v27 = v0[29];
    v7(v26, 1, 1, v0[34]);
    sub_2280883AC(v26, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v28 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v30 = v0[25];
  v29 = v0[26];
  v31 = v0[24];
  sub_22810B5D0(v0[47], v31, v1);
  v32 = v1;
  sub_2280D4DD0(v31, v29, v1);
  v33 = v30 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = v0[24];
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(v34, v29, v1, ObjectType, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v38 = v0[45];
  v37 = v0[46];
  v39 = v0[44];
  v40 = v0[41];
  v42 = v0[37];
  v41 = v0[38];
  v43 = v0[36];
  v45 = v0[32];
  v44 = v0[33];

  v46 = v0[1];

  return v46();
}

uint64_t sub_228068060()
{
  v48 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 232);
  v4 = *(*v2 + 240);
  v6 = *(*v2 + 248);
  v5 = *(*v2 + 256);
  v7 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v6(&v46, v7);

    if ((v46 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v8 = __swift_project_value_buffer(v0[39], qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v8 = __swift_project_value_buffer(v0[39], qword_2813C4990);
      }

      (*(v0[40] + 16))(v0[41], v8, v0[39]);
      v9 = sub_22813880C();
      v10 = sub_2281396BC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_227FC3000, v9, v10, "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false", v11, 2u);
        MEMORY[0x22AAB28A0](v11, -1, -1);
      }

      v12 = v0[46];
      v14 = v0[40];
      v13 = v0[41];
      v15 = v0[39];

      (*(v14 + 8))(v13, v15);
      sub_2281370CC();
      v16 = v0[47];
      (*(v0[43] + 16))(v0[44], v0[46], v0[42]);
      v17 = sub_22813880C();
      v18 = sub_2281396BC();
      v19 = os_log_type_enabled(v17, v18);
      v21 = v0[43];
      v20 = v0[44];
      v22 = v0[42];
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v47 = v24;
        *v23 = 136446210;
        v45 = sub_228136FEC();
        v26 = v25;
        v27 = *(v21 + 8);
        v27(v20, v22);
        v28 = sub_227FCC340(v45, v26, &v47);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_227FC3000, v17, v18, "Locale used for inference: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v24);
        MEMORY[0x22AAB28A0](v24, -1, -1);
        MEMORY[0x22AAB28A0](v23, -1, -1);
      }

      else
      {

        v27 = *(v21 + 8);
        v27(v20, v22);
      }

      v0[57] = v27;
      v35 = v0[53];
      v36 = v0[38];
      v37 = v0[26];
      sub_22808764C(v0[24], (v0 + 15));

      sub_22806D8EC(v35, v0 + 15, v37, v36);
      if (qword_2813C8758 != -1)
      {
        swift_once();
      }

      v38 = v0[38];
      v39 = v0[29];
      v40 = v0[25];
      v41 = swift_task_alloc();
      v0[58] = v41;
      v41[2] = v38;
      v41[3] = v40;
      v41[4] = v39;
      v42 = *(MEMORY[0x277D85A70] + 4);
      v43 = swift_task_alloc();
      v0[59] = v43;
      *v43 = v0;
      v43[1] = sub_228068AC8;
      v44 = v0[46];
      v50 = 342;
      v51 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200908](v43, v44, &unk_22813E1C0, v41, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v29 = swift_task_alloc();
  v0[55] = v29;
  *v29 = v0;
  v29[1] = sub_2280686D4;
  v30 = v0[53];
  v31 = v0[45];
  v32 = v0[24];
  v33 = v0[25];

  return sub_228069BB4(v31, v30, v32);
}

uint64_t sub_2280686D4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 424);

    v5 = sub_228069250;
  }

  else
  {
    v5 = sub_2280687F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280687F0()
{
  v27 = v0;
  (*(v0[43] + 32))(v0[46], v0[45], v0[42]);
  v1 = v0[47];
  (*(v0[43] + 16))(v0[44], v0[46], v0[42]);
  v2 = sub_22813880C();
  v3 = sub_2281396BC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    v25 = sub_228136FEC();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v5, v7);
    v13 = sub_227FCC340(v25, v11, &v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_227FC3000, v2, v3, "Locale used for inference: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v9);
    MEMORY[0x22AAB28A0](v9, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v0[57] = v12;
  v14 = v0[53];
  v15 = v0[38];
  v16 = v0[26];
  sub_22808764C(v0[24], (v0 + 15));

  sub_22806D8EC(v14, v0 + 15, v16, v15);
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v17 = v0[38];
  v18 = v0[29];
  v19 = v0[25];
  v20 = swift_task_alloc();
  v0[58] = v20;
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = v18;
  v21 = *(MEMORY[0x277D85A70] + 4);
  v22 = swift_task_alloc();
  v0[59] = v22;
  *v22 = v0;
  v22[1] = sub_228068AC8;
  v23 = v0[46];
  v29 = 342;
  v30 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200908](v22, v23, &unk_22813E1C0, v20, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228068AC8()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);

  if (v0)
  {
    v6 = sub_2280696E4;
  }

  else
  {
    v6 = sub_228068BFC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228068BFC()
{
  *(v0 + 184) = 0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  sub_22813963C();
  sub_22810B54C(v1, v5);
  sub_2280D4DD0(v5, v3, 0);
  v6 = v4 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 192);
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v8, v7, 0, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 344) + 8;
  (*(v0 + 456))(*(v0 + 368), *(v0 + 336));
  sub_228085A2C(v0 + 16);
  sub_228084CF0(v11, type metadata accessor for PartialSummariesOperation);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v15 = *(v0 + 352);
  v16 = *(v0 + 328);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_228068DBC()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[54];
  v0[20] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[31];
    v48 = v0[30];
    v50 = v0[29];
    v7(v12, 0, 1, v10);
    v49 = v8;
    (*(v11 + 32))(v8, v12, v10);
    v15 = *(v11 + 16);
    v15(v9, v8, v10);
    sub_2281386EC();
    v16 = (*(v14 + 88))(v13, v48);
    if (v16 == *MEMORY[0x277D0DB88])
    {
      v17 = 53;
    }

    else
    {
      v17 = 7;
    }

    if (v16 == *MEMORY[0x277D0DB58])
    {
      v18 = 54;
    }

    else
    {
      v18 = v17;
    }

    (*(v14 + 8))(v13, v48);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v15(v20, v9, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990);

    v23 = *(v11 + 8);
    v23(v9, v10);
    sub_227FDB3CC();
    v24 = swift_allocError();
    *v25 = v18;
    *(v25 + 8) = v22;
    v0[22] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v23(v49, v10);
  }

  else
  {
    v26 = v0[33];
    v27 = v0[29];
    v7(v26, 1, 1, v0[34]);
    sub_2280883AC(v26, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v28 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v30 = v0[25];
  v29 = v0[26];
  v31 = v0[24];
  sub_22810B5D0(v0[47], v31, v1);
  v32 = v1;
  sub_2280D4DD0(v31, v29, v1);
  v33 = v30 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = v0[24];
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(v34, v29, v1, ObjectType, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v38 = v0[45];
  v37 = v0[46];
  v39 = v0[44];
  v40 = v0[41];
  v42 = v0[37];
  v41 = v0[38];
  v43 = v0[36];
  v45 = v0[32];
  v44 = v0[33];

  v46 = v0[1];

  return v46();
}

uint64_t sub_228069250()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[56];
  v0[20] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[31];
    v48 = v0[30];
    v50 = v0[29];
    v7(v12, 0, 1, v10);
    v49 = v8;
    (*(v11 + 32))(v8, v12, v10);
    v15 = *(v11 + 16);
    v15(v9, v8, v10);
    sub_2281386EC();
    v16 = (*(v14 + 88))(v13, v48);
    if (v16 == *MEMORY[0x277D0DB88])
    {
      v17 = 53;
    }

    else
    {
      v17 = 7;
    }

    if (v16 == *MEMORY[0x277D0DB58])
    {
      v18 = 54;
    }

    else
    {
      v18 = v17;
    }

    (*(v14 + 8))(v13, v48);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v15(v20, v9, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990);

    v23 = *(v11 + 8);
    v23(v9, v10);
    sub_227FDB3CC();
    v24 = swift_allocError();
    *v25 = v18;
    *(v25 + 8) = v22;
    v0[22] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v23(v49, v10);
  }

  else
  {
    v26 = v0[33];
    v27 = v0[29];
    v7(v26, 1, 1, v0[34]);
    sub_2280883AC(v26, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v28 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v30 = v0[25];
  v29 = v0[26];
  v31 = v0[24];
  sub_22810B5D0(v0[47], v31, v1);
  v32 = v1;
  sub_2280D4DD0(v31, v29, v1);
  v33 = v30 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = v0[24];
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    (*(v35 + 8))(v34, v29, v1, ObjectType, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v38 = v0[45];
  v37 = v0[46];
  v39 = v0[44];
  v40 = v0[41];
  v42 = v0[37];
  v41 = v0[38];
  v43 = v0[36];
  v45 = v0[32];
  v44 = v0[33];

  v46 = v0[1];

  return v46();
}

uint64_t sub_2280696E4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 344) + 8;
  (*(v0 + 456))(*(v0 + 368), *(v0 + 336));
  sub_228085A2C(v0 + 16);
  sub_228084CF0(v1, type metadata accessor for PartialSummariesOperation);
  v3 = *(v0 + 480);
  *(v0 + 160) = v3;
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 248);
    v50 = *(v0 + 240);
    v52 = *(v0 + 232);
    v9(v14, 0, 1, v12);
    v51 = v10;
    (*(v13 + 32))(v10, v14, v12);
    v17 = *(v13 + 16);
    v17(v11, v10, v12);
    sub_2281386EC();
    v18 = (*(v16 + 88))(v15, v50);
    if (v18 == *MEMORY[0x277D0DB88])
    {
      v19 = 53;
    }

    else
    {
      v19 = 7;
    }

    if (v18 == *MEMORY[0x277D0DB58])
    {
      v20 = 54;
    }

    else
    {
      v20 = v19;
    }

    (*(v16 + 8))(v15, v50);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v21 = swift_allocError();
    v17(v22, v11, v12);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    v24 = sub_227FF96D4(v21, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990);

    v25 = *(v13 + 8);
    v25(v11, v12);
    sub_227FDB3CC();
    v26 = swift_allocError();
    *v27 = v20;
    *(v27 + 8) = v24;
    *(v0 + 176) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v25(v51, v12);
  }

  else
  {
    v28 = *(v0 + 264);
    v29 = *(v0 + 232);
    v9(v28, 1, 1, *(v0 + 272));
    sub_2280883AC(v28, &qword_27D81E598, &qword_22813B300);
    *(v0 + 168) = v3;
    v30 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 192);
  sub_22810B5D0(*(v0 + 376), v33, v3);
  v34 = v3;
  sub_2280D4DD0(v33, v31, v3);
  v35 = v32 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v0 + 192);
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(v36, v31, v3, ObjectType, v37);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v40 = *(v0 + 360);
  v39 = *(v0 + 368);
  v41 = *(v0 + 352);
  v42 = *(v0 + 328);
  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 288);
  v47 = *(v0 + 256);
  v46 = *(v0 + 264);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_228069BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECC8, &qword_22813E1D0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8);
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = sub_22813713C();
  v4[23] = v9;
  v10 = *(v9 - 8);
  v4[24] = v10;
  v11 = *(v10 + 64) + 15;
  v4[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v14 = sub_22813716C();
  v4[28] = v14;
  v15 = *(v14 - 8);
  v4[29] = v15;
  v16 = *(v15 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228069E44, 0, 0);
}

uint64_t sub_228069E44()
{
  v1 = *(v0 + 88);
  v2 = v1[2];
  *(v0 + 280) = v2;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
    v4 = MEMORY[0x277D84F90];
    *(v0 + 296) = 0;
    *(v0 + 304) = v4;
    *(v0 + 288) = v3;
    v49 = v1[4];
    *(v0 + 312) = v49;
    v5 = v1[5];
    *(v0 + 320) = v5;
    v6 = qword_2813C4950;

    if (v6 != -1)
    {
      swift_once();
      v1 = *(v0 + 88);
    }

    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 96);
    v12 = type metadata accessor for Signpost(0);
    v13 = __swift_project_value_buffer(v12, qword_2813C8948);
    *(v0 + 328) = v13;
    sub_22808764C(v11, v0 + 16);
    v14 = swift_allocObject();
    *(v0 + 336) = v14;
    sub_227FD0F5C((v0 + 16), v14 + 16);
    *(v14 + 56) = v1;
    v15 = swift_allocObject();
    *(v0 + 344) = v15;
    *(v15 + 16) = sub_228085B34;
    *(v15 + 24) = v14;

    sub_2281324C4(v13, v15);
    v16 = *(v9 + 56);

    v16(v7, 1, 1, v10);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 288);
    v18 = *(v0 + 104);
    v19 = sub_22813882C();
    v20 = __swift_project_value_buffer(v19, qword_2813C8A20);
    *(v0 + 352) = v20;
    v21 = swift_task_alloc();
    *(v0 + 360) = v21;
    *v21 = v0;
    v21[1] = sub_22806A300;
    v22 = *(v0 + 264);
    v23 = *(v0 + 208);
    v24 = *(v0 + 96);

    return sub_2280C5BB0(v22, v49, v5, v23, v18 + v17, v24, v20);
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v26 = sub_22813882C();
    __swift_project_value_buffer(v26, qword_2813C8A20);
    v27 = sub_22813880C();
    v28 = sub_2281396BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_227FC3000, v27, v28, "No chunks to determine dominant language from.", v29, 2u);
      MEMORY[0x22AAB28A0](v29, -1, -1);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = 23;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    v31 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 608, sub_22808899C);
    sub_227FDB3CC();
    swift_allocError();
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);
    v35 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 240);
    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v39 = *(v0 + 200);
    v42 = *(v0 + 176);
    v43 = *(v0 + 168);
    v44 = *(v0 + 160);
    v45 = *(v0 + 136);
    v46 = *(v0 + 128);
    v47 = *(v0 + 120);
    v48 = *(v0 + 112);
    *v40 = 23;
    *(v40 + 8) = v31;
    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_22806A300()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);

    v5 = sub_22806B1F8;
  }

  else
  {
    v5 = sub_22806A41C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22806A41C()
{
  if (byte_283B5B3C8 <= 1u && !byte_283B5B3C8)
  {

LABEL_5:
    v2 = *(v0 + 288);
    v3 = *(v0 + 264);
    v4 = *(v0 + 200);
    v5 = *(v0 + 104);
    sub_22813715C();
    v6 = swift_task_alloc();
    *(v0 + 376) = v6;
    *v6 = v0;
    v6[1] = sub_22806BE88;
    v7 = *(v0 + 200);
    v8 = *(v0 + 96);

    return sub_22804CDFC(v7, v5 + v2, v8);
  }

  v1 = sub_2281399BC();

  if (v1)
  {
    goto LABEL_5;
  }

  v10 = *(v0 + 320);

  v11 = *(v0 + 344);
  v141 = *(v0 + 336);
  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v148 = *(v0 + 312);
  v151 = *(v0 + 304);
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 216);
  v19 = *(v0 + 176);
  v144 = *(v0 + 144);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);
  (*(v17 + 32))(v14, v15, v16);
  sub_2281324D4(v18, v12, v11);

  sub_228084CF0(v18, type metadata accessor for SignpostToken);

  v20 = sub_22813936C();

  v21 = *(v144 + 48);
  (*(v17 + 16))(v19, v14, v16);
  *(v19 + v21) = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_60:
    v23 = sub_228133DEC(0, *(v23 + 16) + 1, 1, v23);
  }

  v25 = *(v23 + 16);
  v24 = *(v23 + 24);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_228133DEC(v24 > 1, v25 + 1, 1, v23);
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  (*(*(v0 + 232) + 8))(*(v0 + 272), *(v0 + 224));
  *(v23 + 16) = v25 + 1;
  sub_228085C84(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, &qword_27D81ECD0, &qword_22813E1D8);
  v28 = *(v0 + 280);
  v29 = *(v0 + 296) + 1;
  if (v29 == v28)
  {
    v30 = *(v23 + 16);
    v31 = v28 - v30;
    v32 = v28 >> 1;
    if (v32 >= v31)
    {
      if (v30)
      {
        v125 = v32;
        v62 = *(v0 + 160);
        v63 = *(v0 + 256);
        v65 = *(v0 + 224);
        v64 = *(v0 + 232);
        v66 = *(v0 + 168);
        v67 = *(v0 + 144);
        v154 = *(v0 + 152);
        v68 = v23 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
        sub_228088344(v68, v66, &qword_27D81ECD0, &qword_22813E1D8);
        v142 = v64[4];
        v142(v63, v66, v65);
        v129 = *(v67 + 48);
        v126 = v64[2];
        v126(v62, v63, v65);
        v131 = v68;
        sub_228088344(v68, v66, &qword_27D81ECD0, &qword_22813E1D8);
        v69 = v64[1];
        v70 = *(v66 + *(v67 + 48));
        v128 = v62;
        *(v62 + v129) = v70;
        v149 = v69;
        v69(v66, v65);
        v71 = *(v23 + 16);
        v145 = (v154 + 56);
        v72 = (v154 + 48);
        v127 = (v64 + 3);
        v133 = v23;

        v73 = 0;
        v23 = 0;
        v138 = v71;
        while (1)
        {
          if (v23 == v71)
          {
            v79 = 1;
            v23 = v71;
          }

          else
          {
            if (v23 >= *(v133 + 16))
            {
              goto LABEL_58;
            }

            sub_228088344(v131 + *(*(v0 + 152) + 72) * v23, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v79 = 0;
            ++v23;
          }

          v81 = *(v0 + 136);
          v80 = *(v0 + 144);
          v82 = *(v0 + 128);
          v83 = *v145;
          (*v145)(v82, v79, 1, v80);
          sub_228085C84(v82, v81, &qword_27D81ECC8, &qword_22813E1D0);
          v84 = *v72;
          if ((*v72)(v81, 1, v80) == 1)
          {
            break;
          }

          v85 = *(v0 + 224);
          v86 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v142)(*(v0 + 248));
          if (v70 < v86)
          {
            (*v127)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v128 + v129) = v86;
            v70 = v86;
          }

          if (!v73)
          {
            v88 = *(v0 + 248);
            v87 = *(v0 + 256);
            v89 = *(v0 + 224);
            v149(v87, v89);
            v126(v87, v88, v89);
          }

          v74 = *(v0 + 248);
          v75 = *(v0 + 224);
          v76 = MEMORY[0x22AAAF600](v74, *(v0 + 256));
          v149(v74, v75);
          v77 = 1;
          if ((v76 & 1) == 0)
          {
            v77 = -1;
          }

          v78 = __OFADD__(v73, v77);
          v73 += v77;
          v71 = v138;
          if (v78)
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }
        }

        v23 = 0;
        v90 = 0;
        v91 = v138;
        while (1)
        {
          if (v90 == v91)
          {
            v92 = 1;
            v90 = v91;
          }

          else
          {
            if (v90 >= *(v133 + 16))
            {
              goto LABEL_59;
            }

            sub_228088344(v131 + *(*(v0 + 152) + 72) * v90, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v92 = 0;
            ++v90;
          }

          v93 = *(v0 + 144);
          v95 = *(v0 + 112);
          v94 = *(v0 + 120);
          v83(v95, v92, 1, v93);
          sub_228085C84(v95, v94, &qword_27D81ECC8, &qword_22813E1D0);
          if (v84(v94, 1, v93) == 1)
          {
            break;
          }

          v96 = *(v0 + 256);
          v97 = *(v0 + 240);
          v98 = *(v0 + 224);
          v142(v97, *(v0 + 120), v98);
          LOBYTE(v96) = MEMORY[0x22AAAF600](v97, v96);
          v149(v97, v98);
          v91 = v138;
          if (v96)
          {
            v78 = __OFADD__(v23++, 1);
            if (v78)
            {
              __break(1u);
              break;
            }
          }
        }

        v99 = (v0 + 256);
        if (v125 >= v23)
        {
          v149(*(v0 + 256), *(v0 + 224));
          v142 = v126;
          v99 = (v0 + 160);
        }

        v101 = *(v0 + 264);
        v100 = *(v0 + 272);
        v103 = *(v0 + 248);
        v102 = *(v0 + 256);
        v104 = *(v0 + 240);
        v105 = *(v0 + 216);
        v106 = *(v0 + 208);
        v134 = *(v0 + 200);
        v136 = *(v0 + 176);
        v139 = *(v0 + 168);
        v107 = *(v0 + 160);
        v146 = *(v0 + 136);
        v150 = *(v0 + 128);
        v108 = *(v0 + 112);
        v155 = *(v0 + 120);
        v142(*(v0 + 80), *v99, *(v0 + 224));
        sub_2280883AC(v107, &qword_27D81ECD0, &qword_22813E1D8);

        v109 = *(v0 + 8);
        goto LABEL_54;
      }

      v110 = *(v0 + 352);

      v111 = sub_22813880C();
      v112 = sub_2281396BC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_227FC3000, v111, v112, "Candidate list of locales is empty, cannot determine majority locale.", v113, 2u);
        MEMORY[0x22AAB28A0](v113, -1, -1);
      }

      v114 = swift_allocObject();
      v152 = 23;
      *(v114 + 16) = 23;
      *(v114 + 24) = 0;
      *(v114 + 32) = 0;
      v38 = sub_228088994;
      v39 = 650;
    }

    else
    {
      v33 = *(v0 + 352);

      v34 = sub_22813880C();
      v35 = sub_2281396BC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_227FC3000, v34, v35, "A majority of the chunks from this request are unsupported.", v36, 2u);
        MEMORY[0x22AAB28A0](v36, -1, -1);
      }

      v37 = swift_allocObject();
      v152 = 17;
      *(v37 + 16) = 17;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0;
      v38 = sub_228088998;
      v39 = 645;
    }

    v115 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v39, v38);
    sub_227FDB3CC();
    swift_allocError();
    v117 = *(v0 + 264);
    v116 = *(v0 + 272);
    v119 = *(v0 + 248);
    v118 = *(v0 + 256);
    v120 = *(v0 + 240);
    v122 = *(v0 + 208);
    v121 = *(v0 + 216);
    v123 = *(v0 + 200);
    v130 = *(v0 + 176);
    v132 = *(v0 + 168);
    v135 = *(v0 + 160);
    v137 = *(v0 + 136);
    v140 = *(v0 + 128);
    v143 = *(v0 + 120);
    v147 = *(v0 + 112);
    *v124 = v152;
    *(v124 + 8) = v115;
    swift_willThrow();

    v109 = *(v0 + 8);
LABEL_54:

    return v109();
  }

  *(v0 + 296) = v29;
  *(v0 + 304) = v23;
  v40 = *(v0 + 88);
  v41 = v40 + 16 * v29;
  v153 = *(v41 + 32);
  *(v0 + 312) = v153;
  v42 = *(v41 + 40);
  *(v0 + 320) = v42;
  v43 = qword_2813C4950;

  if (v43 != -1)
  {
    swift_once();
    v40 = *(v0 + 88);
  }

  v44 = *(v0 + 208);
  v45 = *(v0 + 216);
  v47 = *(v0 + 184);
  v46 = *(v0 + 192);
  v48 = *(v0 + 96);
  v49 = type metadata accessor for Signpost(0);
  v50 = __swift_project_value_buffer(v49, qword_2813C8948);
  *(v0 + 328) = v50;
  sub_22808764C(v48, v0 + 16);
  v51 = swift_allocObject();
  *(v0 + 336) = v51;
  sub_227FD0F5C((v0 + 16), v51 + 16);
  *(v51 + 56) = v40;
  v52 = swift_allocObject();
  *(v0 + 344) = v52;
  *(v52 + 16) = sub_228085B34;
  *(v52 + 24) = v51;

  sub_2281324C4(v50, v52);
  v53 = *(v46 + 56);

  v53(v44, 1, 1, v47);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 288);
  v55 = *(v0 + 104);
  v56 = sub_22813882C();
  v57 = __swift_project_value_buffer(v56, qword_2813C8A20);
  *(v0 + 352) = v57;
  v58 = swift_task_alloc();
  *(v0 + 360) = v58;
  *v58 = v0;
  v58[1] = sub_22806A300;
  v59 = *(v0 + 264);
  v60 = *(v0 + 208);
  v61 = *(v0 + 96);

  return sub_2280C5BB0(v59, v153, v42, v60, v55 + v54, v61, v57);
}

uint64_t sub_22806B1F8()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 216);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = sub_228085B34;
  v8[4] = v4;
  swift_beginAccess();
  v9 = *(v3 + 24);
  *(v3 + 16) = sub_228085B40;
  *(v3 + 24) = v8;

  v10 = v1;

  swift_willThrow();
  sub_2281324D4(v7, v5, v3);

  sub_228084CF0(v7, type metadata accessor for SignpostToken);

  v11 = v1;
  v12 = sub_22813880C();
  v13 = sub_2281396DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_227FC3000, v12, v13, "Failed to check language for chunk: %@", v14, 0xCu);
    sub_2280883AC(v15, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v15, -1, -1);
    MEMORY[0x22AAB28A0](v14, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 296) + 1;
  if (v19 == v18)
  {
    v20 = *(v0 + 304);
    v21 = *(v20 + 16);
    v22 = v18 - v21;
    v23 = v18 >> 1;
    if (v23 >= v22)
    {
      if (v21)
      {
        v117 = v23;
        v54 = *(v0 + 160);
        v55 = *(v0 + 256);
        v57 = *(v0 + 224);
        v56 = *(v0 + 232);
        v58 = *(v0 + 168);
        v59 = *(v0 + 144);
        v142 = *(v0 + 152);
        v60 = v20 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        v125 = *(v0 + 304);
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v133 = v56[4];
        v133(v55, v58, v57);
        v61 = *(v59 + 48);
        v118 = v56[2];
        v118(v54, v55, v57);
        v123 = v60;
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v62 = v56[1];
        v63 = *(v58 + *(v59 + 48));
        v120 = v61;
        v121 = v54;
        *(v54 + v61) = v63;
        v138 = v62;
        v62(v58, v57);
        v64 = *(v125 + 16);
        v135 = (v142 + 56);
        v65 = (v142 + 48);
        v141 = (v56 + 1);
        v119 = (v56 + 3);

        v33 = 0;
        v66 = 0;
        v130 = v64;
        while (1)
        {
          if (v66 == v64)
          {
            v72 = 1;
            v66 = v64;
          }

          else
          {
            if (v66 >= *(v125 + 16))
            {
              goto LABEL_50;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v66, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v72 = 0;
            ++v66;
          }

          v73 = *(v0 + 136);
          v74 = *(v0 + 144);
          v75 = *(v0 + 128);
          v76 = *v135;
          (*v135)(v75, v72, 1, v74);
          sub_228085C84(v75, v73, &qword_27D81ECC8, &qword_22813E1D0);
          v77 = *v65;
          if ((*v65)(v73, 1, v74) == 1)
          {
            break;
          }

          v78 = *(v0 + 224);
          v79 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v133)(*(v0 + 248));
          if (v63 < v79)
          {
            (*v119)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v121 + v120) = v79;
            v63 = v79;
          }

          if (!v33)
          {
            v81 = *(v0 + 248);
            v80 = *(v0 + 256);
            v82 = *(v0 + 224);
            v138(v80, v82);
            v118(v80, v81, v82);
          }

          v67 = *(v0 + 248);
          v68 = *(v0 + 224);
          v69 = MEMORY[0x22AAAF600](v67, *(v0 + 256));
          v138(v67, v68);
          v70 = 1;
          if ((v69 & 1) == 0)
          {
            v70 = -1;
          }

          v71 = __OFADD__(v33, v70);
          v33 += v70;
          v64 = v130;
          if (v71)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        v33 = 0;
        v83 = 0;
        while (1)
        {
          if (v83 == v130)
          {
            v84 = 1;
            v83 = v130;
          }

          else
          {
            if (v83 >= *(v125 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v83, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v84 = 0;
            ++v83;
          }

          v85 = *(v0 + 144);
          v87 = *(v0 + 112);
          v86 = *(v0 + 120);
          v76(v87, v84, 1, v85);
          sub_228085C84(v87, v86, &qword_27D81ECC8, &qword_22813E1D0);
          if (v77(v86, 1, v85) == 1)
          {
            break;
          }

          v88 = *(v0 + 256);
          v89 = *(v0 + 240);
          v90 = *(v0 + 224);
          v133(v89, *(v0 + 120), v90);
          LOBYTE(v88) = MEMORY[0x22AAAF600](v89, v88);
          v138(v89, v90);
          if (v88)
          {
            v71 = __OFADD__(v33++, 1);
            if (v71)
            {
              __break(1u);
              break;
            }
          }
        }

        v91 = (v0 + 256);
        if (v117 >= v33)
        {
          v138(*(v0 + 256), *(v0 + 224));
          v133 = v118;
          v91 = (v0 + 160);
        }

        v93 = *(v0 + 264);
        v92 = *(v0 + 272);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 240);
        v97 = *(v0 + 216);
        v98 = *(v0 + 208);
        v126 = *(v0 + 200);
        v128 = *(v0 + 176);
        v131 = *(v0 + 168);
        v99 = *(v0 + 160);
        v136 = *(v0 + 136);
        v139 = *(v0 + 128);
        v100 = *(v0 + 112);
        v143 = *(v0 + 120);
        v133(*(v0 + 80), *v91, *(v0 + 224));
        sub_2280883AC(v99, &qword_27D81ECD0, &qword_22813E1D8);

        v101 = *(v0 + 8);
        goto LABEL_46;
      }

      v102 = *(v0 + 352);

      v103 = sub_22813880C();
      v104 = sub_2281396BC();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_227FC3000, v103, v104, "Candidate list of locales is empty, cannot determine majority locale.", v105, 2u);
        MEMORY[0x22AAB28A0](v105, -1, -1);
      }

      v106 = swift_allocObject();
      v140 = 23;
      *(v106 + 16) = 23;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v29 = sub_228088994;
      v30 = 650;
    }

    else
    {
      v24 = *(v0 + 352);

      v25 = sub_22813880C();
      v26 = sub_2281396BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_227FC3000, v25, v26, "A majority of the chunks from this request are unsupported.", v27, 2u);
        MEMORY[0x22AAB28A0](v27, -1, -1);
      }

      v28 = swift_allocObject();
      v140 = 17;
      *(v28 + 16) = 17;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      v29 = sub_228088998;
      v30 = 645;
    }

    v107 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v30, v29);
    sub_227FDB3CC();
    swift_allocError();
    v109 = *(v0 + 264);
    v108 = *(v0 + 272);
    v111 = *(v0 + 248);
    v110 = *(v0 + 256);
    v112 = *(v0 + 240);
    v114 = *(v0 + 208);
    v113 = *(v0 + 216);
    v115 = *(v0 + 200);
    v122 = *(v0 + 176);
    v124 = *(v0 + 168);
    v127 = *(v0 + 160);
    v129 = *(v0 + 136);
    v132 = *(v0 + 128);
    v134 = *(v0 + 120);
    v137 = *(v0 + 112);
    *v116 = v140;
    *(v116 + 8) = v107;
    swift_willThrow();

    v101 = *(v0 + 8);
LABEL_46:

    return v101();
  }

  *(v0 + 296) = v19;
  v31 = *(v0 + 88);
  v32 = v31 + 16 * v19;
  v141 = *(v32 + 32);
  *(v0 + 312) = v141;
  v33 = *(v32 + 40);
  *(v0 + 320) = v33;
  v34 = qword_2813C4950;

  if (v34 != -1)
  {
LABEL_52:
    swift_once();
    v31 = *(v0 + 88);
  }

  v35 = *(v0 + 208);
  v36 = *(v0 + 216);
  v38 = *(v0 + 184);
  v37 = *(v0 + 192);
  v39 = *(v0 + 96);
  v40 = type metadata accessor for Signpost(0);
  v41 = __swift_project_value_buffer(v40, qword_2813C8948);
  *(v0 + 328) = v41;
  sub_22808764C(v39, v0 + 16);
  v42 = swift_allocObject();
  *(v0 + 336) = v42;
  sub_227FD0F5C((v0 + 16), v42 + 16);
  *(v42 + 56) = v31;
  v43 = swift_allocObject();
  *(v0 + 344) = v43;
  *(v43 + 16) = sub_228085B34;
  *(v43 + 24) = v42;

  sub_2281324C4(v41, v43);
  v44 = *(v37 + 56);

  v44(v35, 1, 1, v38);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 104);
  v47 = sub_22813882C();
  v48 = __swift_project_value_buffer(v47, qword_2813C8A20);
  *(v0 + 352) = v48;
  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = sub_22806A300;
  v50 = *(v0 + 264);
  v51 = *(v0 + 208);
  v52 = *(v0 + 96);

  return sub_2280C5BB0(v50, v141, v33, v51, v46 + v45, v52, v48);
}

uint64_t sub_22806BE88()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v10 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = v2[40];
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[23];

    (*(v6 + 8))(v5, v7);
    v8 = sub_22806CC44;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v8 = sub_22806BFE4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22806BFE4()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 344);
  v133 = *(v0 + 336);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v140 = *(v0 + 312);
  v143 = *(v0 + 304);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 224);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  v10 = *(v0 + 176);
  v136 = *(v0 + 144);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);
  (*(v8 + 32))(v5, v6, v7);
  sub_2281324D4(v9, v3, v2);

  sub_228084CF0(v9, type metadata accessor for SignpostToken);

  v11 = sub_22813936C();

  v12 = *(v136 + 48);
  (*(v8 + 16))(v10, v5, v7);
  *(v10 + v12) = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_53:
    v14 = sub_228133DEC(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_228133DEC(v15 > 1, v16 + 1, 1, v14);
  }

  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  (*(*(v0 + 232) + 8))(*(v0 + 272), *(v0 + 224));
  *(v14 + 16) = v16 + 1;
  sub_228085C84(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, &qword_27D81ECD0, &qword_22813E1D8);
  v19 = *(v0 + 280);
  v20 = *(v0 + 296) + 1;
  if (v20 == v19)
  {
    v21 = *(v14 + 16);
    v22 = v19 - v21;
    v23 = v19 >> 1;
    if (v23 >= v22)
    {
      if (v21)
      {
        v117 = v23;
        v54 = *(v0 + 160);
        v55 = *(v0 + 256);
        v57 = *(v0 + 224);
        v56 = *(v0 + 232);
        v58 = *(v0 + 168);
        v59 = *(v0 + 144);
        v146 = *(v0 + 152);
        v60 = v14 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v134 = v56[4];
        v134(v55, v58, v57);
        v121 = *(v59 + 48);
        v118 = v56[2];
        v118(v54, v55, v57);
        v123 = v60;
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v61 = v56[1];
        v62 = *(v58 + *(v59 + 48));
        v120 = v54;
        *(v54 + v121) = v62;
        v141 = v61;
        v61(v58, v57);
        v63 = *(v14 + 16);
        v137 = (v146 + 56);
        v64 = (v146 + 48);
        v119 = (v56 + 3);
        v125 = v14;

        v65 = 0;
        v14 = 0;
        v130 = v63;
        while (1)
        {
          if (v14 == v63)
          {
            v71 = 1;
            v14 = v63;
          }

          else
          {
            if (v14 >= *(v125 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v14, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v71 = 0;
            ++v14;
          }

          v73 = *(v0 + 136);
          v72 = *(v0 + 144);
          v74 = *(v0 + 128);
          v75 = *v137;
          (*v137)(v74, v71, 1, v72);
          sub_228085C84(v74, v73, &qword_27D81ECC8, &qword_22813E1D0);
          v76 = *v64;
          if ((*v64)(v73, 1, v72) == 1)
          {
            break;
          }

          v77 = *(v0 + 224);
          v78 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v134)(*(v0 + 248));
          if (v62 < v78)
          {
            (*v119)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v120 + v121) = v78;
            v62 = v78;
          }

          if (!v65)
          {
            v80 = *(v0 + 248);
            v79 = *(v0 + 256);
            v81 = *(v0 + 224);
            v141(v79, v81);
            v118(v79, v80, v81);
          }

          v66 = *(v0 + 248);
          v67 = *(v0 + 224);
          v68 = MEMORY[0x22AAAF600](v66, *(v0 + 256));
          v141(v66, v67);
          v69 = 1;
          if ((v68 & 1) == 0)
          {
            v69 = -1;
          }

          v70 = __OFADD__(v65, v69);
          v65 += v69;
          v63 = v130;
          if (v70)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        v14 = 0;
        v82 = 0;
        v83 = v130;
        while (1)
        {
          if (v82 == v83)
          {
            v84 = 1;
            v82 = v83;
          }

          else
          {
            if (v82 >= *(v125 + 16))
            {
              goto LABEL_52;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v82, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v84 = 0;
            ++v82;
          }

          v85 = *(v0 + 144);
          v87 = *(v0 + 112);
          v86 = *(v0 + 120);
          v75(v87, v84, 1, v85);
          sub_228085C84(v87, v86, &qword_27D81ECC8, &qword_22813E1D0);
          if (v76(v86, 1, v85) == 1)
          {
            break;
          }

          v88 = *(v0 + 256);
          v89 = *(v0 + 240);
          v90 = *(v0 + 224);
          v134(v89, *(v0 + 120), v90);
          LOBYTE(v88) = MEMORY[0x22AAAF600](v89, v88);
          v141(v89, v90);
          v83 = v130;
          if (v88)
          {
            v70 = __OFADD__(v14++, 1);
            if (v70)
            {
              __break(1u);
              break;
            }
          }
        }

        v91 = (v0 + 256);
        if (v117 >= v14)
        {
          v141(*(v0 + 256), *(v0 + 224));
          v134 = v118;
          v91 = (v0 + 160);
        }

        v93 = *(v0 + 264);
        v92 = *(v0 + 272);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 240);
        v97 = *(v0 + 216);
        v98 = *(v0 + 208);
        v126 = *(v0 + 200);
        v128 = *(v0 + 176);
        v131 = *(v0 + 168);
        v99 = *(v0 + 160);
        v138 = *(v0 + 136);
        v142 = *(v0 + 128);
        v100 = *(v0 + 112);
        v147 = *(v0 + 120);
        v134(*(v0 + 80), *v91, *(v0 + 224));
        sub_2280883AC(v99, &qword_27D81ECD0, &qword_22813E1D8);

        v101 = *(v0 + 8);
        goto LABEL_47;
      }

      v102 = *(v0 + 352);

      v103 = sub_22813880C();
      v104 = sub_2281396BC();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_227FC3000, v103, v104, "Candidate list of locales is empty, cannot determine majority locale.", v105, 2u);
        MEMORY[0x22AAB28A0](v105, -1, -1);
      }

      v106 = swift_allocObject();
      v144 = 23;
      *(v106 + 16) = 23;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v29 = sub_228088994;
      v30 = 650;
    }

    else
    {
      v24 = *(v0 + 352);

      v25 = sub_22813880C();
      v26 = sub_2281396BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_227FC3000, v25, v26, "A majority of the chunks from this request are unsupported.", v27, 2u);
        MEMORY[0x22AAB28A0](v27, -1, -1);
      }

      v28 = swift_allocObject();
      v144 = 17;
      *(v28 + 16) = 17;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      v29 = sub_228088998;
      v30 = 645;
    }

    v107 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v30, v29);
    sub_227FDB3CC();
    swift_allocError();
    v109 = *(v0 + 264);
    v108 = *(v0 + 272);
    v111 = *(v0 + 248);
    v110 = *(v0 + 256);
    v112 = *(v0 + 240);
    v114 = *(v0 + 208);
    v113 = *(v0 + 216);
    v115 = *(v0 + 200);
    v122 = *(v0 + 176);
    v124 = *(v0 + 168);
    v127 = *(v0 + 160);
    v129 = *(v0 + 136);
    v132 = *(v0 + 128);
    v135 = *(v0 + 120);
    v139 = *(v0 + 112);
    *v116 = v144;
    *(v116 + 8) = v107;
    swift_willThrow();

    v101 = *(v0 + 8);
LABEL_47:

    return v101();
  }

  *(v0 + 296) = v20;
  *(v0 + 304) = v14;
  v31 = *(v0 + 88);
  v32 = v31 + 16 * v20;
  v145 = *(v32 + 32);
  *(v0 + 312) = v145;
  v33 = *(v32 + 40);
  *(v0 + 320) = v33;
  v34 = qword_2813C4950;

  if (v34 != -1)
  {
    swift_once();
    v31 = *(v0 + 88);
  }

  v35 = *(v0 + 208);
  v36 = *(v0 + 216);
  v38 = *(v0 + 184);
  v37 = *(v0 + 192);
  v39 = *(v0 + 96);
  v40 = type metadata accessor for Signpost(0);
  v41 = __swift_project_value_buffer(v40, qword_2813C8948);
  *(v0 + 328) = v41;
  sub_22808764C(v39, v0 + 16);
  v42 = swift_allocObject();
  *(v0 + 336) = v42;
  sub_227FD0F5C((v0 + 16), v42 + 16);
  *(v42 + 56) = v31;
  v43 = swift_allocObject();
  *(v0 + 344) = v43;
  *(v43 + 16) = sub_228085B34;
  *(v43 + 24) = v42;

  sub_2281324C4(v41, v43);
  v44 = *(v37 + 56);

  v44(v35, 1, 1, v38);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 104);
  v47 = sub_22813882C();
  v48 = __swift_project_value_buffer(v47, qword_2813C8A20);
  *(v0 + 352) = v48;
  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = sub_22806A300;
  v50 = *(v0 + 264);
  v51 = *(v0 + 208);
  v52 = *(v0 + 96);

  return sub_2280C5BB0(v50, v145, v33, v51, v46 + v45, v52, v48);
}

uint64_t sub_22806CC44()
{
  (*(*(v0 + 232) + 8))(*(v0 + 264), *(v0 + 224));
  v1 = *(v0 + 384);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 216);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = sub_228085B34;
  v8[4] = v4;
  swift_beginAccess();
  v9 = *(v3 + 24);
  *(v3 + 16) = sub_228085B40;
  *(v3 + 24) = v8;

  v10 = v1;

  swift_willThrow();
  sub_2281324D4(v7, v5, v3);

  sub_228084CF0(v7, type metadata accessor for SignpostToken);

  v11 = v1;
  v12 = sub_22813880C();
  v13 = sub_2281396DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_227FC3000, v12, v13, "Failed to check language for chunk: %@", v14, 0xCu);
    sub_2280883AC(v15, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v15, -1, -1);
    MEMORY[0x22AAB28A0](v14, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 296) + 1;
  if (v19 == v18)
  {
    v20 = *(v0 + 304);
    v21 = *(v20 + 16);
    v22 = v18 - v21;
    v23 = v18 >> 1;
    if (v23 >= v22)
    {
      if (v21)
      {
        v117 = v23;
        v54 = *(v0 + 160);
        v55 = *(v0 + 256);
        v57 = *(v0 + 224);
        v56 = *(v0 + 232);
        v58 = *(v0 + 168);
        v59 = *(v0 + 144);
        v142 = *(v0 + 152);
        v60 = v20 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        v125 = *(v0 + 304);
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v133 = v56[4];
        v133(v55, v58, v57);
        v61 = *(v59 + 48);
        v118 = v56[2];
        v118(v54, v55, v57);
        v123 = v60;
        sub_228088344(v60, v58, &qword_27D81ECD0, &qword_22813E1D8);
        v62 = v56[1];
        v63 = *(v58 + *(v59 + 48));
        v120 = v61;
        v121 = v54;
        *(v54 + v61) = v63;
        v138 = v62;
        v62(v58, v57);
        v64 = *(v125 + 16);
        v135 = (v142 + 56);
        v65 = (v142 + 48);
        v141 = (v56 + 1);
        v119 = (v56 + 3);

        v33 = 0;
        v66 = 0;
        v130 = v64;
        while (1)
        {
          if (v66 == v64)
          {
            v72 = 1;
            v66 = v64;
          }

          else
          {
            if (v66 >= *(v125 + 16))
            {
              goto LABEL_50;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v66, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v72 = 0;
            ++v66;
          }

          v73 = *(v0 + 136);
          v74 = *(v0 + 144);
          v75 = *(v0 + 128);
          v76 = *v135;
          (*v135)(v75, v72, 1, v74);
          sub_228085C84(v75, v73, &qword_27D81ECC8, &qword_22813E1D0);
          v77 = *v65;
          if ((*v65)(v73, 1, v74) == 1)
          {
            break;
          }

          v78 = *(v0 + 224);
          v79 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v133)(*(v0 + 248));
          if (v63 < v79)
          {
            (*v119)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v121 + v120) = v79;
            v63 = v79;
          }

          if (!v33)
          {
            v81 = *(v0 + 248);
            v80 = *(v0 + 256);
            v82 = *(v0 + 224);
            v138(v80, v82);
            v118(v80, v81, v82);
          }

          v67 = *(v0 + 248);
          v68 = *(v0 + 224);
          v69 = MEMORY[0x22AAAF600](v67, *(v0 + 256));
          v138(v67, v68);
          v70 = 1;
          if ((v69 & 1) == 0)
          {
            v70 = -1;
          }

          v71 = __OFADD__(v33, v70);
          v33 += v70;
          v64 = v130;
          if (v71)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        v33 = 0;
        v83 = 0;
        while (1)
        {
          if (v83 == v130)
          {
            v84 = 1;
            v83 = v130;
          }

          else
          {
            if (v83 >= *(v125 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v123 + *(*(v0 + 152) + 72) * v83, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v84 = 0;
            ++v83;
          }

          v85 = *(v0 + 144);
          v87 = *(v0 + 112);
          v86 = *(v0 + 120);
          v76(v87, v84, 1, v85);
          sub_228085C84(v87, v86, &qword_27D81ECC8, &qword_22813E1D0);
          if (v77(v86, 1, v85) == 1)
          {
            break;
          }

          v88 = *(v0 + 256);
          v89 = *(v0 + 240);
          v90 = *(v0 + 224);
          v133(v89, *(v0 + 120), v90);
          LOBYTE(v88) = MEMORY[0x22AAAF600](v89, v88);
          v138(v89, v90);
          if (v88)
          {
            v71 = __OFADD__(v33++, 1);
            if (v71)
            {
              __break(1u);
              break;
            }
          }
        }

        v91 = (v0 + 256);
        if (v117 >= v33)
        {
          v138(*(v0 + 256), *(v0 + 224));
          v133 = v118;
          v91 = (v0 + 160);
        }

        v93 = *(v0 + 264);
        v92 = *(v0 + 272);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 240);
        v97 = *(v0 + 216);
        v98 = *(v0 + 208);
        v126 = *(v0 + 200);
        v128 = *(v0 + 176);
        v131 = *(v0 + 168);
        v99 = *(v0 + 160);
        v136 = *(v0 + 136);
        v139 = *(v0 + 128);
        v100 = *(v0 + 112);
        v143 = *(v0 + 120);
        v133(*(v0 + 80), *v91, *(v0 + 224));
        sub_2280883AC(v99, &qword_27D81ECD0, &qword_22813E1D8);

        v101 = *(v0 + 8);
        goto LABEL_46;
      }

      v102 = *(v0 + 352);

      v103 = sub_22813880C();
      v104 = sub_2281396BC();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_227FC3000, v103, v104, "Candidate list of locales is empty, cannot determine majority locale.", v105, 2u);
        MEMORY[0x22AAB28A0](v105, -1, -1);
      }

      v106 = swift_allocObject();
      v140 = 23;
      *(v106 + 16) = 23;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v29 = sub_228088994;
      v30 = 650;
    }

    else
    {
      v24 = *(v0 + 352);

      v25 = sub_22813880C();
      v26 = sub_2281396BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_227FC3000, v25, v26, "A majority of the chunks from this request are unsupported.", v27, 2u);
        MEMORY[0x22AAB28A0](v27, -1, -1);
      }

      v28 = swift_allocObject();
      v140 = 17;
      *(v28 + 16) = 17;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      v29 = sub_228088998;
      v30 = 645;
    }

    v107 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v30, v29);
    sub_227FDB3CC();
    swift_allocError();
    v109 = *(v0 + 264);
    v108 = *(v0 + 272);
    v111 = *(v0 + 248);
    v110 = *(v0 + 256);
    v112 = *(v0 + 240);
    v114 = *(v0 + 208);
    v113 = *(v0 + 216);
    v115 = *(v0 + 200);
    v122 = *(v0 + 176);
    v124 = *(v0 + 168);
    v127 = *(v0 + 160);
    v129 = *(v0 + 136);
    v132 = *(v0 + 128);
    v134 = *(v0 + 120);
    v137 = *(v0 + 112);
    *v116 = v140;
    *(v116 + 8) = v107;
    swift_willThrow();

    v101 = *(v0 + 8);
LABEL_46:

    return v101();
  }

  *(v0 + 296) = v19;
  v31 = *(v0 + 88);
  v32 = v31 + 16 * v19;
  v141 = *(v32 + 32);
  *(v0 + 312) = v141;
  v33 = *(v32 + 40);
  *(v0 + 320) = v33;
  v34 = qword_2813C4950;

  if (v34 != -1)
  {
LABEL_52:
    swift_once();
    v31 = *(v0 + 88);
  }

  v35 = *(v0 + 208);
  v36 = *(v0 + 216);
  v38 = *(v0 + 184);
  v37 = *(v0 + 192);
  v39 = *(v0 + 96);
  v40 = type metadata accessor for Signpost(0);
  v41 = __swift_project_value_buffer(v40, qword_2813C8948);
  *(v0 + 328) = v41;
  sub_22808764C(v39, v0 + 16);
  v42 = swift_allocObject();
  *(v0 + 336) = v42;
  sub_227FD0F5C((v0 + 16), v42 + 16);
  *(v42 + 56) = v31;
  v43 = swift_allocObject();
  *(v0 + 344) = v43;
  *(v43 + 16) = sub_228085B34;
  *(v43 + 24) = v42;

  sub_2281324C4(v41, v43);
  v44 = *(v37 + 56);

  v44(v35, 1, 1, v38);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 104);
  v47 = sub_22813882C();
  v48 = __swift_project_value_buffer(v47, qword_2813C8A20);
  *(v0 + 352) = v48;
  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = sub_22806A300;
  v50 = *(v0 + 264);
  v51 = *(v0 + 208);
  v52 = *(v0 + 96);

  return sub_2280C5BB0(v50, v141, v33, v51, v46 + v45, v52, v48);
}