uint64_t sub_214940470()
{
  v51 = v0;
  sub_21489B8F0(v0[39], v0[40]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v49 = v0[42];
  v0[11] = v49;
  v45 = v0[35];
  v47 = v0[36];
  v1 = v0[33];
  v43 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[13];
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v42 = v0[7];
  v8 = v0[8];
  v1(v3, v2, v4);
  v45(v5, v7, v6);

  v9 = sub_21498E670();
  LOBYTE(v2) = sub_21498FBB0();

  v44 = v2;
  v10 = os_log_type_enabled(v9, v2);
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[30];
  v46 = v11;
  v48 = v0[29];
  v14 = v0[28];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  if (v10)
  {
    v41 = v0[28];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v18 = 136315394;
    sub_214941B6C(&unk_281192700, MEMORY[0x277CC9260]);
    v39 = v13;
    v40 = v12;
    v20 = sub_214990050();
    v22 = v21;
    v46(v15, v17);
    v23 = sub_2149079F4(v20, v22, &v50);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_2149079F4(v42, v8, &v50);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_21488E000, v9, v44, "Network request failed with url: %s | Error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    v40(v39, v41);
  }

  else
  {

    v46(v15, v17);
    v12(v13, v14);
  }

  v25 = v0[18];
  v27 = v0[14];
  v26 = v0[15];
  v28 = *(v27 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions);
  sub_21498FA20();
  v29 = *(v27 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions);
  sub_21498FA20();

  v31 = v0[30];
  v30 = v0[31];
  v33 = v0[26];
  v32 = v0[27];
  v35 = v0[22];
  v34 = v0[23];
  v36 = v0[21];

  v37 = v0[1];

  return v37();
}

uint64_t *sub_214940828(uint64_t *a1)
{
  v3 = v1;
  v89 = *v3;
  v90 = v2;
  v85 = sub_21498E890();
  v83 = *(v85 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v86 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v76 - v12;
  v14 = sub_21498E900();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v14);
  v88 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C708, &qword_21499B740);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v76 - v20;
  v3[2] = swift_getKeyPath();
  *(v3 + 24) = 0;
  v23 = a1[3];
  v22 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_214941AB4();
  v24 = v90;
  sub_2149901B0();
  if (v24)
  {
    v26 = v3[2];

LABEL_4:
    v27 = *(*v3 + 48);
    v28 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v91);
    return v3;
  }

  v90 = v18;
  LOBYTE(v92[0]) = 0;
  sub_214941B6C(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  v25 = v88;
  sub_21498FFA0();
  (*(v87 + 32))(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference, v25, v14);
  LOBYTE(v92[0]) = 1;
  sub_21498FF40();
  v80 = v14;
  sub_2148B4C68(v13, v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, &qword_27CA1A800, &unk_214993100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  LOBYTE(v92[0]) = 6;
  sub_214941B08();
  v30 = v84;
  v79 = 0;
  sub_21498FF40();
  v31 = v90;
  sub_2148B4C68(v30, v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v93) = 3;
  v33 = sub_2148AAA9C();
  sub_21498FF40();
  v88 = 0;
  v76[1] = v33;
  v76[2] = v32;
  v77 = v21;
  v78 = v17;
  if (*&v92[0])
  {
    v37 = *&v92[0];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);
  if (v38)
  {
    v93 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v38, 0);
    v39 = v93;
    v84 = *(v83 + 16);
    v40 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v76[0] = v37;
    v41 = v37 + v40;
    v42 = *(v83 + 72);
    v81 = v83 + 16;
    v82 = v42;
    v43 = (v83 + 8);
    v45 = v85;
    v44 = v86;
    v46 = v87;
    do
    {
      (v84)(v44, v41, v45);
      sub_21498E880();
      (*v43)(v44, v45);
      v93 = v39;
      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2148A9BD8((v47 > 1), v48 + 1, 1);
        v39 = v93;
      }

      *(v39 + 16) = v48 + 1;
      sub_2148970B8(v92, v39 + 40 * v48 + 32);
      v41 += v82;
      --v38;
      v45 = v85;
      v44 = v86;
    }

    while (v38);

    v31 = v90;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    v45 = v85;
    v44 = v86;
    v46 = v87;
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onSuccessActions) = v39;
  LOBYTE(v93) = 4;
  v49 = v77;
  v50 = v78;
  v51 = v88;
  sub_21498FF40();
  v88 = v51;
  if (v51)
  {
    (*(v31 + 8))(v49, v50);
    v52 = 0;
    goto LABEL_36;
  }

  if (*&v92[0])
  {
    v53 = *&v92[0];
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v54 = *(v53 + 16);
  if (v54)
  {
    v93 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v54, 0);
    v55 = v93;
    v87 = *(v83 + 16);
    v56 = *(v83 + 80);
    v81 = v53;
    v82 = v83 + 16;
    v57 = v53 + ((v56 + 32) & ~v56);
    v84 = *(v83 + 72);
    v58 = (v83 + 8);
    do
    {
      (v87)(v44, v57, v45);
      sub_21498E880();
      (*v58)(v44, v45);
      v93 = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_2148A9BD8((v59 > 1), v60 + 1, 1);
        v55 = v93;
      }

      *(v55 + 16) = v60 + 1;
      sub_2148970B8(v92, v55 + 40 * v60 + 32);
      v45 = v85;
      v57 += v84;
      --v54;
      v44 = v86;
    }

    while (v54);

    v31 = v90;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions) = v55;
  LOBYTE(v93) = 5;
  v61 = v77;
  v62 = v78;
  v63 = v88;
  sub_21498FF40();
  v88 = v63;
  if (v63)
  {
    (*(v31 + 8))(v61, v62);
    v52 = 1;
LABEL_36:
    v65 = v79;
    v64 = v80;
    v34 = v3[2];

    (*(v46 + 8))(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference, v64);
    if (!v65)
    {
      sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, &qword_27CA1A800, &unk_214993100);
    }

    sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
    v36 = *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onSuccessActions);

    if (v52)
    {
      v35 = *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions);
    }

    goto LABEL_4;
  }

  if (*&v92[0])
  {
    v66 = *&v92[0];
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v67 = *(v66 + 16);
  if (v67)
  {
    v93 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v67, 0);
    v68 = v93;
    v69 = *(v83 + 16);
    v70 = *(v83 + 80);
    v87 = v66;
    v71 = v66 + ((v70 + 32) & ~v70);
    v89 = *(v83 + 72);
    v72 = (v83 + 8);
    v83 += 16;
    do
    {
      v73 = v86;
      v69(v86, v71, v45);
      sub_21498E880();
      (*v72)(v73, v45);
      v93 = v68;
      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_2148A9BD8((v74 > 1), v75 + 1, 1);
        v68 = v93;
      }

      *(v68 + 16) = v75 + 1;
      sub_2148970B8(v92, v68 + 40 * v75 + 32);
      v71 += v89;
      --v67;
      v45 = v85;
    }

    while (v67);
    (*(v90 + 8))(v77, v78);
  }

  else
  {

    (*(v31 + 8))(v61, v62);
    v68 = MEMORY[0x277D84F90];
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions) = v68;
  __swift_destroy_boxed_opaque_existential_1(v91);
  return v3;
}

uint64_t sub_214941348()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference;
  v3 = sub_21498E900();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_21489DFCC(&v0[OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method], &qword_27CA1A800, &unk_214993100);
  sub_21489DFCC(&v0[OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody], &qword_27CA1A808, &unk_21499B730);
  v4 = *&v0[OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onSuccessActions];

  v5 = *&v0[OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions];

  v6 = *&v0[OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAHttpRequestAction()
{
  result = qword_27CA1C6E8;
  if (!qword_27CA1C6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2149414B0()
{
  v0 = sub_21498E900();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2149415D0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_214941628();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2149415D0()
{
  if (!qword_27CA1A828)
  {
    sub_21498E900();
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A828);
    }
  }
}

void sub_214941628()
{
  if (!qword_27CA1A830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A838, &qword_21499B640);
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A830);
    }
  }
}

uint64_t sub_21494168C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return sub_21493F080(a1, a2);
}

uint64_t *sub_21494185C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214940828(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_214941944(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_21498E1B0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_214899138;

  return sub_21493F6A0(a1, v9, v10, v1 + v5, v11, v12, v13, v14);
}

unint64_t sub_214941AB4()
{
  result = qword_27CA1C710;
  if (!qword_27CA1C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C710);
  }

  return result;
}

unint64_t sub_214941B08()
{
  result = qword_27CA1A928;
  if (!qword_27CA1A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A838, &qword_21499B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A928);
  }

  return result;
}

uint64_t sub_214941B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214941BC8()
{
  result = qword_27CA1C718;
  if (!qword_27CA1C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C718);
  }

  return result;
}

unint64_t sub_214941C20()
{
  result = qword_27CA1C720;
  if (!qword_27CA1C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C720);
  }

  return result;
}

unint64_t sub_214941C78()
{
  result = qword_27CA1C728;
  if (!qword_27CA1C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C728);
  }

  return result;
}

uint64_t sub_214941CCC()
{
  v0 = sub_21498FEF0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_214941D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_214941D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_214941E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_214941E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214941ED4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C758, &qword_21499BB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149437E4();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  sub_214990000();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v25[14] = 1;
  sub_21498FFC0();
  v15 = v3[4];
  v16 = v3[5];
  v25[13] = 2;
  sub_214990000();
  v17 = v3[6];
  v18 = v3[7];
  v25[12] = 3;
  sub_214990000();
  v19 = v3[8];
  v20 = v3[9];
  v25[11] = 4;
  sub_214990000();
  v21 = v3[10];
  v22 = v3[11];
  v25[10] = 5;
  sub_214990000();
  v24 = *(v3 + 96);
  v25[9] = 6;
  sub_214990010();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2149420F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C740, &qword_21499BAF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214943728();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v29 = 0;
  sub_214990000();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v28 = 1;
    sub_21498FFC0();
    v15 = v3[4];
    v16 = v3[5];
    v27 = 2;
    sub_21498FFC0();
    v17 = v3[6];
    v18 = v3[7];
    v26 = 3;
    sub_21498FFC0();
    v25 = v3[8];
    v24[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CF8);
    sub_21498FFE0();
    v19 = v3[9];
    v20 = v3[10];
    v24[14] = 5;
    sub_21498FFC0();
    v21 = v3[11];
    v22 = v3[12];
    v24[13] = 6;
    sub_214990000();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21494238C()
{
  v1 = *v0;
  v2 = 0x6E6569736E617274;
  v3 = 0x737574617473;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 6645601;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x79726F6765746163;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21494246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214942784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214942494(uint64_t a1)
{
  v2 = sub_2149437E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149424D0(uint64_t a1)
{
  v2 = sub_2149437E4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21494250C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2149429D8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_214942584()
{
  v1 = *v0;
  v2 = 0x6E6569736E617274;
  v3 = 0x6E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  if (v1 != 3)
  {
    v2 = 0x69726F6765746163;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  *v0;
  if (*v0 <= 2u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21494266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214942F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214942694(uint64_t a1)
{
  v2 = sub_214943728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149426D0(uint64_t a1)
{
  v2 = sub_214943728();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21494270C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_214943180(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_214942784(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A2D60 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2149429D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C748, &qword_21499BAF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149437E4();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v11 = sub_21498FF60();
  v38 = v12;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_21498FF20();
  *(&v37 + 1) = v13;
  LOBYTE(v46[0]) = 2;
  v35 = sub_21498FF60();
  v15 = v14;
  LOBYTE(v46[0]) = 3;
  v16 = sub_21498FF60();
  v36 = v17;
  v31 = v16;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  v30 = sub_21498FF60();
  v33 = v18;
  LOBYTE(v46[0]) = 5;
  v29 = sub_21498FF60();
  v32 = v19;
  v48 = 6;
  v20 = sub_21498FF70();
  (*(v6 + 8))(v9, v5);
  LODWORD(v34) = v20 & 1;
  *&v39 = v11;
  v21 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  v22 = *(&v37 + 1);
  *&v41 = v35;
  *(&v41 + 1) = v15;
  *&v42 = v31;
  v23 = v36;
  *(&v42 + 1) = v36;
  *&v43 = v30;
  v24 = v33;
  *(&v43 + 1) = v33;
  *&v44 = v29;
  *(&v44 + 1) = v32;
  v45 = v34;
  sub_2148D93C8(&v39, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v11;
  v46[1] = v21;
  v46[2] = v37;
  v46[3] = v22;
  v46[4] = v35;
  v46[5] = v15;
  v46[6] = v31;
  v46[7] = v23;
  v46[8] = v30;
  v46[9] = v24;
  v46[10] = v29;
  v46[11] = v32;
  v47 = v34;
  result = sub_21493BAEC(v46);
  v26 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v26;
  *(a2 + 96) = v45;
  v27 = v40;
  *a2 = v39;
  *(a2 + 16) = v27;
  v28 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_214942F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002149A2D00 == a2;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002149A2D20 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A2D40 == a2 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_214943180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C730, &unk_21499BAE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214943728();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  LOBYTE(v48[0]) = 1;
  v14 = sub_21498FF20();
  *(&v40 + 1) = v15;
  *&v40 = v14;
  LOBYTE(v48[0]) = 2;
  v37 = sub_21498FF20();
  v39 = v16;
  LOBYTE(v48[0]) = 3;
  v17 = sub_21498FF20();
  v38 = v18;
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  LOBYTE(v41) = 4;
  sub_2148F6A8C(&qword_281190CE8);
  sub_21498FF40();
  v33 = 0;
  v34 = v48[0];
  LOBYTE(v48[0]) = 5;
  v32 = sub_21498FF20();
  v36 = v19;
  v59 = 6;
  v20 = sub_21498FF60();
  v21 = *(v6 + 8);
  v22 = v20;
  v33 = v23;
  v21(v9, v5);
  *&v41 = v11;
  *(&v41 + 1) = v13;
  v42 = v40;
  *&v43 = v37;
  v24 = v39;
  *(&v43 + 1) = v39;
  *&v44 = v35;
  v25 = v38;
  *(&v44 + 1) = v38;
  *&v45 = v34;
  *(&v45 + 1) = v32;
  *&v46 = v36;
  v26 = v33;
  *(&v46 + 1) = v22;
  v47 = v33;
  sub_21494377C(&v41, v48);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48[0] = v11;
  v48[1] = v13;
  v49 = v40;
  v50 = v37;
  v51 = v24;
  v52 = v35;
  v53 = v25;
  v54 = v34;
  v55 = v32;
  v56 = v36;
  v57 = v22;
  v58 = v26;
  result = sub_2149437B4(v48);
  v28 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v28;
  *(a2 + 96) = v47;
  v29 = v42;
  *a2 = v41;
  *(a2 + 16) = v29;
  v30 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_214943728()
{
  result = qword_27CA1C738;
  if (!qword_27CA1C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C738);
  }

  return result;
}

unint64_t sub_2149437E4()
{
  result = qword_27CA1C750;
  if (!qword_27CA1C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C750);
  }

  return result;
}

unint64_t sub_21494385C()
{
  result = qword_27CA1C760;
  if (!qword_27CA1C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C760);
  }

  return result;
}

unint64_t sub_2149438B4()
{
  result = qword_27CA1C768;
  if (!qword_27CA1C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C768);
  }

  return result;
}

unint64_t sub_21494390C()
{
  result = qword_27CA1C770;
  if (!qword_27CA1C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C770);
  }

  return result;
}

unint64_t sub_214943964()
{
  result = qword_27CA1C778;
  if (!qword_27CA1C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C778);
  }

  return result;
}

unint64_t sub_2149439BC()
{
  result = qword_27CA1C780;
  if (!qword_27CA1C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C780);
  }

  return result;
}

unint64_t sub_214943A14()
{
  result = qword_27CA1C788[0];
  if (!qword_27CA1C788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1C788);
  }

  return result;
}

uint64_t sub_214943A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214943AE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

char *sub_214943C24(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_214943E88(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_21498EFD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C810, &qword_21499BDB0);
  sub_214944720();
  return sub_21498EB60();
}

__n128 sub_214943F14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C840, &qword_21499BDC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v79 - v7;
  v9 = sub_21498F080();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = *(v14 + 16);
  v19(&v79 - v20, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C848, &unk_21499BDD0);
  if (swift_dynamicCast())
  {
    v22 = v81;
    v21 = v82;
    sub_2148970B8(v92, v94);
    v23 = sub_2149448B4(v94);
    if (v24)
    {
      *&v95 = v23;
      *(&v95 + 1) = v24;
      sub_21489CA00();
      v25 = sub_21498F100();
      v79 = v26;
      v80 = v25;
      v28 = v27;
      v30 = v29;
      (*(v22 + 104))(v13, *MEMORY[0x277CE0A68], v21);
      v31 = *MEMORY[0x277CE0980];
      v32 = sub_21498F020();
      v33 = *(v32 - 8);
      (*(v33 + 104))(v8, v31, v32);
      (*(v33 + 56))(v8, 0, 1, v32);
      sub_21498F040();
      sub_21489DFCC(v8, &qword_27CA1C840, &qword_21499BDC8);
      (*(v22 + 8))(v13, v21);
      v34 = v80;
      v35 = sub_21498F0E0();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      sub_2148C85D4(v34, v28, v30 & 1);

      v42 = sub_21498EFF0();
      LOBYTE(v89) = 0;
      *&v95 = v35;
      *(&v95 + 1) = v37;
      v96.n128_u8[0] = v39 & 1;
      v96.n128_u64[1] = v41;
      v97[0] = v42;
      memset(&v97[8], 0, 32);
      *&v97[40] = 1;
    }

    else
    {
      sub_21498EE40();
      v63 = sub_21498F0F0();
      v65 = v64;
      v67 = v66;
      sub_21498F2A0();
      v68 = sub_21498F0A0();
      v70 = v69;
      v72 = v71;
      v74 = v73;

      sub_2148C85D4(v63, v65, v67 & 1);

      v75 = sub_21498EFF0();
      LOBYTE(v89) = 1;
      *&v95 = v68;
      *(&v95 + 1) = v70;
      v96.n128_u8[0] = v72 & 1;
      v96.n128_u64[1] = v74;
      v97[0] = v75;
      memset(&v97[8], 0, 32);
      *&v97[40] = 257;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_214944830();
    sub_21498EE90();
    v96 = v86;
    *v97 = v87;
    *&v97[16] = v88[0];
    *&v97[26] = *(v88 + 10);
    v95 = v85;
    v84 = 0;
    v97[42] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C828, &qword_21499BDB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_2149447AC();
    sub_214944830();
    sub_21498EE90();
    __swift_destroy_boxed_opaque_existential_1(v94);
    v96 = v90;
    *v97 = v91[0];
    *&v97[16] = v91[1];
    *&v97[27] = *(&v91[1] + 11);
    v95 = v89;
  }

  else
  {
    memset(v92, 0, sizeof(v92));
    v93 = 0;
    sub_21489DFCC(v92, &qword_27CA1C410, &unk_21499B410);
    v19(v18, a1, a2);
    *&v95 = sub_21498F8D0();
    *(&v95 + 1) = v43;
    sub_21489CA00();
    v44 = sub_21498F100();
    v79 = v45;
    v80 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v81;
    v50 = v82;
    (*(v81 + 104))(v13, *MEMORY[0x277CE0A68], v82);
    v52 = *MEMORY[0x277CE0980];
    v53 = sub_21498F020();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v8, v52, v53);
    (*(v54 + 56))(v8, 0, 1, v53);
    sub_21498F040();
    sub_21489DFCC(v8, &qword_27CA1C840, &qword_21499BDC8);
    (*(v51 + 8))(v13, v50);
    v55 = v80;
    v56 = sub_21498F0E0();
    v58 = v57;
    LOBYTE(v51) = v59;
    v61 = v60;

    sub_2148C85D4(v55, v47, v49 & 1);

    v62 = sub_21498EFF0();
    LOBYTE(v95) = v51 & 1;
    LOBYTE(v85) = 1;
    *&v89 = v56;
    *(&v89 + 1) = v58;
    v90.n128_u8[0] = v51 & 1;
    v90.n128_u64[1] = v61;
    LOBYTE(v91[0]) = v62;
    *(v91 + 8) = 0u;
    *(&v91[1] + 8) = 0u;
    BYTE8(v91[2]) = 1;
    BYTE10(v91[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C828, &qword_21499BDB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_2149447AC();
    sub_214944830();
    sub_21498EE90();
  }

  result = v96;
  v77 = *&v97[16];
  v78 = v83;
  *(v83 + 32) = *v97;
  *(v78 + 48) = v77;
  *(v78 + 59) = *&v97[27];
  *v78 = v95;
  *(v78 + 16) = result;
  return result;
}

unint64_t sub_214944720()
{
  result = qword_27CA1C818;
  if (!qword_27CA1C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C810, &qword_21499BDB0);
    sub_2149447AC();
    sub_214944830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C818);
  }

  return result;
}

unint64_t sub_2149447AC()
{
  result = qword_27CA1C820;
  if (!qword_27CA1C820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C828, &qword_21499BDB8);
    sub_214944830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C820);
  }

  return result;
}

unint64_t sub_214944830()
{
  result = qword_27CA1C830;
  if (!qword_27CA1C830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C838, &qword_21499BDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C830);
  }

  return result;
}

uint64_t sub_2149448B4(void *a1)
{
  v2 = sub_21498F8C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_21498DF30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21498DF70();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_21498DF60();
  sub_21498DF20();
  sub_21498DF40();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_21498DF50();
  v12 = v11;
  sub_21498F8B0();
  v13 = sub_21498F890();
  sub_21489B4F8(v10, v12);

  return v13;
}

unint64_t sub_214944A20()
{
  result = qword_27CA1C850;
  if (!qword_27CA1C850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C858, qword_21499BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C850);
  }

  return result;
}

uint64_t sub_214944A84()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214944ACC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MATipAPIRequest(0);
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD00000000000002ELL, 0x80000002149A2F50, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000030, 0x80000002149A2F80);

    return v23[0];
  }

  return v8;
}

uint64_t sub_214944E1C(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C8C8, &qword_21499C380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21494744C();
  sub_2149901C0();
  v14 = 0;
  sub_21498FFD0();
  if (!v3)
  {
    v13 = 1;
    sub_21498FFF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214944FB0()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0x6C416E7275746572;
  }

  *v0;
  return result;
}

uint64_t sub_214944FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C416E7275746572 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002149A2FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

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

uint64_t sub_2149450E0(uint64_t a1)
{
  v2 = sub_21494744C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21494511C(uint64_t a1)
{
  v2 = sub_21494744C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21494517C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 1936746868;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x80000002149A0A60;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 1936746868;
  }

  if (*a2)
  {
    v7 = 0x80000002149A0A60;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_214945220()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149452A0()
{
  *v0;
  sub_21498F900();
}

uint64_t sub_21494530C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214945388@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2149453E8(unint64_t *a1@<X8>)
{
  v2 = 0x80000002149A0A60;
  v3 = 1936746868;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_214945424()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1936746868;
  }

  *v0;
  return result;
}

uint64_t sub_21494545C@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2149454C0(uint64_t a1)
{
  v2 = sub_214946EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149454FC(uint64_t a1)
{
  v2 = sub_214946EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214945538(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000002149A0A90;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000002149A0A90;
  }

  else
  {
    v6 = 0x80000002149A0AB0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D657449756E656DLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000656C746954;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000002149A0AB0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6D657449756E656DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000656C746954;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_21494561C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149456D0()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_214945770()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214945820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21494659C();
  *a2 = result;
  return result;
}

void sub_214945850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C746954;
  v4 = 0xD000000000000010;
  v5 = 0x80000002149A0A90;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000002149A0AB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D657449756E656DLL;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2149458C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21494659C();
  *a1 = result;
  return result;
}

uint64_t sub_2149458E8(uint64_t a1)
{
  v2 = sub_214946F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214945924(uint64_t a1)
{
  v2 = sub_214946F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_214945960@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2149465E8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_2149459A4()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2149459EC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAUpdateAutomationTipAPIRequest(0);
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD00000000000003ALL, 0x80000002149A2ED0, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000032, 0x80000002149A2F10);

    return v23[0];
  }

  return v8;
}

id sub_214945D0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_214945D90(uint64_t a1)
{
  v2 = sub_2149473F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214945DCC(uint64_t a1)
{
  v2 = sub_2149473F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214945E4C()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214945E94()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAUpdateUnsubscribeTipAPIRequest(0);
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD00000000000003BLL, 0x80000002149A2E60, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD00000000000002ELL, 0x80000002149A2EA0);

    return v23[0];
  }

  return v8;
}

id sub_21494619C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
}

uint64_t sub_21494626C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2149462B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214946310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2149463A0(uint64_t a1)
{
  v2 = sub_2149473A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149463DC(uint64_t a1)
{
  v2 = sub_2149473A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21494645C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2149901C0();
  sub_214990010();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21494659C()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2149465E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_21498E690();
  *&v51 = *(v56 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v56);
  v61 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C880, &qword_21499BF90);
  v52 = *(v49 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C888, &qword_21499BF98);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C890, &unk_21499BFA0);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_214946EE8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v47 = v12;
  v48 = v14;
  v58[0] = 0;
  sub_21498FF00();
  v44 = v15;
  v45 = v18;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  if (sub_214990070())
  {
    v46 = MEMORY[0x277D84F90];
    v22 = v55;
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
    *&v21 = 138412290;
    v51 = v21;
    v22 = v55;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
      sub_2149044E8();
      sub_214990060();
      memcpy(v57, v58, sizeof(v57));
      v24 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2148A9878(0, *(v24 + 2) + 1, 1, v24);
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_2148A9878((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v46 = v24;
      memcpy(&v24[384 * v26 + 32], v57, 0x179uLL);
      __swift_project_boxed_opaque_existential_1(v59, v60);
    }

    while ((sub_214990070() & 1) == 0);
  }

  v58[0] = 1;
  sub_214946F3C();
  v23 = v44;
  sub_21498FF10();
  v28 = v49;
  v27 = v50;
  v29 = v52;
  v30 = v48;
  (*(v52 + 56))(v48, 0, 1, v49);
  v31 = v47;
  sub_214946F90(v30, v47);
  if ((*(v29 + 48))(v31, 1, v28) == 1)
  {
    sub_21489DFCC(v31, &qword_27CA1C888, &qword_21499BF98);
    sub_21489DFCC(v30, &qword_27CA1C888, &qword_21499BF98);
    (*(v53 + 8))(v45, v23);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v36 = 0xE000000000000000;
  }

  else
  {
    (*(v29 + 32))(v27, v31, v28);
    v58[0] = 0;
    v34 = sub_21498FF60();
    v36 = v38;
    v58[0] = 1;
    v39 = v28;
    v33 = sub_21498FF60();
    v35 = v40;
    v58[0] = 2;
    v41 = sub_21498FF70();
    v61 = (v53 + 8);
    v42 = *(v52 + 8);
    LODWORD(v56) = v41;
    v42(v27, v39);
    sub_21489DFCC(v48, &qword_27CA1C888, &qword_21499BF98);
    (*v61)(v45, v44);
    v32 = v56 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  result = __swift_destroy_boxed_opaque_existential_1(v54);
  *v22 = v46;
  *(v22 + 8) = v34;
  *(v22 + 16) = v36;
  *(v22 + 24) = v33;
  *(v22 + 32) = v35;
  *(v22 + 40) = v32;
  return result;
}

unint64_t sub_214946EE8()
{
  result = qword_281191880;
  if (!qword_281191880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191880);
  }

  return result;
}

unint64_t sub_214946F3C()
{
  result = qword_281191858;
  if (!qword_281191858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191858);
  }

  return result;
}

uint64_t sub_214946F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C888, &qword_21499BF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MATipAPIAPIRequestBody(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MATipAPIAPIRequestBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedPreferencesAPIRequest.SharedPreferencesAPIRequestPayload(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_214947198()
{
  result = qword_27CA1C898;
  if (!qword_27CA1C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C898);
  }

  return result;
}

unint64_t sub_2149471F0()
{
  result = qword_27CA1C8A0;
  if (!qword_27CA1C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8A0);
  }

  return result;
}

unint64_t sub_214947248()
{
  result = qword_281191860;
  if (!qword_281191860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191860);
  }

  return result;
}

unint64_t sub_2149472A0()
{
  result = qword_281191868;
  if (!qword_281191868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191868);
  }

  return result;
}

unint64_t sub_2149472F8()
{
  result = qword_281191870;
  if (!qword_281191870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191870);
  }

  return result;
}

unint64_t sub_214947350()
{
  result = qword_281191878;
  if (!qword_281191878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191878);
  }

  return result;
}

unint64_t sub_2149473A4()
{
  result = qword_27CA1C8B0;
  if (!qword_27CA1C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8B0);
  }

  return result;
}

unint64_t sub_2149473F8()
{
  result = qword_27CA1C8C0;
  if (!qword_27CA1C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8C0);
  }

  return result;
}

unint64_t sub_21494744C()
{
  result = qword_281191560;
  if (!qword_281191560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191560);
  }

  return result;
}

unint64_t sub_2149474D4()
{
  result = qword_27CA1C8D0;
  if (!qword_27CA1C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8D0);
  }

  return result;
}

unint64_t sub_21494752C()
{
  result = qword_27CA1C8D8;
  if (!qword_27CA1C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8D8);
  }

  return result;
}

unint64_t sub_214947584()
{
  result = qword_27CA1C8E0;
  if (!qword_27CA1C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8E0);
  }

  return result;
}

unint64_t sub_2149475DC()
{
  result = qword_281191550;
  if (!qword_281191550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191550);
  }

  return result;
}

unint64_t sub_214947634()
{
  result = qword_281191558;
  if (!qword_281191558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191558);
  }

  return result;
}

unint64_t sub_21494768C()
{
  result = qword_27CA1C8E8;
  if (!qword_27CA1C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8E8);
  }

  return result;
}

unint64_t sub_2149476E4()
{
  result = qword_27CA1C8F0;
  if (!qword_27CA1C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8F0);
  }

  return result;
}

unint64_t sub_21494773C()
{
  result = qword_27CA1C8F8;
  if (!qword_27CA1C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8F8);
  }

  return result;
}

unint64_t sub_214947794()
{
  result = qword_27CA1C900;
  if (!qword_27CA1C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C900);
  }

  return result;
}

uint64_t sub_2149477FC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214947844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v37[-v3];
  v41 = sub_21498E1B0();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21498E690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BulkActionJobsAPIRequest = type metadata accessor for GetBulkActionJobsAPIRequest();
  v43.receiver = v0;
  v43.super_class = BulkActionJobsAPIRequest;
  v15 = objc_msgSendSuper2(&v43, sel_urlString);
  v16 = sub_21498F870();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v41;
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_281194E18);
    v22 = v10;
    v23 = v9;
    v24 = *(v10 + 16);
    v25 = v13;
    v39 = v23;
    v24(v13, v21);
    v26 = v0;
    v27 = sub_21498E670();
    v28 = sub_21498FBD0();
    v40 = v26;

    v29 = v27;
    v38 = v28;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A3020, v42);
      *(v30 + 12) = 2080;

      v32 = sub_2149079F4(v16, v18, v42);

      *(v30 + 14) = v32;
      _os_log_impl(&dword_21488E000, v29, v38, "Using fallback url for %s: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v31, -1, -1);
      MEMORY[0x216059AC0](v30, -1, -1);
    }

    v33 = (*(v22 + 8))(v25, v39);
    v20 = v41;
    v42[0] = sub_21498DE14(v33);
    v42[1] = v34;

    MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A3060);
  }

  sub_21498E1A0();

  result = (*(v5 + 48))(v4, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v4, v20);
    v36 = sub_21498E130();
    (*(v5 + 8))(v8, v20);

    return v36;
  }

  return result;
}

id sub_214947CB4(void *a1)
{
  v1 = a1;
  sub_214947844();

  v2 = sub_21498F840();

  return v2;
}

id sub_214947D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBulkActionJobsAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetBulkActionJobsAPIRequest()
{
  result = qword_27CA1C908;
  if (!qword_27CA1C908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214947DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1935830890 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214947E50(uint64_t a1)
{
  v2 = sub_214948078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214947E8C(uint64_t a1)
{
  v2 = sub_214948078();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_214947EC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_214947EF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_214947EF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C918, &qword_21499C748);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214948078();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904614();
    sub_21498FFA0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_214948078()
{
  result = qword_27CA1C920;
  if (!qword_27CA1C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C920);
  }

  return result;
}

unint64_t sub_2149480E0()
{
  result = qword_27CA1C928;
  if (!qword_27CA1C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C928);
  }

  return result;
}

unint64_t sub_214948138()
{
  result = qword_27CA1C930;
  if (!qword_27CA1C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C930);
  }

  return result;
}

unint64_t sub_214948190()
{
  result = qword_27CA1C938;
  if (!qword_27CA1C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C938);
  }

  return result;
}

uint64_t sub_2149481E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v75 = a1;
  v4 = sub_21498E690();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E6C0();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v62 - v11;
  v64 = sub_21498E730();
  v73 = *(v64 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C970, &qword_21499C980);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v19 = sub_21498E910();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v63 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v70 = &v62 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v62 - v26);
  v28 = *(v20 + 16);
  v28(&v62 - v26, v3, v19);
  v29 = (*(v20 + 88))(v27, v19);
  if (v29 == *MEMORY[0x277D23358])
  {
    (*(v20 + 96))(v27, v19);
    v30 = *v27;
    v31 = swift_projectBox();
    (*(v15 + 16))(v18, v31, v14);
    sub_21498E750();
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v33 = v75;
    if (v29 == *MEMORY[0x277D23350])
    {
      (*(v20 + 96))(v27, v19);
      v34 = *v27;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C978, &qword_21499C988);
      v72 = v34;
      v36 = swift_projectBox();
      v37 = *(v35 + 48);
      v38 = *(v35 + 64);
      v28(v70, v36, v19);
      v39 = v36 + v37;
      v40 = v64;
      (*(v73 + 16))(v71, v39, v64);
      v41 = v36 + v38;
      v42 = v63;
      v28(v63, v41, v19);
      v43 = v67;
      v44 = v33;
      v45 = v76;
      sub_2149481E4(v33);
      if (v45)
      {
        v55 = *(v20 + 8);
        v55(v42, v19);
        (*(v73 + 8))(v71, v40);
      }

      else
      {
        v53 = v62;
        sub_2149481E4(v44);
        v54 = (v68 + 8);
        v56 = v43;
        v57 = v71;
        sub_214949978(v56, v53, v74);
        v58 = *v54;
        v59 = v53;
        v60 = v40;
        v61 = v69;
        (*v54)(v59, v69);
        v58(v67, v61);
        v55 = *(v20 + 8);
        v55(v42, v19);
        (*(v73 + 8))(v57, v60);
      }

      v55(v70, v19);
    }

    else
    {
      v46 = v74;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v47 = v66;
      v48 = __swift_project_value_buffer(v66, qword_281194E18);
      v49 = v65;
      (*(v65 + 16))(v72, v48, v47);
      v50 = sub_21498E670();
      v51 = sub_21498FBB0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_21488E000, v50, v51, "NumericResolvable has unknown case", v52, 2u);
        MEMORY[0x216059AC0](v52, -1, -1);
      }

      (*(v49 + 8))(v72, v47);
      *v46 = 0;
      (*(v68 + 104))(v46, *MEMORY[0x277D231B8], v69);
      return (*(v20 + 8))(v27, v19);
    }
  }
}

uint64_t sub_214948908()
{
  v0 = sub_21498E690();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_21498E7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E6B0();
  sub_21498E8A0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214948C20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 0x636E657265666572;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6176;
  }

  else
  {
    v6 = 0x636E657265666572;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_214948CC8()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214948D4C()
{
  *v0;
  sub_21498F900();
}

uint64_t sub_214948DBC()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214948E3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_214948E9C(uint64_t *a1@<X8>)
{
  v2 = 0x636E657265666572;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214948EDC()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x636E657265666572;
  }

  *v0;
  return result;
}

uint64_t sub_214948F18@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214948F7C(uint64_t a1)
{
  v2 = sub_21494AC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214948FB8(uint64_t a1)
{
  v2 = sub_21494AC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214948FF4(uint64_t *a1)
{
  v34 = *v1;
  v3 = sub_21498E910();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C990, &qword_21499C9A0);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21494AC9C();
  v15 = v32;
  sub_2149901B0();
  if (v15)
  {
    v21 = *(*v1 + 48);
    v22 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v24 = a1;
  }

  else
  {
    v32 = v10;
    v16 = v29;
    sub_2148994D0(a1, v33);
    sub_21498E7C0();
    sub_21494ACF0(&qword_27CA1A550, MEMORY[0x277D232B0]);
    sub_21498E740();
    v17 = *(v16 + 32);
    v25[1] = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference;
    v26 = a1;
    v17(&v1[OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference], v31, v7);
    v33[0] = 1;
    sub_21494ACF0(&qword_27CA1C9A0, MEMORY[0x277D23360]);
    v18 = v6;
    v19 = v28;
    v20 = v32;
    sub_21498FFA0();
    (*(v30 + 8))(v13, v20);
    (*(v27 + 32))(&v1[OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_value], v18, v19);
    v24 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v1;
}

uint64_t sub_21494941C()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_value;
  v4 = sub_21498E910();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MathSetAction()
{
  result = qword_27CA1C940;
  if (!qword_27CA1C940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214949558()
{
  sub_214949624();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21498E910();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_214949624()
{
  if (!qword_27CA1C950)
  {
    sub_21498E7C0();
    sub_21494ACF0(&qword_27CA1A550, MEMORY[0x277D232B0]);
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1C950);
    }
  }
}

uint64_t sub_2149496B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_21494A578)(a1);
}

char *sub_214949890@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214948FF4(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_214949978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_21498E6C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C980, &unk_21499C990);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v29 - v13;
  v15 = *(v12 + 56);
  v16 = *(v6 + 16);
  v29[0] = a1;
  v16(v29 - v13, a1, v5);
  v29[1] = a2;
  v16(&v14[v15], a2, v5);
  v17 = *(v6 + 88);
  v18 = v17(v14, v5);
  if (v18 == *MEMORY[0x277D231B8] && (v19 = v18, v16(v9, v14, v5), v20 = *(v6 + 96), v20(v9, v5), v21 = *v9, v17(&v14[v15], v5) == v19))
  {
    v20(&v14[v15], v5);
    v22 = sub_214949C2C(v21, *&v14[v15]);
    v23 = v30;
    *v30 = v22;
    (*(v6 + 104))(v23, v19, v5);
    return (*(v6 + 8))(v14, v5);
  }

  else
  {
    v25 = sub_214949F88();
    v26 = sub_214949F88();
    sub_21494A264(v25, v26);
    *v30 = v27;
    v28 = *MEMORY[0x277D231C0];
    (*(v6 + 104))();
    return sub_21489DFCC(v14, &qword_27CA1C980, &unk_21499C990);
  }
}

uint64_t sub_214949C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21498E730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v3, v11);
  result = (*(v12 + 88))(v15, v11);
  if (result == *MEMORY[0x277D23208])
  {
    result = a1 + a2;
    if (!__OFADD__(a1, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23228])
  {
    result = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23220])
  {
    result = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23218])
  {
    if (a2)
    {
      if (a1 != 0x8000000000000000 || a2 != -1)
      {
        return a1 / a2;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result == *MEMORY[0x277D23210])
  {
    if (a2)
    {
      if (a1 != 0x8000000000000000 || a2 != -1)
      {
        return a1 % a2;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (qword_281190DA0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v17, v6);
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21488E000, v18, v19, "MathOperation has unknown case", v20, 2u);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return 0;
}

double sub_214949F88()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E6C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D231B8])
  {
    (*(v8 + 96))(v11, v7);
    return *v11;
  }

  else if (v12 == *MEMORY[0x277D231C0])
  {
    (*(v8 + 96))(v11, v7);
    return *v11;
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, qword_281194E18);
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_21498E670();
    v16 = sub_21498FBB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21488E000, v15, v16, "NumericValue has unknown case", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
    return 0.0;
  }
}

void sub_21494A264(long double a1, long double a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21498E730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v3, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 != *MEMORY[0x277D23208] && v16 != *MEMORY[0x277D23228] && v16 != *MEMORY[0x277D23220] && v16 != *MEMORY[0x277D23218])
  {
    if (v16 == *MEMORY[0x277D23210])
    {
      fmod(a1, a2);
    }

    else
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v6, qword_281194E18);
      (*(v7 + 16))(v10, v17, v6);
      v18 = sub_21498E670();
      v19 = sub_21498FBB0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21488E000, v18, v19, "MathOperation has unknown case", v20, 2u);
        MEMORY[0x216059AC0](v20, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
      (*(v12 + 8))(v15, v11);
    }
  }
}

uint64_t sub_21494A578(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21498E690();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_21498F510();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_21498F540();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C968, &unk_21499C970) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = sub_21498E6C0();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v2[23] = *(v14 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494A798, 0, 0);
}

uint64_t sub_21494A798()
{
  v1 = v0[10] + OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_value;
  sub_2149481E4(v0[9], v0[20]);
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v22 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v23 = v0[19];
  v29 = v0[18];
  v30 = v0[17];
  v28 = v0[15];
  v25 = v0[16];
  v26 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  (*(v4 + 56))(v5, 0, 1, v6);
  v9 = *(v4 + 32);
  v27 = v3;
  v9(v3, v5, v6);
  sub_2148FFDCC();
  v24 = sub_21498FC20();
  (*(v4 + 16))(v2, v3, v6);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  v9(v11 + v10, v2, v6);
  v0[6] = sub_21494AC20;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_5;
  v12 = _Block_copy(v0 + 2);

  sub_21498F530();
  v0[8] = MEMORY[0x277D84F90];
  sub_21494ACF0(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v23, v25, v12);
  _Block_release(v12);

  (*(v28 + 8))(v25, v26);
  (*(v29 + 8))(v23, v30);
  (*(v4 + 8))(v27, v6);
  v13 = v0[7];

  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v19 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21494AC20()
{
  v1 = *(*(sub_21498E6C0() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_214948908();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21494AC9C()
{
  result = qword_27CA1C998;
  if (!qword_27CA1C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C998);
  }

  return result;
}

uint64_t sub_21494ACF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21494AD4C()
{
  result = qword_27CA1C9A8;
  if (!qword_27CA1C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9A8);
  }

  return result;
}

unint64_t sub_21494ADA4()
{
  result = qword_27CA1C9B0;
  if (!qword_27CA1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9B0);
  }

  return result;
}

unint64_t sub_21494ADFC()
{
  result = qword_27CA1C9B8;
  if (!qword_27CA1C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9B8);
  }

  return result;
}

uint64_t sub_21494AE50()
{
  v1 = v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = type metadata accessor for MailCleanupState();
  v3 = *(*(v1 + *(v2 + 48)) + 16) != 0;
  v4 = *(v1 + *(v2 + 44));
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

  v17 = v3;

  v7 = 0;
  v8 = (v4 + 88);
  while (v7 < *(v4 + 16))
  {
    v9 = *v8;
    if (*(v8 - 24) && *(v8 - 24) == 1)
    {
      v10 = *v8;
    }

    else
    {
      v11 = sub_214990080();

      if ((v11 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!v9[2])
    {
LABEL_3:

      goto LABEL_4;
    }

    v12 = v9[5];
    v13 = v9[7];
    v15 = v9[9];
    v14 = v9[10];

    if (v14)
    {
      v16 = *(v14 + 16);

      if (v16)
      {
        v3 = 1;
LABEL_15:

        return v3;
      }
    }

LABEL_4:
    ++v7;
    v8 += 14;
    if (v5 == v7)
    {
      v3 = v17;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21494B028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailCleanupState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_21498E690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_281194E18);
  (*(v12 + 16))(v15, v16, v11);
  sub_2148E5F5C(a1, v10, type metadata accessor for MailCleanupState);
  v17 = sub_21498E670();
  v18 = sub_21498FBA0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v11;
    v22 = v21;
    v35[0] = v21;
    *v20 = 136315138;
    v33 = a1;
    sub_2148E5F5C(v10, v8, type metadata accessor for MailCleanupState);
    v23 = sub_21498F8D0();
    v34 = v8;
    v24 = v2;
    v26 = v25;
    sub_214950444(v10, type metadata accessor for MailCleanupState);
    v27 = sub_2149079F4(v23, v26, v35);
    v2 = v24;
    v8 = v34;

    *(v20 + 4) = v27;
    a1 = v33;
    _os_log_impl(&dword_21488E000, v17, v18, "[ProviderModel] stateDidChange(%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x216059AC0](v22, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    (*(v32 + 8))(v15, v31);
  }

  else
  {

    sub_214950444(v10, type metadata accessor for MailCleanupState);
    (*(v12 + 8))(v15, v11);
  }

  sub_2148E5F5C(a1, v8, type metadata accessor for MailCleanupState);
  v28 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  sub_214950398(v8, v2 + v28);
  swift_endAccess();
  return sub_21494CF34();
}

uint64_t sub_21494B3A8(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 81) = a2;
  *(v3 + 80) = a1;
  v4 = sub_21498E690();
  *(v3 + 24) = v4;
  v5 = *(v4 - 8);
  *(v3 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494B47C, 0, 0);
}

uint64_t sub_21494B47C()
{
  v40 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  if (v8)
  {
    v37 = v5;
    v12 = *(v0 + 80);
    v36 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v38 = v4;
    v39 = swift_slowAlloc();
    v14 = v39;
    *v13 = 136315138;
    if (v12)
    {
      v15 = 0x646563726F66;
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v15, v16, &v39);
    v5 = v37;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] sync(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v4 = v38;
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);

    v19 = *(v10 + 8);
    v19(v36, v11);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  v20 = *(*(v0 + 16) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_networkStatusProvider);
  v21 = off_2826CD670;
  type metadata accessor for NetworkStatusProvider();
  if (v21())
  {
    v22 = *(v0 + 16);
    if (*(v22 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) == 1)
    {
      *(v22 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 0;
    }

    v23 = swift_task_alloc();
    *(v0 + 56) = v23;
    *v23 = v0;
    v23[1] = sub_21494B814;
    v24 = *(v0 + 16);

    return sub_21494FA90();
  }

  else
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    v26 = sub_21498E670();
    v27 = sub_21498FBA0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21488E000, v26, v27, "[ProviderModel] sync - offline - sync is deferred...", v28, 2u);
      MEMORY[0x216059AC0](v28, -1, -1);
    }

    v30 = *(v0 + 32);
    v29 = *(v0 + 40);
    v32 = *(v0 + 16);
    v31 = *(v0 + 24);

    v19(v29, v31);
    *(v32 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 1;
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_21494B814(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v9 = *v1;
  *(v3 + 64) = a1;

  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v9;
  v5[1] = sub_21494B950;
  v6 = *(v3 + 81);
  v7 = *(v3 + 80);

  return sub_21496D6C4(v7, v6);
}

uint64_t sub_21494B950()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21494BA4C, 0, 0);
}

uint64_t sub_21494BA4C()
{
  v1 = v0[8];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

void *sub_21494BABC@<X0>(void (*a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v107 = a3;
  v103 = a1;
  v94 = a5;
  v97 = type metadata accessor for MailCleanupState();
  v9 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v90 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v86 - v15;
  v16 = sub_21498E320();
  v17 = *(v16 - 8);
  v98 = v16;
  v99 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v87 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v86 - v21;
  v23 = sub_21498E690();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v89 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v86 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v95 = &v86 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v86 - v32;
  if (qword_281190DA0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v34 = __swift_project_value_buffer(v23, qword_281194E18);
    v35 = v24[2];
    v100 = v34;
    v101 = v35;
    v102 = v24 + 2;
    (v35)(v33);

    v36 = sub_21498E670();
    v37 = sub_21498FBA0();

    v38 = os_log_type_enabled(v36, v37);
    v104 = v6;
    v91 = v22;
    v106 = a4;
    v96 = a2;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v110[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_2149079F4(v103, a2, v110);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_2149079F4(v107, a4, v110);
      _os_log_impl(&dword_21488E000, v36, v37, "[ProviderModel] getTip(%s, %s)", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v40, -1, -1);
      v41 = v39;
      v6 = v104;
      MEMORY[0x216059AC0](v41, -1, -1);
    }

    v42 = v24[1];
    v42(v33, v23);
    v43 = v24;
    v44 = v95;
    v101(v95, v100, v23);

    v45 = sub_21498E670();
    v46 = sub_21498FBA0();

    v47 = os_log_type_enabled(v45, v46);
    v105 = v23;
    v48 = v97;
    v93 = v43;
    if (v47)
    {
      v49 = v6;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v110[0] = v51;
      *v50 = 136315138;
      v52 = v44;
      v53 = v42;
      v54 = v49 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
      swift_beginAccess();
      LOBYTE(v109[0]) = *(v54 + *(v48 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9C0, qword_21499CBD0);
      v55 = sub_21498F8D0();
      v57 = sub_2149079F4(v55, v56, v110);
      v42 = v53;

      *(v50 + 4) = v57;
      _os_log_impl(&dword_21488E000, v45, v46, "[ProviderModel] getTip - consent: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x216059AC0](v51, -1, -1);
      MEMORY[0x216059AC0](v50, -1, -1);

      v53(v52, v105);
    }

    else
    {

      v42(v44, v105);
    }

    v59 = v98;
    v58 = v99;
    if ((v103 != 0x786F626E49 || v96 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
    {
      goto LABEL_14;
    }

    v60 = v104;
    v61 = v104 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v62 = v61 + *(v48 + 20);
    v63 = v92;
    sub_2149051DC(v62, v92);
    v64 = *(v58 + 48);
    if (v64(v63, 1, v59) == 1)
    {
      sub_21489DFCC(v63, &qword_27CA1ABA0, &qword_214993E20);
      v65 = v89;
      v101(v89, v100, v105);
      v66 = sub_21498E670();
      v67 = sub_21498FBB0();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_21488E000, v66, v67, "[ProviderModel] getTip - dateFetched is nil", v68, 2u);
        MEMORY[0x216059AC0](v68, -1, -1);
      }

      v42(v65, v105);
LABEL_14:
      sub_2148DA328(v110);
      goto LABEL_25;
    }

    v103 = v42;
    v69 = *(v58 + 32);
    v70 = v91;
    v69(v91, v63, v59);
    v71 = *(v60 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
    v72 = v90;
    sub_214976218(v90);
    if (v64(v72, 1, v59) == 1)
    {
      sub_21489DFCC(v72, &qword_27CA1ABA0, &qword_214993E20);
      v24 = v99;
      v22 = v70;
    }

    else
    {
      v73 = v87;
      v69(v87, v72, v59);
      sub_2149503FC(&qword_2811926F0, MEMORY[0x277CC9578]);
      v22 = v70;
      if ((sub_21498F820() & 1) == 0)
      {
        v79 = v86;
        v101(v86, v100, v105);
        v80 = sub_21498E670();
        v81 = sub_21498FBB0();
        v82 = os_log_type_enabled(v80, v81);
        v83 = v99;
        if (v82)
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_21488E000, v80, v81, "[ProviderModel] getTip - tips are marked stale", v84, 2u);
          MEMORY[0x216059AC0](v84, -1, -1);
        }

        v103(v79, v105);
        v85 = *(v83 + 8);
        v85(v87, v59);
        v85(v70, v59);
        goto LABEL_14;
      }

      v24 = v99;
      (*(v99 + 8))(v73, v59);
    }

    v74 = v88;
    sub_2148E5F5C(v61, v88, type metadata accessor for MailCleanupState);
    a4 = *v74;
    a2 = *(*v74 + 16);
    v6 = v104;
    if (!a2)
    {
      break;
    }

    v75 = 0;
    v23 = 0;
    v33 = (a4 + 32);
    while (v75 < *(a4 + 16))
    {
      memcpy(v110, v33, 0x179uLL);
      memcpy(v109, v33, 0x179uLL);
      sub_2148D8FC8(v110, v108);
      if (sub_21494C574(v109, v6, v107, v106))
      {
        (v24[1])(v22, v98);
        sub_214950444(v74, type metadata accessor for MailCleanupState);
        memcpy(v108, v109, 0x179uLL);
        nullsub_1(v108);
        v77 = v108;
        return memcpy(v94, v77, 0x179uLL);
      }

      ++v75;
      memcpy(v108, v109, 0x179uLL);
      sub_2148F6AF8(v108);
      v33 += 384;
      if (a2 == v75)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_24:
  v76 = sub_2148DA328(v110);
  (v24[1])(v22, v98, v76);
  sub_214950444(v74, type metadata accessor for MailCleanupState);
LABEL_25:
  v77 = v110;
  return memcpy(v94, v77, 0x179uLL);
}

uint64_t sub_21494C574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v6 = sub_21498E320();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MATipDismissal();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[1];
  v71 = a1[46];
  v16 = *(a1 + 376);
  v17 = *(a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  v18 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey];
  v19 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey + 8];
  v20 = sub_21498F840();
  v21 = [v17 BOOLForKey_];

  if (v21 && (v14 == 0x5F544E45534E4F43 && v15 == 0xEB00000000504954 || (sub_214990080() & 1) != 0))
  {
    v22 = a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v23 = *(v22 + *(type metadata accessor for MailCleanupState() + 36));
    if (v23 != 4 && (sub_214959884(v23, 2u) & 1) != 0)
    {
      goto LABEL_15;
    }
  }

  v24 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey];
  v25 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey + 8];
  v26 = sub_21498F840();
  v27 = [v17 BOOLForKey_];

  if (v27)
  {
    *&v75[0] = v14;
    *(&v75[0] + 1) = v15;
    *&v73 = 0x5243534255534E55;
    *(&v73 + 1) = 0xEB00000000454249;
    sub_21489CA00();
    if (sub_21498FD30())
    {
      goto LABEL_15;
    }
  }

  v28 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey];
  v29 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey + 8];
  v30 = sub_21498F840();
  v31 = [v17 BOOLForKey_];

  if (v31)
  {
    if ((v14 != 0x4F49544F4D4F5250 || v15 != 0xEE005049545F534ELL) && ((sub_214990080() | v16) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v32 = a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    result = type metadata accessor for MailCleanupState();
    v34 = 0;
    v35 = *(v32 + *(result + 24));
    v36 = *(v35 + 16);
    while (v36 != v34)
    {
      if (v34 >= *(v35 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_2148E5F5C(v35 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v34, v13, type metadata accessor for MATipDismissal);
      if (*v13 == v14 && v13[1] == v15)
      {
        sub_214950444(v13, type metadata accessor for MATipDismissal);
        return 0;
      }

      ++v34;
      v38 = sub_214990080();
      result = sub_214950444(v13, type metadata accessor for MATipDismissal);
      if (v38)
      {
        return 0;
      }
    }

    if (v71)
    {
      v39 = *(v71 + 16);
      if (v39)
      {
        v40 = (v71 + 40);
        v41 = -v39;
        v42 = -1;
        while (v41 + v42 != -1)
        {
          if (++v42 >= *(v71 + 16))
          {
            goto LABEL_59;
          }

          v43 = *(v40 - 1);
          v44 = *v40;
          v45 = sub_21498F8E0();
          v47 = v46;
          if (v45 == sub_21498F8E0() && v47 == v48)
          {

            goto LABEL_37;
          }

          v40 += 2;
          v50 = sub_214990080();

          if (v50)
          {
            goto LABEL_37;
          }
        }

        return 0;
      }
    }

LABEL_37:
    if ((v14 != 0xD000000000000014 || 0x80000002149A31C0 != v15) && (sub_214990080() & 1) == 0)
    {
      return 1;
    }

    v51 = sub_21498F840();
    v52 = [v17 valueForKey_];

    if (v52)
    {
      sub_21498FD40();
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    v75[0] = v73;
    v75[1] = v74;
    if (*(&v74 + 1))
    {
      if (swift_dynamicCast())
      {
        v53 = 0;
        v54 = v72;
        goto LABEL_48;
      }
    }

    else
    {
      sub_21489DFCC(v75, &qword_27CA1B878, qword_214996678);
    }

    v54 = 0;
    v53 = 1;
LABEL_48:
    v55 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
    v56 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey + 8];
    v57 = sub_21498F840();
    v58 = [v17 BOOLForKey_];

    if (v53)
    {
      return 0;
    }

    v59 = v66;
    sub_21498E310();
    sub_21498E2E0();
    v61 = v60;
    v62 = v60;
    result = (*(v67 + 8))(v59, v68);
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_60:
      __break(1u);
    }

    else if (v61 > -9.22337204e18)
    {
      if (v61 < 9.22337204e18)
      {
        v63 = v61 - v54;
        if (!__OFSUB__(v61, v54))
        {
          if ((v63 & 0x8000000000000000) == 0)
          {
            return (v63 > 1295999) & (v58 ^ 1);
          }

          v64 = __OFSUB__(0, v63);
          v63 = v54 - v61;
          if (!v64)
          {
            return (v63 > 1295999) & (v58 ^ 1);
          }

          goto LABEL_64;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return result;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (v16)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_21494CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v5 = v3 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  result = type metadata accessor for MailCleanupState();
  v7 = *(v5 + *(result + 44));
  v8 = *(v7 + 16);
  v9 = 0uLL;
  v39 = v8;
  if (v8)
  {
    v35 = a3;
    v10 = 0;
    v46 = v7 + 32;
    v38 = v7;
    while (v10 < *(v7 + 16))
    {
      v47 = v10;
      v11 = (v46 + 112 * v10);
      v13 = v11[1];
      v12 = v11[2];
      v53 = *v11;
      v54 = v13;
      v55 = v12;
      v15 = v11[5];
      v14 = v11[6];
      v16 = v11[4];
      *v56 = v11[3];
      *&v56[16] = v16;
      *&v56[32] = v15;
      *&v56[48] = v14;
      v44 = v55;
      v45 = v54;
      v42 = *&v56[24];
      v43 = *&v56[8];
      v40 = v53;
      v41 = *&v56[40];
      v17 = *v56;
      v18 = *(&v14 + 1);
      v19 = *&v56[8];
      v20 = *(*&v56[8] + 16);
      sub_2148D9164(&v53, v52);

      v50 = v20;
      if (v20)
      {
        v36 = v17;
        v37 = v18;
        v21 = 0;
        v22 = (v19 + 80);
        while (v21 < *(v19 + 16))
        {
          v23 = *v22;
          if (*v22)
          {
            v51 = &v34;
            v24 = *(v22 - 1);
            v25 = *(v22 - 3);
            v26 = *(v22 - 5);
            v52[0] = v48;
            v52[1] = v49;
            MEMORY[0x28223BE20](result);
            *(&v34 - 2) = v52;

            swift_bridgeObjectRetain_n();

            v27 = sub_214923544(sub_2149504A4, (&v34 - 4), v23);

            result = swift_bridgeObjectRelease_n();
            if (v27)
            {

              v9 = v40;
              v28 = v41;
              a3 = v35;
              v29 = v36;
              v8 = v37;
              v31 = v44;
              v30 = v45;
              v33 = v42;
              v32 = v43;
              goto LABEL_13;
            }
          }

          ++v21;
          v22 += 7;
          if (v50 == v21)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v10 = v47 + 1;
      sub_2149504C4(&v53);

      v7 = v38;
      v9 = 0uLL;
      if (v10 == v39)
      {
        v29 = 0;
        v8 = 0;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v28 = 0uLL;
        a3 = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v28 = 0uLL;
LABEL_13:
    *a3 = v9;
    *(a3 + 16) = v30;
    *(a3 + 32) = v31;
    *(a3 + 48) = v29;
    *(a3 + 56) = v32;
    *(a3 + 72) = v33;
    *(a3 + 88) = v28;
    *(a3 + 104) = v8;
  }

  return result;
}

uint64_t sub_21494CF34()
{
  v0 = sub_21498F510();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21498F540();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21498E690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_281194E18);
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_21498E670();
  v16 = sub_21498FBA0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = v4;
    v19 = v0;
    v20 = v5;
    v21 = v1;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_21488E000, v15, v16, "[ProviderModel] notifyDataChange() - mailCleanupDataDidChange", v17, 2u);
    v23 = v22;
    v1 = v21;
    v5 = v20;
    v0 = v19;
    v4 = v18;
    v6 = v29;
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_2148FFDCC();
  v24 = sub_21498FC20();
  aBlock[4] = sub_214950378;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_6;
  v25 = _Block_copy(aBlock);

  v26 = v31;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2149503FC(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v26, v4, v25);
  _Block_release(v25);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v26, v5);
}

void sub_21494D364(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_notificationCenter);
  v2 = sub_21498F840();
  [v1 postNotificationName:v2 object:0];
}

uint64_t sub_21494D3E0()
{
  v1[4] = v0;
  v2 = sub_21498E690();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494D4A0, 0, 0);
}

uint64_t sub_21494D4A0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[ProviderModel] hydrateFromCache()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21494D628;
  v12 = v0[4];

  return sub_21494FA90();
}

uint64_t sub_21494D628(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 64);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_21494D728, 0, 0);
}

uint64_t sub_21494D728()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21494D7C4, v1, 0);
}

uint64_t sub_21494D7C4()
{
  v1 = *(v0 + 72);
  sub_21496C7C0();
  sub_2148E4100();

  return MEMORY[0x2822009F8](sub_21494D83C, 0, 0);
}

uint64_t sub_21494D83C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21494D8A8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = sub_21498E690();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494D978, 0, 0);
}

uint64_t sub_21494D978()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FB90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] onNetworkStatusChangeAsync(%{BOOL}d)", v9, 8u);
    MEMORY[0x216059AC0](v9, -1, -1);
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 64);

  v14 = *(v12 + 8);
  v14(v10, v11);
  if (v13 == 1 && *(*(v0 + 16) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) == 1)
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    v15 = sub_21498E670();
    v16 = sub_21498FB90();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21488E000, v15, v16, "[ProviderModel] onNetworkStatusChangeAsync - triggering previously deferred sync", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v18 = *(v0 + 40);
    v19 = *(v0 + 24);

    v14(v18, v19);
    v20 = swift_task_alloc();
    *(v0 + 56) = v20;
    *v20 = v0;
    v20[1] = sub_21494DC4C;
    v21 = *(v0 + 16);

    return sub_21494B3A8(0, 1);
  }

  else
  {
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_21494DC4C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v7 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_21494DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_21498E320();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_21498E690();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494DE9C, 0, 0);
}

uint64_t sub_21494DE9C()
{
  v28 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_21498E670();
  v7 = sub_21498FB90();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x216058A90](v12, MEMORY[0x277D837D0]);
    v17 = sub_2149079F4(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] createUnsubscribeRule(senderEmails: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v18 = v0[9];
  v19 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository;
  v0[16] = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository;
  v20 = *__swift_project_boxed_opaque_existential_1((v18 + v19), *(v18 + v19 + 24));
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_21494E0DC;
  v22 = v0[7];
  v23 = v0[8];
  v25 = v0[5];
  v24 = v0[6];

  return sub_214936B2C(v25, v24, v22, v23);
}

uint64_t sub_21494E0DC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21494E234, 0, 0);
  }
}

uint64_t sub_21494E234()
{
  v1 = v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for MailCleanupState() + 32));
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = *(v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
    sub_21498E310();
    v11 = sub_21498E2B0();
    v12 = *&v10[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
    v13 = *&v10[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
    v14 = sub_21498F840();
    [v10 setValue:v11 forKey:v14];

    v15 = *(v8 + 8);
    v15(v7, v9);
    sub_21498E310();
    v16 = sub_21498E2B0();
    v17 = *&v10[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
    v18 = *&v10[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
    v19 = sub_21498F840();
    [v10 setValue:v16 forKey:v19];

    v15(v7, v9);
    sub_21494CF34();
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_21494E794;
    v21 = v0[9];

    return sub_21494B3A8(0, 0);
  }

  else
  {
    v3 = (v0[9] + v0[16]);
    v4 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21494E494;

    return sub_2149364FC();
  }
}

uint64_t sub_21494E494()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21494E590, 0, 0);
}

uint64_t sub_21494E590()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = *(v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v5 = sub_21498E2B0();
  v6 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
  v7 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
  v8 = sub_21498F840();
  [v4 setValue:v5 forKey:v8];

  (*(v2 + 8))(v1, v3);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = *(v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v13 = sub_21498E2B0();
  v14 = *&v12[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
  v15 = *&v12[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
  v16 = sub_21498F840();
  [v12 setValue:v13 forKey:v16];

  v17 = *(v10 + 8);
  v17(v9, v11);
  sub_21498E310();
  v18 = sub_21498E2B0();
  v19 = *&v12[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
  v20 = *&v12[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
  v21 = sub_21498F840();
  [v12 setValue:v18 forKey:v21];

  v17(v9, v11);
  sub_21494CF34();
  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_21494E794;
  v23 = v0[9];

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21494E794()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21494E8C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E320();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_21498E690();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494E9E4, 0, 0);
}

uint64_t sub_21494E9E4()
{
  v22 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_21498E670();
  v7 = sub_21498FB90();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2149079F4(v13, v12, &v21);
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] removeUnsubscribeRule(senderEmail: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x216059AC0](v15, -1, -1);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = *__swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository), *(v0[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24));
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_21494EC04;
  v19 = v0[2];
  v18 = v0[3];

  return sub_21493713C(v19, v18);
}

uint64_t sub_21494EC04()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 56);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21494ED5C, 0, 0);
  }
}

uint64_t sub_21494ED5C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v0[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v5 = sub_21498E2B0();
  v6 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
  v7 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
  v8 = sub_21498F840();
  [v4 setValue:v5 forKey:v8];

  v9 = *(v2 + 8);
  v9(v1, v3);
  sub_21498E310();
  v10 = sub_21498E2B0();
  v11 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
  v12 = *&v4[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
  v13 = sub_21498F840();
  [v4 setValue:v10 forKey:v13];

  v9(v1, v3);
  sub_21494CF34();
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_21494EEF0;
  v15 = v0[4];

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21494EEF0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21494F020()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v78 = &v73 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v77 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  v19 = sub_21498E320();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v80 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - v24;
  v26 = v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v81 = type metadata accessor for MailCleanupState();
  sub_2149051DC(v26 + *(v81 + 40), v18);
  v27 = v20[6];
  if (v27(v18, 1, v19) == 1)
  {
    v28 = v83;
    sub_21489DFCC(v18, &qword_27CA1ABA0, &qword_214993E20);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v29 = v82;
    v30 = __swift_project_value_buffer(v82, qword_281194E18);
    (*(v28 + 16))(v6, v30, v29);
    v31 = sub_21498E670();
    v32 = sub_21498FBB0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21488E000, v31, v32, "[ProviderModel] shouldShowConsentInMail - dateFetched is nil", v33, 2u);
      MEMORY[0x216059AC0](v33, -1, -1);
    }

    (*(v28 + 8))(v6, v29);
    return 0;
  }

  v76 = v20;
  v35 = v20[4];
  v35(v25, v18, v19);
  v74 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21497620C(v16);
  if (v27(v16, 1, v19) == 1)
  {
    v36 = v25;
    sub_21489DFCC(v16, &qword_27CA1ABA0, &qword_214993E20);
    v37 = v76;
    v38 = v81;
  }

  else
  {
    v39 = v80;
    v35(v80, v16, v19);
    sub_2149503FC(&qword_2811926F0, MEMORY[0x277CC9578]);
    v36 = v25;
    v40 = sub_21498F820();
    v38 = v81;
    if ((v40 & 1) == 0)
    {
      v42 = v19;
      v43 = v83;
      v44 = v76;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v45 = v82;
      v46 = __swift_project_value_buffer(v82, qword_281194E18);
      v47 = v77;
      (*(v43 + 16))(v77, v46, v45);
      v48 = sub_21498E670();
      v49 = sub_21498FBB0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_21488E000, v48, v49, "[ProviderModel] shouldShowConsentInMail - consentStatus is stale", v50, 2u);
        MEMORY[0x216059AC0](v50, -1, -1);
      }

      (*(v43 + 8))(v47, v45);
      v51 = v44[1];
      v51(v80, v42);
      v51(v25, v42);
      return 0;
    }

    v37 = v76;
    (v76[1])(v39, v19);
  }

  v41 = *(v26 + *(v38 + 36));
  v75 = v19;
  if (v41)
  {
    v52 = sub_214990080();

    if (v52)
    {
      goto LABEL_21;
    }

    v60 = *(v26 + *(v38 + 36));
    if (v60 <= 2 && *(v26 + *(v38 + 36)))
    {
      v62 = v82;
      v61 = v83;
      v63 = v78;
      if (v60 != 1)
      {

LABEL_35:
        v65 = v74;
        v66 = *&v74[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey];
        v67 = *&v74[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey + 8];
        v68 = sub_21498F840();
        LODWORD(v65) = [v65 BOOLForKey_];

        if (v65)
        {
          if (qword_281190DA0 != -1)
          {
            swift_once();
          }

          v69 = __swift_project_value_buffer(v62, qword_281194E18);
          (*(v61 + 16))(v63, v69, v62);
          v70 = sub_21498E670();
          v71 = sub_21498FB90();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_21488E000, v70, v71, "[ProviderModel] shouldShowConsentInMail - Show consent in mail.app even when it is declined", v72, 2u);
            MEMORY[0x216059AC0](v72, -1, -1);
          }

          (*(v61 + 8))(v63, v62);
          goto LABEL_26;
        }

LABEL_41:
        (v37[1])(v36, v75);
        return 0;
      }
    }

    else
    {
      v62 = v82;
      v61 = v83;
      v63 = v78;
    }

    v64 = sub_214990080();

    if ((v64 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_21:
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v53 = v82;
  v54 = __swift_project_value_buffer(v82, qword_281194E18);
  v55 = v83;
  v56 = v79;
  (*(v83 + 16))(v79, v54, v53);
  v57 = sub_21498E670();
  v58 = sub_21498FBB0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_21488E000, v57, v58, "[ProviderModel] shouldShowConsentInMail - undecided", v59, 2u);
    MEMORY[0x216059AC0](v59, -1, -1);
  }

  (*(v55 + 8))(v56, v53);
LABEL_26:
  (v37[1])(v36, v75);
  return 1;
}

void *sub_21494F990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    while (1)
    {
      memcpy(__dst, v10, 0x179uLL);
      v11 = *&__dst[0] == a1 && *(&__dst[0] + 1) == a2;
      if (v11 || (sub_214990080() & 1) != 0)
      {
        break;
      }

      v10 += 384;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    memcpy(__src, __dst, 0x179uLL);
    nullsub_1(__src);
    memcpy(a3, __src, 0x179uLL);
    return sub_2148D8FC8(__dst, v13);
  }

  else
  {
LABEL_9:
    sub_2148DA328(__dst);
    return memcpy(a3, __dst, 0x179uLL);
  }
}

uint64_t sub_21494FA90()
{
  v1[7] = v0;
  v2 = sub_21498F710();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494FB50, 0, 0);
}

uint64_t sub_21494FB50()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore;
  v0[11] = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore;
  v3 = *(v1 + v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = *(v1 + v2);

    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    v8 = v0[8];
    v9 = v0[9];
    sub_2148994D0(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository, (v0 + 2));
    v10 = *(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
    v0[12] = v10;
    (*(v9 + 16))(v4, v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration, v8);
    v11 = qword_281191B88;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_281194E50;

    return MEMORY[0x2822009F8](sub_21494FCAC, v13, 0);
  }
}

uint64_t sub_21494FCAC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = *v8;

  v0[13] = sub_2149501C0(v9, v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  return MEMORY[0x2822009F8](sub_21494FDEC, 0, 0);
}

uint64_t sub_21494FDEC()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[13];

  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6(v4);
}

uint64_t iCloudMailAssistantProviderSwift.ProviderModel.deinit()
{
  sub_214950444(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state, type metadata accessor for MailCleanupState);

  v1 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_networkStatusProvider);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration;
  v3 = sub_21498F710();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository));
  return v0;
}

uint64_t iCloudMailAssistantProviderSwift.ProviderModel.__deallocating_deinit()
{
  sub_214950444(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state, type metadata accessor for MailCleanupState);

  v1 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_networkStatusProvider);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration;
  v3 = sub_21498F710();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudMailAssistantProviderSwift.ProviderModel()
{
  result = qword_281192498;
  if (!qword_281192498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149500AC()
{
  result = type metadata accessor for MailCleanupState();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21498F710();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

char *sub_2149501C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MARepositoryDefault();
  v22[3] = v7;
  v22[4] = &off_2826CB168;
  v22[0] = a1;
  v8 = _s9DataStoreCMa();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v7);
  v13 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  *(v11 + 5) = v7;
  *(v11 + 6) = &off_2826CB168;
  *(v11 + 2) = v17;
  *(v11 + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext] = 1;
  *&v11[OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel] = 0;
  *(v11 + 8) = &off_2826CBF58;
  swift_unknownObjectWeakAssign();
  *(v11 + 9) = a3;
  v18 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration;
  v19 = sub_21498F710();
  (*(*(v19 - 8) + 32))(&v11[v18], a4, v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214950398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailCleanupState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149503FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214950444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214950534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002149A1EC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2149505C8(uint64_t a1)
{
  v2 = sub_214950D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214950604(uint64_t a1)
{
  v2 = sub_214950D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214950640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9E8, &qword_21499CD00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214950D30();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21498FF70();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_2149507A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9D8, &qword_21499CCF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214950D30();
  sub_2149901C0();
  sub_214990010();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2149508DC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214950924()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedPreferencesAPIRequest();
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000023, 0x80000002149A3220, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498BF80(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000029, 0x80000002149A3250);

    return v23[0];
  }

  return v8;
}

id sub_214950C1C(void *a1)
{
  v1 = a1;
  sub_214950924();

  v2 = sub_21498F840();

  return v2;
}

id sub_214950C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedPreferencesAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedPreferencesAPIRequest()
{
  result = qword_27CA1C9C8;
  if (!qword_27CA1C9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_214950D30()
{
  result = qword_27CA1C9E0;
  if (!qword_27CA1C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9E0);
  }

  return result;
}

unint64_t sub_214950D98()
{
  result = qword_27CA1C9F0;
  if (!qword_27CA1C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9F0);
  }

  return result;
}

unint64_t sub_214950DF0()
{
  result = qword_27CA1C9F8;
  if (!qword_27CA1C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9F8);
  }

  return result;
}

unint64_t sub_214950E48()
{
  result = qword_27CA1CA00;
  if (!qword_27CA1CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA00);
  }

  return result;
}

uint64_t type metadata accessor for MARemoteViewOfflineView()
{
  result = qword_27CA1CA10;
  if (!qword_27CA1CA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214950F10()
{
  sub_214950F94();
  if (v0 <= 0x3F)
  {
    sub_214950FEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214950F94()
{
  if (!qword_27CA1CA20)
  {
    sub_21498EC20();
    v0 = sub_21498EB70();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1CA20);
    }
  }
}

void sub_214950FEC()
{
  if (!qword_27CA1BFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C000, &qword_214999708);
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BFF8);
    }
  }
}

uint64_t sub_21495106C()
{
  v0 = sub_21498EE70();
  v6 = 1;
  sub_214951284(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v8, __src, 0x109uLL);
  sub_2148AA824(__dst, v4, &qword_27CA1AEB0, &qword_214994550);
  sub_21489DFCC(v8, &qword_27CA1AEB0, &qword_214994550);
  memcpy(&v5[7], __dst, 0x109uLL);
  v4[0] = v0;
  v4[1] = 0;
  LOBYTE(v4[2]) = v6;
  memcpy(&v4[2] + 1, v5, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AED8, &qword_2149945A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA30, &qword_21499CED0);
  sub_2148B4C20(&qword_27CA1AED0, &qword_27CA1AED8, &qword_2149945A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA38, &qword_21499CED8);
  v2 = sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8);
  __src[0] = v1;
  __src[1] = v2;
  swift_getOpaqueTypeConformance2();
  sub_21498F200();
  memcpy(__src, v4, 0x121uLL);
  return sub_21489DFCC(__src, &qword_27CA1AED8, &qword_2149945A0);
}

void sub_214951284(void *a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v84 = ObjCClassFromMetadata;
  v3 = [v2 bundleForClass_];
  MEMORY[0x2160589C0](0x5F454E494C46464FLL, 0xED0000454C544954);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v4 = sub_21498E0A0() >> 32;
  v6 = v5;

  HIDWORD(v133) = v4;
  v134 = v6;
  sub_21489CA00();
  v7 = sub_21498F100();
  v9 = v8;
  v11 = v10;
  sub_21498F050();
  sub_21498F030();
  sub_21498F060();

  v12 = sub_21498F0E0();
  v14 = v13;
  v16 = v15;

  sub_2148C85D4(v7, v9, v11 & 1);

  LODWORD(v133) = sub_21498EF00();
  v17 = sub_21498F0B0();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_2148C85D4(v12, v14, v16 & 1);

  v23 = sub_21498EFE0();
  sub_21498EB50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 & 1;
  LOBYTE(v125) = v7 & 1;
  LOBYTE(v98[0]) = 0;
  v33 = sub_21498F000();
  sub_21498EB50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v133) = 0;
  v42 = MobileGestalt_get_current_device();
  if (v42)
  {
    v43 = v42;
    v86 = v41;
    v87 = v39;
    v88 = v37;
    v89 = v35;
    v90 = v33;
    v91 = v31;
    v92 = v29;
    v93 = v27;
    v94 = v25;
    v95 = v23;
    v96 = v19;
    v97 = v17;
    v83 = v22;
    MobileGestalt_get_wapiCapability();

    v44 = objc_opt_self();
    v45 = sub_21498F840();

    v46 = [v44 modelSpecificLocalizedStringKeyForKey_];

    if (v46)
    {
      v47 = sub_21498F870();
      v49 = v48;

      v50 = [v2 bundleForClass_];
      MEMORY[0x2160589C0](v47, v49);
      MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
      sub_21498E0A0();

      v51 = sub_21498F100();
      v53 = v52;
      LOBYTE(v47) = v54;
      sub_21498F010();
      v55 = sub_21498F0E0();
      v57 = v56;
      v59 = v58;

      sub_2148C85D4(v51, v53, v47 & 1);

      sub_21498EF00();
      v60 = sub_21498F0B0();
      v62 = v61;
      LOBYTE(v51) = v63;
      v65 = v64;
      sub_2148C85D4(v55, v57, v59 & 1);

      LOBYTE(v55) = sub_21498EFE0();
      sub_21498EB50();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      LOBYTE(v57) = v51 & 1;
      v159 = v51 & 1;
      v156 = 0;
      LOBYTE(v51) = sub_21498F000();
      sub_21498EB50();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v160 = 0;
      KeyPath = swift_getKeyPath();
      *&v118 = v97;
      *(&v118 + 1) = v96;
      LOBYTE(v119) = v32;
      *(&v119 + 1) = *v165;
      DWORD1(v119) = *&v165[3];
      *(&v119 + 1) = v83;
      LOBYTE(v120) = v95;
      *(&v120 + 1) = *v164;
      DWORD1(v120) = *&v164[3];
      *(&v120 + 1) = v94;
      *&v121 = v93;
      *(&v121 + 1) = v92;
      *&v122 = v91;
      BYTE8(v122) = 0;
      *(&v122 + 9) = v167[0];
      HIDWORD(v122) = *(v167 + 3);
      LOBYTE(v123) = v90;
      DWORD1(v123) = *&v166[3];
      *(&v123 + 1) = *v166;
      *(&v123 + 1) = v89;
      *v124 = v88;
      *&v124[8] = v87;
      *&v124[16] = v86;
      v124[24] = 0;
      __src[2] = v120;
      __src[3] = v121;
      __src[0] = v118;
      __src[1] = v119;
      *(&__src[6] + 9) = *&v124[9];
      __src[4] = v122;
      __src[5] = v123;
      *&v125 = v60;
      *(&v125 + 1) = v62;
      LOBYTE(v126) = v57;
      DWORD1(v126) = *&v158[3];
      *(&v126 + 1) = *v158;
      *(&v126 + 1) = v65;
      LOBYTE(v127) = v55;
      DWORD1(v127) = *&v157[3];
      *(&v127 + 1) = *v157;
      *(&v127 + 1) = v67;
      *&v128 = v69;
      *(&v128 + 1) = v71;
      *&v129 = v73;
      BYTE8(v129) = 0;
      HIDWORD(v129) = *&v162[3];
      *(&v129 + 9) = *v162;
      LOBYTE(v130) = v51;
      DWORD1(v130) = *&v161[3];
      *(&v130 + 1) = *v161;
      *(&v130 + 1) = v75;
      *&v131 = v77;
      *(&v131 + 1) = v79;
      *v132 = v81;
      v132[8] = 0;
      *&v132[12] = *(v163 + 3);
      *&v132[9] = v163[0];
      *&v132[16] = KeyPath;
      v132[24] = 1;
      __src[6] = *v124;
      __src[8] = v125;
      __src[9] = v126;
      __src[11] = v128;
      __src[12] = v129;
      __src[10] = v127;
      *(&__src[15] + 9) = *&v132[9];
      __src[14] = v131;
      __src[15] = *v132;
      __src[13] = v130;
      memcpy(a1, __src, 0x109uLL);
      v133 = v60;
      v134 = v62;
      v135 = v57;
      *v136 = *v158;
      *&v136[3] = *&v158[3];
      v137 = v65;
      v138 = v55;
      *v139 = *v157;
      *&v139[3] = *&v157[3];
      v140 = v67;
      v141 = v69;
      v142 = v71;
      v143 = v73;
      v144 = 0;
      *&v145[3] = *&v162[3];
      *v145 = *v162;
      v146 = v51;
      *&v147[3] = *&v161[3];
      *v147 = *v161;
      v148 = v75;
      v149 = v77;
      v150 = v79;
      v151 = v81;
      v152 = 0;
      *v153 = v163[0];
      *&v153[3] = *(v163 + 3);
      v154 = KeyPath;
      v155 = 1;
      sub_2148AA824(&v118, v98, &qword_27CA1AEB8, qword_21499CF20);
      sub_2148AA824(&v125, v98, &qword_27CA1AEC0, &qword_214994590);
      sub_21489DFCC(&v133, &qword_27CA1AEC0, &qword_214994590);
      v98[0] = v97;
      v98[1] = v96;
      v99 = v32;
      *v100 = *v165;
      *&v100[3] = *&v165[3];
      v101 = v83;
      v102 = v95;
      *v103 = *v164;
      *&v103[3] = *&v164[3];
      v104 = v94;
      v105 = v93;
      v106 = v92;
      v107 = v91;
      v108 = 0;
      *&v109[3] = *(v167 + 3);
      *v109 = v167[0];
      v110 = v90;
      *&v111[3] = *&v166[3];
      *v111 = *v166;
      v112 = v89;
      v113 = v88;
      v114 = v87;
      v115 = v86;
      v116 = 0;
      sub_21489DFCC(v98, &qword_27CA1AEB8, qword_21499CF20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_214951AF8(uint64_t a1)
{
  v2 = sub_21498EED0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA38, &qword_21499CED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_21498EEC0();
  v12 = a1;
  sub_21498E450();
  sub_214952AA0(&qword_27CA1AE28, MEMORY[0x277D24538]);
  sub_21498EBB0();
  v9 = sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8);
  MEMORY[0x216057F70](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214951CD4(uint64_t a1)
{
  v2 = type metadata accessor for MARemoteViewOfflineView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2149528E0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_214952944(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_21498E400();
}

uint64_t sub_214951DD8(uint64_t a1)
{
  v19 = sub_21498EDC0();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_21498EC20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2148AA824(a1, v9, &qword_27CA1C090, &qword_2149999A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_21498FBC0();
    v16 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_21498EC10();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_214952054()
{
  v1 = v0;
  v2 = sub_21498F510();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21498F540();
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MARemoteViewOfflineView();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = sub_21498F560();
  v36 = *(v43 - 8);
  v9 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v13;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_281194E18);
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_21498E670();
  v21 = sub_21498FB90();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v1;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21488E000, v20, v21, "[MARemoteViewOfflineView] handleAppWillEnterForeground - triggering retry", v23, 2u);
    v24 = v23;
    v1 = v22;
    MEMORY[0x216059AC0](v24, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_2148FFDCC();
  v25 = sub_21498FC20();
  sub_21498F550();
  v26 = v35;
  sub_21498F570();
  v36 = *(v36 + 8);
  (v36)(v12, v43);
  sub_2149528E0(v1, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v28 = swift_allocObject();
  sub_214952944(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  aBlock[4] = sub_214952A04;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_7;
  v29 = _Block_copy(aBlock);

  v30 = v37;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214952AA0(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980);
  v31 = v39;
  v32 = v42;
  sub_21498FD60();
  MEMORY[0x216058C80](v26, v30, v31, v29);
  _Block_release(v29);

  (*(v41 + 8))(v31, v32);
  (*(v38 + 8))(v30, v40);
  return (v36)(v26, v43);
}

uint64_t sub_214952630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v17 = v2;
  v18 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA28, &unk_21499CEC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AED8, &qword_2149945A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA30, &qword_21499CED0);
  v8 = sub_2148B4C20(&qword_27CA1AED0, &qword_27CA1AED8, &qword_2149945A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA38, &qword_21499CED8);
  sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21498ECD0();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x277D76758];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA48, &unk_21499CEE0);
  v12 = a2 + *(v11 + 52);
  sub_21498FCA0();

  sub_2149528E0(v17, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  result = sub_214952944(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v16 = (a2 + *(v11 + 56));
  *v16 = sub_2149529A8;
  v16[1] = v14;
  return result;
}

uint64_t sub_2149528E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteViewOfflineView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214952944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteViewOfflineView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149529A8()
{
  v1 = *(type metadata accessor for MARemoteViewOfflineView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_214952054();
}

uint64_t sub_214952A04()
{
  v1 = type metadata accessor for MARemoteViewOfflineView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214952AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MARemoteViewOfflineView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21498EC20();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  if (*v8)
  {
    v9 = v8[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214952C14()
{
  v1 = *(type metadata accessor for MARemoteViewOfflineView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_214951DD8(v2);
}

uint64_t sub_214952C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED60();
  *a1 = result;
  return result;
}

uint64_t sub_214952CC8()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214952D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v45 - v3;
  v5 = sub_21498E1B0();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21498E690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecommendationsAPIRequest = type metadata accessor for GetRecommendationsAPIRequest();
  v50 = v0;
  v52.receiver = v0;
  v52.super_class = RecommendationsAPIRequest;
  v15 = objc_msgSendSuper2(&v52, sel_urlString);
  v16 = sub_21498F870();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_281194E18);
    v46 = v10;
    (*(v10 + 16))(v13, v20, v9);
    v21 = v50;
    v22 = sub_21498E670();
    v23 = sub_21498FBD0();
    v47 = v21;

    v48 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45 = v5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v51[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_2149079F4(0xD000000000000033, 0x80000002149A3320, v51);
      *(v25 + 12) = 2080;

      v27 = sub_2149079F4(v16, v18, v51);

      *(v25 + 14) = v27;
      v28 = v23;
      v29 = v48;
      _os_log_impl(&dword_21488E000, v48, v28, "Using fallback url for %s: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v26, -1, -1);
      v30 = v25;
      v5 = v45;
      MEMORY[0x216059AC0](v30, -1, -1);
    }

    else
    {
    }

    v31 = (*(v46 + 8))(v13, v9);
    v51[0] = sub_21498DE14(v31);
    v51[1] = v32;

    MEMORY[0x2160589C0](0xD000000000000020, 0x80000002149A3360);
  }

  sub_21498E1A0();

  v33 = v49;
  result = (*(v49 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v33 + 32))(v8, v4, v5);
    v35 = v50;
    if (*&v50[qword_27CA1CA58 + 8])
    {
      v36 = *&v50[qword_27CA1CA58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      v37 = *(sub_21498DFB0() - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      *(swift_allocObject() + 16) = xmmword_214991720;
      sub_21498DFA0();
      sub_21498E190();
    }

    v40 = v35[qword_27CA1CA60];
    if (v40 != 2 && (v40 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      v41 = *(sub_21498DFB0() - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      *(swift_allocObject() + 16) = xmmword_214991720;
      sub_21498DFA0();
      sub_21498E190();
    }

    v44 = sub_21498E130();
    (*(v33 + 8))(v8, v5);

    return v44;
  }

  return result;
}

id sub_21495334C(void *a1)
{
  v1 = a1;
  sub_214952D10();

  v2 = sub_21498F840();

  return v2;
}

id sub_2149533C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetRecommendationsAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetRecommendationsAPIRequest()
{
  result = qword_27CA1CA68;
  if (!qword_27CA1CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149534C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CAB0, &qword_21499D058);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214953C40();
  sub_2149901C0();
  LOBYTE(v16) = 0;
  sub_214990010();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
    sub_214953DB4(&qword_27CA1CAB8, sub_214953E2C);
    sub_214990040();
    v16 = a4;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA98, &qword_21499D050);
    sub_214953CE8(&qword_27CA1CAC8, sub_214953E80);
    sub_214990040();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_214953714()
{
  v1 = 0x6974616D6F747561;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_214953780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214953874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2149537A8(uint64_t a1)
{
  v2 = sub_214953C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149537E4(uint64_t a1)
{
  v2 = sub_214953C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214953820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2149539A4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_214953874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x80000002149A3390 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEA00000000006E6FLL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
  {

    return 2;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2149539A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA78, &unk_21499D040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214953C40();
  sub_2149901B0();
  LOBYTE(v11) = 0;
  v8 = sub_21498FF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
  HIBYTE(v10) = 1;
  sub_214953DB4(&qword_27CA1CA88, sub_214953C94);
  sub_21498FFA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA98, &qword_21499D050);
  HIBYTE(v10) = 2;
  sub_214953CE8(&qword_27CA1CAA0, sub_214953D60);
  sub_21498FFA0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8 & 1;
}

unint64_t sub_214953C40()
{
  result = qword_27CA1CA80;
  if (!qword_27CA1CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA80);
  }

  return result;
}

unint64_t sub_214953C94()
{
  result = qword_27CA1CA90;
  if (!qword_27CA1CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA90);
  }

  return result;
}

uint64_t sub_214953CE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA98, &qword_21499D050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214953D60()
{
  result = qword_27CA1CAA8;
  if (!qword_27CA1CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAA8);
  }

  return result;
}

uint64_t sub_214953DB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B398, &qword_214995188);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214953E2C()
{
  result = qword_27CA1CAC0;
  if (!qword_27CA1CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAC0);
  }

  return result;
}

unint64_t sub_214953E80()
{
  result = qword_27CA1CAD0;
  if (!qword_27CA1CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAD0);
  }

  return result;
}

unint64_t sub_214953EE8()
{
  result = qword_27CA1CAD8;
  if (!qword_27CA1CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAD8);
  }

  return result;
}

unint64_t sub_214953F40()
{
  result = qword_27CA1CAE0;
  if (!qword_27CA1CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAE0);
  }

  return result;
}

unint64_t sub_214953F98()
{
  result = qword_27CA1CAE8;
  if (!qword_27CA1CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAE8);
  }

  return result;
}

id sub_214953FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_214956DB8();
    v5 = sub_21498F7D0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214954078(uint64_t a1)
{
  v89 = sub_21498E7C0();
  v2 = *(v89 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
  v5 = *(*(v84 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v84);
  v71 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v69 - v10;
  v72 = MEMORY[0x277D84F98];
  v90 = MEMORY[0x277D84F98];
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v79 = v2 + 88;
  v80 = v2 + 16;
  v78 = *MEMORY[0x277D232A0];
  v75 = *MEMORY[0x277D23248];
  v74 = *MEMORY[0x277D23288];
  v73 = *MEMORY[0x277D23258];
  v76 = (v2 + 8);
  v83 = v2;
  v70 = (v2 + 96);
  v85 = a1;

  v17 = 0;
  v77 = a1 + 64;
  v81 = v15;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v17 = v18;
LABEL_10:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v17 << 6);
      v21 = v84;
      v22 = *(v85 + 56);
      v23 = (*(v85 + 48) + 16 * v20);
      v24 = v23[1];
      v86 = *v23;
      v25 = v82;
      v26 = v83;
      v27 = *(v83 + 16);
      v28 = v89;
      v27(&v82[*(v84 + 48)], v22 + *(v83 + 72) * v20, v89);
      *v25 = v86;
      v25[1] = v24;
      v86 = v24;
      v29 = v87;
      sub_2148B4C68(v25, v87, &qword_27CA1CB10, &qword_21499D2A0);
      v30 = v29 + *(v21 + 48);
      v31 = v88;
      v27(v88, v30, v28);
      v32 = (*(v26 + 88))(v31, v28);
      if (v32 == v78)
      {
        v34 = v88;
        (*v70)(v88, v89);
        v35 = *v34;
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
        v38 = objc_allocWithZone(MEMORY[0x277CCACA8]);

        v39 = sub_21498F840();

        v40 = [v38 initWithString_];

        v15 = v81;
        goto LABEL_21;
      }

      if (v32 == v75)
      {
        v41 = v88;
        (*v70)(v88, v89);
        v42 = *(*v41 + 16);
        v43 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v40 = [v43 initWithInteger_];

        v15 = v81;
        goto LABEL_21;
      }

      v15 = v81;
      if (v32 == v74)
      {
        v44 = v88;
        (*v70)(v88, v89);
        v45 = *(*v44 + 16);
        v46 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v47 = [v46 initWithDouble_];
        goto LABEL_20;
      }

      if (v32 == v73)
      {
        break;
      }

      v33 = *v76;

      v33(v88, v89);
      result = sub_21489DFCC(v87, &qword_27CA1CB10, &qword_21499D2A0);
      v18 = v17;
      v11 = v77;
      if (!v14)
      {
LABEL_7:
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v17 >= v15)
          {

            return v72;
          }

          v14 = *(v11 + 8 * v17);
          ++v18;
          if (v14)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    v48 = v88;
    (*v70)(v88, v89);
    v49 = *(*v48 + 16);
    v50 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v47 = [v50 initWithBool_];
LABEL_20:
    v40 = v47;

LABEL_21:
    v51 = v71;
    sub_2148B4C68(v87, v71, &qword_27CA1CB10, &qword_21499D2A0);
    v52 = v72[2];
    if (v72[3] <= v52)
    {
      sub_214955950(v52 + 1, 1);
    }

    v53 = v90;
    v54 = *v51;
    v55 = v51[1];
    v56 = *(v90 + 40);
    sub_214990160();
    sub_21498F900();
    result = sub_214990190();
    v57 = v53 + 64;
    v72 = v53;
    v58 = -1 << *(v53 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~*(v53 + 64 + 8 * (v59 >> 6))) == 0)
    {
      break;
    }

    v61 = __clz(__rbit64((-1 << v59) & ~*(v53 + 64 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    v66 = *(v84 + 48);
    *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    v67 = v72;
    v68 = (v72[6] + 16 * v61);
    *v68 = v54;
    v68[1] = v55;
    *(v67[7] + 8 * v61) = v40;
    ++v67[2];
    result = (*v76)(v51 + v66, v89);
    v11 = v77;
  }

  v62 = 0;
  v63 = (63 - v58) >> 6;
  while (++v60 != v63 || (v62 & 1) == 0)
  {
    v64 = v60 == v63;
    if (v60 == v63)
    {
      v60 = 0;
    }

    v62 |= v64;
    v65 = *(v57 + 8 * v60);
    if (v65 != -1)
    {
      v61 = __clz(__rbit64(~v65)) + (v60 << 6);
      goto LABEL_33;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2149547A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F7250746E657665;
  }

  else
  {
    v4 = 0x6D614E746E657665;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEF73656974726570;
  }

  if (*a2)
  {
    v6 = 0x6F7250746E657665;
  }

  else
  {
    v6 = 0x6D614E746E657665;
  }

  if (*a2)
  {
    v7 = 0xEF73656974726570;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_214954858()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149548EC()
{
  *v0;
  sub_21498F900();
}

uint64_t sub_21495496C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149549FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_214954A5C(uint64_t *a1@<X8>)
{
  v2 = 0x6D614E746E657665;
  if (*v1)
  {
    v2 = 0x6F7250746E657665;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF73656974726570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214954AAC()
{
  if (*v0)
  {
    result = 0x6F7250746E657665;
  }

  else
  {
    result = 0x6D614E746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_214954AF8@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214954B5C(uint64_t a1)
{
  v2 = sub_214956E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214954B98(uint64_t a1)
{
  v2 = sub_214956E04();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214954BD4(uint64_t *a1)
{
  v27 = *v1;
  v28 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_21498E900();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB28, &unk_21499D2B0);
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v15 = &v23 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214956E04();
  v17 = v28;
  sub_2149901B0();
  if (v17)
  {
    v20 = *(*v1 + 48);
    v21 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v12;
    v18 = v24;
    v30 = 0;
    sub_214956E58(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    sub_21498FFA0();
    v19 = *(v18 + 32);
    v23 = OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName;
    v19(&v1[OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName], v11, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    v29 = 1;
    sub_214941B08();
    sub_21498FF40();
    (*(v28 + 8))(v15, v26);
    sub_2148B4C68(v7, &v1[OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties], &qword_27CA1A808, &unk_21499B730);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_214954FA0()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties, &qword_27CA1A808, &unk_21499B730);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MACoreAnalyticsLogging()
{
  result = qword_27CA1CAF0;
  if (!qword_27CA1CAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2149550B0()
{
  v0 = sub_21498E900();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_214941628();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21495517C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_214956848)(a1);
}

char *sub_214955354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214954BD4(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_21495543C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E494C4E495F4143;
  v4 = 0xED00005049545F45;
  if (v2 != 1)
  {
    v3 = 0x42485341445F4143;
    v4 = 0xEC0000004452414FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x49545445535F4143;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB0000000053474ELL;
  }

  v7 = 0x4E494C4E495F4143;
  v8 = 0xED00005049545F45;
  if (*a2 != 1)
  {
    v7 = 0x42485341445F4143;
    v8 = 0xEC0000004452414FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x49545445535F4143;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB0000000053474ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_21495556C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21495562C()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2149556D8()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214955794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214957074();
  *a2 = result;
  return result;
}

void sub_2149557C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000053474ELL;
  v4 = 0xED00005049545F45;
  v5 = 0x4E494C4E495F4143;
  if (v2 != 1)
  {
    v5 = 0x42485341445F4143;
    v4 = 0xEC0000004452414FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49545445535F4143;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2149558F0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_214955950(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB18, &qword_21499D2A8);
  v39 = a2;
  result = sub_21498FEB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_214955BF4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_21498E7C0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
  v46 = a2;
  result = sub_21498FEB0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_214955F74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  v36 = a2;
  result = sub_21498FEB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2148A4198(v25, v37);
      }

      else
      {
        sub_21489E614(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2148A4198(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21495622C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB38, &qword_21499F010);
  v38 = a2;
  result = sub_21498FEB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2149564F4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_21498FEB0();
  v45 = result;
  if (*(v7 + 16))
  {
    v10 = result;
    v41 = v4;
    v42 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v24 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_18:
      v27 = v24 | (v11 << 6);
      v28 = *(v7 + 56);
      v29 = (*(v7 + 48) + 48 * v27);
      v30 = v29[1];
      v47 = *v29;
      v31 = v29[3];
      v46 = v29[2];
      v32 = v29[4];
      v33 = v29[5];
      v34 = *(v28 + 8 * v27);
      if ((a2 & 1) == 0)
      {

        sub_21489B6F8(v32, v33);

        v10 = v45;
      }

      v35 = *(v10 + 40);
      sub_214990160();
      sub_21489B6F8(v32, v33);
      sub_21498F900();
      v43 = v31;
      sub_21498F900();
      if (v33 >> 60 != 15)
      {
        sub_21498E1E0();
        sub_21489B8F0(v32, v33);
      }

      result = sub_214990190();
      v10 = v45;
      v18 = -1 << *(v45 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v17 + 8 * (v19 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v18) >> 6;
        v22 = v34;
        while (++v20 != v37 || (v36 & 1) == 0)
        {
          v38 = v20 == v37;
          if (v20 == v37)
          {
            v20 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v20);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v20 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v17 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v34;
LABEL_10:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v23 = (*(v45 + 48) + 48 * v21);
      *v23 = v47;
      v23[1] = v30;
      v23[2] = v46;
      v23[3] = v43;
      v23[4] = v32;
      v23[5] = v33;
      *(*(v45 + 56) + 8 * v21) = v22;
      ++*(v45 + 16);
      v7 = v42;
      v15 = v44;
    }

    v25 = v11;
    while (1)
    {
      v11 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v26 = v12[v11];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_18;
      }
    }

    if (a2)
    {
      v40 = 1 << *(v7 + 32);
      if (v40 >= 64)
      {
        bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v40;
      }

      *(v7 + 16) = 0;
    }

    v5 = v41;
  }

  else
  {
  }

  *v5 = v45;
  return result;
}

uint64_t sub_214956848(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21498E690();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214956940, 0, 0);
}

uint64_t sub_214956940()
{
  v1 = v0[9];
  v2 = v0[10] + OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName;
  sub_21498E8F0();
  v3 = v0[14];
  sub_214956D28(v0[10] + OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21489DFCC(v0[14], &qword_27CA1A808, &unk_21499B730);
    v7 = 0;
  }

  else
  {
    v6 = v0[9];
    sub_2148B4A4C();
    sub_21498E750();
    (*(v5 + 8))(v0[14], v4);
    v7 = sub_214954078(v0[8]);
  }

  v8 = v0[13];
  v9 = v0[14];
  v10 = sub_21498F840();

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v0[6] = sub_214956D98;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_214953FEC;
  v0[5] = &block_descriptor_8;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_214956D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_214956DB8()
{
  result = qword_27CA1CB20;
  if (!qword_27CA1CB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA1CB20);
  }

  return result;
}

unint64_t sub_214956E04()
{
  result = qword_27CA1CB30;
  if (!qword_27CA1CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB30);
  }

  return result;
}

uint64_t sub_214956E58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214956EB4()
{
  result = qword_27CA1CB40;
  if (!qword_27CA1CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB40);
  }

  return result;
}

unint64_t sub_214956F0C()
{
  result = qword_27CA1CB48;
  if (!qword_27CA1CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB48);
  }

  return result;
}

unint64_t sub_214956F64()
{
  result = qword_27CA1CB50;
  if (!qword_27CA1CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB50);
  }

  return result;
}

unint64_t sub_214956FCC()
{
  result = qword_27CA1CB58;
  if (!qword_27CA1CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB58);
  }

  return result;
}

unint64_t sub_214957020()
{
  result = qword_27CA1CB60;
  if (!qword_27CA1CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB60);
  }

  return result;
}

uint64_t sub_214957074()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2149570C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = 1818326372;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 1818326372;
    }

    if (v4 == 2)
    {
      v6 = 0x80000002149A0900;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4)
    {
      v6 = 0x80000002149A08E0;
    }

    else
    {
      v6 = 0x80000002149A08C0;
    }
  }

  v7 = 0x80000002149A0900;
  if (a2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x80000002149A08E0;
  if (a2)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x80000002149A08C0;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149571DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657474696D6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x647261646E617473;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E6574726F6873;
    }

    else
    {
      v4 = 0x64657474696D6FLL;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x647261646E617473;
  if (a2 != 2)
  {
    v7 = 0x6574656C706D6F63;
  }

  if (a2)
  {
    v2 = 0x656E6574726F6873;
    v6 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_214990080();
  }

  return v10 & 1;
}

uint64_t sub_214957328(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6D726F4665746164;
    }

    else
    {
      v3 = 0x6D726F46656D6974;
    }

    v4 = 0xEA00000000007461;
  }

  else
  {
    if (a1)
    {
      v3 = 0x6D617473656D6974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE900000000000070;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x6D726F4665746164;
  if (a2 != 2)
  {
    v7 = 0x6D726F46656D6974;
  }

  if (a2)
  {
    v6 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xEA00000000007461;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_214990080();
  }

  return v10 & 1;
}

uint64_t sub_21495747C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657474696D6FLL;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x636972656D756ELL;
    }

    else
    {
      v4 = 0x64657474696D6FLL;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x6169766572626261;
    v3 = 0xEB00000000646574;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1735290732;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574656C706D6F63;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x636972656D756ELL;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x6169766572626261;
    v5 = 0xEB00000000646574;
    v6 = 0xE400000000000000;
    v7 = 1735290732;
    if (a2 != 3)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149575F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D614E6E6F6369;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x72656665526C7275;
    v5 = 0xEC00000065636E65;
  }

  v6 = 0xD00000000000001DLL;
  if (a1)
  {
    v3 = 0x80000002149A0B40;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x656D614E6E6F6369;
    }

    else
    {
      v11 = 0x72656665526C7275;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEC00000065636E65;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v9 = 0x656C746974;
    }

    if (a2)
    {
      v10 = 0x80000002149A0B40;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_214990080();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}