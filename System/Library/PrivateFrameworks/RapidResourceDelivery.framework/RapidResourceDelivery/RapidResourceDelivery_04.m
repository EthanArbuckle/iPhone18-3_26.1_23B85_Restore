uint64_t sub_227F176B4()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 40);
  v6 = (*(v0 + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v8 = type metadata accessor for PersistenceState();
  sub_227F246A0(v6 + v7 + *(v8 + 24), v1, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v6);
  v9 = (v5 + *(type metadata accessor for Manifest() + 32));
  v88 = *v9;
  v87 = *(v9 + 8);
  sub_227EC2180(v1 + *(v2 + 24), v3, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v1, v4, &qword_27D80E8F0, &unk_227F2F4B0);
  v10 = type metadata accessor for FileInfo(0);
  v11 = *(*(v10 - 8) + 48);
  LODWORD(v2) = v11(v4, 1, v10);
  sub_227EB8430(v4, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v2 == 1)
  {
    v12 = *(v0 + 184);
    v13 = sub_227F2B234();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    sub_227EC2180(*(v0 + 208) + *(*(v0 + 200) + 20), *(v0 + 184), &unk_27D80E3B0, &unk_227F2DB00);
  }

  v14 = *(v0 + 160);
  sub_227EC2180(*(v0 + 208), v14, &qword_27D80E8F0, &unk_227F2F4B0);
  v84 = v11;
  v85 = v10;
  v15 = v11(v14, 1, v10);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  if (v15 == 1)
  {
    sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
    v20 = *(v19 + 56);
    v20(v17, 1, 1, v18);
    v21 = *(v19 + 16);
  }

  else
  {
    v22 = *(v19 + 16);
    v22(v17, v16, v18);
    sub_227F1FE14(v16, type metadata accessor for FileInfo);
    v20 = *(v19 + 56);
    v20(v17, 0, 1, v18);
    v21 = v22;
  }

  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v0 + 88);
  v28 = *(v0 + 96);
  v21(v24, *(v0 + 24), v27);
  v20(v24, 0, 1, v27);
  v29 = *(v26 + 48);
  sub_227EC2180(v23, v25, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v24, v25 + v29, &qword_27D80E310, &unk_227F2D990);
  v30 = *(v28 + 48);
  if (v30(v25, 1, v27) == 1)
  {
    v31 = *(v0 + 144);
    v32 = *(v0 + 88);
    sub_227EB8430(*(v0 + 136), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v31, &qword_27D80E310, &unk_227F2D990);
    if (v30(v25 + v29, 1, v32) == 1)
    {
      sub_227EB8430(*(v0 + 120), &qword_27D80E310, &unk_227F2D990);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v33 = *(v0 + 88);
  sub_227EC2180(*(v0 + 120), *(v0 + 128), &qword_27D80E310, &unk_227F2D990);
  v34 = v30(v25 + v29, 1, v33);
  v36 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 128);
  if (v34 == 1)
  {
    v38 = *(v0 + 88);
    v39 = *(v0 + 96);
    sub_227EB8430(*(v0 + 136), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v35, &qword_27D80E310, &unk_227F2D990);
    (*(v39 + 8))(v37, v38);
LABEL_12:
    sub_227EB8430(*(v0 + 120), &qword_27D80E4F8, &qword_227F2DE80);
LABEL_13:
    v40 = *(v0 + 176);
LABEL_17:
    v49 = sub_227F2B234();
    (*(*(v49 - 8) + 56))(v40, 1, 1, v49);
    goto LABEL_18;
  }

  v81 = *(v0 + 120);
  v41 = *(v0 + 96);
  v42 = *(v0 + 104);
  v43 = *(v0 + 88);
  (*(v41 + 32))(v42, v25 + v29, v43);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v44 = sub_227F2B634();
  v45 = *(v41 + 8);
  v45(v42, v43);
  sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v35, &qword_27D80E310, &unk_227F2D990);
  v45(v37, v43);
  sub_227EB8430(v81, &qword_27D80E310, &unk_227F2D990);
  if ((v44 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v46 = *(v0 + 152);
  sub_227EC2180(*(v0 + 208), v46, &qword_27D80E8F0, &unk_227F2F4B0);
  v47 = v84(v46, 1, v85);
  v40 = *(v0 + 176);
  v48 = *(v0 + 152);
  if (v47 == 1)
  {
    sub_227EB8430(v48, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_17;
  }

  v80 = *(v0 + 152);
  sub_227EC2180(v48 + *(v85 + 36), *(v0 + 176), &unk_27D80E3B0, &unk_227F2DB00);
  sub_227F1FE14(v80, type metadata accessor for FileInfo);
LABEL_18:
  v51 = *(v0 + 216);
  v50 = *(v0 + 224);
  v52 = *(v0 + 208);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  v55 = *(v0 + 80);
  v86 = *(v0 + 72);
  v56 = *(v0 + 48);
  v57 = *(v0 + 56);
  v83 = *(v0 + 176);
  v58 = sub_227EE6188(*(v0 + 24));
  v82 = v59;
  (*(v57 + 56))(v55, 1, 1, v56);
  *v50 = 0;
  sub_227EC2180(v53, v50 + v51[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v54, v50 + v51[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v83, v50 + v51[7], &unk_27D80E3B0, &unk_227F2DB00);
  v60 = (v50 + v51[8]);
  *v60 = v58;
  v60[1] = v82;
  v61 = v50 + v51[9];
  *v61 = v88;
  v61[8] = v87;
  v62 = v50 + v51[10];
  *v62 = 0;
  v62[8] = 1;
  v63 = v50 + v51[11];
  *v63 = 0u;
  *(v63 + 1) = 0u;
  *(v63 + 4) = 1;
  sub_227EC2180(v55, v86, &qword_27D80E360, &unk_227F32A90);
  v64 = *(v57 + 48);
  v65 = v64(v86, 1, v56);
  v66 = *(v0 + 208);
  v68 = *(v0 + 184);
  v67 = *(v0 + 192);
  v69 = *(v0 + 176);
  v70 = *(v0 + 72);
  v71 = *(v0 + 80);
  v72 = *(v0 + 64);
  if (v65 == 1)
  {
    v89 = *(v0 + 48);
    sub_227F26898(v68, v67, 0, v72, 0.0);
    sub_227EB8430(v71, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v69, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v68, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v67, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v66, type metadata accessor for ResourceInfo);
    sub_227EC21E8(0, 0, 0, 0, 1);
    if (v64(v70, 1, v89) != 1)
    {
      sub_227EB8430(*(v0 + 72), &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(*(v0 + 80), &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v69, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v68, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v67, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v66, type metadata accessor for ResourceInfo);
    sub_227F1FDAC(v70, v72, type metadata accessor for Schedule);
  }

  v73 = *(v0 + 224);
  v74 = *(v0 + 232);
  sub_227F1FDAC(*(v0 + 64), v73 + *(*(v0 + 216) + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v73, v74, type metadata accessor for DownloadConfiguration);
  v75 = swift_task_alloc();
  *(v0 + 240) = v75;
  *v75 = v0;
  v75[1] = sub_227F180E8;
  v76 = *(v0 + 232);
  v78 = *(v0 + 16);
  v77 = *(v0 + 24);

  return DownloadManager.download(_:config:)(v77, v76);
}

uint64_t sub_227F180E8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {
    sub_227F1FE14(v2[29], type metadata accessor for DownloadConfiguration);

    return MEMORY[0x2822009F8](sub_227F18370, 0, 0);
  }

  else
  {
    v6 = v2[28];
    v7 = v2[26];
    v9 = v2[23];
    v8 = v2[24];
    v11 = v2[21];
    v10 = v2[22];
    v15 = v2[20];
    v16 = v2[19];
    v17 = v2[18];
    v18 = v2[17];
    v19 = v2[16];
    v20 = v2[15];
    v21 = v2[13];
    v22 = v2[10];
    v23 = v2[9];
    v12 = v2[8];

    sub_227F1FE14(v5, type metadata accessor for DownloadConfiguration);

    v13 = *(v4 + 8);

    return v13();
  }
}

uint64_t sub_227F18370()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[8];

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_227F184A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_227EC2180(a3, v24 - v10, &qword_27D80EB88, &qword_227F312D0);
  v12 = sub_227F2B854();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227EB8430(v11, &qword_27D80EB88, &qword_227F312D0);
  }

  else
  {
    sub_227F2B844();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227F2B7B4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227F2B6E4() + 32;

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

      sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);

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

  sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227F18754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F187F0, 0, 0);
}

uint64_t sub_227F187F0()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_227F18884;

  return sub_227EC42E8();
}

uint64_t sub_227F18884()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227F18980, 0, 0);
}

uint64_t sub_227F18980()
{
  v1 = v0[3];
  v2 = sub_227F2B304();
  v3 = sub_227F2B8C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227EB2000, v2, v3, "Eagerly fetching new manifest after restart.", v4, 2u);
    MEMORY[0x22AAAD240](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = sub_227F2B114();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_227F18AD4;
  v8 = v0[4];
  v9 = v0[2];

  return sub_227F18DB0(v8);
}

uint64_t sub_227F18AD4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[7] = v0;

  sub_227EB8430(v3, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227F18C48, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_227F18C48()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_227F2B304();
  v5 = sub_227F2B8E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_227EB2000, v4, v5, "Failed to eagerly fetch resources after restart: %@", v8, 0xCu);
    sub_227EB8430(v9, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v9, -1, -1);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_227F18DB0(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227F18E48;

  return sub_227F1B70C(a1);
}

uint64_t sub_227F18E48(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227F18F80, 0, 0);
  }
}

uint64_t sub_227F18F80()
{
  v1 = (v0[4] + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 24))(v2, v3) == 3 || (v4 = *(v0[2] + 32), !sub_227EF1234()))
  {
    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    v13[1] = sub_227F19174;
    v14 = v0[4];
    v15 = v0[2];

    return sub_227F1CA98();
  }

  else
  {
    if (qword_2813CDE90 != -1)
    {
      swift_once();
    }

    v5 = sub_227F2B334();
    __swift_project_value_buffer(v5, qword_2813CDE98);
    v6 = sub_227F2B304();
    v7 = sub_227F2B8D4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_227EB2000, v6, v7, "Existing manifest is good to use. Getting it back", v10, 2u);
      MEMORY[0x22AAAD240](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_227F19174(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_227F19308;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_227F192A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227F192A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_227F19308()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_227F19370(uint64_t a1)
{
  v118 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = &v100 - v7;
  v8 = sub_227F2AFF4();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v8);
  v112 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Configuration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v104 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v100 - v17;
  MEMORY[0x28223BE20](v16);
  v103 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v100 - v21;
  v23 = sub_227F2B114();
  v24 = *(v23 - 8);
  v120 = v23;
  v121 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v116 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v117 = &v100 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v115 = &v100 - v31;
  MEMORY[0x28223BE20](v30);
  v119 = &v100 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v100 - v38;
  v40 = sub_227F2B334();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v108 = v44;
  v109 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v100 - v45;
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v40, qword_2813CDE98);
  v123 = v46;
  v124 = v41;
  v48 = *(v41 + 16);
  v106 = v47;
  v107 = v41 + 16;
  v127 = v40;
  v105 = v48;
  (v48)(v46);
  v111 = v1;
  v49 = *(v1 + 32);
  v50 = *(v49 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
  sub_227F282D8(v37);
  v51 = *(v12 + 48);
  if (v51(v37, 1, v11) == 1)
  {
    v52 = (v49 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v49 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v52 + *(v53 + 28), v39, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v52);
    if (v51(v37, 1, v11) != 1)
    {
      sub_227EB8430(v37, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227F1FDAC(v37, v39, type metadata accessor for Configuration);
    (*(v12 + 56))(v39, 0, 1, v11);
  }

  v54 = v51(v39, 1, v11);
  sub_227EB8430(v39, &qword_27D80EB30, &qword_227F30448);
  if (v54 != 1)
  {
    goto LABEL_10;
  }

  sub_227EC2180(v118, v22, &qword_27D80E310, &unk_227F2D990);
  v55 = v120;
  v56 = v121;
  if ((*(v121 + 48))(v22, 1, v120) == 1)
  {
    sub_227EB8430(v22, &qword_27D80E310, &unk_227F2D990);
LABEL_10:
    v57 = v122;
    goto LABEL_14;
  }

  v118 = v49;
  v58 = v119;
  (*(v56 + 32))(v119, v22, v55);
  v59 = v115;
  (*(v56 + 16))(v115, v58, v55);
  v125 = 0x6E6F736A2E647272;
  v126 = 0xE800000000000000;
  v60 = v112;
  v61 = v113;
  v62 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x277CC91D8], v114);
  sub_227EB84D8();
  v63 = v117;
  sub_227F2B104();
  (*(v61 + 8))(v60, v62);
  v64 = v116;
  sub_227F2AFD4();
  v65 = v122;
  v66 = sub_227F2B124();
  if (v65)
  {

    v68 = *(v56 + 8);
    v68(v64, v55);
    v68(v63, v55);
    v68(v59, v55);
    v68(v119, v55);
    v57 = 0;
LABEL_14:
    sub_227EF17E0();
    if (v57)
    {
      v76 = v127;
      v78 = v123;
      v77 = v124;
    }

    else
    {
      v79 = v75;
      v78 = v123;
      v80 = sub_227F2B304();
      v76 = v127;
      v77 = v124;
      if (v79 > 1)
      {
        v83 = sub_227F2B8F4();
        if (os_log_type_enabled(v80, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_227EB2000, v80, v83, "Manifest was re-configured, restarting ResourceManager.", v84, 2u);
          MEMORY[0x22AAAD240](v84, -1, -1);
        }

        v85 = sub_227F2B854();
        v86 = v110;
        (*(*(v85 - 8) + 56))(v110, 1, 1, v85);
        v87 = v109;
        v105(v109, v106, v76);
        v88 = (*(v77 + 80) + 40) & ~*(v77 + 80);
        v89 = swift_allocObject();
        *(v89 + 2) = 0;
        *(v89 + 3) = 0;
        *(v89 + 4) = v111;
        (*(v77 + 32))(&v89[v88], v87, v76);

        sub_227F13F90(0, 0, v86, &unk_227F32AA8, v89);
      }

      else
      {
        v81 = sub_227F2B8D4();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_227EB2000, v80, v81, "Configuration unchanged.", v82, 2u);
          MEMORY[0x22AAAD240](v82, -1, -1);
        }
      }
    }

    return (*(v77 + 8))(v78, v76);
  }

  v69 = v66;
  v70 = v67;
  v71 = sub_227F2AE24();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_227F2AE14();
  sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration);
  v74 = v104;
  sub_227F2AE04();
  sub_227EC15A8(v69, v70);

  v91 = v55;
  v92 = *(v121 + 8);
  v92(v116, v91);
  v92(v117, v91);
  v92(v59, v91);
  v93 = v101;
  sub_227F1FDAC(v74, v101, type metadata accessor for Configuration);
  v94 = v103;
  sub_227F1FDAC(v93, v103, type metadata accessor for Configuration);
  v78 = v123;
  v95 = sub_227F2B304();
  v96 = sub_227F2B8F4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_227EB2000, v95, v96, "No config found. Adopting config in client-provided assets folder.", v97, 2u);
    v98 = v97;
    v94 = v103;
    MEMORY[0x22AAAD240](v98, -1, -1);
  }

  v99 = v102;
  sub_227F1A024(v94, v102);
  v76 = v127;
  v77 = v124;
  sub_227EB8430(v99, &qword_27D80EB28, &qword_227F30440);
  sub_227F1FE14(v94, type metadata accessor for Configuration);
  v92(v119, v120);
  return (*(v77 + 8))(v78, v76);
}

void sub_227F1A024(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v25 = a2;
  v6 = sub_227F2B334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = *(v2 + 32);
  v14 = sub_227EF4A78(a1);
  if (!v3)
  {
    if (v14 > 1u)
    {
      v24 = 0;
      if (qword_2813CDE90 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v6, qword_2813CDE98);
      v20 = sub_227F2B854();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v6);
      v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v22 = swift_allocObject();
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v22 + 4) = v4;
      (*(v7 + 32))(&v22[v21], &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

      sub_227F13F90(0, 0, v12, &unk_227F32AE0, v22);

      v23 = type metadata accessor for Manifest();
      (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
    }

    else
    {
      v15 = (v13 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
      os_unfair_lock_lock((v13 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
      v17 = (v13 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock(v17);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
      sub_227EF34BC(v17 + *(v18 + 28), v15 + v16, &v26, v25);
      os_unfair_lock_unlock(v17);
      os_unfair_lock_unlock(v15);
    }
  }
}

void sub_227F1A374(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(v1 + 32);
  v9 = (v8 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v8 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v11 = (v8 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v8 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v11 + *(v12 + 28), v9 + v10, &v16, v7);
  if (v2)
  {
    os_unfair_lock_unlock(v11);
    os_unfair_lock_unlock(v9);
  }

  else
  {
    os_unfair_lock_unlock(v11);
    os_unfair_lock_unlock(v9);
    v13 = type metadata accessor for Manifest();
    if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
    {
      sub_227EB8430(v7, &qword_27D80EB28, &qword_227F30440);
      sub_227EF9A28();
      swift_allocError();
      *v14 = xmmword_227F2CC00;
      swift_willThrow();
    }

    else
    {
      sub_227F1FDAC(v7, a1, type metadata accessor for Manifest);
    }
  }
}

uint64_t sub_227F1A564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a2;
  v152 = a3;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  v4 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v133 - v5;
  v141 = sub_227F2AFF4();
  v140 = *(v141 - 1);
  v6 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v138 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v133 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v145 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v133 - v17;
  MEMORY[0x28223BE20](v16);
  v154 = &v133 - v18;
  v159 = type metadata accessor for Configuration();
  v150 = *(v159 - 8);
  v19 = *(v150 + 64);
  v20 = MEMORY[0x28223BE20](v159);
  v136 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v137 = &v133 - v23;
  MEMORY[0x28223BE20](v22);
  v151 = &v133 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v133 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v133 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v156 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v133 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v133 - v40;
  v42 = sub_227F2B114();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v144 = &v133 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v147 = &v133 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v148 = &v133 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v158 = &v133 - v52;
  MEMORY[0x28223BE20](v51);
  v162 = &v133 - v53;
  v54 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(a1 + *(v54 + 32), v32, &qword_27D80E8F8, &qword_227F2F5E0);
  v55 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v55 - 8) + 48))(v32, 1, v55) == 1)
  {
    sub_227EB8430(v32, &qword_27D80E8F8, &qword_227F2F5E0);
    v56 = *(v43 + 56);
    v56(v39, 1, 1, v42);
    sub_227EC2180(a1, v28, &qword_27D80E8F0, &unk_227F2F4B0);
    v57 = type metadata accessor for FileInfo(0);
    if ((*(*(v57 - 8) + 48))(v28, 1, v57) == 1)
    {
      sub_227EB8430(v28, &qword_27D80E8F0, &unk_227F2F4B0);
      v58 = 1;
    }

    else
    {
      (*(v43 + 16))(v41, v28, v42);
      sub_227F1FE14(v28, type metadata accessor for FileInfo);
      v58 = 0;
    }

    v56(v41, v58, 1, v42);
    v60 = *(v43 + 48);
    if (v60(v39, 1, v42) != 1)
    {
      sub_227EB8430(v39, &qword_27D80E310, &unk_227F2D990);
    }

    v61 = v60(v41, 1, v42);
  }

  else
  {
    (*(v43 + 16))(v39, v32, v42);
    sub_227F1FE14(v32, type metadata accessor for ResourceInfo.DownloadState);
    v59 = *(v43 + 56);
    v59(v39, 0, 1, v42);
    (*(v43 + 32))(v41, v39, v42);
    v59(v41, 0, 1, v42);
    v60 = *(v43 + 48);
    v61 = v60(v41, 1, v42);
  }

  if (v61 == 1)
  {
    sub_227EB8430(v41, &qword_27D80E310, &unk_227F2D990);
    sub_227EF9A28();
    swift_allocError();
    *v62 = 0;
    v62[1] = 0;
    return swift_willThrow();
  }

  v64 = v43 + 32;
  v65 = *(v43 + 32);
  v65(v162, v41, v42);
  v66 = v156;
  sub_227EC2180(v157, v156, &qword_27D80E310, &unk_227F2D990);
  if (v60(v66, 1, v42) == 1)
  {
    sub_227EB8430(v66, &qword_27D80E310, &unk_227F2D990);
    return (v65)(v152, v162, v42);
  }

  v67 = v158;
  v65(v158, v66, v42);
  v68 = v42;
  v69 = v149;
  v70 = *(v149 + 16);
  v71 = v154;
  sub_227F282D8(v154);
  v72 = v150;
  v156 = *(v150 + 48);
  v157 = v150 + 48;
  v73 = (v156)(v71, 1, v159);
  v135 = v68;
  if (v73 != 1)
  {
    v133 = v43 + 32;
    v141 = v65;
    v81 = v151;
    sub_227F1FDAC(v71, v151, type metadata accessor for Configuration);
    v82 = v153;
    goto LABEL_17;
  }

  (*(v43 + 16))(v148, v67, v68);
  v160 = 0x6E6F736A2E647272;
  v161 = 0xE800000000000000;
  v74 = v140;
  v75 = v139;
  v76 = v141;
  (*(v140 + 104))(v139, *MEMORY[0x277CC91D8], v141);
  sub_227EB84D8();
  sub_227F2B104();
  (*(v74 + 8))(v75, v76);
  v77 = v144;
  sub_227F2AFD4();
  v78 = v155;
  v79 = sub_227F2B124();
  if (!v78)
  {
    v109 = v79;
    v110 = v80;
    v141 = v65;
    v134 = v43;
    v111 = sub_227F2AE24();
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    swift_allocObject();
    sub_227F2AE14();
    sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration);
    v114 = v137;
    v115 = v159;
    sub_227F2AE04();
    v155 = 0;
    sub_227EC15A8(v109, v110);

    v43 = v134;
    v129 = *(v134 + 8);
    v130 = v135;
    v129(v144, v135);
    v129(v147, v130);
    v129(v148, v130);
    v81 = v151;
    sub_227F1FDAC(v114, v151, type metadata accessor for Configuration);
    v131 = v154;
    v132 = (v156)(v154, 1, v115);
    v133 = v64;
    if (v132 != 1)
    {
      sub_227EB8430(v131, &qword_27D80EB30, &qword_227F30448);
    }

    v82 = v153;
    v72 = v150;
LABEL_17:
    sub_227F246A0(v81, v82, type metadata accessor for Configuration);
    v83 = *(v72 + 56);
    v84 = v159;
    v83(v82, 0, 1, v159);
    v85 = *(v69 + 32);
    v86 = *(v85 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
    v87 = v142;
    sub_227F282D8(v142);
    v88 = v84;
    v89 = v156;
    v90 = (v156)(v87, 1, v84);
    v134 = v43;
    if (v90 == 1)
    {
      v91 = (v85 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
      os_unfair_lock_lock((v85 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
      v93 = v145;
      sub_227EC2180(v91 + *(v92 + 28), v145, &qword_27D80EB30, &qword_227F30448);
      os_unfair_lock_unlock(v91);
      v94 = v93;
      if (v89(v87, 1, v88) != 1)
      {
        sub_227EB8430(v87, &qword_27D80EB30, &qword_227F30448);
      }
    }

    else
    {
      v94 = v145;
      sub_227F1FDAC(v87, v145, type metadata accessor for Configuration);
      v83(v94, 0, 1, v88);
    }

    v95 = *(v143 + 48);
    v96 = v153;
    v97 = v146;
    sub_227EC2180(v153, v146, &qword_27D80EB30, &qword_227F30448);
    sub_227EC2180(v94, v97 + v95, &qword_27D80EB30, &qword_227F30448);
    v98 = v156;
    if ((v156)(v97, 1, v88) == 1)
    {
      sub_227EB8430(v94, &qword_27D80EB30, &qword_227F30448);
      v99 = v146;
      sub_227EB8430(v96, &qword_27D80EB30, &qword_227F30448);
      if (v98(v99 + v95, 1, v88) == 1)
      {
        sub_227EB8430(v99, &qword_27D80EB30, &qword_227F30448);
        v100 = v134;
LABEL_24:
        sub_227F1FE14(v151, type metadata accessor for Configuration);
        v101 = v135;
        (*(v100 + 8))(v158, v135);
        return (v141)(v152, v162, v101);
      }
    }

    else
    {
      v102 = v138;
      sub_227EC2180(v97, v138, &qword_27D80EB30, &qword_227F30448);
      if (v98(v97 + v95, 1, v88) != 1)
      {
        v119 = v136;
        sub_227F1FDAC(v97 + v95, v136, type metadata accessor for Configuration);
        if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
        {
          v120 = *(v88 + 20);
          v121 = MEMORY[0x22AAAC210]();
          v123 = v122;
          v124 = *(v88 + 20);
          v125 = MEMORY[0x22AAAC210]();
          v127 = v126;
          v128 = sub_227ED43A4(v121, v123, v125, v126);
          sub_227EC15A8(v125, v127);
          sub_227EC15A8(v121, v123);
          sub_227F1FE14(v119, type metadata accessor for Configuration);
          sub_227EB8430(v145, &qword_27D80EB30, &qword_227F30448);
          sub_227EB8430(v153, &qword_27D80EB30, &qword_227F30448);
          sub_227F1FE14(v102, type metadata accessor for Configuration);
          sub_227EB8430(v97, &qword_27D80EB30, &qword_227F30448);
          v100 = v134;
          if (v128)
          {
            goto LABEL_24;
          }

LABEL_29:
          sub_227EF9A28();
          swift_allocError();
          *v106 = xmmword_227F32A00;
          swift_willThrow();
          sub_227F1FE14(v151, type metadata accessor for Configuration);
          v107 = *(v100 + 8);
          v108 = v135;
          v107(v158, v135);
          return (v107)(v162, v108);
        }

        sub_227F1FE14(v119, type metadata accessor for Configuration);
        sub_227EB8430(v145, &qword_27D80EB30, &qword_227F30448);
        sub_227EB8430(v153, &qword_27D80EB30, &qword_227F30448);
        sub_227F1FE14(v102, type metadata accessor for Configuration);
        v105 = v97;
        v103 = &qword_27D80EB30;
        v104 = &qword_227F30448;
LABEL_28:
        sub_227EB8430(v105, v103, v104);
        v100 = v134;
        goto LABEL_29;
      }

      sub_227EB8430(v145, &qword_27D80EB30, &qword_227F30448);
      v99 = v146;
      sub_227EB8430(v153, &qword_27D80EB30, &qword_227F30448);
      sub_227F1FE14(v102, type metadata accessor for Configuration);
    }

    v103 = &qword_27D80EB50;
    v104 = &qword_227F30470;
    v105 = v99;
    goto LABEL_28;
  }

  v116 = *(v43 + 8);
  v117 = v135;
  v116(v77, v135);
  v116(v147, v117);
  v116(v148, v117);
  v116(v158, v117);
  v116(v162, v117);
  v118 = v154;
  result = (v156)(v154, 1, v159);
  if (result != 1)
  {
    return sub_227EB8430(v118, &qword_27D80EB30, &qword_227F30448);
  }

  return result;
}

uint64_t sub_227F1B70C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Schedule();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v12 = type metadata accessor for DownloadConfiguration();
  v2[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v14 = sub_227F2B114();
  v2[24] = v14;
  v15 = *(v14 - 8);
  v2[25] = v15;
  v16 = *(v15 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v17 = type metadata accessor for ResourceInfo(0);
  v2[28] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1BA1C, 0, 0);
}

uint64_t sub_227F1BA1C()
{
  v1 = *(v0 + 24);
  sub_227F19370(*(v0 + 16));
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 16);
  v5 = (*(*(v0 + 24) + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = type metadata accessor for PersistenceState();
  sub_227F246A0(v5 + v6 + *(v7 + 20), v2, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v5);
  sub_227F1A564(v2, v4, v3);
  v8 = *(v0 + 24);
  v9 = *(v8 + 16);
  v95 = *(v8 + 24);
  v10 = *(v9 + 16);
  v11 = sub_227F2B644();
  [v10 doubleForKey_];
  v13 = v12;

  if (v13 <= 0.0)
  {
    v13 = *(v9 + 40);
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 152);
  v17 = *(v0 + 160);
  v18 = *(v0 + 128);
  sub_227EC2180(v15, v17, &qword_27D80E8F0, &unk_227F2F4B0);
  v19 = type metadata accessor for FileInfo(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) == 1)
  {
    v13 = 0.0;
  }

  sub_227EB8430(v17, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EC2180(v15 + *(v14 + 24), v18, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v15, v16, &qword_27D80E8F0, &unk_227F2F4B0);
  v21 = v20(v16, 1, v19);
  sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v21 == 1)
  {
    v22 = *(v0 + 120);
    v23 = sub_227F2B234();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  }

  else
  {
    sub_227EC2180(*(v0 + 232) + *(*(v0 + 224) + 20), *(v0 + 120), &unk_27D80E3B0, &unk_227F2DB00);
  }

  v24 = *(v0 + 144);
  sub_227EC2180(*(v0 + 232), v24, &qword_27D80E8F0, &unk_227F2F4B0);
  v92 = v20;
  v94 = v19;
  v25 = v20(v24, 1, v19);
  v27 = *(v0 + 192);
  v26 = *(v0 + 200);
  v28 = *(v0 + 144);
  v29 = *(v0 + 104);
  if (v25 == 1)
  {
    sub_227EB8430(*(v0 + 144), &qword_27D80E8F0, &unk_227F2F4B0);
    v30 = *(v26 + 56);
    v30(v29, 1, 1, v27);
    v31 = *(v26 + 16);
  }

  else
  {
    v32 = *(v26 + 16);
    v32(*(v0 + 104), *(v0 + 144), *(v0 + 192));
    sub_227F1FE14(v28, type metadata accessor for FileInfo);
    v30 = *(v26 + 56);
    v30(v29, 0, 1, v27);
    v31 = v32;
  }

  v34 = *(v0 + 192);
  v33 = *(v0 + 200);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v38 = *(v0 + 72);
  v37 = *(v0 + 80);
  v31(v36, *(v0 + 216), v34);
  v30(v36, 0, 1, v34);
  v39 = *(v38 + 48);
  sub_227EC2180(v35, v37, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v36, v37 + v39, &qword_27D80E310, &unk_227F2D990);
  v40 = *(v33 + 48);
  v41 = v40(v37, 1, v34);
  v42 = *(v0 + 192);
  if (v41 == 1)
  {
    v43 = *(v0 + 104);
    sub_227EB8430(*(v0 + 96), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v43, &qword_27D80E310, &unk_227F2D990);
    if (v40(v37 + v39, 1, v42) == 1)
    {
      sub_227EB8430(*(v0 + 80), &qword_27D80E310, &unk_227F2D990);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_227EC2180(*(v0 + 80), *(v0 + 88), &qword_27D80E310, &unk_227F2D990);
  if (v40(v37 + v39, 1, v42) == 1)
  {
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = *(v0 + 104);
    v47 = *(v0 + 88);
    sub_227EB8430(*(v0 + 96), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v46, &qword_27D80E310, &unk_227F2D990);
    (*(v45 + 8))(v47, v44);
LABEL_16:
    sub_227EB8430(*(v0 + 80), &qword_27D80E4F8, &qword_227F2DE80);
LABEL_17:
    v48 = *(v0 + 112);
LABEL_21:
    v59 = sub_227F2B234();
    (*(*(v59 - 8) + 56))(v48, 1, 1, v59);
    goto LABEL_22;
  }

  v50 = *(v0 + 200);
  v49 = *(v0 + 208);
  v51 = *(v0 + 192);
  v52 = *(v0 + 96);
  v53 = *(v0 + 88);
  v89 = *(v0 + 104);
  v90 = *(v0 + 80);
  (*(v50 + 32))(v49, v37 + v39, v51);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v54 = sub_227F2B634();
  v55 = *(v50 + 8);
  v55(v49, v51);
  sub_227EB8430(v52, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v89, &qword_27D80E310, &unk_227F2D990);
  v55(v53, v51);
  sub_227EB8430(v90, &qword_27D80E310, &unk_227F2D990);
  if ((v54 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v56 = *(v0 + 136);
  sub_227EC2180(*(v0 + 232), v56, &qword_27D80E8F0, &unk_227F2F4B0);
  v57 = v92(v56, 1, v94);
  v58 = *(v0 + 136);
  v48 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_227EB8430(v58, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_21;
  }

  v88 = *(v0 + 136);
  sub_227EC2180(v58 + *(v94 + 36), *(v0 + 112), &unk_27D80E3B0, &unk_227F2DB00);
  sub_227F1FE14(v88, type metadata accessor for FileInfo);
LABEL_22:
  v60 = *(v0 + 232);
  v62 = *(v0 + 168);
  v61 = *(v0 + 176);
  v64 = *(v0 + 120);
  v63 = *(v0 + 128);
  v65 = *(v0 + 64);
  v96 = *(v0 + 56);
  v66 = *(v0 + 32);
  v67 = *(v0 + 40);
  v93 = *(v0 + 112);
  v68 = sub_227EE6188(*(v0 + 216));
  v91 = v69;
  (*(v67 + 56))(v65, 1, 1, v66);
  *v61 = v13;
  sub_227EC2180(v63, v61 + v62[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v64, v61 + v62[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v93, v61 + v62[7], &unk_27D80E3B0, &unk_227F2DB00);
  v70 = (v61 + v62[8]);
  *v70 = v68;
  v70[1] = v91;
  v71 = v61 + v62[9];
  *v71 = 1024;
  v71[8] = 0;
  v72 = v61 + v62[10];
  *v72 = 0;
  v72[8] = 1;
  v73 = v61 + v62[11];
  *v73 = 0u;
  *(v73 + 1) = 0u;
  *(v73 + 4) = 1;
  sub_227EC2180(v65, v96, &qword_27D80E360, &unk_227F32A90);
  v74 = *(v67 + 48);
  v75 = v74(v96, 1, v66);
  v77 = *(v0 + 120);
  v76 = *(v0 + 128);
  v78 = *(v0 + 112);
  v79 = *(v0 + 56);
  v80 = *(v0 + 64);
  v81 = *(v0 + 48);
  if (v75 == 1)
  {
    v97 = *(v0 + 32);
    sub_227F26898(v77, v76, 0, v81, v13);
    sub_227EB8430(v80, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v78, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v77, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v76, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(0, 0, 0, 0, 1);
    if (v74(v79, 1, v97) != 1)
    {
      sub_227EB8430(*(v0 + 56), &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(*(v0 + 64), &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v78, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v77, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v76, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FDAC(v79, v81, type metadata accessor for Schedule);
  }

  v82 = *(v0 + 176);
  v83 = *(v0 + 184);
  sub_227F1FDAC(*(v0 + 48), v82 + *(*(v0 + 168) + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v82, v83, type metadata accessor for DownloadConfiguration);
  v84 = swift_task_alloc();
  *(v0 + 240) = v84;
  *v84 = v0;
  v84[1] = sub_227F1C60C;
  v85 = *(v0 + 216);
  v86 = *(v0 + 184);

  return DownloadManager.download(_:config:)(v85, v86);
}

uint64_t sub_227F1C60C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[31] = v1;

  v7 = v4[23];
  if (v1)
  {
    sub_227F1FE14(v7, type metadata accessor for DownloadConfiguration);
    v8 = sub_227F1C90C;
  }

  else
  {
    v4[32] = a1;
    sub_227F1FE14(v7, type metadata accessor for DownloadConfiguration);
    v8 = sub_227F1C77C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227F1C77C()
{
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v13 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v9 = v0[10];
  v19 = v0[8];
  v20 = v0[7];
  v21 = v0[6];
  (*(v0[25] + 8))(v0[27], v0[24]);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);

  v10 = v0[1];
  v11 = v0[32];

  return v10(v11);
}

uint64_t sub_227F1C90C()
{
  (*(v0[25] + 8))(v0[27], v0[24]);
  v22 = v0[31];
  sub_227F1FE14(v0[29], type metadata accessor for ResourceInfo);
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[8];
  v20 = v0[7];
  v21 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227F1CA98()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for ResourceInfo(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DownloadOutcome();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DownloadResponse() - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v1[8] = v8;
  v9 = swift_task_alloc();
  v1[9] = v9;
  *v9 = v1;
  v9[1] = sub_227F1CC04;

  return DownloadTask.wait()(v8);
}

uint64_t sub_227F1CC04()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_227F1CFE4;
  }

  else
  {
    v3 = sub_227F1CD18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F1CD18()
{
  v1 = v0[6];
  sub_227F246A0(v0[8], v0[7], type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[7];
      v4 = v0[8];
      v6 = v0[4];
      v5 = v0[5];
      v7 = v0[3];
      v8 = (*(v0[2] + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
      os_unfair_lock_lock(v8);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
      v10 = type metadata accessor for PersistenceState();
      sub_227F246A0(v8 + v9 + *(v10 + 24), v5, type metadata accessor for ResourceInfo);
      os_unfair_lock_unlock(v8);
      sub_227F1FE14(v4, type metadata accessor for DownloadResponse);
      sub_227EC2180(v5 + *(v6 + 32), v7, &qword_27D80E8F8, &qword_227F2F5E0);
      sub_227F1FE14(v5, type metadata accessor for ResourceInfo);
      v11 = type metadata accessor for ResourceInfo.DownloadState(0);
      v12 = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
      sub_227EB8430(v7, &qword_27D80E8F8, &qword_227F2F5E0);
      sub_227F1FE14(v3, type metadata accessor for DownloadOutcome);
    }

    else
    {
      sub_227F1FE14(v0[8], type metadata accessor for DownloadResponse);
      v12 = 0;
    }

    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[5];
    v27 = v0[3];

    v22 = v0[1];
    v23 = v12;
  }

  else
  {
    v13 = v0[7];
    v14 = v0[8];
    v15 = *v13;
    v16 = *(v13 + 32);
    swift_willThrow();
    v17 = v15;
    sub_227F1FE14(v14, type metadata accessor for DownloadResponse);

    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[5];
    v21 = v0[3];

    v22 = v0[1];
    v23 = 0;
  }

  return v22(v23);
}

uint64_t sub_227F1CFE4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[3];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_227F1D074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Schedule();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = sub_227F2B114();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v3[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v15 = type metadata accessor for DownloadConfiguration();
  v3[23] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1D3C0, 0, 0);
}

uint64_t sub_227F1D3C0()
{
  v1 = v0[33];
  v2 = v0[26];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  v6 = v0[3];
  v133 = type metadata accessor for Manifest();
  v7 = *(v4 + 16);
  v142 = v6;
  v143 = *(v133 + 24);
  v7(v1, v6 + v143, v3);
  v8 = *(v4 + 56);
  v8(v1, 0, 1, v3);
  v138 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v5 + *(v138 + 32), v2, &qword_27D80E8F8, &qword_227F2F5E0);
  v9 = type metadata accessor for ResourceInfo.DownloadState(0);
  v124 = v8;
  if ((*(*(v9 - 8) + 48))(v2, 1, v9) == 1)
  {
    v10 = v0[31];
    v11 = v0[16];
    v12 = v0[10];
    v13 = v0[2];
    sub_227EB8430(v0[26], &qword_27D80E8F8, &qword_227F2F5E0);
    v8(v10, 1, 1, v12);
    sub_227EC2180(v13, v11, &qword_27D80E8F0, &unk_227F2F4B0);
    v14 = type metadata accessor for FileInfo(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
    {
      sub_227EB8430(v0[16], &qword_27D80E8F0, &unk_227F2F4B0);
      v15 = 1;
    }

    else
    {
      v21 = v0[16];
      v7(v0[32], v21, v0[10]);
      sub_227F1FE14(v21, type metadata accessor for FileInfo);
      v15 = 0;
    }

    v22 = v0[31];
    v23 = v0[10];
    v24 = v0[11];
    v8(v0[32], v15, 1, v23);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_227EB8430(v0[31], &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v16 = v0[31];
    v17 = v0[32];
    v18 = v0[26];
    v20 = v0[10];
    v19 = v0[11];
    v7(v16, v18, v20);
    sub_227F1FE14(v18, type metadata accessor for ResourceInfo.DownloadState);
    v8(v16, 0, 1, v20);
    (*(v19 + 32))(v17, v16, v20);
    v8(v17, 0, 1, v20);
  }

  v25 = v0[32];
  v26 = v0[14];
  v27 = v0[10];
  v28 = v0[11];
  v123 = v0[13];
  v29 = *(v123 + 48);
  sub_227EC2180(v0[33], v26, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v25, v26 + v29, &qword_27D80E310, &unk_227F2D990);
  v30 = *(v28 + 48);
  v125 = v7;
  v136 = v30;
  if (v30(v26, 1, v27) == 1)
  {
    v31 = v0[33];
    v32 = v0[10];
    sub_227EB8430(v0[32], &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v31, &qword_27D80E310, &unk_227F2D990);
    if (v30(v26 + v29, 1, v32) == 1)
    {
      sub_227EB8430(v0[14], &qword_27D80E310, &unk_227F2D990);
      v33 = v138;
      goto LABEL_13;
    }

    goto LABEL_42;
  }

  v34 = v0[10];
  sub_227EC2180(v0[14], v0[27], &qword_27D80E310, &unk_227F2D990);
  v35 = v30(v26 + v29, 1, v34);
  v36 = v0[32];
  v129 = v0[33];
  v37 = v0[27];
  if (v35 == 1)
  {
    v111 = v0[10];
    v112 = v0[11];
    sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v129, &qword_27D80E310, &unk_227F2D990);
    (*(v112 + 8))(v37, v111);
LABEL_42:
    result = sub_227EB8430(v0[14], &qword_27D80E4F8, &qword_227F2DE80);
    goto LABEL_43;
  }

  v128 = v0[14];
  v38 = v0[11];
  v39 = v0[12];
  v40 = v0[10];
  (*(v38 + 32))(v39, v26 + v29, v40);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v41 = sub_227F2B634();
  v42 = *(v38 + 8);
  v42(v39, v40);
  sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v129, &qword_27D80E310, &unk_227F2D990);
  v42(v37, v40);
  result = sub_227EB8430(v128, &qword_27D80E310, &unk_227F2D990);
  v33 = v138;
  if ((v41 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    return result;
  }

LABEL_13:
  v44 = v0[19];
  v45 = v0[2];
  v122 = *(v0[4] + 24);
  v46 = v0[3] + *(v133 + 32);
  v114 = *v46;
  v113 = *(v46 + 8);
  v47 = v33[10];
  v48 = v45 + v33[9];
  v116 = *v48;
  v115 = *(v48 + 8);
  v49 = *(v45 + v47);
  v50 = *(v45 + v47 + 8);
  v51 = *(v45 + v47 + 16);
  v52 = *(v45 + v47 + 24);
  v53 = *(v45 + v47 + 32);
  sub_227EC2180(v45 + v33[6], v0[22], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v45, v44, &qword_27D80E8F0, &unk_227F2F4B0);
  v54 = type metadata accessor for FileInfo(0);
  v130 = *(*(v54 - 8) + 48);
  v134 = v54;
  LODWORD(v45) = v130(v44, 1);
  v119 = v51;
  v117 = v53;
  sub_227EC1BF4(v49, v50, v51, v52, v53);
  sub_227EB8430(v44, &qword_27D80E8F0, &unk_227F2F4B0);
  v55 = v0[21];
  v118 = v52;
  if (v45 == 1)
  {
    v56 = sub_227F2B234();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  }

  else
  {
    sub_227EC2180(v0[2] + *(v138 + 20), v55, &unk_27D80E3B0, &unk_227F2DB00);
  }

  v57 = v0[18];
  sub_227EC2180(v0[2], v57, &qword_27D80E8F0, &unk_227F2F4B0);
  v58 = v142;
  v120 = v50;
  v121 = v49;
  if ((v130)(v57, 1, v134) == 1)
  {
    sub_227EB8430(v0[18], &qword_27D80E8F0, &unk_227F2F4B0);
    v59 = 1;
    v60 = v125;
  }

  else
  {
    v61 = v0[18];
    v60 = v125;
    v125(v0[30], v61, v0[10]);
    sub_227F1FE14(v61, type metadata accessor for FileInfo);
    v59 = 0;
  }

  v63 = v0[29];
  v62 = v0[30];
  v64 = v0[15];
  v65 = v0[10];
  v124(v62, v59, 1, v65);
  v60(v63, v142 + v143, v65);
  v124(v63, 0, 1, v65);
  v66 = *(v123 + 48);
  sub_227EC2180(v62, v64, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v63, v64 + v66, &qword_27D80E310, &unk_227F2D990);
  if (v136(v64, 1, v65) != 1)
  {
    v69 = v0[10];
    sub_227EC2180(v0[15], v0[28], &qword_27D80E310, &unk_227F2D990);
    v70 = v136(v64 + v66, 1, v69);
    v72 = v0[29];
    v71 = v0[30];
    v73 = v0[28];
    if (v70 != 1)
    {
      v78 = v0[15];
      v80 = v0[11];
      v79 = v0[12];
      v81 = v0[10];
      (*(v80 + 32))(v79, v64 + v66, v81);
      sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
      v139 = sub_227F2B634();
      v82 = *(v80 + 8);
      v82(v79, v81);
      sub_227EB8430(v72, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v71, &qword_27D80E310, &unk_227F2D990);
      v82(v73, v81);
      v58 = v142;
      sub_227EB8430(v78, &qword_27D80E310, &unk_227F2D990);
      if (v139)
      {
        goto LABEL_27;
      }

LABEL_25:
      v76 = v58;
      v77 = v0[20];
      goto LABEL_29;
    }

    v74 = v0[10];
    v75 = v0[11];
    sub_227EB8430(v0[29], &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v71, &qword_27D80E310, &unk_227F2D990);
    (*(v75 + 8))(v73, v74);
LABEL_24:
    sub_227EB8430(v0[15], &qword_27D80E4F8, &qword_227F2DE80);
    goto LABEL_25;
  }

  v67 = v0[30];
  v68 = v0[10];
  sub_227EB8430(v0[29], &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v67, &qword_27D80E310, &unk_227F2D990);
  if (v136(v64 + v66, 1, v68) != 1)
  {
    goto LABEL_24;
  }

  sub_227EB8430(v0[15], &qword_27D80E310, &unk_227F2D990);
LABEL_27:
  v83 = v0[17];
  sub_227EC2180(v0[2], v83, &qword_27D80E8F0, &unk_227F2F4B0);
  v84 = (v130)(v83, 1, v134);
  v77 = v0[20];
  v85 = v0[17];
  v76 = v58;
  if (v84 != 1)
  {
    v110 = v0[17];
    sub_227EC2180(v85 + *(v134 + 36), v0[20], &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v110, type metadata accessor for FileInfo);
    goto LABEL_30;
  }

  sub_227EB8430(v85, &qword_27D80E8F0, &unk_227F2F4B0);
LABEL_29:
  v86 = sub_227F2B234();
  (*(*(v86 - 8) + 56))(v77, 1, 1, v86);
LABEL_30:
  v88 = v0[23];
  v87 = v0[24];
  v90 = v0[21];
  v89 = v0[22];
  v91 = v0[9];
  v131 = v0[20];
  v140 = v0[8];
  v93 = v0[5];
  v92 = v0[6];
  v94 = v0[2];
  v95 = sub_227EE6188((v76 + v143));
  v97 = v96;
  (*(v92 + 56))(v91, 1, 1, v93);
  *v87 = 0;
  sub_227EC2180(v89, v87 + v88[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v90, v87 + v88[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v131, v87 + v88[7], &unk_27D80E3B0, &unk_227F2DB00);
  v98 = (v87 + v88[8]);
  *v98 = v95;
  v98[1] = v97;
  v99 = v87 + v88[9];
  *v99 = v114;
  v99[8] = v113;
  v100 = v87 + v88[10];
  *v100 = v116;
  v100[8] = v115;
  v101 = (v87 + v88[11]);
  *v101 = v121;
  v101[1] = v120;
  v101[2] = v119;
  v101[3] = v118;
  v101[4] = v117;
  sub_227EC2180(v91, v140, &qword_27D80E360, &unk_227F32A90);
  v127 = *(v92 + 48);
  v102 = v127(v140, 1, v93);
  v103 = v0[21];
  v135 = v0[20];
  v137 = v0[22];
  v104 = v0[9];
  v141 = v0[8];
  v132 = v0[7];
  if (v102 == 1)
  {
    v126 = v0[5];
    if (v115)
    {
      v105 = 0;
    }

    else
    {
      v105 = v116;
    }

    sub_227EC1BF4(v121, v120, v119, v118, v117);
    sub_227F26898(v103, v137, v105, v132, 0.0);
    sub_227EB8430(v104, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v135, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v103, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v137, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(v121, v120, v119, v118, v117);
    if (v127(v141, 1, v126) != 1)
    {
      sub_227EB8430(v0[8], &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(v104, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v135, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v103, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v137, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FDAC(v141, v132, type metadata accessor for Schedule);
  }

  v106 = v0[24];
  v107 = v0[25];
  sub_227F1FDAC(v0[7], v106 + *(v0[23] + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v106, v107, type metadata accessor for DownloadConfiguration);
  v108 = swift_task_alloc();
  v0[34] = v108;
  *v108 = v0;
  v108[1] = sub_227F1E338;
  v109 = v0[25];

  return DownloadManager.download(_:config:)(v142 + v143, v109);
}

uint64_t sub_227F1E338(uint64_t a1)
{
  v4 = *(*v2 + 272);
  v5 = *v2;
  v5[35] = v1;

  if (v1)
  {
    sub_227F1FE14(v5[25], type metadata accessor for DownloadConfiguration);

    return MEMORY[0x2822009F8](sub_227F1E5F0, 0, 0);
  }

  else
  {
    v7 = v5[32];
    v6 = v5[33];
    v30 = a1;
    v9 = v5[30];
    v8 = v5[31];
    v11 = v5[28];
    v10 = v5[29];
    v12 = v5[27];
    v16 = v5[26];
    v17 = v5[24];
    v18 = v5[22];
    v19 = v5[21];
    v20 = v5[20];
    v21 = v5[19];
    v22 = v5[18];
    v23 = v5[17];
    v24 = v5[16];
    v25 = v5[15];
    v26 = v5[14];
    v27 = v5[12];
    v28 = v5[9];
    v29 = v5[8];
    v13 = v5[7];
    sub_227F1FE14(v5[25], type metadata accessor for DownloadConfiguration);

    v14 = v5[1];

    return v14(v30);
  }
}

uint64_t sub_227F1E5F0()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v10 = v0[25];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[12];
  v24 = v0[9];
  v25 = v0[8];
  v26 = v0[7];

  v11 = v0[1];
  v12 = v0[35];

  return v11();
}

uint64_t sub_227F1E770(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for FileInfo(0);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for Manifest();
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for ResourceInfo(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v10 = sub_227F2B334();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1E92C, 0, 0);
}

uint64_t sub_227F1E92C()
{
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, qword_2813CDE98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_227F2B304();
  v6 = sub_227F2B8D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_227EB2000, v5, v6, "Fetching updates", v7, 2u);
    MEMORY[0x22AAAD240](v7, -1, -1);
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 24);

  v11 = *(v10 + 32);
  v12 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  v13 = (v11 + v12);
  os_unfair_lock_lock((v11 + v12));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  *(v0 + 184) = v14;
  v15 = *(type metadata accessor for PersistenceState() + 24);
  *(v0 + 188) = v15;
  sub_227F246A0(v13 + v14 + v15, v8, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v13);
  sub_227F1A374(v9);
  if (*(*(v0 + 72) + 16) == 1)
  {
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_227F1ECE0;
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 24);

    return sub_227F1D074(v17, v18);
  }

  else
  {
    v21 = *(v0 + 112);
    v22 = sub_227F2B304();
    v23 = sub_227F2B8E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_227EB2000, v22, v23, "Bailing on updates fetch. Manifest is unsupported.", v24, 2u);
      MEMORY[0x22AAAD240](v24, -1, -1);
    }

    sub_227EBFEF4();
    swift_allocError();
    *v25 = xmmword_227F303E0;
    *(v25 + 16) = 2;
    swift_willThrow();
    sub_227F1FE14(*(v0 + 72), type metadata accessor for Manifest);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v28 = *(v0 + 96);
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v31 = *(v0 + 56);
    v32 = *(v0 + 32);
    sub_227F1FE14(*(v0 + 88), type metadata accessor for ResourceInfo);
    (*(v27 + 8))(v26, v28);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_227F1ECE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_227F1F434;
  }

  else
  {
    v5 = sub_227F1EDF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_227F1EDF4()
{
  v41 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 72) + *(*(v0 + 64) + 24);
  sub_227F2B024();
  *(v0 + 160) = v3;
  v4 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v5 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  if ((*(v6 + 24))(v5, v6) == 3)
  {
LABEL_4:
    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_227F1F1F4;
    v14 = *(v0 + 144);
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    sub_227F1F65C(v15);
    return;
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = (*(v0 + 120) + *(v0 + 128));
  v12 = *(v0 + 184) + *(v0 + 188);
  os_unfair_lock_lock(v11);
  sub_227F246A0(v11 + v12, v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v11);
  sub_227EC2180(v7, v10, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v7, type metadata accessor for ResourceInfo);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_227EB8430(*(v0 + 32), &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_4;
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 184);
  v19 = *(v0 + 120);
  v20 = (v19 + *(v0 + 128));
  sub_227F1FDAC(*(v0 + 32), *(v0 + 56), type metadata accessor for FileInfo);
  os_unfair_lock_lock(v20);
  sub_227EF1314(v20 + v18, v19, &v40);
  os_unfair_lock_unlock(v20);
  if (v17)
  {
    return;
  }

  if (!v40)
  {
    sub_227F1FE14(*(v0 + 56), type metadata accessor for FileInfo);
    goto LABEL_4;
  }

  v21 = *(v0 + 112);

  v22 = sub_227F2B304();
  v23 = sub_227F2B8D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_227EB2000, v22, v23, "Existing updates file is good to use. Getting it back", v24, 2u);
    MEMORY[0x22AAAD240](v24, -1, -1);
  }

  v25 = *(v0 + 144);
  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 56);
  v32 = *(v0 + 16);

  sub_227F1FE14(v30, type metadata accessor for Manifest);
  sub_227F1FE14(v29, type metadata accessor for ResourceInfo);
  (*(v27 + 8))(v26, v28);
  sub_227F1FDAC(v31, v32, type metadata accessor for FileInfo);
  v33 = *(v0 + 112);
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  v36 = *(v0 + 72);
  v37 = *(v0 + 56);
  v38 = *(v0 + 32);

  v39 = *(v0 + 8);

  v39();
}

uint64_t sub_227F1F1F4()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_227F1F544;
  }

  else
  {
    v4 = sub_227F1F324;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227F1F324()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];

  sub_227F1FE14(v6, type metadata accessor for Manifest);
  sub_227F1FE14(v5, type metadata accessor for ResourceInfo);
  (*(v3 + 8))(v2, v4);
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[7];
  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_227F1F434()
{
  v1 = v0[19];
  sub_227F1FE14(v0[9], type metadata accessor for Manifest);
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[4];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_227F1F544()
{
  v1 = v0[18];

  v2 = v0[22];
  sub_227F1FE14(v0[9], type metadata accessor for Manifest);
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v9 = v0[4];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_227F1F65C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for ResourceInfo(0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for DownloadOutcome();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DownloadResponse() - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v2[8] = v8;
  v9 = swift_task_alloc();
  v2[9] = v9;
  *v9 = v2;
  v9[1] = sub_227F1F7C4;

  return DownloadTask.wait()(v8);
}

uint64_t sub_227F1F7C4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_227F1FBDC;
  }

  else
  {
    v3 = sub_227F1F8D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227F1F8D8()
{
  v1 = v0[6];
  sub_227F246A0(v0[8], v0[7], type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = *v11;
    v14 = *(v11 + 32);
    swift_willThrow();
    v15 = v13;
    sub_227F1FE14(v12, type metadata accessor for DownloadResponse);

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227F1FE14(v0[7], type metadata accessor for DownloadOutcome);
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = (*(v0[3] + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = type metadata accessor for PersistenceState();
  sub_227F246A0(v5 + v6 + *(v7 + 24), v3, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v5);
  sub_227EC2180(v3, v4, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v3, type metadata accessor for ResourceInfo);
  v8 = type metadata accessor for FileInfo(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    v9 = v0[8];
    sub_227EB8430(v0[4], &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EF9A28();
    swift_allocError();
    *v10 = xmmword_227F32A10;
    swift_willThrow();
    sub_227F1FE14(v9, type metadata accessor for DownloadResponse);
LABEL_7:
    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[4];
    v18 = v0[5];

    v20 = v0[1];
    goto LABEL_9;
  }

  v21 = v0[7];
  v23 = v0[4];
  v22 = v0[5];
  v24 = v0[2];
  sub_227F1FE14(v0[8], type metadata accessor for DownloadResponse);
  sub_227F1FDAC(v23, v24, type metadata accessor for FileInfo);

  v20 = v0[1];
LABEL_9:

  return v20();
}

uint64_t sub_227F1FBDC()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F1FC64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_227F1FCD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_227F248D8();
    v5 = sub_227F2B5C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_227F1FD64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227F1FDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F1FE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F1FE74(uint64_t a1)
{
  v4 = *(sub_227F2B334() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227EFA0C4;

  return sub_227F18754(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_227F2B334();
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

uint64_t sub_227F20038(uint64_t a1)
{
  v4 = *(sub_227F2B334() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227ED03CC;

  return sub_227F18754(a1, v6, v7, v8, v1 + v5);
}

void *sub_227F20130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v40 = a4;
  v37 = *v4;
  v8 = sub_227F2AFF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_227F2B114();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultManager];
  v4[2] = a1;
  v4[4] = a2;
  v4[5] = v17;
  v42[0] = 7368052;
  v42[1] = 0xE300000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91C0], v8);
  sub_227EB84D8();

  sub_227F2B104();
  (*(v9 + 8))(v12, v8);
  v18 = swift_allocObject();
  v19 = v37;
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  v42[3] = &type metadata for Clock;
  v42[4] = &protocol witness table for Clock;
  v20 = type metadata accessor for DownloadManager();
  v21 = objc_allocWithZone(v20);
  v22 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v23 = qword_2813CD568;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_227F2B334();
  v25 = __swift_project_value_buffer(v24, qword_2813CE040);
  (*(*(v24 - 8) + 16))(&v21[v22], v25, v24);
  v26 = &v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates];
  *v26 = 0;
  *(v26 + 1) = MEMORY[0x277D84F98];
  v27 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket;
  type metadata accessor for TokenBucket();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 112) = 0;
  *&v21[v27] = v28;
  v29 = &v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession];
  *v29 = 0;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 5) = 0;
  v30 = v38;
  (*(v13 + 16))(&v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadToFolder], v16, v38);
  *&v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings] = a1;
  v31 = &v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion];
  *v31 = sub_227F2057C;
  v31[1] = v18;
  v32 = &v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor];
  v33 = v40;
  *v32 = v39;
  *(v32 + 1) = v33;
  sub_227ECDA1C(v42, &v21[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock]);
  v41.receiver = v21;
  v41.super_class = v20;

  v34 = objc_msgSendSuper2(&v41, sel_init);
  (*(v13 + 8))(v16, v30);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v5[3] = v34;
  return v5;
}

uint64_t sub_227F205A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000227F346F0 == a2;
  if (v3 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6566696E614D6F6ELL && a2 == 0xEE00656C69467473 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000227F34710 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470556F6ELL && a2 == 0xED0000656C694673 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000227F34730 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7272456369676F6CLL && a2 == 0xEA0000000000726FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

char *sub_227F207C4(uint64_t *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F218, &qword_227F32C48);
  v56 = *(v54 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v44 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F220, &qword_227F32C50);
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v60 = &v44 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F228, &qword_227F32C58);
  v49 = *(v52 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v59 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F230, &qword_227F32C60);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F238, &qword_227F32C68);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F240, &qword_227F32C70);
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F248, &unk_227F32C78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_227F24A08();
  v26 = v61;
  sub_227F2BD74();
  if (!v26)
  {
    v27 = v18;
    v44 = v15;
    v45 = v14;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    v61 = v20;
    v31 = sub_227F2BB74();
    v32 = (2 * *(v31 + 16)) | 1;
    v63 = v31;
    v64 = v31 + 32;
    v65 = 0;
    v66 = v32;
    v33 = sub_227EBAE28();
    if (v33 == 6 || v65 != v66 >> 1)
    {
      v18 = sub_227F2B9E4();
      swift_allocError();
      v37 = v36;
      v38 = v19;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
      *v37 = &type metadata for ResourceManagerError;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v18 - 1) + 104))(v37, *MEMORY[0x277D84160], v18);
      swift_willThrow();
      (*(v61 + 8))(v23, v38);
      swift_unknownObjectRelease();
    }

    else if (v33 > 2u)
    {
      v41 = v61;
      if (v33 == 3)
      {
        v67 = 3;
        sub_227F24B04();
        sub_227F2BAE4();
        (*(v49 + 8))(v29, v52);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else if (v33 == 4)
      {
        v67 = 4;
        sub_227F24AB0();
        sub_227F2BAE4();
        (*(v53 + 8))(v30, v55);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        v67 = 5;
        sub_227F24A5C();
        v42 = v57;
        sub_227F2BAE4();
        v43 = v54;
        v18 = sub_227F2BB44();
        (*(v56 + 8))(v42, v43);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v34 = v61;
      if (v33)
      {
        if (v33 == 1)
        {
          v67 = 1;
          sub_227F24BAC();
          v35 = v45;
          sub_227F2BAE4();
          (*(v47 + 8))(v35, v48);
        }

        else
        {
          v67 = 2;
          sub_227F24B58();
          sub_227F2BAE4();
          (*(v50 + 8))(v28, v51);
        }

        (*(v34 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        v67 = 0;
        sub_227F24C00();
        sub_227F2BAE4();
        (*(v46 + 8))(v27, v44);
        (*(v34 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v62);
  return v18;
}

void sub_227F21100(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v430 = a4;
  v426 = a3;
  v364 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v366 = v359 - v7;
  v391 = type metadata accessor for Manifest();
  v392 = *(v391 - 8);
  v8 = *(v392 + 64);
  v9 = MEMORY[0x28223BE20](v391);
  v365 = v359 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = v10;
  MEMORY[0x28223BE20](v9);
  v367 = v359 - v11;
  v411 = type metadata accessor for FileInfo(0);
  v410 = *(v411 - 8);
  v12 = *(v410 + 64);
  v13 = MEMORY[0x28223BE20](v411);
  v371 = v359 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v405 = v359 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v398 = v359 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v369 = v359 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v383 = v359 - v23;
  MEMORY[0x28223BE20](v22);
  v404 = v359 - v24;
  v407 = type metadata accessor for DownloadOutcome();
  v25 = *(*(v407 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v407);
  v386 = v359 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v402 = v359 - v28;
  v29 = type metadata accessor for DownloadResponse();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v403 = v359 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v396 = v359 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v395 = v359 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v401 = v359 - v38;
  MEMORY[0x28223BE20](v37);
  v400 = v359 - v39;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v40 = *(*(v425 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v425);
  v385 = v359 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v415 = v359 - v44;
  MEMORY[0x28223BE20](v43);
  v418 = (v359 - v45);
  v429 = sub_227F2B114();
  v431 = *(v429 - 8);
  v46 = *(v431 + 64);
  v47 = MEMORY[0x28223BE20](v429);
  v370 = v359 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v368 = v359 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v384 = v359 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v387 = v359 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v406 = v359 - v56;
  v362 = v57;
  MEMORY[0x28223BE20](v55);
  v427 = v359 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v374 = v359 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v409 = v359 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v382 = v359 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v69 = v359 - v68;
  v422 = type metadata accessor for ResourceInfo(0);
  v70 = *(*(v422 - 8) + 64);
  v71 = MEMORY[0x28223BE20](v422);
  v373 = v359 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v380 = v359 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v408 = v359 - v76;
  MEMORY[0x28223BE20](v75);
  v78 = v359 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v375 = v359 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v81);
  v389 = v359 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v397 = v359 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v390 = v359 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v399 = v359 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v414 = v359 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v381 = v359 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v388 = v359 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v417 = (v359 - v98);
  v99 = MEMORY[0x28223BE20](v97);
  v101 = v359 - v100;
  v102 = MEMORY[0x28223BE20](v99);
  v104 = v359 - v103;
  v105 = MEMORY[0x28223BE20](v102);
  v440 = v359 - v106;
  MEMORY[0x28223BE20](v105);
  v108 = v359 - v107;
  v109 = sub_227F2B334();
  v110 = *(v109 - 8);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  v113 = v359 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v114 = __swift_project_value_buffer(v109, qword_2813CDE98);
  v419 = v110;
  v115 = *(v110 + 16);
  v424 = v113;
  v420 = v109;
  v115(v113, v114, v109);
  v416 = a1;
  v116 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v117 = v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v118 = v428;
  sub_227EEEF74(v117, v108);
  v421 = v118;
  if (v118)
  {
    os_unfair_lock_unlock(v116);
    __break(1u);
    return;
  }

  v428 = v108;
  os_unfair_lock_unlock(v116);
  os_unfair_lock_lock(v116);
  v372 = type metadata accessor for PersistenceState();
  v119 = *(v372 + 24);
  sub_227F246A0(v117 + v119, v78, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v116);
  sub_227EC2180(&v78[*(v422 + 32)], v69, &qword_27D80E8F8, &qword_227F2F5E0);
  sub_227F1FE14(v78, type metadata accessor for ResourceInfo);
  v120 = type metadata accessor for ResourceInfo.DownloadState(0);
  v121 = *(v120 - 8);
  v122 = *(v121 + 48);
  v378 = v120;
  v377 = v122;
  v376 = v121 + 48;
  v123 = (v122)(v69, 1);
  v124 = v116;
  v125 = v429;
  v412 = v124;
  v413 = v117;
  v379 = v119;
  if (v123 == 1)
  {
    sub_227EB8430(v69, &qword_27D80E8F8, &qword_227F2F5E0);
    v126 = v431;
    v127 = *(v431 + 56);
    v423 = (v431 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v127(v104, 1, 1, v125);
    os_unfair_lock_lock(v124);
    v128 = v117 + v119;
    v129 = v408;
    sub_227F246A0(v128, v408, type metadata accessor for ResourceInfo);
    os_unfair_lock_unlock(v124);
    v130 = v409;
    sub_227EC2180(v129, v409, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227F1FE14(v129, type metadata accessor for ResourceInfo);
    v131 = (*(v410 + 48))(v130, 1, v411);
    v132 = v440;
    if (v131 == 1)
    {
      sub_227EB8430(v130, &qword_27D80E8F0, &unk_227F2F4B0);
      v133 = 1;
    }

    else
    {
      (*(v126 + 16))(v440, v130, v125);
      sub_227F1FE14(v130, type metadata accessor for FileInfo);
      v133 = 0;
    }

    v134 = v126;
    v138 = v418;
    v127(v132, v133, 1, v125);
    v139 = (*(v126 + 48))(v104, 1, v125);
    v137 = v426;
    v135 = v423;
    if (v139 != 1)
    {
      sub_227EB8430(v104, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v134 = v431;
    (*(v431 + 16))(v104, v69, v429);
    sub_227F1FE14(v69, type metadata accessor for ResourceInfo.DownloadState);
    v127 = *(v134 + 56);
    v135 = (v134 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v127(v104, 0, 1, v125);
    v136 = v440;
    (*(v134 + 32))(v440, v104, v125);
    v127(v136, 0, 1, v125);
    v137 = v426;
    v138 = v418;
  }

  v140 = *(v134 + 16);
  v409 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v141 = v137 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v142 = v427;
  v140(v427, v141, v125);
  v408 = v134 + 16;
  v394 = v140;
  v140(v101, v142, v125);
  v127(v101, 0, 1, v125);
  v143 = *(v425 + 48);
  sub_227EC2180(v428, v138, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v101, v138 + v143, &qword_27D80E310, &unk_227F2D990);
  v146 = *(v134 + 48);
  v145 = v134 + 48;
  v144 = v146;
  v147 = (v146)(v138, 1, v125);
  v423 = v135;
  if (v147 == 1)
  {
    sub_227EB8430(v101, &qword_27D80E310, &unk_227F2D990);
    if ((v144)(v138 + v143, 1, v125) == 1)
    {
      v417 = v127;
      sub_227EB8430(v138, &qword_27D80E310, &unk_227F2D990);
      v148 = *(v431 + 8);
      v149 = (v431 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v150 = v424;
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v151 = v417;
  sub_227EC2180(v138, v417, &qword_27D80E310, &unk_227F2D990);
  if ((v144)(v138 + v143, 1, v125) == 1)
  {
    sub_227EB8430(v101, &qword_27D80E310, &unk_227F2D990);
    (*(v431 + 8))(v151, v125);
LABEL_16:
    v418 = v144;
    sub_227EB8430(v138, &qword_27D80E4F8, &qword_227F2DE80);
    v152 = *(v431 + 32);
    v153 = (v431 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    goto LABEL_17;
  }

  v418 = v144;
  v359[1] = v145;
  v174 = v125;
  v175 = v431;
  v176 = v431 + 32;
  v177 = v138 + v143;
  v178 = v406;
  v393 = *(v431 + 32);
  v393(v406, v177, v174);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v360 = sub_227F2B634();
  v179 = *(v175 + 8);
  v179(v178, v174);
  sub_227EB8430(v101, &qword_27D80E310, &unk_227F2D990);
  v361 = v179;
  v179(v417, v174);
  sub_227EB8430(v138, &qword_27D80E310, &unk_227F2D990);
  if (v360)
  {
    v417 = v127;
    v149 = (v175 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v150 = v424;
    v125 = v429;
    v148 = v361;
LABEL_27:
    v180 = v427;
    v427 = v149;
    v361 = v148;
    v148(v180, v125);
    v181 = v400;
    sub_227F246A0(v430, v400, type metadata accessor for DownloadResponse);
    v182 = sub_227F2B304();
    v183 = sub_227F2B8F4();
    v184 = os_log_type_enabled(v182, v183);
    v185 = v419;
    v186 = v421;
    if (v184)
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      aBlock = v188;
      *v187 = 136315138;
      v189 = sub_227ECDD3C();
      v190 = v181;
      v192 = v191;
      sub_227F1FE14(v190, type metadata accessor for DownloadResponse);
      v193 = sub_227ECAC40(v189, v192, &aBlock);

      *(v187 + 4) = v193;
      _os_log_impl(&dword_227EB2000, v182, v183, "Fetching manifest finished with status code %s", v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v188);
      MEMORY[0x22AAAD240](v188, -1, -1);
      MEMORY[0x22AAAD240](v187, -1, -1);
    }

    else
    {

      sub_227F1FE14(v181, type metadata accessor for DownloadResponse);
    }

    v194 = v401;
    sub_227F246A0(v430, v401, type metadata accessor for DownloadResponse);
    v195 = sub_227F2B304();
    v196 = sub_227F2B8D4();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      aBlock = v198;
      *v197 = 136315138;
      v199 = DownloadResponse.description.getter();
      v200 = v194;
      v202 = v201;
      sub_227F1FE14(v200, type metadata accessor for DownloadResponse);
      v203 = sub_227ECAC40(v199, v202, &aBlock);

      *(v197 + 4) = v203;
      _os_log_impl(&dword_227EB2000, v195, v196, "Fetching manifest: %s", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v198);
      MEMORY[0x22AAAD240](v198, -1, -1);
      MEMORY[0x22AAAD240](v197, -1, -1);
    }

    else
    {

      sub_227F1FE14(v194, type metadata accessor for DownloadResponse);
    }

    v204 = v440;
    v205 = v416;
    v206 = v405;
    v207 = v404;
    v208 = v402;
    sub_227F246A0(v430, v402, type metadata accessor for DownloadOutcome);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v210 = sub_227F1FDAC(v208, v206, type metadata accessor for FileInfo);
        MEMORY[0x28223BE20](v210);
        v359[-2] = v206;
        v359[-1] = v205;
        sub_227EF3388(sub_227F24684);
        if (v186)
        {
          sub_227EB8430(v204, &qword_27D80E310, &unk_227F2D990);
          sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
          (*(v185 + 8))(v150, v420);
          sub_227F1FE14(v206, type metadata accessor for FileInfo);
        }

        else
        {
          v260 = v412;
          os_unfair_lock_lock(v412);
          v261 = v380;
          sub_227F246A0(v413 + v379, v380, type metadata accessor for ResourceInfo);
          os_unfair_lock_unlock(v260);
          v262 = v382;
          sub_227EC2180(v261 + *(v422 + 32), v382, &qword_27D80E8F8, &qword_227F2F5E0);
          sub_227F1FE14(v261, type metadata accessor for ResourceInfo);
          if (v377(v262, 1, v378) == 1)
          {
            sub_227EB8430(v204, &qword_27D80E310, &unk_227F2D990);
            sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
            (*(v185 + 8))(v150, v420);
            sub_227EB8430(v262, &qword_27D80E8F8, &qword_227F2F5E0);
            sub_227F1FE14(v405, type metadata accessor for FileInfo);
          }

          else
          {
            v284 = v368;
            v285 = v429;
            v394(v368, v262, v429);
            sub_227F1FE14(v262, type metadata accessor for ResourceInfo.DownloadState);
            v286 = v284;
            v287 = v431 + 32;
            v288 = v285;
            v289 = *(v431 + 32);
            v289(v384, v286, v288);
            os_unfair_lock_lock(v260);
            v290 = (v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
            os_unfair_lock_lock((v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
            v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
            v292 = v369;
            sub_227EF34BC(v290 + *(v291 + 28), v413, &aBlock, v369);
            v425 = v289;
            os_unfair_lock_unlock(v290);
            os_unfair_lock_unlock(v260);
            v337 = v391;
            if ((*(v392 + 48))(v292, 1, v391) == 1)
            {
              v361(v384, v429);
              sub_227EB8430(v204, &qword_27D80E310, &unk_227F2D990);
              sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
              (*(v185 + 8))(v150, v420);
              sub_227F1FE14(v405, type metadata accessor for FileInfo);
              sub_227EB8430(v292, &qword_27D80EB28, &qword_227F30440);
            }

            else
            {
              v422 = v287;
              v421 = 0;
              v338 = v367;
              sub_227F1FDAC(v292, v367, type metadata accessor for Manifest);
              v339 = v338 + *(v337 + 24);
              v340 = v388;
              v341 = v429;
              v342 = v394;
              v394(v388, v339, v429);
              v417(v340, 0, 1, v341);
              v343 = sub_227F28DB8(v430, v426 + v409, 1u, v340);
              v344 = sub_227F2B644();
              v345 = swift_allocObject();
              *(v345 + 16) = v343;
              v436 = sub_227EFA0C8;
              v437 = v345;
              aBlock = MEMORY[0x277D85DD0];
              v433 = 1107296256;
              v434 = sub_227F1FCD8;
              v435 = &block_descriptor_56;
              v346 = _Block_copy(&aBlock);

              AnalyticsSendEventLazy();
              _Block_release(v346);

              sub_227EB8430(v340, &qword_27D80E310, &unk_227F2D990);
              v347 = sub_227F2B304();
              v348 = sub_227F2B8D4();
              if (os_log_type_enabled(v347, v348))
              {
                v349 = swift_slowAlloc();
                *v349 = 0;
                _os_log_impl(&dword_227EB2000, v347, v348, "New updates URL. Scheduling download...", v349, 2u);
                MEMORY[0x22AAAD240](v349, -1, -1);
              }

              v350 = sub_227F2B854();
              (*(*(v350 - 8) + 56))(v366, 1, 1, v350);
              v351 = v406;
              v352 = v429;
              v342(v406, v384, v429);
              sub_227F246A0(v367, v365, type metadata accessor for Manifest);
              v353 = (*(v431 + 80) + 40) & ~*(v431 + 80);
              v354 = (v362 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
              v355 = (*(v392 + 80) + v354 + 8) & ~*(v392 + 80);
              v356 = swift_allocObject();
              v356[2] = 0;
              v356[3] = 0;
              v357 = v364;
              v356[4] = v364;
              (v425)(v356 + v353, v351, v352);
              *(v356 + v354) = v416;
              sub_227F1FDAC(v365, v356 + v355, type metadata accessor for Manifest);

              v358 = v357;
              sub_227F184A8(0, 0, v366, &unk_227F32AF0, v356);

              sub_227F1FE14(v367, type metadata accessor for Manifest);
              v361(v384, v352);
              sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
              sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
              (*(v185 + 8))(v150, v420);
              sub_227F1FE14(v405, type metadata accessor for FileInfo);
            }
          }
        }

        return;
      }

      v234 = v412;
      os_unfair_lock_lock(v412);
      v235 = (v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock((v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
      v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
      sub_227EF34BC(v235 + *(v236 + 28), v413, &aBlock, v207);
      if (v186)
      {
        os_unfair_lock_unlock(v235);
        os_unfair_lock_unlock(v234);
      }

      else
      {
        v431 = 0;
        os_unfair_lock_unlock(v235);
        os_unfair_lock_unlock(v234);
        v265 = v207;
        v266 = v429;
        v267 = v394;
        v394(v387, v426 + v409, v429);
        v268 = v383;
        sub_227EC2180(v265, v383, &qword_27D80EB28, &qword_227F30440);
        v269 = v391;
        if ((*(v392 + 48))(v268, 1, v391) == 1)
        {
          sub_227EB8430(v268, &qword_27D80EB28, &qword_227F30440);
          v270 = 1;
          v271 = v381;
        }

        else
        {
          v293 = v268 + *(v269 + 24);
          v271 = v381;
          v267(v381, v293, v266);
          sub_227F1FE14(v268, type metadata accessor for Manifest);
          v270 = 0;
        }

        v417(v271, v270, 1, v266);
        v294 = v387;
        v295 = sub_227F28DB8(v430, v387, 1u, v271);
        v296 = v271;
        v297 = sub_227F2B644();
        v298 = swift_allocObject();
        *(v298 + 16) = v295;
        v436 = sub_227EFA0C8;
        v437 = v298;
        aBlock = MEMORY[0x277D85DD0];
        v433 = 1107296256;
        v434 = sub_227F1FCD8;
        v435 = &block_descriptor_67;
        v299 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v299);

        sub_227EB8430(v296, &qword_27D80E310, &unk_227F2D990);
        v361(v294, v266);
        v300 = v412;
        os_unfair_lock_lock(v412);
        sub_227EE22DC((v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v205 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
        os_unfair_lock_unlock(v300);
        sub_227EB8430(v404, &qword_27D80EB28, &qword_227F30440);
      }
    }

    else
    {
      v227 = *(v208 + 16);
      v438[0] = *v208;
      v438[1] = v227;
      v439 = *(v208 + 32);
      v228 = v388;
      v417(v388, 1, 1, v429);
      v229 = sub_227F28DB8(v430, v426 + v409, 1u, v228);
      v230 = sub_227F2B644();
      v231 = swift_allocObject();
      *(v231 + 16) = v229;
      v436 = sub_227EFA0C8;
      v437 = v231;
      aBlock = MEMORY[0x277D85DD0];
      v433 = 1107296256;
      v434 = sub_227F1FCD8;
      v435 = &block_descriptor_74;
      v232 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v232);

      sub_227EB8430(v228, &qword_27D80E310, &unk_227F2D990);
      sub_227F2487C(v438, &aBlock);

      sub_227EF3220(v233, v438, v205);
      if (!v186)
      {
        v263 = *&v438[0];
        swift_willThrow();
        v264 = v263;
        sub_227EB8430(v204, &qword_27D80E310, &unk_227F2D990);
        sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
        (*(v185 + 8))(v150, v420);
        sub_227EF9968(v438);
        return;
      }

      sub_227EF9968(v438);
    }

    sub_227EB8430(v204, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
    (*(v185 + 8))(v150, v420);
    return;
  }

  v153 = v176 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v152 = v393;
LABEL_17:
  v154 = v414;
  v155 = v429;
  v393 = v152;
  v152(v414, v427, v429);
  v127(v154, 0, 1, v155);
  v156 = *(v425 + 48);
  v157 = v415;
  sub_227EC2180(v440, v415, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v154, v157 + v156, &qword_27D80E310, &unk_227F2D990);
  v158 = v418;
  if (v418(v157, 1, v155) == 1)
  {
    sub_227EB8430(v154, &qword_27D80E310, &unk_227F2D990);
    if (v158(v157 + v156, 1, v155) == 1)
    {
      v427 = v153;
      v417 = v127;
      sub_227EB8430(v157, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  v159 = v158;
  v160 = v399;
  sub_227EC2180(v157, v399, &qword_27D80E310, &unk_227F2D990);
  if (v159(v157 + v156, 1, v155) == 1)
  {
    sub_227EB8430(v154, &qword_27D80E310, &unk_227F2D990);
    (*(v431 + 8))(v160, v155);
LABEL_22:
    sub_227EB8430(v157, &qword_27D80E4F8, &qword_227F2DE80);
LABEL_23:
    v161 = v403;
    sub_227F246A0(v430, v403, type metadata accessor for DownloadResponse);

    v162 = v424;
    v163 = sub_227F2B304();
    v164 = sub_227F2B8E4();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      aBlock = v166;
      *v165 = 136315394;
      v167 = sub_227ED1BF8();
      v169 = sub_227ECAC40(v167, v168, &aBlock);

      *(v165 + 4) = v169;
      *(v165 + 12) = 2080;
      v170 = DownloadResponse.description.getter();
      v172 = v171;
      sub_227F1FE14(v161, type metadata accessor for DownloadResponse);
      v173 = sub_227ECAC40(v170, v172, &aBlock);

      *(v165 + 14) = v173;
      _os_log_impl(&dword_227EB2000, v163, v164, "unhandled download completion %s %s", v165, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v166, -1, -1);
      MEMORY[0x22AAAD240](v165, -1, -1);
    }

    else
    {

      sub_227F1FE14(v161, type metadata accessor for DownloadResponse);
    }

    sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
    (*(v419 + 8))(v162, v420);
    return;
  }

  v417 = v127;
  v211 = v157 + v156;
  v212 = v406;
  v427 = v153;
  v393(v406, v211, v155);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v213 = v160;
  v214 = sub_227F2B634();
  v215 = v157;
  v216 = *(v431 + 8);
  v216(v212, v155);
  sub_227EB8430(v154, &qword_27D80E310, &unk_227F2D990);
  v216(v213, v155);
  sub_227EB8430(v215, &qword_27D80E310, &unk_227F2D990);
  if ((v214 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_40:
  v217 = v395;
  sub_227F246A0(v430, v395, type metadata accessor for DownloadResponse);
  v218 = sub_227F2B304();
  v219 = sub_227F2B8F4();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    aBlock = v221;
    *v220 = 136315138;
    v222 = sub_227ECDD3C();
    v223 = v217;
    v225 = v224;
    sub_227F1FE14(v223, type metadata accessor for DownloadResponse);
    v226 = sub_227ECAC40(v222, v225, &aBlock);

    *(v220 + 4) = v226;
    _os_log_impl(&dword_227EB2000, v218, v219, "Fetching updates finished with status code %s.", v220, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v221);
    MEMORY[0x22AAAD240](v221, -1, -1);
    MEMORY[0x22AAAD240](v220, -1, -1);
  }

  else
  {

    sub_227F1FE14(v217, type metadata accessor for DownloadResponse);
  }

  v237 = v396;
  sub_227F246A0(v430, v396, type metadata accessor for DownloadResponse);
  v238 = sub_227F2B304();
  v239 = sub_227F2B8D4();
  if (os_log_type_enabled(v238, v239))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    aBlock = v241;
    *v240 = 136315138;
    v242 = DownloadResponse.description.getter();
    v243 = v237;
    v245 = v244;
    sub_227F1FE14(v243, type metadata accessor for DownloadResponse);
    v246 = sub_227ECAC40(v242, v245, &aBlock);

    *(v240 + 4) = v246;
    _os_log_impl(&dword_227EB2000, v238, v239, "Fetching updates: (%s", v240, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v241);
    MEMORY[0x22AAAD240](v241, -1, -1);
    MEMORY[0x22AAAD240](v240, -1, -1);
  }

  else
  {

    sub_227F1FE14(v237, type metadata accessor for DownloadResponse);
  }

  v247 = v440;
  v248 = v413;
  v249 = v397;
  v250 = v412;
  os_unfair_lock_lock(v412);
  v251 = (v416 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v416 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  v253 = v398;
  v254 = v421;
  sub_227EF34BC(v251 + *(v252 + 28), v248, &aBlock, v398);
  v255 = v424;
  if (v254)
  {
    os_unfair_lock_unlock(v251);
    os_unfair_lock_unlock(v250);
    sub_227EB8430(v247, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
    (*(v419 + 8))(v255, v420);
    return;
  }

  v422 = 0;
  os_unfair_lock_unlock(v251);
  os_unfair_lock_unlock(v250);
  v256 = v391;
  if ((*(v392 + 48))(v253, 1, v391) == 1)
  {
    sub_227EB8430(v253, &qword_27D80EB28, &qword_227F30440);
    v257 = 1;
    v258 = v429;
    v259 = v394;
  }

  else
  {
    v272 = v253 + *(v256 + 24);
    v258 = v429;
    v259 = v394;
    v394(v249, v272, v429);
    sub_227F1FE14(v253, type metadata accessor for Manifest);
    v257 = 0;
  }

  v273 = v417;
  v417(v249, v257, 1, v258);
  v274 = v389;
  v259(v389, v426 + v409, v258);
  v417 = v273;
  v273(v274, 0, 1, v258);
  v275 = *(v425 + 48);
  v276 = v385;
  sub_227EC2180(v249, v385, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v274, v276 + v275, &qword_27D80E310, &unk_227F2D990);
  v277 = v418;
  if (v418(v276, 1, v258) == 1)
  {
    sub_227EB8430(v274, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v249, &qword_27D80E310, &unk_227F2D990);
    v278 = v277(v276 + v275, 1, v258);
    v279 = v419;
    v280 = v426;
    v281 = v413;
    if (v278 == 1)
    {
      sub_227EB8430(v276, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_72;
    }

LABEL_66:
    sub_227EB8430(v276, &qword_27D80E4F8, &qword_227F2DE80);
    v283 = 1;
    goto LABEL_76;
  }

  v282 = v375;
  sub_227EC2180(v276, v375, &qword_27D80E310, &unk_227F2D990);
  if (v277(v276 + v275, 1, v258) == 1)
  {
    sub_227EB8430(v389, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v249, &qword_27D80E310, &unk_227F2D990);
    (*(v431 + 8))(v282, v258);
    v279 = v419;
    v280 = v426;
    v281 = v413;
    goto LABEL_66;
  }

  v301 = v406;
  v393(v406, v276 + v275, v258);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260]);
  v302 = sub_227F2B634();
  v303 = v282;
  v304 = *(v431 + 8);
  v304(v301, v258);
  sub_227EB8430(v389, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v249, &qword_27D80E310, &unk_227F2D990);
  v304(v303, v258);
  v281 = v413;
  sub_227EB8430(v276, &qword_27D80E310, &unk_227F2D990);
  v279 = v419;
  v280 = v426;
  if ((v302 & 1) == 0)
  {
LABEL_74:
    v283 = 1;
    goto LABEL_76;
  }

LABEL_72:
  v305 = v412;
  os_unfair_lock_lock(v412);
  v306 = v373;
  sub_227F246A0(v281 + *(v372 + 20), v373, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v305);
  v307 = v374;
  sub_227EC2180(v306, v374, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v306, type metadata accessor for ResourceInfo);
  if ((*(v410 + 48))(v307, 1, v411) == 1)
  {
    sub_227EB8430(v307, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_74;
  }

  v394(v390, v307, v429);
  sub_227F1FE14(v307, type metadata accessor for FileInfo);
  v283 = 0;
LABEL_76:
  v308 = v390;
  v417(v390, v283, 1, v429);
  v309 = v430;
  v310 = sub_227F28DB8(v430, v280 + v409, 2u, v308);
  v311 = sub_227F2B644();
  v312 = swift_allocObject();
  *(v312 + 16) = v310;
  v436 = sub_227EF99BC;
  v437 = v312;
  aBlock = MEMORY[0x277D85DD0];
  v433 = 1107296256;
  v434 = sub_227F1FCD8;
  v435 = &block_descriptor_1;
  v313 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v313);

  v314 = v386;
  sub_227F246A0(v309, v386, type metadata accessor for DownloadOutcome);
  v315 = swift_getEnumCaseMultiPayload();
  if (v315)
  {
    if (v315 == 1)
    {
      v316 = v371;
      sub_227F1FDAC(v314, v371, type metadata accessor for FileInfo);
      v317 = sub_227F2B024();
      v319 = v318;
      v320 = v412;
      os_unfair_lock_lock(v412);
      v321 = v370;
      v322 = v422;
      sub_227EF6E90(v281, v316, v416, v317, v319, &aBlock, v370);
      if (!v322)
      {
        (*(v431 + 8))(v321, v429);
      }

      os_unfair_lock_unlock(v320);
      sub_227F1FE14(v316, type metadata accessor for FileInfo);
      sub_227EB8430(v308, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
      (*(v279 + 8))(v424, v420);
    }

    else
    {
      v331 = v424;
      v332 = sub_227F2B304();
      v333 = sub_227F2B8E4();
      if (os_log_type_enabled(v332, v333))
      {
        v334 = swift_slowAlloc();
        *v334 = 0;
        _os_log_impl(&dword_227EB2000, v332, v333, "Received notModified download status for updates file, while modification checks are not supported for updates file.", v334, 2u);
        MEMORY[0x22AAAD240](v334, -1, -1);
      }

      sub_227EF9A28();
      swift_allocError();
      *v335 = 0xD000000000000037;
      v335[1] = 0x8000000227F346B0;
      swift_willThrow();
      sub_227EB8430(v308, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
      (*(v279 + 8))(v331, v420);
    }
  }

  else
  {
    v324 = *v314;
    v323 = *(v314 + 8);
    v325 = *(v314 + 16);
    v327 = *(v314 + 24);
    v326 = *(v314 + 32);
    v328 = v412;
    os_unfair_lock_lock(v412);
    aBlock = v324;
    v433 = v323;
    LOBYTE(v434) = v325;
    v435 = v327;
    v436 = v326;
    v329 = v422;
    sub_227EE2F04(&aBlock, (v416 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v416 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
    v330 = (v279 + 8);
    os_unfair_lock_unlock(v328);
    if (v329)
    {

      sub_227EB8430(v390, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
      (*v330)(v424, v420);
    }

    else
    {
      swift_willThrow();
      v336 = v324;
      sub_227EB8430(v390, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v440, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v428, &qword_27D80E310, &unk_227F2D990);
      (*v330)(v424, v420);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227F246A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F24708(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2B114() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Manifest() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_227ED03CC;

  return sub_227F173B8(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

unint64_t sub_227F248D8()
{
  result = qword_27D80F018;
  if (!qword_27D80F018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80F018);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227F24930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227F24988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_227F249D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_227F24A08()
{
  result = qword_27D80F1E0;
  if (!qword_27D80F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1E0);
  }

  return result;
}

unint64_t sub_227F24A5C()
{
  result = qword_27D80F1E8;
  if (!qword_27D80F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1E8);
  }

  return result;
}

unint64_t sub_227F24AB0()
{
  result = qword_27D80F1F0;
  if (!qword_27D80F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1F0);
  }

  return result;
}

unint64_t sub_227F24B04()
{
  result = qword_27D80F1F8;
  if (!qword_27D80F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1F8);
  }

  return result;
}

unint64_t sub_227F24B58()
{
  result = qword_27D80F200;
  if (!qword_27D80F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F200);
  }

  return result;
}

unint64_t sub_227F24BAC()
{
  result = qword_27D80F208;
  if (!qword_27D80F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F208);
  }

  return result;
}

unint64_t sub_227F24C00()
{
  result = qword_27D80F210;
  if (!qword_27D80F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F210);
  }

  return result;
}

unint64_t sub_227F24CC8()
{
  result = qword_27D80F250;
  if (!qword_27D80F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F250);
  }

  return result;
}

unint64_t sub_227F24D20()
{
  result = qword_27D80F258;
  if (!qword_27D80F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F258);
  }

  return result;
}

unint64_t sub_227F24D78()
{
  result = qword_27D80F260;
  if (!qword_27D80F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F260);
  }

  return result;
}

unint64_t sub_227F24DD0()
{
  result = qword_27D80F268;
  if (!qword_27D80F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F268);
  }

  return result;
}

unint64_t sub_227F24E28()
{
  result = qword_27D80F270;
  if (!qword_27D80F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F270);
  }

  return result;
}

unint64_t sub_227F24E80()
{
  result = qword_27D80F278;
  if (!qword_27D80F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F278);
  }

  return result;
}

unint64_t sub_227F24ED8()
{
  result = qword_27D80F280;
  if (!qword_27D80F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F280);
  }

  return result;
}

unint64_t sub_227F24F30()
{
  result = qword_27D80F288;
  if (!qword_27D80F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F288);
  }

  return result;
}

unint64_t sub_227F24F88()
{
  result = qword_27D80F290;
  if (!qword_27D80F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F290);
  }

  return result;
}

unint64_t sub_227F24FE0()
{
  result = qword_27D80F298;
  if (!qword_27D80F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F298);
  }

  return result;
}

unint64_t sub_227F25038()
{
  result = qword_27D80F2A0;
  if (!qword_27D80F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2A0);
  }

  return result;
}

unint64_t sub_227F25090()
{
  result = qword_27D80F2A8;
  if (!qword_27D80F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2A8);
  }

  return result;
}

unint64_t sub_227F250E8()
{
  result = qword_27D80F2B0;
  if (!qword_27D80F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2B0);
  }

  return result;
}

unint64_t sub_227F25140()
{
  result = qword_27D80F2B8;
  if (!qword_27D80F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2B8);
  }

  return result;
}

unint64_t sub_227F25198()
{
  result = qword_27D80F2C0;
  if (!qword_27D80F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2C0);
  }

  return result;
}

unint64_t sub_227F251F0()
{
  result = qword_27D80F2C8;
  if (!qword_27D80F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2C8);
  }

  return result;
}

uint64_t sub_227F25260(uint64_t *a1, int a2)
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

uint64_t sub_227F252A8(uint64_t result, int a2, int a3)
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

unint64_t sub_227F2530C()
{
  result = qword_27D80F2D0;
  if (!qword_27D80F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2D0);
  }

  return result;
}

void sub_227F25360()
{
  dword_2813CE158 = 0;
  qword_2813CE168 = 0;
  unk_2813CE170 = 0;
  qword_2813CE160 = 0;
}

uint64_t sub_227F25378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30[-1] - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*a1)
  {
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    return sub_227F25778(v9);
  }

  v30[6] = a1[2];
  v29 = v10;
  v12 = sub_227F2B114();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = type metadata accessor for Settings();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_227EC12E0(v8, v16 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL);
  v16[3] = 0xD000000000000024;
  v16[4] = 0x8000000227F339A0;
  v16[5] = 0x408C200000000000;
  v16[6] = 1024;
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_227F2B644();
  v19 = [v17 initWithSuiteName_];

  if (v19)
  {
    sub_227ED3DB8(v8);
    v16[2] = v19;
    v30[3] = &type metadata for Clock;
    v30[4] = &protocol witness table for Clock;
    v20 = type metadata accessor for StorageHelper();
    v21 = type metadata accessor for PersistenceManager();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    sub_227EEF390(v24, v30, v20, &off_283B50228);
    if (v2)
    {

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    else
    {
      v26 = v25;
      type metadata accessor for ResourceManager();
      swift_allocObject();
      swift_retain_n();

      v27 = sub_227F20130(v16, v26, sub_227F257C4, v16);

      *a1 = v16;
      a1[1] = v26;
      a1[2] = v27;
      *a2 = v16;
      a2[1] = v26;
      a2[2] = v27;
    }

    v9 = 0;
    return sub_227F25778(v9);
  }

  result = sub_227F2BA74();
  __break(1u);
  return result;
}

void sub_227F256A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = sub_227F2B644();
  v10 = [v6 backgroundSessionConfigurationWithIdentifier_];

  [v10 setSessionSendsLaunchEvents_];
  v11 = [objc_opt_self() sessionWithConfiguration:v10 delegate:a1 delegateQueue:0];
  a3[3] = sub_227F257CC();
  a3[4] = &protocol witness table for NSURLSession;

  *a3 = v11;
}

uint64_t sub_227F25778(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_227F257CC()
{
  result = qword_2813CD540;
  if (!qword_2813CD540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CD540);
  }

  return result;
}

uint64_t sub_227F25818()
{
  result = sub_227F2B644();
  qword_2813CD528 = result;
  return result;
}

id static NSNotificationName.rapidResourceDeliveryAvailabilityChangeNotification.getter()
{
  if (qword_2813CD520 != -1)
  {
    swift_once();
  }

  v1 = qword_2813CD528;

  return v1;
}

uint64_t RRDManifestState.hashValue.getter()
{
  v1 = *v0;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v1);
  return sub_227F2BD44();
}

void RRDState.init()(uint64_t a1@<X8>)
{
  if (qword_2813CDBA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE158);
  sub_227F25378(&qword_2813CE160, &v4);
  if (v1)
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    if (v4)
    {
      v3 = v5;
      *a1 = v4;
      *(a1 + 16) = v3;
    }

    else
    {
      sub_227F13468();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t RRDState.manifestState(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v4 = type metadata accessor for Manifest();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = sub_227F2AFF4();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = type metadata accessor for Configuration();
  v3[15] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = sub_227F2B114();
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *(v2 + 16);
  v3[24] = v16;
  v3[25] = v17;

  return MEMORY[0x2822009F8](sub_227F25C5C, 0, 0);
}

uint64_t sub_227F25C5C()
{
  v87 = v0;
  if (qword_27D80DF20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 40);
  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_27D81B1C8);
  v84 = *(v2 + 16);
  v84(v1, v4, v3);
  v6 = sub_227F2B304();
  v7 = sub_227F2B8F4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v86[0] = v82;
    *v12 = 136315138;
    sub_227F1FD64(&qword_27D80E008, MEMORY[0x277CC9260]);
    v13 = sub_227F2BC24();
    v80 = v7;
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_227ECAC40(v13, v15, v86);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_227EB2000, v6, v80, "Updating configuration with: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x22AAAD240](v82, -1, -1);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v84(*(v0 + 184), *(v0 + 40), *(v0 + 144));
  *(v0 + 16) = 0x6E6F736A2E647272;
  *(v0 + 24) = 0xE800000000000000;
  (*(v20 + 104))(v21, *MEMORY[0x277CC91D8], v22);
  sub_227EB84D8();
  sub_227F2B104();
  (*(v20 + 8))(v21, v22);
  sub_227F2AFD4();
  v23 = sub_227F2B124();
  v25 = v24;
  v81 = v16;
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = sub_227F2AE24();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_227F2AE14();
  sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration);
  sub_227F2AE04();
  v31 = *(v0 + 176);
  v32 = *(v0 + 168);
  v34 = *(v0 + 144);
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v76 = *(v0 + 184);
  v77 = *(v0 + 128);
  v78 = *(v0 + 88);
  v79 = *(v0 + 200);
  sub_227EC15A8(v23, v25);

  v81(v32, v34);
  v81(v31, v34);
  v81(v76, v34);
  sub_227F26758(v77, v35, type metadata accessor for Configuration);

  sub_227F1A024(v35, v78);
  v36 = *(v0 + 200);
  v51 = *(v0 + 80);
  v50 = *(v0 + 88);
  v53 = *(v0 + 48);
  v52 = *(v0 + 56);

  sub_227F266E8(v50, v51);
  v54 = (*(v52 + 48))(v51, 1, v53);
  v55 = *(v0 + 80);
  if (v54 == 1)
  {
    sub_227EB8430(v55, &qword_27D80EB28, &qword_227F30440);
    v56 = sub_227F2B304();
    v57 = sub_227F2B8F4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_227EB2000, v56, v57, "Updating manifest state to: unknown", v58, 2u);
      MEMORY[0x22AAAD240](v58, -1, -1);
    }

    v59 = *(v0 + 136);
    v60 = *(v0 + 88);

    sub_227EB8430(v60, &qword_27D80EB28, &qword_227F30440);
    sub_227F267C0(v59, type metadata accessor for Configuration);
    v37 = 0;
  }

  else
  {
    v62 = *(v0 + 64);
    v61 = *(v0 + 72);
    sub_227F26758(v55, v61, type metadata accessor for Manifest);
    sub_227ED68D0(v61, v62);
    v63 = sub_227F2B304();
    v64 = sub_227F2B8F4();
    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 136);
    v67 = *(v0 + 88);
    v68 = *(v0 + 64);
    if (v65)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v86[0] = v70;
      *v69 = 136315138;
      if (*(v68 + 16))
      {
        v71 = 0x6574726F70707573;
      }

      else
      {
        v71 = 0x726F707075736E75;
      }

      if (*(v68 + 16))
      {
        v72 = 0xE900000000000064;
      }

      else
      {
        v72 = 0xEB00000000646574;
      }

      sub_227F267C0(v68, type metadata accessor for Manifest);
      v73 = sub_227ECAC40(v71, v72, v86);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_227EB2000, v63, v64, "Updating manifest state to: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AAAD240](v70, -1, -1);
      MEMORY[0x22AAAD240](v69, -1, -1);
    }

    else
    {

      sub_227F267C0(v68, type metadata accessor for Manifest);
    }

    sub_227EB8430(v67, &qword_27D80EB28, &qword_227F30440);
    sub_227F267C0(v66, type metadata accessor for Configuration);
    v74 = *(v0 + 72);
    v75 = *(v74 + 16);
    sub_227F267C0(v74, type metadata accessor for Manifest);
    if (v75)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }
  }

  v39 = *(v0 + 184);
  v38 = *(v0 + 192);
  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 160);
  v44 = *(v0 + 128);
  v43 = *(v0 + 136);
  v45 = *(v0 + 112);
  v47 = *(v0 + 80);
  v46 = *(v0 + 88);
  v83 = *(v0 + 72);
  v85 = *(v0 + 64);
  **(v0 + 32) = v37;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_227F266E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F26758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F267C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_227F26824()
{
  result = qword_27D80F2D8;
  if (!qword_27D80F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2D8);
  }

  return result;
}

uint64_t sub_227F26898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v96[-v12];
  v14 = sub_227F2B234();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v96[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v96[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v96[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v26);
  if (a3)
  {

    return sub_227F2739C(a2, a3, a4);
  }

  v103 = &v96[-v27];
  v104 = v28;
  v105 = a4;
  sub_227F27D58(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_227EB8430(v13, &unk_27D80E3B0, &unk_227F2DB00);
LABEL_23:
    v71 = *(v15 + 56);
    v70 = v105;
    return v71(v70, 1, 1, v14);
  }

  v30 = v103;
  (*(v15 + 32))(v103, v13, v14);
  v31 = v104;
  _s21RapidResourceDelivery5ClockV3now10Foundation4DateVvg_0();
  sub_227F27DC8(&qword_27D80E908);
  if ((sub_227F2B624() & 1) == 0)
  {
    if (qword_27D80DF58 != -1)
    {
      swift_once();
    }

    v49 = sub_227F2B334();
    __swift_project_value_buffer(v49, qword_27D80F2E0);
    v50 = *(v15 + 16);
    v50(v22, v30, v14);
    v51 = v104;
    v50(v19, v104, v14);
    v52 = sub_227F2B304();
    v53 = sub_227F2B8E4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v106 = v102;
      *v54 = 136315394;
      sub_227F27DC8(&unk_27D80E010);
      v101 = v52;
      LODWORD(v100) = v53;
      v55 = sub_227F2BC24();
      v57 = v56;
      v58 = v22;
      v59 = *(v15 + 8);
      v59(v58, v14);
      v60 = sub_227ECAC40(v55, v57, &v106);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      v61 = sub_227F2BC24();
      v63 = v62;
      v59(v19, v14);
      v64 = sub_227ECAC40(v61, v63, &v106);

      *(v54 + 14) = v64;
      v65 = v101;
      _os_log_impl(&dword_227EB2000, v101, v100, "lastSuccess %s is in future (now: %s), treating as no previous success", v54, 0x16u);
      v66 = v102;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v66, -1, -1);
      MEMORY[0x22AAAD240](v54, -1, -1);

      v59(v104, v14);
      v59(v30, v14);
    }

    else
    {

      v69 = *(v15 + 8);
      v69(v19, v14);
      v69(v22, v14);
      v69(v51, v14);
      v69(v30, v14);
    }

    v70 = v105;
    v71 = *(v15 + 56);
    return v71(v70, 1, 1, v14);
  }

  sub_227F2B1D4();
  sub_227F2B224();
  if (v32 <= 0.0)
  {
    v67 = *(v15 + 8);
    v67(v25, v14);
    v68 = v31;
LABEL_22:
    v67(v68, v14);
    v67(v30, v14);
    goto LABEL_23;
  }

  v33 = v32;
  if (v32 / a5 <= 0.1)
  {
    v67 = *(v15 + 8);
    v67(v25, v14);
    v68 = v104;
    goto LABEL_22;
  }

  v34 = sub_227F2BDE4();
  v35 = sub_227F2BDE4();
  v101 = v36;
  v102 = v35;
  if (qword_27D80DF58 != -1)
  {
    swift_once();
  }

  v37 = sub_227F2B334();
  v100 = __swift_project_value_buffer(v37, qword_27D80F2E0);
  v38 = sub_227F2B304();
  v39 = sub_227F2B8D4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v106 = v98;
    *v40 = 136315650;
    v41 = sub_227F2BDB4();
    v97 = v39;
    v43 = sub_227ECAC40(v41, v42, &v106);
    v99 = v34;
    v44 = v43;

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = sub_227F2BDB4();
    v47 = sub_227ECAC40(v45, v46, &v106);

    *(v40 + 14) = v47;
    *(v40 + 22) = 2048;
    *(v40 + 24) = v33;
    _os_log_impl(&dword_227EB2000, v38, v97, "low: %s, high: %s, remaining: %f", v40, 0x20u);
    v48 = v98;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v48, -1, -1);
    MEMORY[0x22AAAD240](v40, -1, -1);
  }

  sub_227F2BDA4();
  sub_227F2BDA4();
  sub_227F2BDE4();
  result = sub_227F2BDD4();
  if (result)
  {
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v72 = sub_227F2BDA4();
  v74 = v73;
  v75 = sub_227F2BDA4();
  v77 = v76;
  result = sub_227F2BDA4();
  if (v75 >= result)
  {
    v75 = 0;
  }

  v79 = result - v75;
  if (result < v75)
  {
    goto LABEL_56;
  }

  v80 = v78;
  if (v79 == -1)
  {
    v106 = 0;
    result = MEMORY[0x22AAAD250](&v106, 8);
    v81 = v106;
  }

  else
  {
    result = sub_227F13A80(v79 + 1);
    v81 = result + v75;
  }

  if (__OFADD__(v72, v81))
  {
    goto LABEL_57;
  }

  if (v81)
  {
    if (v77 >= v80)
    {
      v77 = 0;
    }

    v82 = v80 - v77;
    if (v80 >= v77)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  if (v80 <= v77)
  {
    v83 = v77;
  }

  else
  {
    v83 = v80;
  }

  if (v80 >= v77)
  {
    v84 = v77;
  }

  else
  {
    v84 = v80;
  }

  if (v84 >= v83)
  {
    v77 = 0;
  }

  else
  {
    v77 = v84;
  }

  v85 = v83 < v77;
  v82 = v83 - v77;
  if (v85)
  {
    goto LABEL_59;
  }

LABEL_48:
  if (v82 == -1)
  {
    v106 = 0;
    result = MEMORY[0x22AAAD250](&v106, 8);
    v86 = v106;
  }

  else
  {
    result = sub_227F13A80(v82 + 1);
    v86 = result + v77;
  }

  if (__OFADD__(v74, v86))
  {
    goto LABEL_58;
  }

  sub_227F2BDC4();
  v87 = sub_227F2BDA4();
  sub_227F2BDA4();
  v89 = v88 / 1.0e18 + v87;
  v90 = sub_227F2B304();
  v91 = sub_227F2B8D4();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = v89;
    _os_log_impl(&dword_227EB2000, v90, v91, "jittered scheduleInterval: %f", v92, 0xCu);
    MEMORY[0x22AAAD240](v92, -1, -1);
  }

  v94 = v104;
  v93 = v105;
  sub_227F2B1D4();
  v95 = *(v15 + 8);
  v95(v25, v14);
  v95(v94, v14);
  v95(v103, v14);
  return (*(v15 + 56))(v93, 0, 1, v14);
}

uint64_t sub_227F272D4()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_27D80F2E0);
  v1 = __swift_project_value_buffer(v0, qword_27D80F2E0);
  if (qword_27D80DF28 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D81B1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_227F2739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_227F2B234();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F27D58(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_227EB8430(v9, &unk_27D80E3B0, &unk_227F2DB00);
    if (qword_27D80DF58 == -1)
    {
LABEL_3:
      v15 = sub_227F2B334();
      __swift_project_value_buffer(v15, qword_27D80F2E0);
      v16 = sub_227F2B304();
      v17 = sub_227F2B8E4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v16, v17, "Unexpectedly no lastAttempt provided despite %ld failures", v18, 0xCu);
        MEMORY[0x22AAAD240](v18, -1, -1);
      }

      v19 = 1;
      return (*(v11 + 56))(a3, v19, 1, v10);
    }

LABEL_49:
    swift_once();
    goto LABEL_3;
  }

  (*(v11 + 32))(v14, v9, v10);
  v20 = a2 * a2;
  if ((a2 * a2) >> 64 != (a2 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_51;
  }

  v21 = 60 * v20;
  if ((v20 * 60) >> 64 != (60 * v20) >> 63)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v22 = v21;
  if (v21 > 14400.0)
  {
    v22 = 14400.0;
  }

  v23 = v22 * 0.3;
  if (COERCE__INT64(fabs(v22 * 0.3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_227F2BDE4();
  if (sub_227F2BDD4())
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v51 = v10;
  a2 = sub_227F2BDA4();
  v25 = v24;
  v10 = sub_227F2BDA4();
  v27 = v26;
  v28 = sub_227F2BDA4();
  if (v10 >= v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v10;
  }

  v31 = v28 - v30;
  if (v28 < v30)
  {
    goto LABEL_56;
  }

  v32 = v29;
  if (v31 == -1)
  {
    goto LABEL_26;
  }

  result = sub_227F13A80(v31 + 1);
  v34 = result + v30;
  v35 = __OFADD__(a2, result + v30);
  a2 += result + v30;
  if (v35)
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    while (v34)
    {
      if (v27 >= v32)
      {
        v36 = 0;
      }

      else
      {
        v36 = v27;
      }

      v37 = v32 - v36;
      if (v32 >= v36)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_26:
      v52 = 0;
      result = MEMORY[0x22AAAD250](&v52, 8);
      v34 = v52;
      v35 = __OFADD__(a2, v52);
      a2 += v52;
      if (v35)
      {
        goto LABEL_28;
      }
    }
  }

  if (v32 <= v27)
  {
    v38 = v27;
  }

  else
  {
    v38 = v32;
  }

  if (v32 >= v27)
  {
    v39 = v27;
  }

  else
  {
    v39 = v32;
  }

  if (v39 >= v38)
  {
    v36 = 0;
  }

  else
  {
    v36 = v39;
  }

  v40 = v38 < v36;
  v37 = v38 - v36;
  if (!v40)
  {
LABEL_39:
    if (v37 == -1)
    {
      v52 = 0;
      MEMORY[0x22AAAD250](&v52, 8);
      if (!__OFADD__(v25, v52))
      {
LABEL_41:
        sub_227F2BDC4();
        if (qword_27D80DF58 == -1)
        {
LABEL_42:
          v41 = sub_227F2B334();
          __swift_project_value_buffer(v41, qword_27D80F2E0);
          v42 = sub_227F2B304();
          v43 = sub_227F2B8D4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v52 = v45;
            *v44 = 136315138;
            v46 = sub_227F2BDB4();
            v50 = v11;
            v48 = sub_227ECAC40(v46, v47, &v52);
            v11 = v50;

            *(v44 + 4) = v48;
            _os_log_impl(&dword_227EB2000, v42, v43, "jittered retry interval: %s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v45);
            MEMORY[0x22AAAD240](v45, -1, -1);
            MEMORY[0x22AAAD240](v44, -1, -1);
          }

          sub_227F2BDA4();
          sub_227F2BDA4();
          sub_227F2B1D4();
          v10 = v51;
          (*(v11 + 8))(v14, v51);
          v19 = 0;
          return (*(v11 + 56))(a3, v19, 1, v10);
        }

LABEL_57:
        swift_once();
        goto LABEL_42;
      }
    }

    else if (!__OFADD__(v25, sub_227F13A80(v37 + 1) + v36))
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t _s21RapidResourceDelivery8ScheduleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Schedule();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D80F308, &qword_227F334D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_227EC1CF8(a1, &v23 - v16);
  sub_227EC1CF8(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_227EC1CF8(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_227F2B1F4();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_227F27CFC(v17);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_227EB8430(v17, qword_27D80F308, &qword_227F334D8);
    v20 = 0;
    return v20 & 1;
  }

  sub_227F27CFC(v17);
  v20 = 1;
  return v20 & 1;
}

uint64_t type metadata accessor for Schedule()
{
  result = qword_27D80F2F8;
  if (!qword_27D80F2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227F27CA4()
{
  v0 = sub_227F2B234();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_227F27CFC(uint64_t a1)
{
  v2 = type metadata accessor for Schedule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F27D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F27DC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227F2B234();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227F27E0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227F27E6C(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v12];
  v4 = v12[0];
  if (v3)
  {
    v5 = sub_227F2B164();
    v7 = v6;

    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_227F2BD84();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_227F28254();
    sub_227F2BC94();
    sub_227EC15A8(v5, v7);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = v4;
    sub_227F2AFC4();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_227F27FC4(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F2BD64();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_227F28200();
    sub_227F2BC84();
    sub_227EB7BD0(0, &qword_27D80F3F8, 0x277CCAAC8);
    v5 = sub_227F2B904();
    v4 = v5;
    if (v5)
    {
      sub_227EC15A8(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    v4 = "yChangeNotification";
    sub_227F2B9E4();
    swift_allocError();
    sub_227F2B9C4();
    swift_willThrow();
    sub_227EC15A8(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

char *sub_227F281A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = *(a2 + 16);
  result = sub_227F27FC4(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227F281F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227F28154();
}

unint64_t sub_227F28200()
{
  result = qword_27D80F3F0;
  if (!qword_27D80F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F3F0);
  }

  return result;
}

unint64_t sub_227F28254()
{
  result = qword_27D80F400;
  if (!qword_27D80F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F400);
  }

  return result;
}

uint64_t sub_227F282D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227F2B6B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v14 = sub_227F2B644();
  v15 = [v13 stringForKey_];

  if (v15)
  {
    v37 = a1;
    v16 = sub_227F2B674();
    v18 = v17;

    sub_227F2B6A4();
    v36 = sub_227F2B684();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    if (v20 >> 60 == 15)
    {

      v21 = 1;
      a1 = v37;
    }

    else
    {
      if (qword_2813CD580 != -1)
      {
        swift_once();
      }

      v22 = sub_227F2B334();
      v23 = __swift_project_value_buffer(v22, qword_2813CE088);

      v24 = sub_227F2B304();
      v25 = sub_227F2B8D4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v35[1] = v23;
        v27 = v26;
        v28 = swift_slowAlloc();
        v38 = v28;
        *v27 = 136315138;
        v29 = sub_227ECAC40(v16, v18, &v38);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_227EB2000, v24, v25, "Using configuration override: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x22AAAD240](v28, -1, -1);
        MEMORY[0x22AAAD240](v27, -1, -1);
      }

      else
      {
      }

      v30 = v36;
      a1 = v37;
      v31 = sub_227F2AE24();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_227F2AE14();
      sub_227F28970();
      sub_227F2AE04();
      sub_227EC1650(v30, v20);

      sub_227ED3EC8(v7, a1);
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  return (*(v4 + 56))(a1, v21, 1, v3);
}

uint64_t sub_227F28788()
{
  v1 = *(v0 + 32);

  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, &qword_27D80E310, &unk_227F2D990);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for Settings()
{
  result = qword_2813CD698;
  if (!qword_2813CD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227F28860()
{
  sub_227F28918();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_227F28918()
{
  if (!qword_2813CE038)
  {
    sub_227F2B114();
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CE038);
    }
  }
}

unint64_t sub_227F28970()
{
  result = qword_27D80EBA8;
  if (!qword_27D80EBA8)
  {
    type metadata accessor for Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBA8);
  }

  return result;
}

uint64_t sub_227F289E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E378, &qword_227F2FE20);
  result = sub_227F2BD54();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227F28A74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 8;
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_227F28BC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

unint64_t sub_227F28DB8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v86 = a4;
  v88 = a1;
  v6 = sub_227F2AED4();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FileInfo(0);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DownloadOutcome();
  v11 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v79 - v16;
  v18 = sub_227F2B114();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v89 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F4F0, &qword_227F33690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227F2E510;
  *(inited + 32) = 0x656372756F736572;
  *(inited + 40) = 0xE800000000000000;
  v82 = a3;
  *(inited + 48) = sub_227F2B934();
  *(inited + 56) = 7107189;
  *(inited + 64) = 0xE300000000000000;
  v90 = a2;
  sub_227F2B004();
  v26 = sub_227F2B644();

  *(inited + 72) = v26;
  v27 = sub_227ECCC60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F4F8, &qword_227F33698);
  swift_arrayDestroy();
  sub_227EC12E0(v86, v17);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_227F2B004();
    v38 = sub_227F2B644();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v27;
    sub_227ECC070(v38, 0x656372756F736572, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
    v27 = v91;
    (*(v19 + 8))(v24, v18);
    goto LABEL_8;
  }

  sub_227ED3DB8(v17);
  if (a3 != 2)
  {
LABEL_8:
    v29 = v88;
    goto LABEL_9;
  }

  v28 = type metadata accessor for DownloadResponse();
  v29 = v88;
  v30 = *(v88 + *(v28 + 24));
  if (v30)
  {
    if (*(v30 + 16))
    {
      v31 = sub_227ECA808(0x2D746E65746E6F43, 0xEB0000000035444DLL);
      if (v32)
      {
        v33 = (*(v30 + 56) + 16 * v31);
        v34 = *v33;
        v35 = v33[1];

        v36 = sub_227F2B644();

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v27;
        sub_227ECC070(v36, 0x656372756F736572, 0xEF6E6F6973726556, v37);
        v27 = v91;
      }
    }
  }

LABEL_9:
  sub_227F296CC(v29, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v80;
      sub_227ECDCD8(v13, v80);
      v42 = *(v41 + *(v81 + 28));
      sub_227F29730(v41);
    }
  }

  else
  {
    v43 = *(v13 + 1);
    v44 = v13[16];
    v45 = *(v13 + 4);

    if (v44)
    {
      v47 = v89;
      v46 = v90;
      goto LABEL_15;
    }
  }

  v47 = v89;
  v46 = v90;
  v48 = sub_227F2B894();
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v27;
  sub_227ECC070(v48, 0x6F43737574617473, 0xEA00000000006564, v49);
  v27 = v91;
LABEL_15:
  v50 = *(v29 + *(type metadata accessor for DownloadResponse() + 20));
  if (v50)
  {
    v51 = [v50 taskInterval];
    v52 = v83;
    sub_227F2AEB4();

    sub_227F2AEC4();
    (*(v84 + 8))(v52, v85);
    v53 = sub_227F2B884();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v27;
    sub_227ECC070(v53, 0x65746E496B736174, 0xEC0000006C617672, v54);
    v27 = v91;
  }

  if (qword_27D80DF40 != -1)
  {
    swift_once();
  }

  v55 = sub_227F2B334();
  __swift_project_value_buffer(v55, qword_27D81B210);
  (*(v19 + 16))(v47, v46, v18);

  v56 = sub_227F2B304();
  v57 = sub_227F2B8D4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v58 = 134219010;
    *(v58 + 4) = v82;
    *(v58 + 12) = 2080;
    v61 = sub_227F2B004();
    v62 = v47;
    v64 = v63;
    (*(v19 + 8))(v62, v18);
    v65 = sub_227ECAC40(v61, v64, &v91);

    *(v58 + 14) = v65;
    *(v58 + 22) = 2112;
    if (*(v27 + 16) && (v66 = sub_227ECA808(0x656372756F736572, 0xEF6E6F6973726556), (v67 & 1) != 0))
    {
      v68 = *(*(v27 + 56) + 8 * v66);
      *(v58 + 24) = v68;
      v69 = v68;
    }

    else
    {
      v68 = 0;
      *(v58 + 24) = 0;
    }

    *v59 = v68;
    *(v58 + 32) = 2112;
    if (*(v27 + 16) && (v70 = sub_227ECA808(0x6F43737574617473, 0xEA00000000006564), (v71 & 1) != 0))
    {
      v72 = *(*(v27 + 56) + 8 * v70);
      *(v58 + 34) = v72;
      v73 = v72;
    }

    else
    {
      v72 = 0;
      *(v58 + 34) = 0;
    }

    v59[1] = v72;
    *(v58 + 42) = 2112;
    if (*(v27 + 16) && (v74 = sub_227ECA808(0x65746E496B736174, 0xEC0000006C617672), (v75 & 1) != 0))
    {
      v76 = *(*(v27 + 56) + 8 * v74);
      *(v58 + 44) = v76;
      v77 = v76;
    }

    else
    {
      v76 = 0;
      *(v58 + 44) = 0;
    }

    v59[2] = v76;
    _os_log_impl(&dword_227EB2000, v56, v57, "reportFetchMetrics: %lu, url: %s, resourceVersion: %@, statusCode: %@, taskInterval: %@", v58, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4A0, &qword_227F2DE40);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AAAD240](v60, -1, -1);
    MEMORY[0x22AAAD240](v58, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v47, v18);
  }

  return v27;
}

uint64_t sub_227F296CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadOutcome();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F29730(uint64_t a1)
{
  v2 = type metadata accessor for FileInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F297B0()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    sub_227F2A374();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v0 + 2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_227F29910;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227F29910()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_227F29A3C, v3, 0);
}

uint64_t sub_227F29A3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227F29A9C(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v10, a1, v6);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_227F2A038(0, v11[2] + 1, 1, v11, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_227F2A038(v13 > 1, v14 + 1, 1, v11, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v15 = *a2;
  v16 = *(a3 + 112);
  *(a3 + 112) = v15;
}

uint64_t sub_227F29CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = *(v0 + 112);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (v7[2])
  {
    (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
    v8 = v7[2];
    if (v8)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v7;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v7[3] >> 1)
      {
        v7 = sub_227F2A038(isUniquelyReferenced_nonNull_native, v8, 1, v7, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
        v13 = v7;
      }

      sub_227F2A220(0, 1, 0);
      v10 = *(v1 + 112);
      *(v1 + 112) = v7;

      sub_227F2B7E4();
      return (*(v3 + 8))(v6, v2);
    }

    __break(1u);
LABEL_12:
    result = sub_227F2BA74();
    __break(1u);
    return result;
  }

  *(v0 + 112) = 0;
}

uint64_t sub_227F29ECC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227F29F28(uint64_t *a1, unsigned int a2)
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

uint64_t sub_227F29F78(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227F29FCC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_227F29FE4(void *result, int a2)
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

size_t sub_227F2A038(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

unint64_t sub_227F2A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_227F2A374()
{
  result = qword_27D80F510;
  if (!qword_27D80F510)
  {
    type metadata accessor for TokenBucket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F510);
  }

  return result;
}

uint64_t sub_227F2A3D0@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v19[2] = *MEMORY[0x277D85DE8];
  v1 = sub_227F2AFF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_227F2B114();
  v6 = *(v18[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_227F2B044();
  v19[0] = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v19];

  if (v12)
  {
    v13 = v19[0];
    sub_227F2B064();
    v19[0] = sub_227F2B024();
    v19[1] = v14;
    (*(v2 + 104))(v5, *MEMORY[0x277CC91C0], v1);
    sub_227EB84D8();
    sub_227F2B104();
    (*(v2 + 8))(v5, v1);

    result = (*(v6 + 8))(v9, v18[0]);
  }

  else
  {
    v16 = v19[0];
    sub_227F2AFC4();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_227F2A660()
{
  v2 = sub_227F2AFA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B114();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_227F2B054();
  if (v1)
  {
  }

  else if (v12)
  {
    (*(v8 + 16))(v11, v0, v7);
    sub_227F2AF94();
    sub_227F2AF64();
    sub_227F2B034();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_227F2A850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227F2C980;
  v8 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v9 = v8;
  sub_227F2AA7C(inited);
  swift_setDeallocating();
  sub_227F2AC70(inited + 32);
  sub_227F2B014();

  v10 = sub_227F2AFA4();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_227F2ACCC(v6, v4);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_227F2AD3C(v6);
    sub_227F2AD3C(v4);
    return 0;
  }

  else
  {
    v13 = sub_227F2AF84();
    sub_227F2AD3C(v6);
    (*(v11 + 8))(v4, v10);
    return v13;
  }
}

uint64_t sub_227F2AA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80F520, &qword_227F33738);
    v3 = sub_227F2B984();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_227F2B674();
      sub_227F2BD14();
      v29 = v7;
      sub_227F2B704();
      v9 = sub_227F2BD44();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_227F2B674();
        v20 = v19;
        if (v18 == sub_227F2B674() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_227F2BC64();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_227F2AC70(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F2ACCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F2AD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}