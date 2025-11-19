uint64_t sub_265D136E0(uint64_t a1)
{
  v102 = sub_265D58F70();
  v101 = *(v102 - 8);
  v2 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v94 - v6;
  v7 = sub_265D58520();
  v115 = *(v7 - 8);
  v8 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v106 = &v94 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v114 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v94 - v21;
  v23 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_265D59DE0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v110 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v94 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v94 - v34;
  sub_265D59600();
  sub_265D59DC0();
  v36 = *(v28 + 8);
  v116 = v35;
  v112 = v36;
  v113 = v27;
  v111 = v28 + 8;
  v36(v35, v27);
  v118 = a1;
  sub_265C959E0(a1, v26);
  v117 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *v26;
  if (EnumCaseMultiPayload == 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265D1D19C(v26 + *(v39 + 48), v22);
    sub_265C97870(v22, v20, &qword_28003E8F8, "vj");
    v40 = v115;
    if ((*(v115 + 48))(v20, 1, v7) == 1)
    {
      sub_265CA4AE8(v22, &qword_28003E8F8, "vj");

      v41 = v20;
LABEL_12:
      sub_265CA4AE8(v41, &qword_28003E8F8, "vj");
      goto LABEL_15;
    }

    v43 = v114;
    (*(v40 + 32))(v114, v20, v7);
    v44 = v107;
    sub_265D59600();
    v45 = *(v40 + 16);
    v46 = v108;
    v45(v108, v43, v7);
    v47 = sub_265D59DD0();
    v95 = sub_265D5A070();
    v48 = os_log_type_enabled(v47, v95);
    v98 = v22;
    v97 = v40 + 16;
    v96 = v45;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v99 = v7;
      v50 = v49;
      v94 = swift_slowAlloc();
      v120[0] = v94;
      *v50 = 141558274;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2080;
      v45(v106, v46, v99);
      v51 = sub_265D59EC0();
      v52 = v44;
      v53 = v38;
      v55 = v54;
      v108 = *(v40 + 8);
      (v108)(v46, v99);
      v56 = v114;
      v57 = sub_265CF4FFC(v51, v55, v120);
      v38 = v53;

      *(v50 + 14) = v57;
      _os_log_impl(&dword_265C01000, v47, v95, "Found an existing server playback context, releasing %{mask.hash}s", v50, 0x16u);
      v58 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x266770CF0](v58, -1, -1);
      v7 = v99;
      MEMORY[0x266770CF0](v50, -1, -1);

      v112(v52, v113);
      v59 = v109;
    }

    else
    {

      v108 = *(v40 + 8);
      (v108)(v46, v7);
      v112(v44, v113);
      v59 = v109;
      v56 = v114;
    }

    v60 = v119;
    sub_265D59140();
    v119 = v60;
    v61 = v110;
    if (!v60)
    {
      v113 = v120[1];
      swift_getObjectType();
      v82 = v101;
      v83 = v100;
      v84 = v102;
      (*(v101 + 104))(v100, *MEMORY[0x277D4E4C8], v102);
      v85 = v103;
      sub_265D58C50();
      swift_unknownObjectRelease();
      (*(v82 + 8))(v83, v84);
      v86 = v105;
      v87 = sub_265D58960();
      v88 = swift_allocObject();
      *(v88 + 16) = 0;
      *(v88 + 24) = 0;
      v87(sub_265CA4BF4, v88);

      (*(v104 + 8))(v85, v86);
      (v108)(v56, v7);
      v41 = v98;
      goto LABEL_12;
    }

    v109 = v38;
    sub_265D59600();
    v62 = v56;
    v63 = v96;
    v96(v59, v62, v7);
    v64 = v119;
    v65 = v119;
    v66 = sub_265D59DD0();
    v67 = sub_265D5A070();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v120[0] = v107;
      *v68 = 141558530;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2080;
      v63(v106, v59, v7);
      v69 = sub_265D59EC0();
      v70 = v7;
      v71 = v119;
      v73 = v72;
      v115 += 8;
      v74 = v59;
      v75 = v108;
      (v108)(v74, v7);
      v76 = sub_265CF4FFC(v69, v73, v120);

      *(v68 + 14) = v76;
      *(v68 + 22) = 2082;
      v120[5] = v71;
      v77 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      v78 = sub_265D59EC0();
      v80 = sub_265CF4FFC(v78, v79, v120);

      *(v68 + 24) = v80;
      _os_log_impl(&dword_265C01000, v66, v67, "Unable to release existing server playback context %{mask.hash}s on transition to idle: %{public}s", v68, 0x20u);
      v81 = v107;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v81, -1, -1);
      MEMORY[0x266770CF0](v68, -1, -1);

      v112(v110, v113);
      v75(v114, v70);
    }

    else
    {

      v89 = v108;
      (v108)(v59, v7);
      v112(v61, v113);
      v89(v114, v7);
    }

    sub_265CA4AE8(v98, &qword_28003E8F8, "vj");
    v119 = 0;
  }

  else
  {
    v42 = *v26;
    sub_265D59120();
  }

LABEL_15:
  sub_265D59600();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF8, &qword_265D5AFA8);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  *v118 = sub_265D59150();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_265D14284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v82 = a1;
  v97 = a6;
  v79 = sub_265D583D0();
  v7 = *(v79 - 8);
  v78 = *(v7 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v9 = *(v84 - 8);
  v83 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v84);
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v73 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v87 = *(v89 - 8);
  v86 = *(v87 + 64);
  v13 = MEMORY[0x28223BE20](v89);
  v85 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v92 = *(v16 - 8);
  v93 = v16;
  v91 = *(v92 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v90 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v73 - v19;
  v20 = sub_265D59DE0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_265D58870();
  v75 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59B70();
  v74 = sub_265D58860();
  v73 = v30;
  (*(v26 + 8))(v29, v25);
  sub_265D59600();
  sub_265D59DC0();
  (*(v21 + 8))(v24, v20);
  v31 = *(a5 + 176);
  v32 = sub_265D58B20();
  v34 = v33;
  v35 = *(a5 + 168);
  __swift_project_boxed_opaque_existential_1((a5 + 136), *(a5 + 160));
  v36 = v76;
  sub_265D59A60();
  v37 = v77;
  v38 = v79;
  (*(v7 + 16))(v77, v82, v79);
  v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v40 = (v78 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v32;
  *(v41 + 24) = v34;
  (*(v7 + 32))(v41 + v39, v37, v38);
  v42 = (v41 + v40);
  v43 = v73;
  *v42 = v74;
  v42[1] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_265D1DCDC;
  *(v44 + 24) = v41;
  v45 = v81;
  v46 = v84;
  (*(v9 + 16))(v81, v36, v84);
  v47 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v48 = (v83 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v9 + 32))(v49 + v47, v45, v46);
  v50 = (v49 + v48);
  *v50 = sub_265D1DD8C;
  v50[1] = v44;
  v51 = v80;
  sub_265D58930();
  (*(v9 + 8))(v36, v46);
  v52 = swift_allocObject();
  v53 = v95;
  *(v52 + 2) = v94;
  *(v52 + 3) = v53;
  *(v52 + 4) = v96;
  v54 = v87;
  v55 = v85;
  v56 = v89;
  (*(v87 + 16))(v85, v51, v89);
  v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = (v86 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v54 + 32))(v59 + v57, v55, v56);
  v60 = (v59 + v58);
  *v60 = sub_265D1DDBC;
  v60[1] = v52;
  swift_unknownObjectRetain();
  v61 = v88;
  sub_265D58930();
  (*(v54 + 8))(v51, v56);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_265D10F58;
  *(v62 + 24) = 0;
  v63 = v92;
  v64 = v93;
  v65 = v90;
  v66 = v61;
  (*(v92 + 16))(v90, v61, v93);
  v67 = v63;
  v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v69 = (v91 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v67 + 32))(v70 + v68, v65, v64);
  v71 = (v70 + v69);
  *v71 = sub_265CC49C0;
  v71[1] = v62;
  sub_265D58930();
  return (*(v67 + 8))(v66, v64);
}

uint64_t sub_265D14AE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v11[6] = a1;
  v11[4] = a4;
  v11[5] = a3;
  v11[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  sub_265D58B40();
  v12 = sub_265D58760();
  sub_265D1DEE0();
  sub_265D57FC0();
  v11[2] = v11[8];
  sub_265D59990();
  v11[1] = v8;
  sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v9 = sub_265D57F40();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_265D583B0();

  sub_265D5A030();
  return sub_265D58850();
}

uint64_t sub_265D14C94()
{
  v0 = sub_265D58F70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x277D4E858], v0);
  sub_265D58870();
  sub_265D58C50();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_265D14DD4()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "Remote key delivery handshake succeeded", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_265D14F08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v4 = v0[23];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State()
{
  result = qword_2813B6E68;
  if (!qword_2813B6E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265D15030()
{
  sub_265D150A4();
  if (v0 <= 0x3F)
  {
    sub_265D15150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265D150A4()
{
  if (!qword_2813B8FB8)
  {
    sub_265D150EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FB8);
    }
  }
}

void sub_265D150EC()
{
  if (!qword_2813B8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28003E800, &qword_265D5B5A0);
    v0 = sub_265D59170();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FB0);
    }
  }
}

void sub_265D15150()
{
  if (!qword_2813B8FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003DDF8, &qword_265D5AFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E8F8, "vj");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B8FC0);
    }
  }
}

uint64_t sub_265D151DC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_265D58F70();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v2[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = sub_265D59DE0();
  v2[18] = v11;
  v12 = *(v11 - 8);
  v2[19] = v12;
  v13 = *(v12 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D1539C, 0, 0);
}

uint64_t sub_265D1539C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[9];
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v3 + 8);
  v0[22] = v7;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = *(v6 + 184);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_265D1D0DC(v8 + v9, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v0[24] = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[17];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v12 + *(v13 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v10));
  v14 = *(MEMORY[0x277D4F310] + 4);
  v15 = swift_task_alloc();
  v0[25] = v15;
  *v15 = v0;
  v15[1] = sub_265D1556C;

  return MEMORY[0x2821AEF08](v0 + 2);
}

uint64_t sub_265D1556C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_265D15C60;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_265D15688;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265D15688()
{
  v30 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 16);
  *(v0 + 216) = v2;
  v28 = *(v0 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446210;
    *(v0 + 40) = v2;
    *(v0 + 48) = v28;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key certificate over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v26(v5, v6);
  }

  else
  {
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);

    v13(v14, v15);
  }

  v16 = *(v0 + 120);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);
  swift_getObjectType();
  (*(v18 + 104))(v17, *MEMORY[0x277D4E830], v19);
  v20 = sub_265D58490();
  sub_265D58C60();
  (*(v18 + 8))(v17, v19);
  v21 = swift_task_alloc();
  *(v0 + 224) = v21;
  *(v21 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v21 + 24) = 68;
  *(v21 + 32) = 2;
  *(v21 + 40) = 233;
  *(v21 + 48) = v16;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = sub_265D159A0;
  v24 = *(v0 + 64);

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D7D4, v21, v20);
}

uint64_t sub_265D159A0()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_265D15B9C;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v5 = sub_265D15AF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265D15AF0()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_265D15B9C()
{
  v1 = v0[27];
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_unknownObjectRelease();
  v2 = v0[30];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D15C60()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D15D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_265D58F70();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v3[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_265D59DE0();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D15ECC, 0, 0);
}

uint64_t sub_265D15ECC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 72);
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v3 + 8);
  *(v0 + 184) = v7;
  *(v0 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = *(v6 + 184);
  *(v0 + 200) = v8;
  v9 = *v8;
  v10 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 208) = v10;
  v11 = *(v9 + 48);
  *(v0 + 272) = v11;
  v12 = (v11 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v12));
  sub_265D1D0DC(v8 + v10, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 216) = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v0 + 144);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v14 + *(v15 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v12));
  v16 = *(MEMORY[0x277D4F310] + 4);
  v17 = swift_task_alloc();
  *(v0 + 224) = v17;
  *v17 = v0;
  v17[1] = sub_265D160A8;

  return MEMORY[0x2821AEF08](v0 + 16);
}

uint64_t sub_265D160A8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_265D16870;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_265D161C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265D161C4()
{
  v31 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 16);
  *(v0 + 240) = v2;
  v29 = *(v0 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 184);
    v28 = *(v0 + 192);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446210;
    *(v0 + 40) = v2;
    *(v0 + 48) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v30);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key context over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v27(v5, v6);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);

    v13(v14, v15);
  }

  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  swift_getObjectType();
  (*(v18 + 104))(v17, *MEMORY[0x277D4E418], v20);
  sub_265D58520();
  v21 = sub_265D57E60();
  sub_265D58C40();
  (*(v18 + 8))(v17, v20);
  v22 = swift_task_alloc();
  *(v0 + 248) = v22;
  *(v22 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v22 + 24) = 68;
  *(v22 + 32) = 2;
  *(v22 + 40) = 243;
  *(v22 + 48) = v16;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  *(v0 + 256) = v24;
  *v24 = v0;
  v24[1] = sub_265D16500;
  v25 = *(v0 + 64);

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1DF98, v22, v21);
}

uint64_t sub_265D16500()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  if (v0)
  {

    v6 = sub_265D167AC;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];
    v9 = v2[14];

    (*(v8 + 8))(v7, v9);
    v6 = sub_265D16658;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_265D16658()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 80);
  v5 = (*(v0 + 272) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v4;
  os_unfair_lock_lock((v3 + v5));
  sub_265D1D564((v3 + v2));
  if (v1)
  {
    v6 = (*(v0 + 200) + ((*(v0 + 272) + 3) & 0x1FFFFFFFCLL));

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v7 = *(v0 + 240);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    os_unfair_lock_unlock((*(v0 + 200) + ((*(v0 + 272) + 3) & 0x1FFFFFFFCLL)));
    swift_unknownObjectRelease();

    v13 = *(v0 + 8);

    v13();
  }
}

uint64_t sub_265D167AC()
{
  v1 = v0[30];
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_unknownObjectRelease();
  v2 = v0[33];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D16870()
{
  v1 = v0[27];

  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D16918(char *a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_265D58520();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_265D59DE0();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - v20;
  sub_265D1D0DC(a1, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_265D1D140(v17);
  }

  v22 = *v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
  sub_265D1D19C(v17 + *(v40 + 48), v21);
  if ((*(v44 + 48))(v21, 1, v3) == 1)
  {
    v38 = v22;
    sub_265D1D140(a1);
    sub_265D59600();
    v39 = *(v44 + 16);
    v39(v9, v43, v3);
    v23 = sub_265D59DD0();
    v37 = sub_265D5A080();
    if (os_log_type_enabled(v23, v37))
    {
      v24 = swift_slowAlloc();
      v36 = v23;
      v25 = v24;
      v35 = swift_slowAlloc();
      v45 = v35;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      v39(v7, v9, v3);
      v34 = sub_265D59EC0();
      v27 = v26;
      (*(v44 + 8))(v9, v3);
      v28 = sub_265CF4FFC(v34, v27, &v45);

      *(v25 + 14) = v28;
      v29 = v36;
      _os_log_impl(&dword_265C01000, v36, v37, "Capturing first playback context: %{mask.hash}s", v25, 0x16u);
      v30 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266770CF0](v30, -1, -1);
      MEMORY[0x266770CF0](v25, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v9, v3);
    }

    (*(v41 + 8))(v13, v42);
    sub_265CA4AE8(v21, &qword_28003E8F8, "vj");
    v32 = *(v40 + 48);
    v33 = v39;
    *a1 = v38;
    v33(&a1[v32], v43, v3);
    (*(v44 + 56))(&a1[v32], 0, 1, v3);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    return sub_265CA4AE8(v21, &qword_28003E8F8, "vj");
  }
}

uint64_t sub_265D16DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_265D58F70();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v3[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_265D59DE0();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D16F8C, 0, 0);
}

uint64_t sub_265D16F8C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[9];
  sub_265D59600();
  sub_265D59DC0();
  v7 = *(v3 + 8);
  v0[23] = v7;
  v0[24] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = *(v6 + 184);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_265D1D0DC(v8 + v9, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v0[25] = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[18];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265CA4AE8(v12 + *(v13 + 48), &qword_28003E8F8, "vj");
  }

  os_unfair_lock_unlock((v8 + v10));
  v14 = *(MEMORY[0x277D4F310] + 4);
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_265D1715C;

  return MEMORY[0x2821AEF08](v0 + 2);
}

uint64_t sub_265D1715C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_265D17874;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_265D17278;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265D17278()
{
  v31 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 16);
  *(v0 + 224) = v2;
  v29 = *(v0 + 24);
  sub_265D59600();
  swift_unknownObjectRetain();
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 184);
    v28 = *(v0 + 192);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446210;
    *(v0 + 40) = v2;
    *(v0 + 48) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v9 = sub_265D59EC0();
    v11 = sub_265CF4FFC(v9, v10, &v30);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "Requesting key context renewal over %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v27(v5, v6);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);

    v13(v14, v15);
  }

  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  swift_getObjectType();
  (*(v18 + 104))(v17, *MEMORY[0x277D4E448], v20);
  sub_265D58520();
  v21 = sub_265D57E60();
  sub_265D58C40();
  (*(v18 + 8))(v17, v20);
  v22 = swift_task_alloc();
  *(v0 + 232) = v22;
  *(v22 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v22 + 24) = 68;
  *(v22 + 32) = 2;
  *(v22 + 40) = 262;
  *(v22 + 48) = v16;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  v24[1] = sub_265D175B4;
  v25 = *(v0 + 64);

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D424, v22, v21);
}

uint64_t sub_265D175B4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = sub_265D177B0;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v5 = sub_265D17704;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265D17704()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_265D177B0()
{
  v1 = v0[28];
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_unknownObjectRelease();
  v2 = v0[31];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D17874()
{
  v1 = v0[25];

  v2 = v0[27];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D1791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_265D58F70();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_265D59DE0();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D17AA4, 0, 0);
}

uint64_t sub_265D17AA4()
{
  v33 = v0;
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 48) + 184);
  *(swift_task_alloc() + 16) = v1;
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_265D1D018(v2 + v3, &v31);
  v5 = *(v0 + 128);
  os_unfair_lock_unlock((v2 + v4));
  v6 = v31;
  *(v0 + 136) = v31;
  v30 = v32;

  sub_265D59600();
  swift_unknownObjectRetain();
  v7 = sub_265D59DD0();
  v8 = sub_265D5A080();
  swift_unknownObjectRelease();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);
  if (v9)
  {
    v29 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    *(v0 + 16) = v6;
    *(v0 + 24) = v30;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v15 = sub_265D59EC0();
    v17 = sub_265CF4FFC(v15, v16, &v31);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_265C01000, v7, v8, "Requesting key context release over %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266770CF0](v14, -1, -1);
    MEMORY[0x266770CF0](v13, -1, -1);

    (*(v10 + 8))(v29, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v18 = *(v0 + 104);
  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = *(v0 + 64);
  swift_getObjectType();
  (*(v20 + 104))(v19, *MEMORY[0x277D4E4C8], v22);
  sub_265D58520();
  sub_265D58C50();
  (*(v20 + 8))(v19, v22);
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *(v23 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v23 + 24) = 68;
  *(v23 + 32) = 2;
  *(v23 + 40) = 287;
  *(v23 + 48) = v18;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  *(v0 + 152) = v25;
  *v25 = v0;
  v25[1] = sub_265D17EB4;
  v26 = *(v0 + 40);
  v27 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v26, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D034, v23, v27);
}

uint64_t sub_265D17EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];
  if (v0)
  {

    v6 = sub_265D18098;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    (*(v8 + 8))(v7, v9);
    v6 = sub_265D1800C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_265D1800C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_265D18098()
{
  v1 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_unknownObjectRelease();
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_265D18140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v116 = a2;
  v114 = a1;
  v3 = sub_265D58520();
  v117 = *(v3 - 8);
  v4 = *(v117 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v108 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v105 = &v98 - v8;
  MEMORY[0x28223BE20](v7);
  v109 = &v98 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E908, &qword_265D5D8F8);
  v10 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v115 = &v98 - v11;
  v12 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  v16 = *(*(v100 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v100);
  v104 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v103 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  v26 = sub_265D59DE0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v113 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v98 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v98 - v33;
  sub_265D59600();
  sub_265D59DC0();
  v35 = *(v27 + 8);
  v111 = v27 + 8;
  v112 = v26;
  v110 = v35;
  v35(v34, v26);
  sub_265D1D0DC(v114, v15);
  v101 = v12;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v113 = *v15;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900);
    sub_265D1D19C(v15 + *(v36 + 48), v25);
    v37 = v117;
    v38 = *(v117 + 16);
    v108 = (v117 + 16);
    v99 = v38;
    v38(v23, v116, v3);
    (*(v37 + 56))(v23, 0, 1, v3);
    v39 = *(v107 + 48);
    v40 = v115;
    sub_265C97870(v23, v115, &qword_28003E8F8, "vj");
    sub_265C97870(v25, v40 + v39, &qword_28003E8F8, "vj");
    v41 = *(v37 + 48);
    v42 = v41(v40, 1, v3);
    v43 = v25;
    if (v42 == 1)
    {
      sub_265CA4AE8(v23, &qword_28003E8F8, "vj");
      v44 = v115;
      v45 = v41(v115 + v39, 1, v3) == 1;
      v46 = v3;
      v47 = v44;
      if (!v45)
      {
        goto LABEL_10;
      }

      sub_265CA4AE8(v44, &qword_28003E8F8, "vj");
    }

    else
    {
      v61 = v115;
      v62 = v103;
      sub_265C97870(v115, v103, &qword_28003E8F8, "vj");
      v63 = v41(v61 + v39, 1, v3);
      v46 = v3;
      if (v63 == 1)
      {
        sub_265CA4AE8(v23, &qword_28003E8F8, "vj");
        (*(v117 + 8))(v62, v3);
        v47 = v115;
LABEL_10:
        sub_265CA4AE8(v47, &qword_28003E908, &qword_265D5D8F8);
        v64 = v116;
        v65 = v99;
LABEL_11:
        v66 = v106;
        sub_265D59600();
        v67 = v105;
        v65(v105, v64, v46);
        v68 = v104;
        sub_265C97870(v43, v104, &qword_28003E8F8, "vj");
        v69 = sub_265D59DD0();
        v70 = sub_265D5A070();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v115 = v43;
          v72 = v65;
          v73 = v67;
          v74 = v71;
          v116 = swift_slowAlloc();
          v118 = v116;
          *v74 = 141558786;
          *(v74 + 4) = 1752392040;
          *(v74 + 12) = 2080;
          v72(v109, v73, v46);
          v75 = sub_265D59EC0();
          v77 = v76;
          (*(v117 + 8))(v73, v46);
          v78 = sub_265CF4FFC(v75, v77, &v118);
          v43 = v115;

          *(v74 + 14) = v78;
          *(v74 + 22) = 2160;
          *(v74 + 24) = 1752392040;
          *(v74 + 32) = 2080;
          v79 = sub_265D5A0E0();
          v81 = v80;
          sub_265CA4AE8(v68, &qword_28003E8F8, "vj");
          v82 = sub_265CF4FFC(v79, v81, &v118);

          *(v74 + 34) = v82;
          _os_log_impl(&dword_265C01000, v69, v70, "Existing server playback context doesn't match what we have on file %{mask.hash}s != %{mask.hash}s", v74, 0x2Au);
          v83 = v116;
          swift_arrayDestroy();
          MEMORY[0x266770CF0](v83, -1, -1);
          MEMORY[0x266770CF0](v74, -1, -1);

          v84 = v106;
        }

        else
        {

          sub_265CA4AE8(v68, &qword_28003E8F8, "vj");
          (*(v117 + 8))(v67, v46);
          v84 = v66;
        }

        v110(v84, v112);
        v88 = sub_265D58570();
        sub_265D1DF34(&qword_28003E910, MEMORY[0x277D525D0]);
        swift_allocError();
        (*(*(v88 - 8) + 104))(v89, *MEMORY[0x277D525C8], v88);
        swift_willThrow();

        return sub_265CA4AE8(v43, &qword_28003E8F8, "vj");
      }

      v90 = v117;
      v91 = v115 + v39;
      v92 = v109;
      (*(v117 + 32))(v109, v91, v3);
      sub_265D1DF34(&qword_28003E920, MEMORY[0x277D521C8]);
      LODWORD(v107) = sub_265D59E80();
      v93 = *(v90 + 8);
      v93(v92, v3);
      sub_265CA4AE8(v23, &qword_28003E8F8, "vj");
      v93(v62, v3);
      v46 = v3;
      sub_265CA4AE8(v115, &qword_28003E8F8, "vj");
      v64 = v116;
      v65 = v99;
      if ((v107 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v94 = v114;
    sub_265D1D140(v114);
    sub_265D59600();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF8, &qword_265D5AFA8);
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();
    *v94 = sub_265D59150();
    swift_storeEnumTagMultiPayload();
    sub_265D59140();
    sub_265CA4AE8(v43, &qword_28003E8F8, "vj");
  }

  sub_265D1D140(v15);
  sub_265D59600();
  v48 = v117;
  v49 = *(v117 + 16);
  v50 = v108;
  v49(v108, v116, v3);
  v51 = sub_265D59DD0();
  v52 = sub_265D5A070();
  v53 = v3;
  if (os_log_type_enabled(v51, v52))
  {
    v54 = v48;
    v55 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v118 = v116;
    *v55 = 141558274;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2080;
    v49(v109, v50, v3);
    v56 = sub_265D59EC0();
    v58 = v57;
    (*(v54 + 8))(v50, v53);
    v59 = sub_265CF4FFC(v56, v58, &v118);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_265C01000, v51, v52, "Not in the right state to release a context: %{mask.hash}s", v55, 0x16u);
    v60 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x266770CF0](v60, -1, -1);
    MEMORY[0x266770CF0](v55, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v50, v3);
  }

  v110(v113, v112);
  v85 = sub_265D58570();
  sub_265D1DF34(&qword_28003E910, MEMORY[0x277D525D0]);
  swift_allocError();
  (*(*(v85 - 8) + 104))(v86, *MEMORY[0x277D525C0], v85);
  return swift_willThrow();
}

uint64_t sub_265D18DA8()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v2 + 24) = 68;
  *(v2 + 32) = 2;
  *(v2 + 40) = 228;
  *(v2 + 48) = &unk_265D5D948;
  *(v2 + 56) = v1;
  sub_265D58490();

  return sub_265D58930();
}

uint64_t sub_265D18E64(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 238;
  *(v9 + 48) = &unk_265D5D938;
  *(v9 + 56) = v8;
  sub_265D57E60();

  return sub_265D58930();
}

uint64_t sub_265D19008(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 257;
  *(v9 + 48) = &unk_265D5D910;
  *(v9 + 56) = v8;
  sub_265D57E60();

  return sub_265D58930();
}

uint64_t sub_265D191AC(uint64_t a1)
{
  v3 = sub_265D58520();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v9 + 24) = 68;
  *(v9 + 32) = 2;
  *(v9 + 40) = 267;
  *(v9 + 48) = &unk_265D5D8B0;
  *(v9 + 56) = v8;

  return sub_265D58930();
}

uint64_t sub_265D1934C(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D1791C(a1, v6, v1 + v5);
}

uint64_t sub_265D19430(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_265D59DE0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v18 = sub_265D59DD0();
  v41 = sub_265D5A080();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_265D5A210();
    v39 = a4;
    v23 = sub_265CF4FFC(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_265C01000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v34 = sub_265D58960();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265D1DA60;
  *(v35 + 24) = v33;

  v34(sub_265D1DAF4, v35);
}

uint64_t sub_265D1980C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_265D59DE0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v18 = sub_265D59DD0();
  v41 = sub_265D5A080();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_265D5A210();
    v39 = a4;
    v23 = sub_265CF4FFC(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_265C01000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v34 = sub_265D58960();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265D1D7EC;
  *(v35 + 24) = v33;

  v34(sub_265D1DF9C, v35);
}

uint64_t sub_265D19BE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_265D59DE0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v18 = sub_265D59DD0();
  v41 = sub_265D5A080();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_265D5A210();
    v39 = a4;
    v23 = sub_265CF4FFC(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_265C01000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v34 = sub_265D58960();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265D1D454;
  *(v35 + 24) = v33;

  v34(sub_265D1D47C, v35);
}

uint64_t sub_265D19FC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_265D59DE0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v18 = sub_265D59DD0();
  v41 = sub_265D5A080();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_265D5A210();
    v39 = a4;
    v23 = sub_265CF4FFC(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_265C01000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v30, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v34 = sub_265D58960();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265D1D04C;
  *(v35 + 24) = v33;

  v34(sub_265CA442C, v35);
}

unint64_t sub_265D1A3A0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266770D10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266770D10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265D1A42C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v33 = a7;
  v36 = a4;
  v35 = a2;
  v13 = sub_265D59DE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v18 = sub_265D59DD0();
  v19 = sub_265D5A080();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = a9;
    v20 = swift_slowAlloc();
    v32 = a10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = v22;
    v37[0] = v22;
    *v21 = 134218498;
    *(v21 + 4) = a5;
    *(v21 + 12) = 2080;
    v24 = sub_265D5A210();
    v26 = sub_265CF4FFC(v24, v25, v37);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v30;
    _os_log_impl(&dword_265C01000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v27 = v23;
    a3 = v31;
    MEMORY[0x266770CF0](v27, -1, -1);
    MEMORY[0x266770CF0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v37[0] = a1;
  if (v36)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
    return sub_265D59F60();
  }

  else
  {
    v37[1] = v35;
    v37[2] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E938, &unk_265D5D990);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_265D58490();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_265D59DE0();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_265D5A210();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_265CF4FFC(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_265C01000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x266770CF0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_265C97870(a1, v17, &qword_28003E2D0, &unk_265D5D960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
    return sub_265D59F60();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E930, &qword_265D5D970);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_265D57E60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_265D59DE0();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_265D5A210();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_265CF4FFC(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_265C01000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266770CF0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x266770CF0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_265C97870(a1, v17, &qword_28003E2C0, &qword_265D5B648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
    return sub_265D59F60();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E928, &qword_265D5D928);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AD88(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595D0();
  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a1;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_265D5A210();
    v24 = sub_265CF4FFC(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_265C01000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v25 = v21;
    a1 = v28[0];
    MEMORY[0x266770CF0](v25, -1, -1);
    MEMORY[0x266770CF0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
    return sub_265D59F60();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0);
    return sub_265D59F70();
  }
}

uint64_t sub_265D1AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v48 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = sub_265D59DE0();
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_265D1A3A0(0x65uLL);
  sub_265D595D0();
  v24 = sub_265D59DD0();
  v25 = sub_265D5A080();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = a1;
    v27 = v26;
    v42 = swift_slowAlloc();
    v53 = v42;
    *v27 = 134218498;
    *(v27 + 4) = v52;
    *(v27 + 12) = 2080;
    v28 = sub_265D5A210();
    v45 = a6;
    v43 = v19;
    v30 = a4;
    v31 = a5;
    v32 = a2;
    v33 = sub_265CF4FFC(v28, v29, &v53);
    v34 = a3;
    v35 = v45;

    *(v27 + 14) = v33;
    a2 = v32;
    a5 = v31;
    a4 = v30;
    *(v27 + 22) = 2048;
    a6 = v35;
    *(v27 + 24) = v35;
    a3 = v34;
    v19 = v43;
    _os_log_impl(&dword_265C01000, v24, v25, "Converting from Async-Await to Promise: %ld:%s:%lu", v27, 0x20u);
    v36 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266770CF0](v36, -1, -1);
    v37 = v27;
    a1 = v44;
    MEMORY[0x266770CF0](v37, -1, -1);
  }

  (*(v46 + 8))(v23, v47);
  v38 = sub_265D59FA0();
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v49;
  v40 = v52;
  *(v39 + 40) = v50;
  *(v39 + 48) = v40;
  *(v39 + 56) = a3;
  *(v39 + 64) = a4;
  *(v39 + 72) = a5;
  *(v39 + 80) = a6;
  *(v39 + 88) = a1;
  *(v39 + 96) = a2;

  sub_265D1CA74(0, 0, v19, v51, v39);
}

uint64_t sub_265D1B31C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D0, &unk_265D5D960);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_265D59DE0();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_265D58490();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_265D1B540;

  return v22(v18);
}

uint64_t sub_265D1B540()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_265D1B8BC;
  }

  else
  {
    v3 = sub_265D1B654;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D1B654()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_265CA4AE8(v20, &qword_28003E2D0, &unk_265D5D960);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_265D1B8BC()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_265CA4AE8(v19, &qword_28003E2D0, &unk_265D5D960);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_265D1BAF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v26;
  *(v8 + 40) = v25;
  *(v8 + 152) = v24;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C0, &qword_265D5B648);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_265D59DE0();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_265D57E60();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  v22 = (a4 + *a4);
  v19 = a4[1];
  v20 = swift_task_alloc();
  *(v8 + 136) = v20;
  *v20 = v8;
  v20[1] = sub_265D1BD1C;

  return v22(v18);
}

uint64_t sub_265D1BD1C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_265D1C098;
  }

  else
  {
    v3 = sub_265D1BE30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D1BE30()
{
  v33 = v0;
  v1 = *(v0 + 104);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 104);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    (*(v16 + 8))(v14, v15);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  (*(v18 + 16))(v20, v17, v19);
  swift_storeEnumTagMultiPayload();
  v22(v20);
  sub_265CA4AE8(v20, &qword_28003E2C0, &qword_265D5B648);
  (*(v18 + 8))(v17, v19);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_265D1C098()
{
  v33 = v0;
  v1 = *(v0 + 96);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v30 = *(v0 + 80);
    v31 = *(v0 + 96);
    v5 = *(v0 + 32);
    v29 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v32);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v29;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v31, v30);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *v19 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v17;
  v21(v19);

  sub_265CA4AE8(v19, &qword_28003E2C0, &qword_265D5B648);
  v23 = *(v0 + 128);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_265D1C2D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v20;
  *(v8 + 40) = v19;
  *(v8 + 112) = v18;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_265D59DE0();
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 96) = v14;
  *v14 = v8;
  v14[1] = sub_265D1C454;

  return v16();
}

uint64_t sub_265D1C454()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_265D1C754;
  }

  else
  {
    v3 = sub_265D1C568;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265D1C568()
{
  v28 = v0;
  v1 = *(v0 + 88);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v24 = *(v0 + 64);
    v25 = *(v0 + 88);
    v5 = *(v0 + 32);
    v23 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v26);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v23;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v25, v24);
  }

  else
  {
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v26 = 0;
  v27 = 0;
  v17(&v26);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_265D1C754()
{
  v30 = v0;
  v1 = *(v0 + 80);
  sub_265D595D0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v26 = *(v0 + 64);
    v27 = *(v0 + 80);
    v5 = *(v0 + 32);
    v25 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2080;
    v11 = sub_265D5A210();
    v13 = sub_265CF4FFC(v11, v12, &v28);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v25;
    _os_log_impl(&dword_265C01000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v4 + 8))(v27, v26);
  }

  else
  {
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 104);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v28 = v17;
  v29 = 1;
  v20 = v17;
  v19(&v28);

  v22 = *(v0 + 80);
  v21 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23();
}

void sub_265D1C960()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_265C978E0;

  JUMPOUT(0x265D1C2D4);
}

uint64_t sub_265D1CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_265C97870(a3, v25 - v11, &qword_28003E530, &qword_265D5BF68);
  v13 = sub_265D59FA0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E530, &qword_265D5BF68);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_265D59F90();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_265D59F50();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_265D59EE0() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

    return v23;
  }

LABEL_8:
  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_265D1CD70(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265D1CE68;

  return v7(a1);
}

uint64_t sub_265D1CE68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265D1CF60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D1CD70(a1, v5);
}

uint64_t sub_265D1D04C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E900, &qword_265D5D8F0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_265D1AD88(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_265D1D0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D1D140(uint64_t a1)
{
  v2 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D1D19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8F8, "vj");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D1D20C(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D16DC8(a1, v6, v1 + v5);
}

void sub_265D1D310()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_265C96620;

  JUMPOUT(0x265D1BAF8);
}

uint64_t sub_265D1D480(uint64_t a1)
{
  v4 = *(sub_265D58520() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D15D08(a1, v6, v1 + v5);
}

uint64_t sub_265D1D580(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C978E0;

  return sub_265D151DC(a1, v1);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_265D1D6C0()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_265C978E0;

  JUMPOUT(0x265D1B31CLL);
}

uint64_t sub_265D1D814(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_265D1D8AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_265D1D8F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D121E8(a1, v1);
}

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_265D1DAF4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *result;
  v7 = v4;
  v8 = v5;
  if (v2)
  {
    return v2(&v6);
  }

  return result;
}

id sub_265D1DB44(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265D1DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(*(sub_265D59BA0() - 8) + 80);
  v12 = *(v5 + 16);

  return sub_265D14284(a1, a2, a3, a4, v12, a5);
}

uint64_t sub_265D1DCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v6[1];
  return sub_265D14AE4(*(v1 + 16), v1 + v4, *v6, a1);
}

uint64_t sub_265D1DDBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_265D14C94();
}

uint64_t sub_265D1DE18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_265D1DEE0()
{
  result = qword_28003E940;
  if (!qword_28003E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E940);
  }

  return result;
}

uint64_t sub_265D1DF34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265D1DFA4()
{
  v1 = v0;
  v2 = sub_265D58F70();
  v3 = *(v2 - 8);
  v4 = v3;
  v45 = v2;
  v46 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v9 + 8))(v12, v8);
  v13 = *(v1 + 16);
  v36 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v50 = v13;
  v42 = *MEMORY[0x277D4E830];
  v14 = *(v4 + 104);
  v14(v7);
  v47 = v4 + 104;
  swift_allocObject();
  v48 = v1;
  swift_weakInit();
  v41 = sub_265D58490();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v15 = v46 + 8;
  v49 = *(v46 + 8);
  v49(v7, v45);
  v46 = v15;
  swift_unknownObjectRelease();
  v50 = v13;
  v40 = *MEMORY[0x277D4E418];
  v43 = v14;
  v14(v7);
  swift_allocObject();
  swift_weakInit();
  v16 = sub_265D58520();
  v17 = sub_265D57E60();
  swift_unknownObjectRetain();
  v37 = v17;
  sub_265D591E0();

  v49(v7, v45);
  swift_unknownObjectRelease();
  v50 = v13;
  v39 = *MEMORY[0x277D4E448];
  v14(v7);
  swift_allocObject();
  swift_weakInit();
  v44 = v16;
  sub_265D591E0();

  v18 = v45;
  v19 = v49;
  v49(v7, v45);
  swift_unknownObjectRelease();
  v50 = v13;
  v38 = *MEMORY[0x277D4E4C8];
  v43(v7);
  swift_allocObject();
  v20 = v48;
  swift_weakInit();
  sub_265D59200();

  v19(v7, v18);
  swift_unknownObjectRelease();
  v21 = *(v20 + 40);
  v36 = *(v20 + 56);
  ObjectType = swift_getObjectType();
  v50 = v21;
  v22 = v43;
  (v43)(v7, v42, v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v23 = v45;
  v49(v7, v45);
  swift_unknownObjectRelease();
  v50 = v21;
  (v22)(v7, v40, v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v49(v7, v23);
  swift_unknownObjectRelease();
  v50 = v21;
  (v43)(v7, v39, v23);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v24 = v49;
  v49(v7, v23);
  swift_unknownObjectRelease();
  v50 = v21;
  v25 = v43;
  (v43)(v7, v38, v23);
  swift_allocObject();
  v26 = v48;
  swift_weakInit();
  sub_265D59200();

  v27 = v45;
  v24(v7, v45);
  swift_unknownObjectRelease();
  v28 = *(v26 + 64);
  v36 = *(v26 + 80);
  v29 = swift_getObjectType();
  v50 = v28;
  (v25)(v7, v42, v27);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  ObjectType = v29;
  sub_265D591F0();

  v30 = v45;
  v49(v7, v45);
  swift_unknownObjectRelease();
  v50 = v28;
  (v25)(v7, v40, v30);
  v31 = v25;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v49(v7, v30);
  swift_unknownObjectRelease();
  v50 = v28;
  (v25)(v7, v39, v30);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v32 = v49;
  v49(v7, v30);
  swift_unknownObjectRelease();
  v50 = v28;
  (v31)(v7, v38, v30);
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v32(v7, v30);
  return swift_unknownObjectRelease();
}

uint64_t sub_265D1EB60@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v9);

    v5 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_265D20678(a1, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_265D1EC90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 88, v17);

    v13 = *__swift_project_boxed_opaque_existential_1(v17, v17[3]);
    a5(a1, a4);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v14 - 8) + 56))(a6, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v16 - 8) + 56))(a6, 1, 1, v16);
  }
}

uint64_t sub_265D1EDD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);

  return swift_deallocClassInstance();
}

uint64_t sub_265D1F110()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v10 + 8))(v13, v9);
  v14 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(v1 + 8, *(v1 + 11));
  sub_265D58C10();
  (*(v3 + 16))(v6, v8, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, v6, v2);
  v17 = (v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_265D24CEC;
  v17[1] = v1;
  sub_265D58490();

  sub_265D58930();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_265D1F3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  return sub_265D58940();
}

uint64_t sub_265D1F514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  (*(v3 + 16))(v5, v28, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v16, v5, v2);
  v19 = v30;
  *(v18 + v17) = v30;
  v20 = v19;

  sub_265D58940();
  sub_265C97624(v20 + 64, v33);
  v21 = swift_allocObject();
  sub_265C033C4(v33, v21 + 16);
  v22 = v29;
  v23 = v31;
  (*(v6 + 16))(v29, v10, v31);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_265D248C8;
  v26[1] = v21;
  sub_265D57E60();
  sub_265D58930();
  return (*(v6 + 8))(v10, v23);
}

uint64_t sub_265D1F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  (*(v3 + 16))(v5, v28, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v16, v5, v2);
  v19 = v30;
  *(v18 + v17) = v30;
  v20 = v19;

  sub_265D58940();
  sub_265C97624(v20 + 64, v33);
  v21 = swift_allocObject();
  sub_265C033C4(v33, v21 + 16);
  v22 = v29;
  v23 = v31;
  (*(v6 + 16))(v29, v10, v31);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_265D24754;
  v26[1] = v21;
  sub_265D57E60();
  sub_265D58930();
  return (*(v6 + 8))(v10, v23);
}

uint64_t sub_265D1FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = sub_265D58520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2A8, &qword_265D5B630);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  (*(v3 + 16))(v5, v28, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v16, v5, v2);
  v19 = v30;
  *(v18 + v17) = v30;
  v20 = v19;

  sub_265D58940();
  sub_265C97624(v20 + 64, v33);
  v21 = swift_allocObject();
  sub_265C033C4(v33, v21 + 16);
  v22 = v29;
  v23 = v31;
  (*(v6 + 16))(v29, v10, v31);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_265D2469C;
  v26[1] = v21;
  sub_265D58930();
  return (*(v6 + 8))(v10, v23);
}

uint64_t sub_265D200C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = a2;
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E950, &qword_265D5DA58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - v5;
  v7 = sub_265D57DA0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v10 + 8))(v13, v9);
  v14 = sub_265D584D0();
  v15 = sub_265D58500();
  v17 = v16;
  v18 = *(a1 + 56);
  v19 = sub_265D57DB0();
  v27[0] = 0;
  v20 = [v18 serverPlaybackContextForPlaybackContext:v19 remoteContextIdentifier:v14 error:v27];

  if (v27[0])
  {
    v27[0];

    swift_willThrow();
  }

  else
  {
    v22 = sub_265D57DC0();
    v26[0] = v23;
    v26[1] = v22;

    sub_265D584F0();
    sub_265D58510();
    v24 = sub_265D58220();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    sub_265D584E0();
  }

  result = sub_265C9889C(v15, v17);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265D203D8(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v7 = *(a1 + 56);
  v8 = sub_265D58480();
  v10 = v9;
  v11 = sub_265D57DB0();
  sub_265C9889C(v8, v10);
  v15[0] = 0;
  v12 = [v7 remoteServerPlaybackContextForCertificate:v11 error:v15];

  if (v15[0])
  {
    v15[0];

    swift_willThrow();
  }

  else
  {
    sub_265D58480();
    v13 = [v12 blob];
    sub_265D57DC0();

    [v12 identifier];
    sub_265D58470();
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_265D20604()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_265D20678@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v93 = *(v5 - 8);
  v94 = v5;
  v82 = *(v93 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v69 - v8;
  v95 = sub_265D57E30();
  v86 = *(v95 - 8);
  v85 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](v95);
  v83 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v69 - v11;
  v12 = sub_265D59DB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_265D59D90();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2C8, &unk_265D5B650);
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = v90[8];
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v79 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  v87 = sub_265D58DB0();
  v84 = *(v87 - 8);
  v26 = *(v84 + 64);
  MEMORY[0x28223BE20](v87);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v78 = v25;
  sub_265D20F18(a1, v3);
  v29 = sub_265D58D70();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_265D58D40();
  v80 = v28;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v13 + 8))(v16, v12);
  sub_265D58DA0();
  v33 = sub_265D596B0();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_265D59680();
  v76 = v36;
  v97 = v32;
  v37 = sub_265D59EC0();
  v75 = v37;
  v39 = v38;
  sub_265D57E10();
  v40 = swift_allocObject();
  v77 = v32;
  *(v40 + 16) = v32;
  *(v40 + 24) = v36;
  *(v40 + 32) = v37;
  *(v40 + 40) = v39;
  v74 = v39;
  *(v40 + 48) = "RemoteKeyDeliverySystem::handleFetchCertificateRequest";
  *(v40 + 56) = 54;
  *(v40 + 64) = 2;

  v41 = v92;
  sub_265D58930();
  v42 = v90;
  v73 = v90[2];
  v43 = v89;
  v44 = v91;
  v73(v89, v25, v91);
  v72 = *(v42 + 80);
  v69 = ((v72 + 16) & ~v72) + v20;
  v45 = (v72 + 16) & ~v72;
  v71 = v45;
  v46 = swift_allocObject();
  v70 = v42[4];
  v70(v46 + v45, v43, v44);
  v47 = v93;
  v48 = v94;
  v49 = v81;
  (*(v93 + 16))(v81, v41, v94);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v82 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v49, v48);
  v53 = (v52 + v51);
  *v53 = sub_265D24A44;
  v53[1] = v46;
  v82 = sub_265D58490();
  v54 = v79;
  sub_265D58930();
  v55 = v86;
  v56 = v83;
  v57 = v95;
  (*(v86 + 16))(v83, v96, v95);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v85 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v74;
  *(v60 + 16) = v75;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteKeyDeliverySystem::handleFetchCertificateRequest";
  *(v60 + 40) = 54;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v76;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
  v62 = v89;
  v63 = v91;
  v73(v89, v54, v91);
  v64 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v70(v65 + v71, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_265D24BE8;
  v66[1] = v60;

  sub_265D58930();
  v67 = v90[1];
  v67(v54, v63);
  (*(v93 + 8))(v92, v94);
  (*(v55 + 8))(v96, v95);
  v67(v78, v63);
  (*(v84 + 8))(v80, v87);
}

uint64_t sub_265D20F18(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v20 = sub_265D582B0();
      sub_265D2462C();
      v21 = swift_allocError();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D50EB8], v20);
      *(swift_allocObject() + 16) = v21;
      sub_265D58490();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v16 = sub_265D59DD0();
      v17 = sub_265D5A080();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_265C01000, v16, v17, "Sending fetchCertficate request to remote key delivery system", v18, 2u);
        MEMORY[0x266770CF0](v18, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v19 = off_28777ED70[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v19();
    }
  }

  else
  {
    sub_265D59600();
    v12 = sub_265D59DD0();
    v13 = sub_265D5A080();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265C01000, v12, v13, "Got remote fetchCertificate request", v14, 2u);
      MEMORY[0x266770CF0](v14, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return sub_265D1F110();
  }
}

uint64_t sub_265D21244@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v89 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v94 = *(v6 - 8);
  v95 = v6;
  v83 = *(v94 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v70 - v9;
  v96 = sub_265D57E30();
  v87 = *(v96 - 8);
  v86 = *(v87 + 64);
  v10 = MEMORY[0x28223BE20](v96);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v70 - v12;
  v13 = sub_265D59DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265D59D90();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v91 = *(v20 - 8);
  v92 = v20;
  v21 = v91[8];
  v22 = MEMORY[0x28223BE20](v20);
  v90 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v80 = &v70 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  v88 = sub_265D58DB0();
  v85 = *(v88 - 8);
  v27 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v79 = v26;
  sub_265D21AEC(a2, v4, v78, v26);
  v30 = sub_265D58D70();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_265D58D40();
  v81 = v29;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v14 + 8))(v17, v13);
  sub_265D58DA0();
  v34 = sub_265D596B0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_265D59680();
  v77 = v37;
  v98 = v33;
  v38 = sub_265D59EC0();
  v76 = v38;
  v40 = v39;
  sub_265D57E10();
  v41 = swift_allocObject();
  v78 = v33;
  *(v41 + 16) = v33;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  v75 = v40;
  *(v41 + 48) = "RemoteKeyDeliverySystem::handleFetchContextRequest";
  *(v41 + 56) = 50;
  *(v41 + 64) = 2;

  v42 = v93;
  sub_265D58930();
  v43 = v91;
  v74 = v91[2];
  v44 = v90;
  v45 = v92;
  v74(v90, v26, v92);
  v73 = *(v43 + 80);
  v70 = ((v73 + 16) & ~v73) + v21;
  v46 = (v73 + 16) & ~v73;
  v72 = v46;
  v47 = swift_allocObject();
  v71 = v43[4];
  v71(v47 + v46, v44, v45);
  v48 = v94;
  v49 = v95;
  v50 = v82;
  (*(v94 + 16))(v82, v42, v95);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v83 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_265D24E74;
  v54[1] = v47;
  v83 = sub_265D57E60();
  v55 = v80;
  sub_265D58930();
  v56 = v87;
  v57 = v84;
  v58 = v96;
  (*(v87 + 16))(v84, v97, v96);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v86 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v75;
  *(v61 + 16) = v76;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteKeyDeliverySystem::handleFetchContextRequest";
  *(v61 + 40) = 50;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v77;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v63 = v90;
  v64 = v92;
  v74(v90, v55, v92);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v71(v66 + v72, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_265D24E54;
  v67[1] = v61;

  sub_265D58930();
  v68 = v91[1];
  v68(v55, v64);
  (*(v94 + 8))(v93, v95);
  (*(v56 + 8))(v97, v96);
  v68(v79, v64);
  (*(v85 + 8))(v81, v88);
}

uint64_t sub_265D21AEC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v24 = sub_265D582B0();
      sub_265D2462C();
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50EB8], v24);
      *(swift_allocObject() + 16) = v25;
      sub_265D57E60();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v20 = sub_265D59DD0();
      v21 = sub_265D5A080();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_265C01000, v20, v21, "Sending fetchKeyContext request to remote key delivery system", v22, 2u);
        MEMORY[0x266770CF0](v22, -1, -1);
      }

      (*(v9 + 8))(v15, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v23 = off_28777ED78[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v23(a3);
    }
  }

  else
  {
    sub_265D59600();
    v16 = sub_265D59DD0();
    v17 = sub_265D5A080();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265C01000, v16, v17, "Got remote fetchKeyContext request", v18, 2u);
      MEMORY[0x266770CF0](v18, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return sub_265D1F514(a3, a4);
  }
}

uint64_t sub_265D21E34@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v89 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v94 = *(v6 - 8);
  v95 = v6;
  v83 = *(v94 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v70 - v9;
  v96 = sub_265D57E30();
  v87 = *(v96 - 8);
  v86 = *(v87 + 64);
  v10 = MEMORY[0x28223BE20](v96);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v70 - v12;
  v13 = sub_265D59DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265D59D90();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2B8, &qword_265D5B640);
  v91 = *(v20 - 8);
  v92 = v20;
  v21 = v91[8];
  v22 = MEMORY[0x28223BE20](v20);
  v90 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v80 = &v70 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  v88 = sub_265D58DB0();
  v85 = *(v88 - 8);
  v27 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v79 = v26;
  sub_265D226DC(a2, v4, v78, v26);
  v30 = sub_265D58D70();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_265D58D40();
  v81 = v29;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v14 + 8))(v17, v13);
  sub_265D58DA0();
  v34 = sub_265D596B0();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_265D59680();
  v77 = v37;
  v98 = v33;
  v38 = sub_265D59EC0();
  v76 = v38;
  v40 = v39;
  sub_265D57E10();
  v41 = swift_allocObject();
  v78 = v33;
  *(v41 + 16) = v33;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  v75 = v40;
  *(v41 + 48) = "RemoteKeyDeliverySystem::handleRenewContextRequest";
  *(v41 + 56) = 50;
  *(v41 + 64) = 2;

  v42 = v93;
  sub_265D58930();
  v43 = v91;
  v74 = v91[2];
  v44 = v90;
  v45 = v92;
  v74(v90, v26, v92);
  v73 = *(v43 + 80);
  v70 = ((v73 + 16) & ~v73) + v21;
  v46 = (v73 + 16) & ~v73;
  v72 = v46;
  v47 = swift_allocObject();
  v71 = v43[4];
  v71(v47 + v46, v44, v45);
  v48 = v94;
  v49 = v95;
  v50 = v82;
  (*(v94 + 16))(v82, v42, v95);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v83 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_265D246DC;
  v54[1] = v47;
  v83 = sub_265D57E60();
  v55 = v80;
  sub_265D58930();
  v56 = v87;
  v57 = v84;
  v58 = v96;
  (*(v87 + 16))(v84, v97, v96);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v86 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v75;
  *(v61 + 16) = v76;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteKeyDeliverySystem::handleRenewContextRequest";
  *(v61 + 40) = 50;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v77;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v63 = v90;
  v64 = v92;
  v74(v90, v55, v92);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v71(v66 + v72, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_265D24718;
  v67[1] = v61;

  sub_265D58930();
  v68 = v91[1];
  v68(v55, v64);
  (*(v94 + 8))(v93, v95);
  (*(v56 + 8))(v97, v96);
  v68(v79, v64);
  (*(v85 + 8))(v81, v88);
}

uint64_t sub_265D226DC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v24 = sub_265D582B0();
      sub_265D2462C();
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50EB8], v24);
      *(swift_allocObject() + 16) = v25;
      sub_265D57E60();

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v20 = sub_265D59DD0();
      v21 = sub_265D5A080();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_265C01000, v20, v21, "Sending renewContext request to remote key delivery system", v22, 2u);
        MEMORY[0x266770CF0](v22, -1, -1);
      }

      (*(v9 + 8))(v15, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v23 = off_28777ED80[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v23(a3);
    }
  }

  else
  {
    sub_265D59600();
    v16 = sub_265D59DD0();
    v17 = sub_265D5A080();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265C01000, v16, v17, "Got remote renewContext request", v18, 2u);
      MEMORY[0x266770CF0](v18, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return sub_265D1F8F8(a3, a4);
  }
}

uint64_t sub_265D22A24@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v94 = sub_265D57E30();
  v87 = *(v94 - 8);
  v86 = *(v87 + 64);
  v5 = MEMORY[0x28223BE20](v94);
  v84 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v70 - v7;
  v8 = sub_265D59DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59D90();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v92 = *(v80 - 8);
  v15 = v92[8];
  v16 = MEMORY[0x28223BE20](v80);
  v81 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v91 = &v70 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v70 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v70 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - v23;
  v85 = sub_265D58DB0();
  v83 = *(v85 - 8);
  v25 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59640();
  v79 = v24;
  sub_265D23234(a2, v89, a1, v24);
  v28 = sub_265D58D70();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_265D58D40();
  v82 = v27;
  sub_265D58DA0();

  sub_265D59DA0();
  sub_265D59D80();
  (*(v9 + 8))(v12, v8);
  sub_265D58DA0();
  v32 = sub_265D596B0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_265D59680();
  v77 = v35;
  v96 = v31;
  v36 = sub_265D59EC0();
  v76 = v36;
  v38 = v37;
  sub_265D57E10();
  v39 = swift_allocObject();
  v78 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v75 = v38;
  *(v39 + 48) = "RemoteKeyDeliverySystem::handleReleaseContextRequest";
  *(v39 + 56) = 52;
  *(v39 + 64) = 2;

  v40 = v90;
  sub_265D58930();
  v42 = v91;
  v41 = v92;
  v43 = v92[2];
  v89 = v92 + 2;
  v44 = v80;
  v43(v91, v24, v80);
  v74 = v43;
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v72 = *(v41 + 80);
  v70 = swift_allocObject();
  v46 = v41[4];
  v73 = v45;
  v47 = v44;
  v46(v70 + v45, v42, v44);
  v48 = v46;
  v71 = v46;
  v49 = v81;
  v43(v81, v40, v47);
  v50 = (v45 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v51 + v45;
  v53 = v47;
  v48(v52, v49, v47);
  v54 = (v51 + v50);
  v55 = v70;
  *v54 = sub_265CD76A8;
  v54[1] = v55;
  sub_265D58930();
  v56 = v87;
  v57 = v84;
  v58 = v94;
  (*(v87 + 16))(v84, v95, v94);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v86 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v75;
  *(v61 + 16) = v76;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteKeyDeliverySystem::handleReleaseContextRequest";
  *(v61 + 40) = 52;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  v63 = v78;
  *(v61 + v60) = v77;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v64 = v91;
  v65 = v93;
  v74(v91, v93, v53);
  v66 = swift_allocObject();
  v71(v66 + v73, v64, v53);
  v67 = (v66 + v50);
  *v67 = sub_265D24540;
  v67[1] = v61;

  sub_265D58930();
  v68 = v92[1];
  v68(v65, v53);
  v68(v90, v53);
  (*(v56 + 8))(v95, v94);
  v68(v79, v53);
  (*(v83 + 8))(v82, v85);
}

uint64_t sub_265D23234@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v24 = sub_265D582B0();
      sub_265D2462C();
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50EB8], v24);
      *(swift_allocObject() + 16) = v25;

      return sub_265D58940();
    }

    else
    {
      sub_265D59600();
      v20 = sub_265D59DD0();
      v21 = sub_265D5A080();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_265C01000, v20, v21, "Sending releaseContext request to remote key delivery system", v22, 2u);
        MEMORY[0x266770CF0](v22, -1, -1);
      }

      (*(v9 + 8))(v15, v8);
      __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
      v23 = off_28777ED88[0];
      type metadata accessor for RemoteKeyDeliveryParticipantCoordinator();
      return v23(a3);
    }
  }

  else
  {
    sub_265D59600();
    v16 = sub_265D59DD0();
    v17 = sub_265D5A080();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265C01000, v16, v17, "Got remote releaseContext request", v18, 2u);
      MEMORY[0x266770CF0](v18, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return sub_265D1FCDC(a3, a4);
  }
}

void sub_265D23578(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v27 = a5;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58D60();
  sub_265D596A0();
  sub_265D58D90();

  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();

  if (os_log_type_enabled(v14, v15))
  {
    v26 = a1;
    v16 = swift_slowAlloc();
    v25[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25[0] = v9;
    v19 = v18;
    v30 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_265CF4FFC(v27, a6, &v30);
    *(v17 + 12) = 2082;
    v20 = sub_265D5A210();
    v22 = sub_265CF4FFC(v20, v21, &v30);
    a1 = v26;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_265C01000, v14, v15, "[%{public}s] %{public}s begin", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v17, -1, -1);

    (*(v10 + 8))(v13, v25[0]);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  v23 = v30;
  v24 = v31;
  v28 = v30;
  v29 = v31;
  a1(&v28);
  sub_265CA4470(v23, v24);
}

uint64_t sub_265D23810(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v72 = a7;
  v73 = a3;
  v68 = a6;
  v67[1] = a4;
  v67[2] = a5;
  v67[0] = a2;
  v77 = a9;
  v78 = a8;
  v12 = sub_265D57E30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v67 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v67 - v20;
  v22 = sub_265D59DE0();
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v74 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (v67 - v30);
  v69 = a10;
  v70 = a11;
  sub_265C97870(a1, v67 - v30, a10, a11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    sub_265D58D90();
    (*(v13 + 16))(v19, v72, v12);
    v33 = v73;

    v34 = v32;
    v35 = sub_265D59DD0();
    v36 = sub_265D5A070();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80[0] = v72;
      *v37 = 136446978;
      *(v37 + 4) = sub_265CF4FFC(v67[0], v33, v80);
      *(v37 + 12) = 2082;
      v38 = sub_265D5A210();
      v40 = sub_265CF4FFC(v38, v39, v80);

      *(v37 + 14) = v40;
      *(v37 + 22) = 2048;
      v41 = v71;
      sub_265D57E10();
      sub_265D57DE0();
      v43 = v42;
      v44 = *(v13 + 8);
      v44(v41, v12);
      v44(v19, v12);
      *(v37 + 24) = v43;
      *(v37 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v79 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v48 + 16))(v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_265D59EC0();
      v51 = sub_265CF4FFC(v49, v50, v80);

      *(v37 + 34) = v51;
      _os_log_impl(&dword_265C01000, v35, v36, "[%{public}s] %{public}s ended in %fs -> %{public}s", v37, 0x2Au);
      v52 = v72;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v52, -1, -1);
      MEMORY[0x266770CF0](v37, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    (*(v75 + 8))(v74, v76);
  }

  else
  {
    sub_265D58D90();
    v53 = v12;
    (*(v13 + 16))(v21, v72, v12);
    v54 = v73;

    v55 = sub_265D59DD0();
    v56 = sub_265D5A080();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v80[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_265CF4FFC(v67[0], v54, v80);
      *(v57 + 12) = 2082;
      v59 = sub_265D5A210();
      LODWORD(v74) = v56;
      v61 = sub_265CF4FFC(v59, v60, v80);

      *(v57 + 14) = v61;
      *(v57 + 22) = 2048;
      v62 = v71;
      sub_265D57E10();
      sub_265D57DE0();
      v64 = v63;
      v65 = *(v13 + 8);
      v65(v62, v53);
      v65(v21, v53);
      *(v57 + 24) = v64;
      _os_log_impl(&dword_265C01000, v55, v74, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v58, -1, -1);
      MEMORY[0x266770CF0](v57, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v53);
    }

    (*(v75 + 8))(v27, v76);
    sub_265CA4AE8(v31, v69, v70);
  }

  sub_265D59690();
  return sub_265D58D50();
}

uint64_t sub_265D23EF0(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v64 = a5;
  v65 = a6;
  v63 = a3;
  v68 = a1;
  v71 = a9;
  v72 = a10;
  v13 = sub_265D57E30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = sub_265D59DE0();
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = (v14 + 16);
  if (a2)
  {
    sub_265D58D90();
    (*v30)(v20, a8, v13);

    v31 = v68;
    sub_265D24620(v68, 1);
    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();

    sub_265CA4470(v31, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v74 = v62;
      *v34 = 136446978;
      *(v34 + 4) = sub_265CF4FFC(v63, a4, &v74);
      *(v34 + 12) = 2082;
      v35 = sub_265D5A210();
      v37 = sub_265CF4FFC(v35, v36, &v74);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2048;
      v38 = v67;
      sub_265D57E10();
      sub_265D57DE0();
      v40 = v39;
      v41 = *(v14 + 8);
      v41(v38, v13);
      v41(v20, v13);
      *(v34 + 24) = v40;
      *(v34 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v43 = *(*(v73 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v45 + 16))(&v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = sub_265D59EC0();
      v48 = sub_265CF4FFC(v46, v47, &v74);

      *(v34 + 34) = v48;
      _os_log_impl(&dword_265C01000, v32, v33, "[%{public}s] %{public}s ended in %fs -> %{public}s", v34, 0x2Au);
      v49 = v62;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v49, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    (*(v69 + 8))(v27, v70);
  }

  else
  {
    sub_265D58D90();
    (*v30)(v22, a8, v13);

    v50 = sub_265D59DD0();
    v51 = sub_265D5A080();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74 = v53;
      *v52 = 136446722;
      *(v52 + 4) = sub_265CF4FFC(v63, a4, &v74);
      *(v52 + 12) = 2082;
      v54 = sub_265D5A210();
      v56 = sub_265CF4FFC(v54, v55, &v74);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2048;
      v57 = v67;
      sub_265D57E10();
      sub_265D57DE0();
      v59 = v58;
      v60 = *(v14 + 8);
      v60(v57, v13);
      v60(v22, v13);
      *(v52 + 24) = v59;
      _os_log_impl(&dword_265C01000, v50, v51, "[%{public}s] %{public}s ended in %fs", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v53, -1, -1);
      MEMORY[0x266770CF0](v52, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v22, v13);
    }

    (*(v69 + 8))(v29, v70);
  }

  sub_265D59690();
  return sub_265D58D50();
}

uint64_t sub_265D24540(uint64_t a1)
{
  v3 = *(sub_265D57E30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D23EF0(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_265D24620(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_265D2462C()
{
  result = qword_28003E948;
  if (!qword_28003E948)
  {
    sub_265D582B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E948);
  }

  return result;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = sub_265D58520();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265D248E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return a2(a1, v5, v6);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_265D2498C(void (*a1)(void), uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  sub_265D23578(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroy_7Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_265D24A58@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_265D57E30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_265D24BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_265D57E30() - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D23810(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_265D24D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265D24E84()
{
  v1 = v0;
  v2 = sub_265D57ED0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_265D58FD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  sub_265D595F0();
  sub_265D59DC0();
  v17 = *(v10 + 8);
  v17(v16, v9);
  if (v1[9])
  {
    v18 = v1[2];
    v19 = v1[3];
    swift_getObjectType();
    sub_265D5A030();
    v25[12] = 1;
    sub_265D57EB0();
    sub_265D58FC0();
    sub_265D58ED0();
    (*(v5 + 8))(v8, v4);
    v20 = v1[9];
    v1[9] = 0;
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_265D595F0();
    v22 = sub_265D59DD0();
    v23 = sub_265D5A070();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_265C01000, v22, v23, "Timer fired for inactive idle monitor", v24, 2u);
      MEMORY[0x266770CF0](v24, -1, -1);
    }

    return (v17)(v14, v9);
  }
}

uint64_t sub_265D25190()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265D25208(uint64_t *a1, unsigned int a2)
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

uint64_t sub_265D25258(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265D252AC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_265D252C4(void *result, int a2)
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

uint64_t sub_265D252F4()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_265D595F0();
  sub_265D59DC0();
  v10 = *(v3 + 8);
  v10(v9, v2);
  if (v1[9])
  {
    sub_265D595F0();
    v11 = sub_265D59DD0();
    v12 = sub_265D5A070();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_265C01000, v11, v12, "Attempting to activate already active idle monitor", v13, 2u);
      MEMORY[0x266770CF0](v13, -1, -1);
    }

    return (v10)(v7, v2);
  }

  else
  {
    v15 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    sub_265D58F60();
    sub_265CD77F0();
    v16 = sub_265D5A090();
    swift_allocObject();
    swift_weakInit();

    v17 = sub_265D592D0();

    v18 = v1[9];
    v1[9] = v17;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_265D25568()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D24E84();
  }

  return result;
}

uint64_t sub_265D255C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  sub_265D595F0();
  sub_265D59DC0();
  v21 = *(v11 + 8);
  result = v21(v20, v10);
  if (*(v1 + 72))
  {
    sub_265D58120();
    v23 = sub_265D58BC0();
    v24 = (*(*(v23 - 8) + 48))(v9, 1, v23);
    sub_265CA4AE8(v9, &unk_28003E960, &unk_265D5D140);
    if (v24 != 1)
    {
      sub_265D595F0();
      v27 = sub_265D59DD0();
      v28 = sub_265D5A080();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_265C01000, v27, v28, "Deactivating idle monitor due to Countdown", v29, 2u);
        MEMORY[0x266770CF0](v29, -1, -1);
      }

      v30 = v18;
      goto LABEL_8;
    }

    sub_265D58110();
    v25 = sub_265D58BB0();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v5, 1, v25) == 1)
    {
      return sub_265CA4AE8(v5, &qword_28003E568, &unk_265D5C010);
    }

    v32 = sub_265D58BA0();
    (*(v26 + 8))(v5, v25);
    v39 = BYTE4(v32) & 1;
    v38 = v32;
    v36 = 0;
    v37 = 1;
    sub_265CEB2F0();
    sub_265CEB344();
    result = sub_265D57F90();
    if (result)
    {
      sub_265D595F0();
      v33 = sub_265D59DD0();
      v34 = sub_265D5A080();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_265C01000, v33, v34, "Deactivating idle monitor due to Playback state playing", v35, 2u);
        MEMORY[0x266770CF0](v35, -1, -1);
      }

      v30 = v15;
LABEL_8:
      v21(v30, v10);
      v31 = *(v1 + 72);
      *(v1 + 72) = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265D25A48(uint64_t *a1, int a2)
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

uint64_t sub_265D25A90(uint64_t result, int a2, int a3)
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

uint64_t sub_265D25AE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D25B38();
  }

  return result;
}

uint64_t sub_265D25B38()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_265D59650();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = *(v1 + 64);
  v13 = sub_265D58B30();
  (*(v8 + 104))(v11, *MEMORY[0x277D4F950], v7);
  v14 = sub_265CA7344(v11, v13);

  result = (*(v8 + 8))(v11, v7);
  if (v14)
  {
    sub_265D595E0();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v16 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_265D59B20();
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_265D59B10();
    sub_265C97624(v19, v18);
    swift_beginAccess();
    sub_265D2616C(v18, v1 + 72);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return result;
}

uint64_t sub_265D25DB8()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_265D26134(v6 + 72, &v8);
    if (*(&v9 + 1))
    {
      sub_265C033C4(&v8, v11);
      sub_265D595E0();
      sub_265D59DC0();
      (*(v1 + 8))(v4, v0);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_265D59B00();
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      swift_beginAccess();
      sub_265D2616C(&v8, v6 + 72);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      sub_265D26104(&v8);
    }
  }

  return result;
}

uint64_t sub_265D25F84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  sub_265D26104(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B19ScanningCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265D2601C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_265D2606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_265D260C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_265D261A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265D261EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_265D26244(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v229) = a2;
  v254 = a1;
  v232 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v203 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v216 = &v203 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v215 = &v203 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v214 = &v203 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v213 = &v203 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v212 = &v203 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v211 = &v203 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E980, &unk_265D5E880);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v228 = &v203 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v227 = &v203 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v226 = &v203 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v253 = &v203 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v225 = &v203 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v252 = &v203 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v251 = &v203 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v250 = &v203 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v249 = &v203 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v248 = &v203 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v247 = &v203 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v246 = &v203 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v245 = &v203 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v244 = &v203 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v243 = &v203 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v242 = &v203 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v241 = &v203 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v240 = &v203 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v239 = &v203 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v238 = &v203 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E988, &qword_265D5DC58);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v209 = &v203 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E990, &qword_265D5DC60);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v208 = &v203 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E998, &qword_265D5DC68);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v224 = &v203 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9A0, &qword_265D5DC70);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v223 = &v203 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9A8, &qword_265D5DC78);
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97 - 8);
  v222 = &v203 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9B0, &qword_265D5DC80);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100 - 8);
  v221 = &v203 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9B8, &qword_265D5DC88);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103 - 8);
  v234 = &v203 - v105;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v204 = *(v205 - 8);
  v106 = *(v204 + 64);
  v107 = MEMORY[0x28223BE20](v205);
  v207 = &v203 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = MEMORY[0x28223BE20](v107);
  v206 = &v203 - v110;
  MEMORY[0x28223BE20](v109);
  v112 = &v203 - v111;
  v235 = sub_265D57DA0();
  v220 = *(v235 - 8);
  v113 = *(v220 + 64);
  v114 = MEMORY[0x28223BE20](v235);
  v116 = &v203 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v233 = &v203 - v117;
  v237 = sub_265D581A0();
  v236 = *(v237 - 8);
  v118 = *(v236 + 64);
  MEMORY[0x28223BE20](v237);
  v255 = &v203 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_265D58AC0();
  v219 = *(v231 - 8);
  v120 = *(v219 + 64);
  v121 = MEMORY[0x28223BE20](v231);
  v210 = &v203 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v122;
  MEMORY[0x28223BE20](v121);
  v230 = &v203 - v123;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v125 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124 - 8);
  v127 = &v203 - v126;
  v128 = sub_265D59BA0();
  v129 = *(v128 - 8);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  v132 = &v203 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v133 = off_28777D8C8[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  v133();
  if ((*(v129 + 48))(v127, 1, v128) == 1)
  {
    sub_265CA4AE8(v127, &qword_28003E6C8, &unk_265D5C9D0);
  }

  else
  {
    (*(v129 + 32))(v132, v127, v128);
    if (sub_265D285C8())
    {
      v134 = v219;
      v135 = v230;
      v136 = v231;
      (*(v219 + 16))(v230, v254, v231);
      v137 = (*(v134 + 80) + 16) & ~*(v134 + 80);
      v138 = swift_allocObject();
      (*(v134 + 32))(v138 + v137, v135, v136);
      sub_265D58940();
      (*(v129 + 8))(v132, v128);
      return;
    }

    (*(v129 + 8))(v132, v128);
  }

  v139 = v255;
  sub_265D58A10();
  sub_265D58170();
  v259 = sub_265D57D80();
  v260 = v140;
  strcpy(v258, "&dubloc=true");
  HIBYTE(v258[6]) = 0;
  v258[7] = -5120;
  v256 = 0;
  v257 = 0xE000000000000000;
  sub_265D28494();
  sub_265D5A100();
  v141 = v220;
  v142 = v235;
  v229 = *(v220 + 8);
  v203 = v220 + 8;
  v229(v116, v235);

  sub_265D57D90();

  if ((*(v141 + 48))(v112, 1, v142) == 1)
  {
    sub_265CA4AE8(v112, &qword_28003E480, &qword_265D5B940);
    v143 = sub_265D57FE0();
    sub_265D284E8();
    v144 = swift_allocError();
    (*(*(v143 - 8) + 104))(v145, *MEMORY[0x277D50360], v143);
    *(swift_allocObject() + 16) = v144;
    v146 = v144;
    sub_265D58940();
    (*(v236 + 8))(v139, v237);
  }

  else
  {
    (*(v141 + 32))(v233, v112, v142);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9C8, &unk_265D5DC90);
    (*(*(v147 - 8) + 56))(v221, 1, 1, v147);
    v148 = sub_265D57D50();
    (*(*(v148 - 8) + 56))(v222, 1, 1, v148);
    v149 = sub_265D581E0();
    (*(*(v149 - 8) + 56))();
    (*(v204 + 56))(v224, 1, 1, v205);
    v150 = sub_265D58150();
    v151 = v208;
    (*(*(v150 - 8) + 56))(v208, 1, 1, v150);
    v152 = sub_265D58420();
    v153 = v209;
    (*(*(v152 - 8) + 56))(v209, 1, 1, v152);
    v154 = *(v141 + 56);
    v155 = v206;
    v154(v206, 1, 1, v142);
    v156 = *(v141 + 16);
    v157 = v207;
    v156(v207, v233, v142);
    v154(v157, 0, 1, v142);
    v158 = v222;
    v159 = v221;
    v160 = v234;
    sub_265D58180();
    sub_265CA4AE8(v157, &qword_28003E480, &qword_265D5B940);
    sub_265CA4AE8(v155, &qword_28003E480, &qword_265D5B940);
    sub_265CA4AE8(v153, &qword_28003E988, &qword_265D5DC58);
    sub_265CA4AE8(v151, &qword_28003E990, &qword_265D5DC60);
    sub_265CA4AE8(v224, &qword_28003E998, &qword_265D5DC68);
    sub_265CA4AE8(v223, &qword_28003E9A0, &qword_265D5DC70);
    sub_265CA4AE8(v158, &qword_28003E9A8, &qword_265D5DC78);
    sub_265CA4AE8(v159, &qword_28003E9B0, &qword_265D5DC80);
    (*(v236 + 56))(v160, 0, 1, v237);
    v161 = sub_265D58020();
    (*(*(v161 - 8) + 56))(v238, 1, 1, v161);
    v162 = sub_265D58410();
    (*(*(v162 - 8) + 56))(v239, 1, 1, v162);
    v163 = sub_265D58590();
    (*(*(v163 - 8) + 56))(v240, 1, 1, v163);
    v164 = sub_265D58050();
    (*(*(v164 - 8) + 56))(v241, 1, 1, v164);
    v165 = sub_265D58BC0();
    (*(*(v165 - 8) + 56))(v242, 1, 1, v165);
    v166 = sub_265D58200();
    (*(*(v166 - 8) + 56))(v243, 1, 1, v166);
    v167 = sub_265D583E0();
    (*(*(v167 - 8) + 56))(v244, 1, 1, v167);
    v168 = sub_265D581B0();
    (*(*(v168 - 8) + 56))(v245, 1, 1, v168);
    v169 = sub_265D57F50();
    (*(*(v169 - 8) + 56))(v246, 1, 1, v169);
    v170 = sub_265D582A0();
    (*(*(v170 - 8) + 56))(v247, 1, 1, v170);
    v171 = sub_265D58680();
    (*(*(v171 - 8) + 56))(v248, 1, 1, v171);
    v172 = sub_265D58210();
    (*(*(v172 - 8) + 56))(v249, 1, 1, v172);
    v173 = sub_265D57E80();
    (*(*(v173 - 8) + 56))(v250, 1, 1, v173);
    v174 = sub_265D58430();
    (*(*(v174 - 8) + 56))(v251, 1, 1, v174);
    v175 = sub_265D58300();
    (*(*(v175 - 8) + 56))(v252, 1, 1, v175);
    v176 = sub_265D586F0();
    (*(*(v176 - 8) + 56))(v225, 1, 1, v176);
    v177 = sub_265D57E90();
    (*(*(v177 - 8) + 56))(v253, 1, 1, v177);
    v178 = sub_265D58BB0();
    (*(*(v178 - 8) + 56))(v226, 1, 1, v178);
    v179 = sub_265D581C0();
    (*(*(v179 - 8) + 56))();
    v180 = sub_265D58230();
    (*(*(v180 - 8) + 56))(v228, 1, 1, v180);
    v181 = sub_265D585C0();
    v182 = v211;
    (*(*(v181 - 8) + 56))(v211, 1, 1, v181);
    v183 = sub_265D57ED0();
    v184 = v212;
    (*(*(v183 - 8) + 56))(v212, 1, 1, v183);
    v185 = sub_265D58240();
    v186 = v213;
    (*(*(v185 - 8) + 56))(v213, 1, 1, v185);
    v187 = sub_265D58400();
    v188 = v214;
    (*(*(v187 - 8) + 56))(v214, 1, 1, v187);
    v189 = sub_265D58630();
    v190 = v215;
    (*(*(v189 - 8) + 56))(v215, 1, 1, v189);
    v191 = sub_265D58B10();
    v192 = v216;
    (*(*(v191 - 8) + 56))(v216, 1, 1, v191);
    v193 = sub_265D58600();
    v194 = v217;
    (*(*(v193 - 8) + 56))(v217, 1, 1, v193);
    v195 = v226;
    v196 = v225;
    sub_265D58AA0();
    sub_265CA4AE8(v194, &qword_28003E2F8, &qword_265D5B680);
    sub_265CA4AE8(v192, &qword_28003E340, &unk_265D5D0C0);
    sub_265CA4AE8(v190, &qword_28003E540, &qword_265D5BFE0);
    sub_265CA4AE8(v188, &qword_28003E548, &qword_265D5BFE8);
    sub_265CA4AE8(v186, &qword_28003E550, &unk_265D5BFF0);
    sub_265CA4AE8(v184, &qword_28003E840, &unk_265D5D0D0);
    sub_265CA4AE8(v182, &qword_28003E560, &unk_265D5CC10);
    sub_265CA4AE8(v228, &qword_28003E980, &unk_265D5E880);
    sub_265CA4AE8(v227, &qword_28003E570, &unk_265D5D0E0);
    sub_265CA4AE8(v195, &qword_28003E568, &unk_265D5C010);
    sub_265CA4AE8(v253, &qword_28003E578, &unk_265D5C020);
    sub_265CA4AE8(v196, &qword_28003E580, &unk_265D5D0F0);
    sub_265CA4AE8(v252, &qword_28003E200, &unk_265D5B580);
    sub_265CA4AE8(v251, &qword_28003E588, &unk_265D5D100);
    sub_265CA4AE8(v250, &qword_28003E590, &unk_265D5C030);
    sub_265CA4AE8(v249, &qword_28003E598, &unk_265D5D110);
    sub_265CA4AE8(v248, &qword_28003E5A0, &unk_265D5C040);
    sub_265CA4AE8(v247, &qword_28003E5A8, &unk_265D5D120);
    sub_265CA4AE8(v246, &qword_28003E5B0, &unk_265D5C050);
    sub_265CA4AE8(v245, &qword_28003E5B8, &unk_265D5D130);
    sub_265CA4AE8(v244, &qword_28003E5C0, &unk_265D5C060);
    sub_265CA4AE8(v243, &qword_28003E348, &qword_265D5B710);
    sub_265CA4AE8(v242, &unk_28003E960, &unk_265D5D140);
    sub_265CA4AE8(v241, &qword_28003E5C8, &unk_265D5D150);
    sub_265CA4AE8(v240, &qword_28003E5D0, &unk_265D5C070);
    sub_265CA4AE8(v239, &qword_28003E5D8, &qword_265D5D160);
    sub_265CA4AE8(v238, &qword_28003E5E0, &qword_265D5C080);
    sub_265CA4AE8(v234, &qword_28003E9B8, &qword_265D5DC88);
    v197 = v219;
    v198 = v210;
    v199 = v230;
    v200 = v231;
    (*(v219 + 16))(v210, v230, v231);
    v201 = (*(v197 + 80) + 16) & ~*(v197 + 80);
    v202 = swift_allocObject();
    (*(v197 + 32))(v202 + v201, v198, v200);
    sub_265D58940();
    (*(v197 + 8))(v199, v200);
    v229(v233, v235);
    (*(v236 + 8))(v255, v237);
  }
}

unint64_t sub_265D28494()
{
  result = qword_28003E9C0;
  if (!qword_28003E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E9C0);
  }

  return result;
}

unint64_t sub_265D284E8()
{
  result = qword_28003E8C8;
  if (!qword_28003E8C8)
  {
    sub_265D57FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8C8);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265D285C8()
{
  v27 = sub_265D59DE0();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_265D57F40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59B90();
  v17 = sub_265D588C0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_265CA4AE8(v7, &qword_28003E6D8, &unk_265D5CB60);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_265CA4AE8(v11, &qword_28003E6C0, &qword_265D5C9C8);
    sub_265D595F0();
    v19 = sub_265D59DD0();
    v20 = sub_265D5A070();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v19, v20, "Unable to determine remote participant's build version, do not support dubbing.", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    (*(v0 + 8))(v3, v27);
    v22 = 0;
    return v22 & 1;
  }

  sub_265D58880();
  (*(v18 + 8))(v7, v17);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  sub_265D28998(v11, v16);
  if (qword_28003DDA8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v12, qword_28003F0A0);
  v24 = MEMORY[0x26676DFF0](v16, v23);
  sub_265D289FC(v16);
  v22 = v24 ^ 1;
  return v22 & 1;
}

uint64_t sub_265D28998(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D57F40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D289FC(uint64_t a1)
{
  v2 = sub_265D57F40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D28A58()
{
  v1 = v0;
  v65 = sub_265D58EB0();
  v74 = *(v65 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265D58F70();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v10 + 8))(v13, v9);
  v14 = *(v1 + 40);
  v72 = *(v1 + 56);
  v78 = v1;
  ObjectType = swift_getObjectType();
  v81 = v14;
  v15 = *MEMORY[0x277D4E4F8];
  v16 = v5[13];
  v76 = v5 + 13;
  v16(v8, v15, v4);
  swift_allocObject();
  swift_weakInit();
  v17 = sub_265D58AC0();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v75 = v5[1];
  v80 = v5 + 1;
  v75(v8, v4);
  swift_unknownObjectRelease();
  v81 = v14;
  v18 = *MEMORY[0x277D4E3A0];
  v77 = v16;
  v16(v8, v18, v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v73 = v17;
  sub_265D591E0();

  v79 = v4;
  v19 = v75;
  v75(v8, v4);
  swift_unknownObjectRelease();
  v81 = v14;
  v16(v8, *MEMORY[0x277D4EE00], v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v20 = v79;
  v19(v8, v79);
  swift_unknownObjectRelease();
  v81 = v14;
  v77(v8, *MEMORY[0x277D4ED00], v20);
  swift_allocObject();
  swift_weakInit();
  v70 = sub_265D583D0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v21 = v79;
  v19(v8, v79);
  swift_unknownObjectRelease();
  v81 = v14;
  v22 = v77;
  v77(v8, *MEMORY[0x277D4E810], v21);
  swift_allocObject();
  swift_weakInit();
  v71 = sub_265D58130();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v23 = v79;
  v19(v8, v79);
  swift_unknownObjectRelease();
  v81 = v14;
  v22(v8, *MEMORY[0x277D4E710], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v24 = v79;
  v19(v8, v79);
  swift_unknownObjectRelease();
  v81 = v14;
  v25 = v24;
  v26 = v24;
  v27 = v77;
  v77(v8, *MEMORY[0x277D4E9A8], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v19(v8, v26);

  swift_unknownObjectRelease();
  v81 = v14;
  v28 = *MEMORY[0x277D4E868];
  v67 = v8;
  v27(v8, v28, v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v75(v8, v26);

  v63 = v14;
  swift_unknownObjectRelease();
  v81 = v14;
  v29 = v74;
  v31 = v74 + 104;
  v30 = *(v74 + 104);
  v32 = v64;
  v33 = v65;
  (v30)(v64, *MEMORY[0x277D4E088], v65);
  v70 = v30;
  v73 = v31;
  swift_allocObject();
  v34 = v78;
  swift_weakInit();

  sub_265D591D0();

  v35 = *(v29 + 8);
  v35(v32, v33);
  v66 = v35;
  v74 = v29 + 8;

  v36 = v63;
  swift_unknownObjectRelease();
  v81 = v36;
  v68 = *MEMORY[0x277D4E040];
  v30(v32);
  swift_allocObject();
  swift_weakInit();
  sub_265D591C0();

  v35(v32, v33);
  swift_unknownObjectRelease();
  v37 = *(v34 + 16);
  v38 = *(v34 + 32);
  v39 = swift_getObjectType();
  v81 = v37;
  LODWORD(v72) = *MEMORY[0x277D4EBE0];
  v40 = v67;
  v41 = v79;
  (v77)(v67);
  swift_allocObject();
  swift_weakInit();
  ObjectType = sub_265D58670();
  swift_unknownObjectRetain_n();
  v61 = v38;
  v62 = v39;
  sub_265D59200();

  v75(v40, v41);
  swift_unknownObjectRelease();
  v81 = v37;
  v43 = v64;
  v42 = v65;
  v44 = v70;
  (v70)(v64, v68, v65);
  swift_allocObject();
  swift_weakInit();
  sub_265D591C0();

  v45 = v43;
  v46 = v43;
  v47 = v42;
  v48 = v66;
  v66(v46, v42);
  swift_unknownObjectRelease();
  v81 = v37;
  LODWORD(v63) = *MEMORY[0x277D4E060];
  v44(v45);
  swift_allocObject();
  v49 = v78;
  swift_weakInit();

  sub_265D591D0();

  v48(v45, v42);

  swift_unknownObjectRelease();
  v50 = *(v49 + 64);
  v51 = *(v49 + 80);
  swift_getObjectType();
  v81 = v50;
  (v44)(v45, v68, v42);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591C0();

  v48(v45, v42);
  swift_unknownObjectRelease();
  v81 = v50;
  v52 = v67;
  v53 = v79;
  v77(v67, v72, v79);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v62 = v51;
  sub_265D59200();

  v75(v52, v53);
  swift_unknownObjectRelease();
  v81 = v50;
  v54 = v70;
  (v70)(v45, v63, v47);
  swift_allocObject();
  swift_weakInit();

  sub_265D591D0();

  v55 = v66;
  v66(v45, v47);

  swift_unknownObjectRelease();
  v81 = v50;
  (v54)(v45, *MEMORY[0x277D4E128], v47);
  swift_allocObject();
  v56 = v78;
  swift_weakInit();

  sub_265D591D0();

  v55(v45, v47);

  swift_unknownObjectRelease();
  v57 = *(v56 + 88);
  v62 = *(v56 + 104);
  swift_getObjectType();
  v81 = v57;
  (v70)(v45, v68, v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591C0();

  v55(v45, v47);
  swift_unknownObjectRelease();
  v81 = v57;
  v58 = v67;
  v59 = v79;
  v77(v67, v72, v79);
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v75(v58, v59);
  swift_unknownObjectRelease();
  v81 = v57;
  (v70)(v45, v63, v47);
  swift_allocObject();
  swift_weakInit();

  sub_265D591D0();

  v66(v45, v47);

  return swift_unknownObjectRelease();
}

uint64_t sub_265D29C1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v9);

    v5 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_265D07940(v3, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_265D29D4C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v7);

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v3 = off_28777DE98;
    type metadata accessor for SessionSystem(0);
    v3();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_265D29EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v15);

    v11 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    a4(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v12 - 8) + 56))(a5, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }
}

uint64_t sub_265D29FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_1((v8 + 96), *(v8 + 120));
    v9 = off_28777FBD0;
    type metadata accessor for AppRequirementCoordinator(0);
    v9(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_265D2A224@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v13);

    v9 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    a3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }
}

uint64_t sub_265D2A354(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v7);

    v6 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    a3(a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_265D2A3E8(void (*a1)(void, void), uint64_t a2, int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v7);

    v6 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_265D01B9C(a1, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_265D2A47C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v11);

    v7 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_265D0C8D0(a1, a2, a3);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_265D2A5BC()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v9);

    v6 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v1 + 8))(v4, v0);
    v7 = *(v6 + 496);
    v8 = off_28777DB58;
    type metadata accessor for SessionHeartbeatCoordinator();
    v8();
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t sub_265D2A74C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  swift_unknownObjectRelease();
  v4 = v0[11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  return swift_deallocClassInstance();
}

void sub_265D2AAC8(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = a1;
  v33 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = (&v29 - v5);
  v7 = sub_265D58AC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppRequirementCoordinator.State(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v3 + 16);
  sub_265D58CA0();
  sub_265D2BEF8(v18, v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) == 1)
  {
    v21 = sub_265D57FE0();
    sub_265D284E8();
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D503B0], v21);
    *(swift_allocObject() + 16) = v22;
    v24 = v22;
    sub_265D58940();
    sub_265D2BFE0(v18);
  }

  else
  {
    v25 = &v16[*(v20 + 48)];
    v26 = *(v25 + 1);
    v29 = *v25;
    (*(v8 + 32))(v11, v16, v7);
    sub_265D58CA0();
    if (v31)
    {
      v27 = v30;
      *v6 = v30;
      swift_storeEnumTagMultiPayload();
      v28 = v27;
    }

    else
    {
      (*(v8 + 16))(v6, v11, v7);
      swift_storeEnumTagMultiPayload();
    }

    v29(v6);
    sub_265D2BF78(v6);
    sub_265D58970();

    (*(v8 + 8))(v11, v7);
    sub_265D2BFE0(v18);
  }
}

uint64_t sub_265D2AEA8(uint64_t a1)
{
  v2 = type metadata accessor for AppRequirementCoordinator.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();
  sub_265D2C03C(v5, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_265D2AFA0()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  sub_265D2BFE0(v0 + OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state);
  v2 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator__appRequirementEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_265D2B090()
{
  v0 = type metadata accessor for AppRequirementCoordinator.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265CDAE1C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_265D2B1C8()
{
  sub_265D2B220();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_265D2B220()
{
  if (!qword_2813B9000)
  {
    sub_265D58AC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E3B8, &qword_265D5DDA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B9000);
    }
  }
}

uint64_t sub_265D2B2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v81 = a1;
  v79 = sub_265D58AC0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = &v69 - v8;
  v9 = sub_265D581A0();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59650();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265D59DE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v19 + 8))(v22, v18);
  v75 = v3;
  v23 = *(v3 + 24);
  v24 = sub_265D58B30();
  (*(v14 + 104))(v17, *MEMORY[0x277D4F8D8], v13);
  LOBYTE(v19) = sub_265CA7344(v17, v24);

  (*(v14 + 8))(v17, v13);
  if ((v19 & 1) == 0)
  {
    v42 = v78;
    v41 = v79;
    (*(v4 + 16))(v78, v81, v79);
    v43 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v44 = swift_allocObject();
    (*(v4 + 32))(v44 + v43, v42, v41);
    return sub_265D58940();
  }

  v70 = v5;
  v71 = v4;
  v25 = v79;
  sub_265D58A10();
  v26 = sub_265D58190();
  v28 = v27;
  v30 = v29;
  (*(v76 + 8))(v12, v77);
  if ((v30 & 1) == 0)
  {
    sub_265CA4B90(v26, v28, 0);
    v45 = sub_265D57FE0();
    sub_265D284E8();
    v46 = swift_allocError();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D50390], v45);
    *(swift_allocObject() + 16) = v46;
    return sub_265D58940();
  }

  v77 = v26;
  v31 = sub_265D58B50();
  v33 = v32;
  v34 = v75;
  v35 = v75[8];
  __swift_project_boxed_opaque_existential_1(v75 + 4, v75[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE0, &unk_265D5AF90);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_265D5AF60;
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;
  LOBYTE(v31) = sub_265D59AD0();

  if (v31)
  {
    v37 = v71;
    v38 = v78;
    (*(v71 + 16))(v78, v81, v25);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = swift_allocObject();
    (*(v37 + 32))(v40 + v39, v38, v25);
    return sub_265D58940();
  }

  v48 = v72;
  v49 = v73;
  v50 = v74;
  (*(v73 + 16))(v72, v34 + OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator__appRequirementEnabled, v74);
  sub_265D58D10();
  (*(v49 + 8))(v48, v50);
  if (v82 != 1)
  {
    v56 = sub_265D57FE0();
    sub_265D284E8();
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D503A8], v56);
    *(swift_allocObject() + 16) = v57;
    return sub_265D58940();
  }

  if (v23 != 2)
  {
    v59 = sub_265D57FE0();
    sub_265D284E8();
    v60 = swift_allocError();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D503B8], v59);
    *(swift_allocObject() + 16) = v60;
    return sub_265D58940();
  }

  sub_265D59420();
  if (v77 > 1u)
  {
    v51 = v70;
    v52 = v71;
    v53 = v78;
    if (v77 == 2)
    {
      v54 = sub_265D593E0();
    }

    else
    {
      v54 = sub_265D593F0();
    }
  }

  else
  {
    v51 = v70;
    v52 = v71;
    v53 = v78;
    if (v77)
    {
      v54 = sub_265D59410();
    }

    else
    {
      v54 = sub_265D59400();
    }
  }

  v63 = v54;
  v64 = v55;
  (*(v52 + 16))(v53, v81, v25);
  v65 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v66 = (v51 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  *(v67 + 16) = v75;
  (*(v52 + 32))(v67 + v65, v53, v25);
  v68 = (v67 + v66);
  *v68 = v63;
  v68[1] = v64;

  return sub_265D58930();
}

uint64_t sub_265D2BB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  sub_265D58CA0();
  v4 = sub_265D59EE0();
  notify_post((v4 + 32));
}

uint64_t sub_265D2BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppRequirementCoordinator.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  v13 = &v11[*(v12 + 48)];
  v14 = sub_265D58AC0();
  (*(*(v14 - 8) + 16))(v11, a2, v14);
  *v13 = a3;
  *(v13 + 1) = a4;
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v15 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();

  sub_265D2C03C(v11, a1 + v15);
  return swift_endAccess();
}

void sub_265D2BD3C(uint64_t a1@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_265D595E0();
  sub_265D59DC0();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  v9 = v10;
  LOBYTE(v7) = v11;
  sub_265D2AAC8(v10, v11, a1);
  sub_265CA4470(v9, v7);
}

uint64_t sub_265D2BE98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();
  return sub_265D2BEF8(v1 + v3, a1);
}

uint64_t sub_265D2BEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D2BF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D2BFE0(uint64_t a1)
{
  v2 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D2C03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D2C0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265D2BB48(a1, a2, v6);
}

double sub_265D2C19C(double a1, double a2, double a3, double a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_265D595F0();
  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349824;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2050;
    *(v18 + 14) = a2;
    *(v18 + 22) = 2050;
    *(v18 + 24) = a3;
    *(v18 + 32) = 2050;
    *(v18 + 34) = a4;
    _os_log_impl(&dword_265C01000, v16, v17, "Timestamp - calculate offset - clientOut: %{public}f serverIn: %{public}f serverOut: %{public}f clientIn: %{public}f", v18, 0x2Au);
    MEMORY[0x266770CF0](v18, -1, -1);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  v20 = a4 - a1 - (a3 - a2);
  v21 = (a2 - a1 + a3 - a4) * -0.5;
  sub_265D595F0();
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349312;
    *(v24 + 4) = v21;
    *(v24 + 12) = 2050;
    *(v24 + 14) = v20;
    _os_log_impl(&dword_265C01000, v22, v23, "Timestamp - offset: %{public}f, uncertainty: %{public}f", v24, 0x16u);
    MEMORY[0x266770CF0](v24, -1, -1);
  }

  v19(v13, v8);
  return v21;
}

uint64_t sub_265D2C414()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MachTimestampOffsetExchange.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MachTimestampOffsetExchange.State(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_265D2C510(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_265D2C528(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MachTimestampOffsetError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MachTimestampOffsetError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265D2C6A4()
{
  result = qword_28003E9D0;
  if (!qword_28003E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E9D0);
  }

  return result;
}

uint64_t sub_265D2C6FC()
{
  v0 = sub_265D590A0();
  v5[3] = v0;
  v5[4] = sub_265D40868(&qword_2813B8FE8, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v5);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  v2 = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v3 = &unk_28777A748;
  if ((v2 & 1) == 0 && os_variant_has_internal_content())
  {
    v3 = &unk_28777A770;
  }

  result = sub_265C95FFC(v3);
  qword_2813B9240 = result;
  return result;
}

uint64_t sub_265D2C7F4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2C910, 0, 0);
}

uint64_t sub_265D2C910()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59450();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionPublisher(0);
    v8 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher);
    *v6 = v0;
    v6[1] = sub_265D2CA80;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D2CA80()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2CC68, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D2CC68()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D2CE50(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2CF6C, 0, 0);
}

uint64_t sub_265D2CF6C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionPublisher(0);
    v8 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher);
    *v6 = v0;
    v6[1] = sub_265D2D0DC;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D2D0DC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2D2C4, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D2D2C4()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D2D4AC(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2D5C8, 0, 0);
}

uint64_t sub_265D2D5C8()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for DistributedSessionPublisher(0);
    v8 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher);
    *v6 = v0;
    v6[1] = sub_265D2D738;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D2D738()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2D920, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D2D920()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D2DB08(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v2[45] = v3;
  v4 = *(v3 - 8);
  v2[46] = v4;
  v5 = *(v4 + 64) + 15;
  v2[47] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v2[48] = v6;
  v7 = *(v6 - 8);
  v2[49] = v7;
  v8 = *(v7 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2DC80, v1, 0);
}

uint64_t sub_265D2DC80()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  sub_265D33B1C();
  v3 = v2[21];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_265D58EC0();
  v4 = *(v0 + 424);
  v5 = *(v0 + 352);
  sub_265C033C4((v0 + 56), v0 + 16);
  v6 = sub_265D59FA0();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_265C97624(v0 + 16, v0 + 96);
  v8 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_265C033C4((v0 + 96), (v9 + 5));
  swift_retain_n();
  *(v0 + 432) = sub_265D4CE7C(0, 0, v4, &unk_265D5E1C8, v9);
  v7(v4, 1, 1, v6);
  sub_265C97624(v0 + 16, v0 + 136);
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v8;
  v10[4] = v5;
  sub_265C033C4((v0 + 136), (v10 + 5));
  swift_retain_n();
  *(v0 + 440) = sub_265D4CE7C(0, 0, v4, &unk_265D5E1D8, v10);
  v7(v4, 1, 1, v6);
  sub_265C97624(v0 + 16, v0 + 176);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v8;
  v11[4] = v5;
  sub_265C033C4((v0 + 176), (v11 + 5));
  swift_retain_n();
  *(v0 + 448) = sub_265D4CE7C(0, 0, v4, &unk_265D5E1E8, v11);
  v7(v4, 1, 1, v6);
  sub_265C97624(v0 + 16, v0 + 216);
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v8;
  sub_265C033C4((v0 + 216), (v12 + 4));
  v12[9] = v5;
  swift_retain_n();
  *(v0 + 456) = sub_265D4CE7C(0, 0, v4, &unk_265D5E1F8, v12);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  v15 = *(MEMORY[0x277D4F5B8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 464) = v16;
  *v16 = v0;
  v16[1] = sub_265D2E1D0;

  return MEMORY[0x2821AF528](v13, v14);
}

uint64_t sub_265D2E1D0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = sub_265D2E860;
  }

  else
  {
    v6 = sub_265D2E2FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265D2E2FC()
{
  v1 = v0[52];
  sub_265D595F0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DistributedSessionPublisher - activated workout", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v0[52];
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[44];

  (*(v7 + 8))(v5, v6);
  v10 = v8[17];
  v9 = v8[18];
  __swift_project_boxed_opaque_existential_1(v8 + 14, v10);
  v11 = *(MEMORY[0x277D4F338] + 4);

  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_265D2E47C;
  v13 = v0[44];

  return MEMORY[0x2821AEFF8](&unk_265D5E208, v13, v10, v9);
}

uint64_t sub_265D2E47C(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_265D2E59C, v3, 0);
}

uint64_t sub_265D2E59C()
{
  v25 = v0[61];
  v18 = v0[56];
  v19 = v0[57];
  v1 = v0[54];
  v26 = v0[55];
  v21 = v0[53];
  v22 = v0[52];
  v23 = v0[51];
  v24 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v20 = v0[45];
  v5 = v0[43];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = *MEMORY[0x277CCC918];

  v8 = sub_265D594C0();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
  v16 = *(v9 + 160);
  v17 = *(v9 + 176);
  *v2 = sub_265D589C0();
  sub_265C97624((v0 + 2), (v2 + 1));
  v2[6] = v1;
  v2[7] = v26;
  v2[8] = v18;
  v2[9] = v19;
  v2[10] = v8;
  v2[11] = v25;

  v10 = v8;

  sub_265D58A00();
  *(v2 + v17) = sub_265C96BC8(MEMORY[0x277D84F90]);
  type metadata accessor for DistributedSessionPublisher.State(0);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v2, *MEMORY[0x277D4F250], v20);
  v11 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v3 + 40))(&v4[v11], v2, v20);
  swift_endAccess();
  v12 = *(v4 + 18);
  __swift_project_boxed_opaque_existential_1(v4 + 14, *(v4 + 17));
  v13 = *(v12 + 8);
  sub_265D590D0();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_265D2E860()
{
  v33 = v0;
  v1 = v0[59];
  v2 = v0[50];
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[59];
    v8 = v0[49];
    v7 = v0[50];
    v9 = v0[48];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[35];
    v13 = MEMORY[0x2667704D0](v0[36], v0[37]);
    v15 = sub_265CF4FFC(v13, v14, &v32);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - failed to activate workout: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266770CF0](v11, -1, -1);
    MEMORY[0x266770CF0](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[48];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[57];
  v23 = v0[54];
  v22 = v0[55];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v24 = v0[59];
  v26 = v0[52];
  v25 = v0[53];
  v28 = v0[50];
  v27 = v0[51];
  v29 = v0[47];

  v30 = v0[1];

  return v30();
}

uint64_t sub_265D2EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D57F50();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2EB84, a4, 0);
}

uint64_t sub_265D2EB84()
{
  if (sub_265CA786C(2, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F590] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265D2EC98;

    return MEMORY[0x2821AF4F8](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265D2EC98()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265D2EDA8, v2, 0);
}

uint64_t sub_265D2EDA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265D2EFAC;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265D2EFAC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D2F0BC, v5, 0);
  }

  return result;
}

uint64_t sub_265D2F0BC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for DistributedSessionPublisher(0);
    v14 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
    *v12 = v0;
    v12[1] = sub_265D2F288;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5E2C8, v10, v13, v16, v14);
  }
}

void sub_265D2F288()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D2F3C8, v6, 0);
  }
}

uint64_t sub_265D2F3C8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265D2EFAC;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265D2F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D581B0();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2F5B4, a4, 0);
}

uint64_t sub_265D2F5B4()
{
  if (sub_265CA786C(0, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F598] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265D2F6C8;

    return MEMORY[0x2821AF508](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265D2F6C8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265D2F7D8, v2, 0);
}

uint64_t sub_265D2F7D8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265D2F9DC;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265D2F9DC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D2FAEC, v5, 0);
  }

  return result;
}

uint64_t sub_265D2FAEC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for DistributedSessionPublisher(0);
    v14 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
    *v12 = v0;
    v12[1] = sub_265D2FCB8;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5E2B8, v10, v13, v16, v14);
  }
}

void sub_265D2FCB8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D2FDF8, v6, 0);
  }
}

uint64_t sub_265D2FDF8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265D2F9DC;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265D2FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D58210();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2FFE4, a4, 0);
}

uint64_t sub_265D2FFE4()
{
  if (sub_265CA786C(3, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F5A0] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265D300F8;

    return MEMORY[0x2821AF510](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265D300F8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265D30208, v2, 0);
}

uint64_t sub_265D30208()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265D3040C;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265D3040C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D3051C, v5, 0);
  }

  return result;
}

uint64_t sub_265D3051C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for DistributedSessionPublisher(0);
    v14 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
    *v12 = v0;
    v12[1] = sub_265D306E8;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5E2A8, v10, v13, v16, v14);
  }
}

void sub_265D306E8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D30828, v6, 0);
  }
}

uint64_t sub_265D30828()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265D3040C;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265D30918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D591A0();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E538, &qword_265D5BFC0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D30A14, a5, 0);
}

uint64_t sub_265D30A14()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D4F580] + 4);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_265D30AD0;

  return MEMORY[0x2821AF4E8](v0 + 56, v2, v3);
}

uint64_t sub_265D30AD0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265D30BE0, v2, 0);
}

uint64_t sub_265D30BE0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher);
  v0[19] = v6;
  v7 = v0[13];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265D30DE4;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265D30DE4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_265D30EF4, v5, 0);
  }

  return result;
}

uint64_t sub_265D30EF4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[16];
    v8 = v0[13];
    (*(v3 + 32))(v7, v1, v2);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = *(MEMORY[0x277D0A890] + 4);
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = type metadata accessor for DistributedSessionPublisher(0);
    v13 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
    *v11 = v0;
    v11[1] = sub_265D310C4;
    v14 = v0[13];
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v13, &unk_265D5E290, v9, v12, v15, v13);
  }
}

void sub_265D310C4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_265D31204, v6, 0);
  }
}

uint64_t sub_265D31204()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265D30DE4;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265D312F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265D58020();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F0, &qword_265D5C0C0);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D31454, 0, 0);
}

uint64_t sub_265D31454()
{
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F8, &qword_265D5C0C8);
  sub_265D59FD0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_265D3151C;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_265D3151C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_265D31618, 0, 0);
}

uint64_t sub_265D31618()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[3];
    (*(v3 + 32))(v0[6], v1, v2);

    return MEMORY[0x2822009F8](sub_265D3173C, v7, 0);
  }
}

uint64_t sub_265D3173C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D0A890] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = type metadata accessor for DistributedSessionPublisher(0);
  v7 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
  *v5 = v0;
  v5[1] = sub_265D31864;
  v8 = v0[3];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v7, &unk_265D5E278, v3, v6, v9, v7);
}

void sub_265D31864()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_265D319A4, v6, 0);
  }
}

uint64_t sub_265D319C0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_265D3151C;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_265D31A7C(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_265D59FA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2 & 1;
  sub_265D41EDC(a1, a2 & 1);
  sub_265D4D17C(0, 0, v7, &unk_265D5E218, v10);
}

uint64_t sub_265D31BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  v7 = sub_265D59DE0();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D31C8C, 0, 0);
}

uint64_t sub_265D31C8C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265D31D58, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 80);
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_265D31D58()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v4 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5 & 1;
  v8 = *(MEMORY[0x277D0A890] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = type metadata accessor for DistributedSessionPublisher(0);
  v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher);
  *v9 = v0;
  v9[1] = sub_265D31EF0;
  v12 = *(v0 + 88);
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v11, &unk_265D5E228, v7, v10, v13, v11);
}

void sub_265D31EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D3202C, v6, 0);
  }
}

uint64_t sub_265D3202C()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_265D32094, 0, 0);
}

uint64_t sub_265D32094()
{
  v1 = *(v0 + 80);
  **(v0 + 40) = *(v0 + 88) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265D32104(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_265D58AC0();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_265D59DE0();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3228C, v2, 0);
}

uint64_t sub_265D3228C()
{
  v38 = v0;
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v8)
  {
    v36 = v0[14];
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    v17 = sub_265D589D0();
    v35 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v34, "DistributedSessionPublisher - Ending Session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v35, v36);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[9];
  v21 = v0[10];
  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[6];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v23);
  v26 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v22 + 40))(&v24[v26], v21, v23);
  swift_endAccess();
  v27 = *(v24 + 18);
  __swift_project_boxed_opaque_existential_1(v24 + 14, *(v24 + 17));
  v28 = sub_265CD9E44();
  v29 = *(v27 + 8);
  sub_265D590C0();

  v30 = swift_task_alloc();
  v0[17] = v30;
  *v30 = v0;
  v30[1] = sub_265CCD1EC;
  v31 = v0[6];
  v32 = v0[7];

  return sub_265D333D0(v31);
}

uint64_t sub_265D32558(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_265D59DE0();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D32628, v2, 0);
}

uint64_t sub_265D32628()
{
  v43 = v0;
  v1 = v0[12];
  v2 = sub_265D58BA0();
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v0[17];
    sub_265D595F0();
    v4 = sub_265D59DD0();
    v5 = sub_265D5A070();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265C01000, v4, v5, "Unknown Playback State.", v10, 2u);
      MEMORY[0x266770CF0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v15 = v2;
  v16 = v0[18];
  sub_265D595F0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[18];
  v22 = v0[15];
  v21 = v0[16];
  if (v19)
  {
    v41 = v0[18];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136315138;
    v25 = sub_265D58B90();
    v27 = sub_265CF4FFC(v25, v26, &v42);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_265C01000, v17, v18, "DistributedSessionPublisher - Updating workout state to: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266770CF0](v24, -1, -1);
    MEMORY[0x266770CF0](v23, -1, -1);

    (*(v21 + 8))(v41, v22);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  if (v15 - 1 < 2)
  {
    v28 = v0[13];
    sub_265CDA360((v0 + 7));
    v29 = v0[10];
    if (v29)
    {
      v30 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v31 = *(MEMORY[0x277D4F5A8] + 4);
      v32 = swift_task_alloc();
      v0[19] = v32;
      *v32 = v0;
      v32[1] = sub_265CCC258;

      return MEMORY[0x2821AF518](v29, v30);
    }

    sub_265CA4AE8((v0 + 7), &qword_28003E528, &qword_265D5BF60);
LABEL_5:
    v12 = v0[17];
    v11 = v0[18];

    v13 = v0[1];

    return v13();
  }

  if (v15)
  {
    v38 = swift_task_alloc();
    v0[23] = v38;
    *v38 = v0;
    v38[1] = sub_265CCC598;
    v39 = v0[13];
    v40 = v0[14];

    return sub_265D333D0(v39);
  }

  else
  {
    v33 = v0[13];
    sub_265CDA360((v0 + 2));
    v34 = v0[5];
    if (!v34)
    {
      sub_265CA4AE8((v0 + 2), &qword_28003E528, &qword_265D5BF60);
      goto LABEL_5;
    }

    v35 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v36 = *(MEMORY[0x277D4F5B0] + 4);
    v37 = swift_task_alloc();
    v0[21] = v37;
    *v37 = v0;
    v37[1] = sub_265CCC3F8;

    return MEMORY[0x2821AF520](v34, v35);
  }
}

uint64_t sub_265D32A78(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[30] = v7;
  v8 = *(v7 - 8);
  v3[31] = v8;
  v9 = *(v8 + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_265D58020();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_265D59DE0();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D32C98, v2, 0);
}

uint64_t sub_265D32C98()
{
  v93 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 160);
  sub_265D595F0();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v7 = sub_265D59DD0();
  v89 = sub_265D5A080();
  v8 = os_log_type_enabled(v7, v89);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  if (v8)
  {
    v85 = v6;
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v92 = v81;
    *v15 = 136315138;
    sub_265D40868(&qword_28003E600, MEMORY[0x277D50400]);
    v77 = v12;
    v16 = sub_265D5A3B0();
    v75 = v9;
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_265CF4FFC(v16, v18, &v92);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_265C01000, v7, v89, "DistributedSessionPublisher - Updating activityRings to: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x266770CF0](v81, -1, -1);
    v20 = v15;
    v6 = v85;
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v10 + 8))(v75, v77);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 232);
  v25 = *(v0 + 184);
  v24 = *(v0 + 192);
  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v6(v23, v26, v21);
  v90 = *(v22 + 56);
  v90(v23, 0, 1, v21);
  sub_265CD9D78(v27, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *(v0 + 272);
    v82 = *(v0 + 264);
    v29 = *(v0 + 256);
    v78 = *(v0 + 232);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 192);
    sub_265CA4AE8(v0 + 16, &qword_28003E528, &qword_265D5BF60);
    v33 = *(v32 + 2);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v86 = *(v32 + *(v34 + 96));
    v76 = *v32;
    sub_265D42374(v32 + *(v34 + 80), v30, &qword_28003E5E0, &qword_265D5C080);
    v35 = *(v34 + 80);
    *v29 = v76;
    *(v29 + 16) = v33;
    sub_265D42374(v78, v31, &qword_28003E5E0, &qword_265D5C080);
    v36 = *(v28 + 48);
    if (v36(v31, 1, v82) == 1)
    {
      v37 = *(v0 + 264);
      v38 = *(v0 + 208);
      sub_265D42374(*(v0 + 216), v29 + v35, &qword_28003E5E0, &qword_265D5C080);
      if (v36(v38, 1, v37) != 1)
      {
        sub_265CA4AE8(*(v0 + 208), &qword_28003E5E0, &qword_265D5C080);
      }
    }

    else
    {
      v48 = *(v0 + 264);
      v49 = *(v0 + 272);
      v50 = *(v0 + 208);
      sub_265CA4AE8(*(v0 + 216), &qword_28003E5E0, &qword_265D5C080);
      (*(v49 + 32))(v29 + v35, v50, v48);
      v90(v29 + v35, 0, 1, v48);
    }

    v51 = *(v0 + 184);
    *(*(v0 + 256) + *(v34 + 96)) = v86;
  }

  else
  {
    v39 = *(v0 + 256);
    v40 = *(v0 + 224);
    v41 = *(v0 + 192);
    v42 = *v41;
    v83 = *(v41 + 4);
    v87 = *(v41 + 3);
    v79 = *(v41 + 5);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v44 = *(v43 + 160);
    v45 = *(v41 + *(v43 + 176));
    sub_265C033C4((v41 + 1), v0 + 56);
    sub_265D42374(v41 + v44, v40, &qword_28003E5E0, &qword_265D5C080);
    *v39 = v42;
    v46 = (v39 + 1);
    *(v0 + 128) = *(v0 + 48);
    v47 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v47;
    if (*(v0 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      sub_265C033C4((v0 + 96), v46);
    }

    else
    {
      sub_265C033C4((v0 + 56), v46);
      if (*(v0 + 120))
      {
        sub_265CA4AE8(v0 + 96, &qword_28003E528, &qword_265D5BF60);
      }
    }

    v52 = *(v0 + 264);
    v53 = *(v0 + 272);
    v54 = *(v0 + 256);
    v55 = *(v0 + 232);
    v56 = *(v0 + 200);
    v57 = *(v43 + 160);
    *(v54 + 3) = v87;
    *(v54 + 4) = v83;
    *(v54 + 5) = v79;
    sub_265D42374(v55, v56, &qword_28003E5E0, &qword_265D5C080);
    v58 = *(v53 + 48);
    if (v58(v56, 1, v52) == 1)
    {
      v59 = *(v0 + 264);
      v60 = *(v0 + 200);
      sub_265D42374(*(v0 + 224), &v54[v57], &qword_28003E5E0, &qword_265D5C080);
      if (v58(v60, 1, v59) != 1)
      {
        sub_265CA4AE8(*(v0 + 200), &qword_28003E5E0, &qword_265D5C080);
      }
    }

    else
    {
      v61 = *(v0 + 264);
      v62 = *(v0 + 272);
      v63 = *(v0 + 200);
      sub_265CA4AE8(*(v0 + 224), &qword_28003E5E0, &qword_265D5C080);
      (*(v62 + 32))(&v54[v57], v63, v61);
      v90(&v54[v57], 0, 1, v61);
    }

    v64 = *(v0 + 184);
    *(*(v0 + 256) + *(v43 + 176)) = v45;
  }

  swift_storeEnumTagMultiPayload();
  v65 = *(v0 + 304);
  v66 = *(v0 + 280);
  v67 = *(v0 + 248);
  v68 = *(v0 + 256);
  v69 = *(v0 + 240);
  v70 = *(v0 + 224);
  v80 = *(v0 + 216);
  v84 = *(v0 + 208);
  v88 = *(v0 + 200);
  v91 = *(v0 + 192);
  v71 = *(v0 + 176);
  (*(v67 + 104))(v68, *MEMORY[0x277D4F250], v69);
  v72 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v67 + 40))(v71 + v72, v68, v69);
  swift_endAccess();

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_265D333D0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(type metadata accessor for DistributedSessionPublisher.State(0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = sub_265D59DE0();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D334C8, v1, 0);
}

uint64_t sub_265D334C8()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];
  sub_265D595F0();
  sub_265CD9D78(v3, v2);
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v6)
  {
    v29 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    sub_265CD9C34();
    v13 = sub_265D58CF0();
    v28 = v7;
    v15 = v14;

    sub_265CDA484(v10);
    v16 = sub_265CF4FFC(v13, v15, &v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Attempting to deactivate workout for session: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);

    v17 = *(v8 + 8);
    v17(v28, v29);
  }

  else
  {

    sub_265CDA484(v10);
    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v0[18] = v17;
  v18 = v0[11];
  sub_265CDA360((v0 + 2));
  v19 = v0[5];
  if (v19)
  {
    v20 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v21 = *(MEMORY[0x277D4F588] + 4);
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_265D33770;

    return MEMORY[0x2821AF4F0](v19, v20);
  }

  else
  {
    sub_265CA4AE8((v0 + 2), &qword_28003E528, &qword_265D5BF60);
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[13];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_265D33770()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_265D3391C;
  }

  else
  {
    v6 = sub_265D3389C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265D3389C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}