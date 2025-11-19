void *MetricRouter.__allocating_init(metricClient:eventHub:upNextQueueClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20C477580(a1, v18);
  sub_20C477580(a4, v17);
  type metadata accessor for MetricRouter();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v7 = swift_allocObject();
  sub_20C477580(v17, v14);
  sub_20C4775E4(v15, v13, &qword_27C7C5760);
  type metadata accessor for MetricMetadataDecorator();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_20C4777C0(v8, a3, v14, v13);
  swift_unknownObjectRelease();
  v7[2] = v9;
  sub_20C477580(v18, (v7 + 3));
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v7[8] = sub_20C59F75C();
  swift_unknownObjectRetain();
  LOBYTE(v9) = sub_20C59EC4C();
  type metadata accessor for TrainerTipsQuarantineMetricTransformer();
  swift_allocObject();
  v10 = sub_20C477BD4(a2, a3, v9);
  swift_unknownObjectRelease();
  v7[9] = v10;
  swift_getObjectType();
  type metadata accessor for MetricClickStreamOccurred();
  swift_allocObject();
  swift_weakInit();
  sub_20C477EA0(qword_2810F4908, type metadata accessor for MetricClickStreamOccurred);

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  type metadata accessor for MetricPerformanceStreamOccurred();
  swift_allocObject();
  swift_weakInit();
  sub_20C477EA0(qword_2810F43C0, type metadata accessor for MetricPerformanceStreamOccurred);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  type metadata accessor for MetricPlayStreamOccurred();
  swift_allocObject();
  swift_weakInit();

  sub_20C477EA0(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
  sub_20C59F61C();
  swift_unknownObjectRelease();

  sub_20C477B50(v15, &qword_27C7C5760);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void *MetricRouter.__allocating_init(metricClient:eventHub:upNextQueueClient:workoutPlanClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_20C477580(a4, v18);
  sub_20C4775E4(a5, v17, &qword_27C7C5760);
  type metadata accessor for MetricMetadataDecorator();
  swift_allocObject();
  v11 = swift_unknownObjectRetain();
  v12 = sub_20C4777C0(v11, a3, v18, v17);
  swift_unknownObjectRelease();
  v10[2] = v12;
  sub_20C477580(a1, (v10 + 3));
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v10[8] = sub_20C59F75C();
  swift_unknownObjectRetain();
  LOBYTE(v12) = sub_20C59EC4C();
  type metadata accessor for TrainerTipsQuarantineMetricTransformer();
  swift_allocObject();
  v13 = sub_20C477BD4(a2, a3, v12);
  swift_unknownObjectRelease();
  v10[9] = v13;
  swift_getObjectType();
  type metadata accessor for MetricClickStreamOccurred();
  swift_allocObject();
  swift_weakInit();
  sub_20C477EA0(qword_2810F4908, type metadata accessor for MetricClickStreamOccurred);

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  type metadata accessor for MetricPerformanceStreamOccurred();
  swift_allocObject();
  swift_weakInit();
  sub_20C477EA0(qword_2810F43C0, type metadata accessor for MetricPerformanceStreamOccurred);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  type metadata accessor for MetricPlayStreamOccurred();
  swift_allocObject();
  swift_weakInit();

  sub_20C477EA0(qword_2810F4BC8, type metadata accessor for MetricPlayStreamOccurred);
  sub_20C59F61C();
  swift_unknownObjectRelease();

  sub_20C477B50(a5, &qword_27C7C5760);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v10;
}

uint64_t sub_20C541B4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_20C541BC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0);
  v119 = *(v3 - 8);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v121 = v103 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A20);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v5;
  MEMORY[0x28223BE20](v6);
  v114 = v103 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A10);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v8;
  MEMORY[0x28223BE20](v9);
  v122 = v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A30);
  v131 = *(v11 - 8);
  v132 = v11;
  MEMORY[0x28223BE20](v11);
  v126 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v12;
  MEMORY[0x28223BE20](v13);
  v128 = v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v133 = *(v15 - 8);
  v134 = v15;
  MEMORY[0x28223BE20](v15);
  v130 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v103 - v18;
  v129 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v103 - v22;
  v110 = sub_20C5A01CC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v135 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5A30);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v103 - v26;
  v28 = sub_20C59E26C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v111 = v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v103 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v103 - v35;
  v136 = v1;
  sub_20C50F8A0(a1, v27);
  v137 = v28;
  v138 = v29;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_20C477B50(v27, &qword_27C7C5A30);
  }

  v107 = v19;
  v108 = v23;
  v39 = v137;
  v38 = v138;
  v40 = *(v138 + 32);
  v105 = v138 + 32;
  v104 = v40;
  v40(v36, v27, v137);
  sub_20C59FE3C();
  v41 = *(v38 + 16);
  v103[1] = v38 + 16;
  v103[0] = v41;
  v41(v33, a1, v39);
  v42 = sub_20C5A01BC();
  v43 = sub_20C5A08AC();
  v44 = os_log_type_enabled(v42, v43);
  v127 = v36;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v139 = v46;
    *v45 = 136446210;
    sub_20C477EA0(&qword_2810F5A28, MEMORY[0x277D514B0]);
    v47 = v137;
    v48 = sub_20C5A0E6C();
    v50 = v49;
    v51 = *(v138 + 8);
    v106 = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v33, v47);
    v52 = sub_20C479640(v48, v50, &v139);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_20C472000, v42, v43, "Clickstream occured: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x20F2FFF90](v46, -1, -1);
    MEMORY[0x20F2FFF90](v45, -1, -1);
  }

  else
  {

    v53 = *(v138 + 8);
    v106 = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v33, v137);
  }

  (*(v109 + 8))(v135, v110);
  v54 = *(v136 + 16);
  v55 = v114;
  sub_20C51C700(v114);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_20C51CABC;
  *(v56 + 24) = 0;
  v57 = v115;
  v58 = v113;
  v59 = v116;
  (*(v115 + 16))(v113, v55, v116);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = (v112 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v57 + 32))(v62 + v60, v58, v59);
  v63 = (v62 + v61);
  *v63 = sub_20C54429C;
  v63[1] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5738);
  v64 = v122;
  sub_20C59EA9C();
  (*(v57 + 8))(v55, v59);
  v65 = OBJC_IVAR____TtC12SeymourMedia23MetricMetadataDecorator_badgingCounts;
  swift_beginAccess();
  v66 = v111;
  v67 = v137;
  (v103[0])(v111, v127, v137);
  v68 = v121;
  sub_20C4775E4(v54 + v65, v121, &qword_27C7C44E0);
  v69 = (*(v138 + 80) + 16) & ~*(v138 + 80);
  v70 = (v30 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (*(v119 + 80) + v70 + 8) & ~*(v119 + 80);
  v72 = swift_allocObject();
  v104(v72 + v69, v66, v67);
  *(v72 + v70) = v54;
  sub_20C5442CC(v68, v72 + v71);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_20C54433C;
  *(v73 + 24) = v72;
  v74 = v124;
  v75 = v118;
  v76 = v125;
  (*(v124 + 16))(v118, v64, v125);
  v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v78 = (v117 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  (*(v74 + 32))(v79 + v77, v75, v76);
  v80 = (v79 + v78);
  *v80 = sub_20C544438;
  v80[1] = v73;

  v81 = v128;
  sub_20C59EA9C();
  (*(v74 + 8))(v64, v76);
  sub_20C477580(v136 + 24, &v139);
  v82 = swift_allocObject();
  sub_20C4780E8(&v139, v82 + 16);
  v84 = v131;
  v83 = v132;
  v85 = v126;
  (*(v131 + 16))(v126, v81, v132);
  v86 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v87 = (v123 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (*(v84 + 32))(v88 + v86, v85, v83);
  v89 = (v88 + v87);
  *v89 = sub_20C544468;
  v89[1] = v82;
  v90 = v107;
  sub_20C59EA9C();
  (*(v84 + 8))(v81, v83);
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20C542CD4;
  *(v91 + 24) = 0;
  v93 = v133;
  v92 = v134;
  v94 = v130;
  (*(v133 + 16))(v130, v90, v134);
  v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v96 = (v129 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  (*(v93 + 32))(v97 + v95, v94, v92);
  v98 = (v97 + v96);
  *v98 = sub_20C490914;
  v98[1] = v91;
  v99 = v108;
  sub_20C59EA9C();
  v100 = *(v93 + 8);
  v100(v90, v92);
  v101 = sub_20C59EABC();
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  *(v102 + 24) = 0;
  v101(sub_20C490920, v102);

  v100(v99, v92);
  return (*(v138 + 8))(v127, v67);
}

uint64_t sub_20C5429A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v28 = a3;
  v4 = sub_20C59E26C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = v25;
  sub_20C59F20C();
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20C544528;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20C540E40;
  *(v15 + 24) = v14;
  v17 = v26;
  v16 = v27;
  v18 = v24;
  (*(v7 + 16))(v26, v24, v27);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v17, v16);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20C540D54;
  v21[1] = v15;
  sub_20C59EA9C();
  return (*(v7 + 8))(v18, v16);
}

uint64_t sub_20C542CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v34 = &v28 - v4;
  v5 = sub_20C59E6CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A01CC();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v12 = *(v6 + 16);
  v33 = a1;
  v12(v8, a1, v5);
  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v2;
    v28 = v17;
    v35 = v17;
    *v16 = 136446210;
    sub_20C477EA0(&qword_2810F59F8, MEMORY[0x277D528E0]);
    v18 = sub_20C5A0E6C();
    v19 = v3;
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    v22 = sub_20C479640(v18, v21, &v35);
    v3 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20C472000, v13, v14, "Performancestream occured: %{public}s", v16, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v2 = v30;
    MEMORY[0x20F2FFF90](v23, -1, -1);
    MEMORY[0x20F2FFF90](v16, -1, -1);

    (*(v31 + 8))(v11, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v31 + 8))(v11, v9);
  }

  __swift_project_boxed_opaque_existential_1((v32 + 24), *(v32 + 48));
  v24 = v34;
  sub_20C59F21C();
  v25 = sub_20C59EABC();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v25(sub_20C490920, v26);

  return (*(v3 + 8))(v24, v2);
}

uint64_t sub_20C543110(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A00);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = v5;
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v67 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v56 - v12;
  v66 = v13;
  MEMORY[0x28223BE20](v14);
  v71 = &v56 - v15;
  v16 = sub_20C59E18C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C5A01CC();
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v23 = *(v17 + 16);
  v62 = a1;
  v23(v19, a1, v16);
  v24 = sub_20C5A01BC();
  v25 = sub_20C5A08AC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v59 = v9;
    v27 = v26;
    v57 = swift_slowAlloc();
    *&v72[0] = v57;
    *v27 = 136446210;
    sub_20C477EA0(&qword_27C7C5A28, MEMORY[0x277D50F90]);
    v28 = sub_20C5A0E6C();
    v58 = v2;
    v29 = v8;
    v31 = v30;
    (*(v17 + 8))(v19, v16);
    v32 = sub_20C479640(v28, v31, v72);
    v8 = v29;
    v2 = v58;

    *(v27 + 4) = v32;
    _os_log_impl(&dword_20C472000, v24, v25, "Playstream occured: %{public}s", v27, 0xCu);
    v33 = v57;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x20F2FFF90](v33, -1, -1);
    v34 = v27;
    v9 = v59;
    MEMORY[0x20F2FFF90](v34, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  (*(v60 + 8))(v22, v61);
  v35 = v65;
  sub_20C51A094(v62, v65);
  sub_20C477580(v2 + 24, v72);
  v36 = swift_allocObject();
  sub_20C4780E8(v72, v36 + 16);
  v38 = v68;
  v37 = v69;
  v39 = v64;
  (*(v68 + 16))(v64, v35, v69);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v63 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v37);
  v43 = (v42 + v41);
  *v43 = sub_20C544184;
  v43[1] = v36;
  v44 = v70;
  sub_20C59EA9C();
  (*(v38 + 8))(v35, v37);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20C543DE8;
  *(v45 + 24) = 0;
  v46 = v67;
  (*(v9 + 16))(v67, v44, v8);
  v47 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v48 = (v66 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v9 + 32))(v49 + v47, v46, v8);
  v50 = (v49 + v48);
  *v50 = sub_20C4907C8;
  v50[1] = v45;
  v51 = v71;
  sub_20C59EA9C();
  v52 = *(v9 + 8);
  v52(v44, v8);
  v53 = sub_20C59EABC();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v53(sub_20C4907D4, v54);

  return (v52)(v51, v8);
}

uint64_t sub_20C5437FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v28 = a3;
  v4 = sub_20C59E18C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = v25;
  sub_20C59F1FC();
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20C5441DC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20C53EADC;
  *(v15 + 24) = v14;
  v17 = v26;
  v16 = v27;
  v18 = v24;
  (*(v7 + 16))(v26, v24, v27);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v17, v16);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20C53EAF8;
  v21[1] = v15;
  sub_20C59EA9C();
  return (*(v7 + 8))(v18, v16);
}

uint64_t sub_20C543B28(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_20C5A01CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  (*(v8 + 16))(v10, a1, v7);
  v15 = sub_20C5A01BC();
  v16 = sub_20C5A08AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v11;
    v20 = v19;
    v31 = v19;
    *v18 = 136446210;
    sub_20C477EA0(a3, v29);
    v21 = sub_20C5A0E6C();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = sub_20C479640(v21, v23, &v31);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_20C472000, v15, v16, "Recorded %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x20F2FFF90](v20, -1, -1);
    MEMORY[0x20F2FFF90](v18, -1, -1);

    return (*(v28 + 8))(v14, v27);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20C543E08(void *a1, const char *a2)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v9 = a1;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A089C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v2;
    v15 = v14;
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2FF3F0](v20[3], v20[4]);
    v18 = sub_20C479640(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20C472000, v10, v11, v20[0], v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MetricRouter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t sub_20C544020(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_20C59E26C();

  return sub_20C59EA9C();
}

uint64_t sub_20C5442CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C54433C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C59E26C() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0) - 8);
  return sub_20C519B4C(a1, *(v2 + v6), v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)), a2);
}

uint64_t objectdestroy_33Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20C5445C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20C5446A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5A38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A8BC0;
  strcpy((inited + 32), "accountState");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_20C5A00FC();
  *(inited + 48) = sub_20C5A07EC();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v2 = type metadata accessor for StreamingKeyFailureAnalyticsEvent();
  *(inited + 72) = sub_20C5A036C();
  *(inited + 80) = 0x6D6F44726F727265;
  *(inited + 88) = 0xEB000000006E6961;
  *(inited + 96) = sub_20C5A036C();
  strcpy((inited + 104), "onKeyRenewal");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x800000020C5ADA00;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 152) = 0xD00000000000001BLL;
  *(inited + 160) = 0x800000020C5ACD50;
  sub_20C59D48C();
  sub_20C5A058C();
  v3 = sub_20C5A036C();

  *(inited + 168) = v3;
  *(inited + 176) = 0x7245726576726573;
  *(inited + 184) = 0xEF65646F43726F72;
  sub_20C5A0E6C();
  v4 = sub_20C5A036C();

  *(inited + 192) = v4;
  v5 = sub_20C589A74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5A40);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_20C544954@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_20C59F87C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for StreamingKeyFailureAnalyticsEvent()
{
  result = qword_27C7C5A48;
  if (!qword_27C7C5A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C544A5C()
{
  sub_20C5A010C();
  if (v0 <= 0x3F)
  {
    sub_20C59D4CC();
    if (v1 <= 0x3F)
    {
      sub_20C544B14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C544B14()
{
  if (!qword_27C7C5A58)
  {
    v0 = sub_20C5A0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C5A58);
    }
  }
}

uint64_t static PictureInPictureStarted.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C544C00()
{
  v1 = [v0 nowPlayingInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C5A02BC();

  return v3;
}

void sub_20C544C70(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_20C5A02AC();
  }

  else
  {
    v2 = 0;
  }

  [v1 setNowPlayingInfo_];
}

void (*sub_20C544CF8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_20C544DB0(v2);
  return sub_20C544D68;
}

void sub_20C544D68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_20C544DB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 nowPlayingInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20C5A02BC();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_20C544E4C;
}

void sub_20C544E4C(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      v4 = sub_20C5A02AC();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setNowPlayingInfo_];
  }

  else if (v3)
  {
    v4 = sub_20C5A02AC();

    [a1[1] setNowPlayingInfo_];
  }

  else
  {
    v4 = 0;
    [a1[1] setNowPlayingInfo_];
  }
}

id (*sub_20C544F64(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 playbackState];
  return sub_20C544FB8;
}

id MediaPlayerPlaybackFailed.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t static MediaPlayerPlaybackFailed.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static ServiceSubscriptionCacheUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C545218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5478);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5368);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  sub_20C4FD77C(a1, &v22 - v12);
  v14 = sub_20C59E12C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20C477B50(v13, &qword_27C7C5368);
    v16 = 0;
  }

  else
  {
    v17 = sub_20C5458A0();
    (*(v15 + 8))(v13, v14);
    v16 = v17;
  }

  sub_20C4FD3A0(v10);
  v18 = sub_20C59DA3C();
  (*(*(v18 - 8) + 48))(v10, 1, v18);
  sub_20C477B50(v10, &qword_27C7C5478);
  sub_20C4FD4B4(a1, v7);
  v19 = sub_20C59DF9C();
  (*(*(v19 - 8) + 48))(v7, 1, v19);
  sub_20C477B50(v7, &qword_27C7C5470);
  sub_20C4FD890(a1, v4);
  v20 = sub_20C59DB5C();
  (*(*(v20 - 8) + 48))(v4, 1, v20);
  sub_20C477B50(v4, &qword_27C7C4660);
  return v16 & 1;
}

BOOL sub_20C54557C(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C59E4BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v28 = a1;
  v29 = a2;
  v30 = v2;
  v12 = sub_20C5A0F1C();
  v14 = v13;
  v15 = *(v6 + 104);
  v27 = *MEMORY[0x277D51F00];
  v26 = v15;
  v15(v11);
  v25 = sub_20C54579C();
  v16 = sub_20C5A0F1C();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v11, v5);
  if (v12 == v16 && v14 == v18)
  {
  }

  else
  {
    v21 = sub_20C5A0E9C();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = sub_20C5A0F0C();
  v26(v8, v27, v5);
  v23 = sub_20C5A0F0C();
  v19(v8, v5);
  return v22 == v23;
}

unint64_t sub_20C54579C()
{
  result = qword_27C7C5468;
  if (!qword_27C7C5468)
  {
    sub_20C59E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5468);
  }

  return result;
}

uint64_t sub_20C5457F4()
{
  v0 = sub_20C5A0F3C();
  if (*(v0 + 16) && (v1 = sub_20C4820C8(0xD000000000000011, 0x800000020C5ADA40), (v2 & 1) != 0))
  {
    sub_20C479AA8(*(v0 + 56) + 32 * v1, v5);

    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_20C5458A0()
{
  v1 = v0;
  v2 = sub_20C59E12C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277D50EC8])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  (*(v3 + 96))(v6, v2);
  v7 = *v6;
  if (*v6)
  {
    swift_getErrorValue();
    v8 = sub_20C5A0F1C();
    v10 = v9;
    if (v8 == sub_20C5A039C() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_20C5A0E9C();

      if ((v13 & 1) == 0)
      {

        return 0;
      }
    }

    swift_getErrorValue();
    v15 = sub_20C5A0F0C();

    if (v15 == -11879)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t WorkoutPlanArchiver.__allocating_init(catalogClient:workoutPlanClient:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_20C4780E8(a1, v4 + 16);
  sub_20C4780E8(a2, v4 + 56);
  return v4;
}

uint64_t WorkoutPlanArchiver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  return v0;
}

uint64_t WorkoutPlanArchiver.archive(workoutIdentifier:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_20C59E88C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_20C59D4CC();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_20C5A01CC();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = sub_20C59E4DC();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5768);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = sub_20C59D9CC();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C545E40, 0, 0);
}

uint64_t sub_20C545E40()
{
  v1 = v0[6];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_20C545F00;
  v5 = v0[30];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_20C545F00()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_20C546BAC;
  }

  else
  {
    v2 = sub_20C546014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C546014()
{
  (*(v0[27] + 32))(v0[31], v0[30], v0[26]);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_20C5460CC;
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[2];
  v5 = v0[3];

  return sub_20C547930(v3, v2, v4, v5);
}

uint64_t sub_20C5460CC()
{

  if (v0)
  {

    v1 = sub_20C546DE0;
  }

  else
  {
    v1 = sub_20C5461E4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20C5461E4()
{
  v71 = v0;
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20C477B50(v1, &qword_27C7C5768);
    v4 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[25], v1, v2);
    v4 = 0;
  }

  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[20];
  (*(v8 + 56))(v5, v4, 1, v7);
  sub_20C54A3C0(v5, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20C477B50(v0[23], &qword_27C7C5768);
    sub_20C59FDCC();

    v9 = sub_20C5A01BC();
    v10 = sub_20C5A08AC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[31];
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[25];
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    if (v11)
    {
      v67 = v0[25];
      v60 = v0[17];
      v20 = v0[4];
      v19 = v0[5];
      v64 = v0[31];
      v21 = swift_slowAlloc();
      v62 = v13;
      v22 = swift_slowAlloc();
      v70 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20C479640(v20, v19, &v70);
      _os_log_impl(&dword_20C472000, v9, v10, "Not archiving %s as part of a workout plan. No reference found.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x20F2FFF90](v22, -1, -1);
      MEMORY[0x20F2FFF90](v21, -1, -1);

      (*(v17 + 8))(v60, v18);
      sub_20C477B50(v67, &qword_27C7C5768);
      (*(v14 + 8))(v64, v62);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      sub_20C477B50(v15, &qword_27C7C5768);
      (*(v14 + 8))(v12, v13);
    }

    v47 = v0[1];

    return v47();
  }

  else
  {
    v23 = v0[31];
    v24 = v0[29];
    v25 = v0[26];
    v26 = v0[27];
    (*(v0[20] + 32))(v0[22], v0[23], v0[19]);
    sub_20C59FDCC();
    v27 = *(v26 + 16);
    v0[35] = v27;
    v0[36] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v24, v23, v25);

    v28 = sub_20C5A01BC();
    v29 = sub_20C5A08AC();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[29];
    v32 = v0[26];
    v33 = v0[27];
    v34 = v0[18];
    v35 = v0[13];
    v36 = v0[14];
    if (v30)
    {
      v63 = v29;
      v65 = v0[13];
      v68 = v0[18];
      v37 = v0[11];
      v38 = v0[12];
      v39 = v0[10];
      v58 = v0[4];
      v59 = v0[5];
      v56 = v0[26];
      v40 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      *v40 = 136315394;
      log = v28;
      sub_20C59D97C();
      sub_20C54A9A0(&unk_27C7C5520, 255, MEMORY[0x277CC95F0]);
      v41 = sub_20C5A0E6C();
      v43 = v42;
      (*(v37 + 8))(v38, v39);
      v44 = *(v33 + 8);
      v44(v31, v56);
      v45 = sub_20C479640(v41, v43, &v70);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20C479640(v58, v59, &v70);
      _os_log_impl(&dword_20C472000, log, v63, "Archiving Workout Plan: %s for session: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v61, -1, -1);
      MEMORY[0x20F2FFF90](v40, -1, -1);

      v46 = *(v36 + 8);
      v46(v68, v65);
    }

    else
    {

      v44 = *(v33 + 8);
      v44(v31, v32);
      v46 = *(v36 + 8);
      v46(v34, v35);
    }

    v0[37] = v46;
    v0[38] = v44;
    v50 = v0[21];
    v49 = v0[22];
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[6];
    v66 = v53[10];
    v69 = v53[11];
    __swift_project_boxed_opaque_existential_1(v53 + 7, v66);
    sub_20C59D97C();
    (*(v51 + 16))(v50, v49, v52);

    sub_20C59E87C();
    v54 = swift_task_alloc();
    v0[39] = v54;
    *v54 = v0;
    v54[1] = sub_20C5468C8;
    v55 = v0[9];

    return MEMORY[0x2821ADEA8](v55, v66, v69);
  }
}

uint64_t sub_20C5468C8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 320) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20C547490;
  }

  else
  {
    v5 = sub_20C546A38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C546A38()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[26];
  v4 = v0[25];
  (*(v0[20] + 8))(v0[22], v0[19]);
  sub_20C477B50(v4, &qword_27C7C5768);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20C546BAC()
{
  v1 = v0[33];
  sub_20C59FDCC();
  v2 = v1;
  v3 = sub_20C5A01BC();
  v4 = sub_20C5A089C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20C472000, v3, v4, "Error fetching current workout plan for archival: %@", v7, 0xCu);
    sub_20C477B50(v8, &qword_27C7C60F0);
    MEMORY[0x20F2FFF90](v8, -1, -1);
    MEMORY[0x20F2FFF90](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[14] + 8))(v0[16], v0[13]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_20C546DE0()
{
  v67 = v0;
  (*(v0[20] + 56))(v0[24], 1, 1, v0[19]);
  sub_20C477B50(v0[24], &qword_27C7C5768);
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_20C54A3C0(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20C477B50(v0[23], &qword_27C7C5768);
    sub_20C59FDCC();

    v5 = sub_20C5A01BC();
    v6 = sub_20C5A08AC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[31];
    v9 = v0[26];
    v10 = v0[27];
    v11 = v0[25];
    v12 = v0[17];
    v14 = v0[13];
    v13 = v0[14];
    if (v7)
    {
      v63 = v0[25];
      v56 = v0[17];
      v16 = v0[4];
      v15 = v0[5];
      v60 = v0[31];
      v17 = swift_slowAlloc();
      v58 = v9;
      v18 = swift_slowAlloc();
      v66 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20C479640(v16, v15, &v66);
      _os_log_impl(&dword_20C472000, v5, v6, "Not archiving %s as part of a workout plan. No reference found.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x20F2FFF90](v18, -1, -1);
      MEMORY[0x20F2FFF90](v17, -1, -1);

      (*(v13 + 8))(v56, v14);
      sub_20C477B50(v63, &qword_27C7C5768);
      (*(v10 + 8))(v60, v58);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      sub_20C477B50(v11, &qword_27C7C5768);
      (*(v10 + 8))(v8, v9);
    }

    v43 = v0[1];

    return v43();
  }

  else
  {
    v19 = v0[31];
    v20 = v0[29];
    v21 = v0[26];
    v22 = v0[27];
    (*(v0[20] + 32))(v0[22], v0[23], v0[19]);
    sub_20C59FDCC();
    v23 = *(v22 + 16);
    v0[35] = v23;
    v0[36] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v20, v19, v21);

    v24 = sub_20C5A01BC();
    v25 = sub_20C5A08AC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[29];
    v28 = v0[26];
    v29 = v0[27];
    v30 = v0[18];
    v31 = v0[13];
    v32 = v0[14];
    if (v26)
    {
      v59 = v25;
      v61 = v0[13];
      v64 = v0[18];
      v33 = v0[11];
      v34 = v0[12];
      v35 = v0[10];
      v54 = v0[4];
      v55 = v0[5];
      v52 = v0[26];
      v36 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v36 = 136315394;
      log = v24;
      sub_20C59D97C();
      sub_20C54A9A0(&unk_27C7C5520, 255, MEMORY[0x277CC95F0]);
      v37 = sub_20C5A0E6C();
      v39 = v38;
      (*(v33 + 8))(v34, v35);
      v40 = *(v29 + 8);
      v40(v27, v52);
      v41 = sub_20C479640(v37, v39, &v66);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_20C479640(v54, v55, &v66);
      _os_log_impl(&dword_20C472000, log, v59, "Archiving Workout Plan: %s for session: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v57, -1, -1);
      MEMORY[0x20F2FFF90](v36, -1, -1);

      v42 = *(v32 + 8);
      v42(v64, v61);
    }

    else
    {

      v40 = *(v29 + 8);
      v40(v27, v28);
      v42 = *(v32 + 8);
      v42(v30, v31);
    }

    v0[37] = v42;
    v0[38] = v40;
    v46 = v0[21];
    v45 = v0[22];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[6];
    v62 = v49[10];
    v65 = v49[11];
    __swift_project_boxed_opaque_existential_1(v49 + 7, v62);
    sub_20C59D97C();
    (*(v47 + 16))(v46, v45, v48);

    sub_20C59E87C();
    v50 = swift_task_alloc();
    v0[39] = v50;
    *v50 = v0;
    v50[1] = sub_20C5468C8;
    v51 = v0[9];

    return MEMORY[0x2821ADEA8](v51, v62, v65);
  }
}

uint64_t sub_20C547490()
{
  v45 = v0;
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[26];
  sub_20C59FDCC();
  v2(v4, v3, v5);

  v6 = v1;
  v7 = sub_20C5A01BC();
  LOBYTE(v4) = sub_20C5A089C();

  v38 = v4;
  v8 = os_log_type_enabled(v7, v4);
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[31];
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v43 = v0[22];
  v15 = v0[20];
  v41 = v0[40];
  v42 = v0[19];
  v39 = v0[13];
  v40 = v0[15];
  if (v8)
  {
    v28 = v0[26];
    v29 = v0[38];
    v17 = v0[11];
    v16 = v0[12];
    v36 = v0[37];
    v18 = v0[10];
    v33 = v0[5];
    v31 = v0[4];
    v37 = v0[25];
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v19 = 136315650;
    log = v7;
    sub_20C59D97C();
    sub_20C54A9A0(&unk_27C7C5520, 255, MEMORY[0x277CC95F0]);
    v20 = sub_20C5A0E6C();
    v35 = v11;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v29(v12, v28);
    v23 = sub_20C479640(v20, v22, &v44);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_20C479640(v31, v33, &v44);
    *(v19 + 22) = 2112;
    v24 = v41;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v25;
    *v32 = v25;
    _os_log_impl(&dword_20C472000, log, v38, "Failed to archive workout plan %s for session %s with error: %@", v19, 0x20u);
    sub_20C477B50(v32, &qword_27C7C60F0);
    MEMORY[0x20F2FFF90](v32, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v34, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    v36(v40, v39);
    (*(v15 + 8))(v43, v42);
    sub_20C477B50(v37, &qword_27C7C5768);
    v29(v35, v28);
  }

  else
  {

    v9(v12, v13);
    v10(v40, v39);
    (*(v15 + 8))(v43, v42);
    sub_20C477B50(v14, &qword_27C7C5768);
    v9(v11, v13);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_20C547930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_20C59D6AC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_20C59D9CC();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_20C59D46C();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5768);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = sub_20C59E4DC();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v10 = sub_20C59D4CC();
  v5[30] = v10;
  v5[31] = *(v10 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v11 = sub_20C5A01CC();
  v5[34] = v11;
  v5[35] = *(v11 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C547CA4, 0, 0);
}

uint64_t sub_20C547CA4()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[7];
  sub_20C59FDCC();
  sub_20C5A01AC();
  v5 = *(v3 + 8);
  v0[41] = v5;
  v0[42] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[10];
  v7 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v6);
  sub_20C59D97C();
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_20C547DF4;
  v9 = v0[33];
  v10 = v0[5];
  v11 = v0[6];

  return MEMORY[0x2821ADEC0](v9, v10, v11, v6, v7);
}

uint64_t sub_20C547DF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[44] = a1;
  v4[45] = v1;

  v5 = v3[33];
  v6 = v3[31];
  v7 = v3[30];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_20C549248;
  }

  else
  {
    v4[46] = v9;
    v4[47] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_20C547F7C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_20C547F7C()
{
  v49 = v0;
  v1 = v0[44];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;

  v7 = sub_20C54A5E8(sub_20C54A5C8, v6, v1);

  sub_20C549C58(v7, v4);

  v8 = *(v3 + 48);
  v0[48] = v8;
  v0[49] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v4, 1, v2) == 1)
  {
    v9 = v0[7];
    sub_20C477B50(v0[21], &qword_27C7C5768);
    v0[2] = v9;
    sub_20C59D44C();
    v10 = swift_task_alloc();
    v0[50] = v10;
    v11 = type metadata accessor for WorkoutPlanArchiver();
    v13 = sub_20C54A9A0(&qword_27C7C5A60, v12, type metadata accessor for WorkoutPlanArchiver);
    *v10 = v0;
    v10[1] = sub_20C5484A4;
    v14 = v0[18];
    v15 = v0[5];
    v16 = v0[6];
    v17 = v0[4];

    return MEMORY[0x2821AF798](v17, v15, v16, v14, v11, v13);
  }

  else
  {
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[21];

    v23 = *(v21 + 32);
    v23(v18, v22, v20);
    sub_20C59FDCC();
    (*(v21 + 16))(v19, v18, v20);
    v24 = sub_20C5A01BC();
    v46 = sub_20C5A088C();
    v25 = os_log_type_enabled(v24, v46);
    v26 = v0[41];
    v27 = v0[39];
    v47 = v0[34];
    v28 = v0[28];
    v30 = v0[22];
    v29 = v0[23];
    if (v25)
    {
      v45 = v0[39];
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v31 = 136315138;
      sub_20C54A9A0(&unk_27C7C5A68, 255, MEMORY[0x277D51FE0]);
      v43 = v26;
      v32 = v23;
      v33 = sub_20C5A0E6C();
      v35 = v34;
      (*(v29 + 8))(v28, v30);
      v36 = v33;
      v23 = v32;
      v37 = sub_20C479640(v36, v35, &v48);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_20C472000, v24, v46, "WorkoutPlanArchiver::queryWorkoutReference today reference found: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x20F2FFF90](v44, -1, -1);
      MEMORY[0x20F2FFF90](v31, -1, -1);

      v43(v45, v47);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      v26(v27, v47);
    }

    v38 = v0[22];
    v39 = v0[23];
    v40 = v0[3];
    v23(v40, v0[29], v38);
    (*(v39 + 56))(v40, 0, 1, v38);

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_20C5484A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v5 = v4[18];
    v6 = v4[14];
    v7 = v4[15];

    v8 = *(v7 + 8);
    v4[59] = v8;
    v8(v5, v6);
    v9 = sub_20C5493B8;
  }

  else
  {
    v10 = v4[18];
    v11 = v4[14];
    v12 = v4[15];
    v4[52] = a1;
    v13 = *(v12 + 8);
    v4[53] = v13;
    v13(v10, v11);
    v9 = sub_20C548618;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_20C548618()
{
  v100 = v0;
  v1 = v0[48];
  v2 = v0[22];
  v3 = v0[20];
  sub_20C549C58(v0[52], v3);

  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[53];
    v5 = v0[14];
    v92 = v0[48];
    v87 = v0[44];
    v89 = v0[22];
    v6 = v0[19];
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v85 = v0[4];
    sub_20C477B50(v0[20], &qword_27C7C5768);
    sub_20C59D65C();
    sub_20C59D44C();
    sub_20C59D64C();
    v97 = v4;
    v4(v8, v5);
    (*(v9 + 8))(v10, v11);
    v12 = swift_task_alloc();
    *(v12 + 16) = v85;
    *(v12 + 24) = v7;
    v13 = sub_20C54A5E8(sub_20C54A980, v12, v87);

    sub_20C549C58(v13, v6);

    if (v92(v6, 1, v89) == 1)
    {
      sub_20C477B50(v0[19], &qword_27C7C5768);
      sub_20C59FDCC();

      v14 = sub_20C5A01BC();
      v15 = sub_20C5A088C();

      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[41];
      v18 = v0[36];
      v19 = v0[34];
      if (v16)
      {
        v21 = v0[5];
        v20 = v0[6];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v99[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_20C479640(v21, v20, v99);
        _os_log_impl(&dword_20C472000, v14, v15, "WorkoutPlanArchiver::queryWorkoutReference no reference found for: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x20F2FFF90](v23, -1, -1);
        MEMORY[0x20F2FFF90](v22, -1, -1);

        v17(v18, v19);
      }

      else
      {

        v17(v18, v19);
      }

      v74 = v0[17];
      v75 = v0[14];
      (*(v0[23] + 56))(v0[3], 1, 1, v0[22]);
      v76 = v74;
      v77 = v75;
    }

    else
    {
      v47 = v0[24];
      v46 = v0[25];
      v48 = v0[22];
      v49 = v0[23];
      v50 = *(v49 + 32);
      v50(v46, v0[19], v48);
      sub_20C59FDCC();
      (*(v49 + 16))(v47, v46, v48);
      v51 = sub_20C5A01BC();
      v94 = sub_20C5A088C();
      v52 = os_log_type_enabled(v51, v94);
      v53 = v0[41];
      v54 = v0[37];
      v95 = v0[34];
      v56 = v0[23];
      v55 = v0[24];
      v57 = v0[22];
      if (v52)
      {
        v88 = v0[41];
        v58 = swift_slowAlloc();
        v91 = v50;
        v59 = swift_slowAlloc();
        v99[0] = v59;
        *v58 = 136315138;
        sub_20C54A9A0(&unk_27C7C5A68, 255, MEMORY[0x277D51FE0]);
        v86 = v54;
        v60 = sub_20C5A0E6C();
        v62 = v61;
        (*(v56 + 8))(v55, v57);
        v63 = sub_20C479640(v60, v62, v99);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_20C472000, v51, v94, "WorkoutPlanArchiver::queryWorkoutReference missed reference found: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v64 = v59;
        v50 = v91;
        MEMORY[0x20F2FFF90](v64, -1, -1);
        MEMORY[0x20F2FFF90](v58, -1, -1);

        v88(v86, v95);
      }

      else
      {

        (*(v56 + 8))(v55, v57);
        v53(v54, v95);
      }

      v78 = v0[22];
      v79 = v0[23];
      v80 = v0[17];
      v81 = v0[14];
      v82 = v0[3];
      v50(v82, v0[25], v78);
      (*(v79 + 56))(v82, 0, 1, v78);
      v76 = v80;
      v77 = v81;
    }

    v97(v76, v77);

    v83 = v0[1];

    return v83();
  }

  else
  {
    v25 = v0[26];
    v24 = v0[27];
    v26 = v0[22];
    v27 = v0[23];
    v28 = v0[20];

    v29 = *(v27 + 32);
    v0[54] = v29;
    v0[55] = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v24, v28, v26);
    sub_20C59FDCC();
    (*(v27 + 16))(v25, v24, v26);
    v30 = sub_20C5A01BC();
    v31 = sub_20C5A088C();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[41];
    v34 = v0[38];
    v35 = v0[34];
    v36 = v0[26];
    v38 = v0[22];
    v37 = v0[23];
    if (v32)
    {
      v98 = v0[41];
      v39 = swift_slowAlloc();
      v96 = v34;
      v40 = swift_slowAlloc();
      v99[0] = v40;
      *v39 = 136315138;
      sub_20C54A9A0(&unk_27C7C5A68, 255, MEMORY[0x277D51FE0]);
      v93 = v35;
      v41 = sub_20C5A0E6C();
      v43 = v42;
      v90 = v31;
      v44 = *(v37 + 8);
      v44(v36, v38);
      v45 = sub_20C479640(v41, v43, v99);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_20C472000, v30, v90, "WorkoutPlanArchiver::queryWorkoutReference queryExistingModalityOnDate found: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x20F2FFF90](v40, -1, -1);
      MEMORY[0x20F2FFF90](v39, -1, -1);

      v98(v96, v93);
    }

    else
    {

      v44 = *(v37 + 8);
      v44(v36, v38);
      v33(v34, v35);
    }

    v0[56] = v44;
    v65 = v0[7];
    v66 = v65[10];
    v67 = v65[11];
    __swift_project_boxed_opaque_existential_1(v65 + 7, v66);
    sub_20C59D97C();
    v68 = swift_task_alloc();
    v0[57] = v68;
    *v68 = v0;
    v68[1] = sub_20C548F10;
    v69 = v0[32];
    v70 = v0[27];
    v71 = v0[13];
    v72 = v0[5];
    v73 = v0[6];

    return MEMORY[0x2821ADF10](v71, v69, v70, v72, v73, v66, v67);
  }
}

uint64_t sub_20C548F10()
{
  v2 = *v1;
  v2[58] = v0;

  v3 = v2[46];
  v4 = v2[32];
  v5 = v2[30];
  if (v0)
  {
    v3(v4, v5);
    v6 = sub_20C5499E0;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];
    v3(v4, v5);
    (*(v8 + 8))(v7, v9);
    v6 = sub_20C5490A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20C5490A4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 24);
  (*(v0 + 432))(v3, *(v0 + 216), v1);
  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20C549248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C5493B8()
{
  v62 = v0;
  (*(v0[23] + 56))(v0[20], 1, 1, v0[22]);
  v1 = v0[59];
  v2 = v0[14];
  v57 = v0[48];
  v55 = v0[22];
  v52 = v0[44];
  v53 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[4];
  sub_20C477B50(v0[20], &qword_27C7C5768);
  sub_20C59D65C();
  sub_20C59D44C();
  sub_20C59D64C();
  v60 = v1;
  v1(v4, v2);
  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = sub_20C54A5E8(sub_20C54A980, v9, v52);

  sub_20C549C58(v10, v53);

  if (v57(v53, 1, v55) == 1)
  {
    sub_20C477B50(v0[19], &qword_27C7C5768);
    sub_20C59FDCC();

    v11 = sub_20C5A01BC();
    v12 = sub_20C5A088C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[41];
    v15 = v0[36];
    v16 = v0[34];
    if (v13)
    {
      v18 = v0[5];
      v17 = v0[6];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v61[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_20C479640(v18, v17, v61);
      _os_log_impl(&dword_20C472000, v11, v12, "WorkoutPlanArchiver::queryWorkoutReference no reference found for: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x20F2FFF90](v20, -1, -1);
      MEMORY[0x20F2FFF90](v19, -1, -1);

      v14(v15, v16);
    }

    else
    {

      v14(v15, v16);
    }

    v40 = v0[17];
    v41 = v0[14];
    (*(v0[23] + 56))(v0[3], 1, 1, v0[22]);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[22];
    v24 = v0[23];
    v25 = *(v24 + 32);
    v25(v21, v0[19], v23);
    sub_20C59FDCC();
    (*(v24 + 16))(v22, v21, v23);
    v26 = sub_20C5A01BC();
    v58 = sub_20C5A088C();
    v27 = os_log_type_enabled(v26, v58);
    v28 = v0[41];
    v29 = v0[37];
    v59 = v0[34];
    v31 = v0[23];
    v30 = v0[24];
    v32 = v0[22];
    if (v27)
    {
      v54 = v0[41];
      v33 = swift_slowAlloc();
      v56 = v25;
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136315138;
      sub_20C54A9A0(&unk_27C7C5A68, 255, MEMORY[0x277D51FE0]);
      v51 = v29;
      v35 = sub_20C5A0E6C();
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = sub_20C479640(v35, v37, v61);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_20C472000, v26, v58, "WorkoutPlanArchiver::queryWorkoutReference missed reference found: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v39 = v34;
      v25 = v56;
      MEMORY[0x20F2FFF90](v39, -1, -1);
      MEMORY[0x20F2FFF90](v33, -1, -1);

      v54(v51, v59);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      v28(v29, v59);
    }

    v44 = v0[22];
    v45 = v0[23];
    v46 = v0[17];
    v47 = v0[14];
    v48 = v0[3];
    v25(v48, v0[25], v44);
    (*(v45 + 56))(v48, 0, 1, v44);
    v42 = v46;
    v43 = v47;
  }

  v60(v42, v43);

  v49 = v0[1];

  return v49();
}

uint64_t sub_20C5499E0()
{
  (*(v0 + 448))(*(v0 + 216), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C549B6C()
{
  v0 = sub_20C59E32C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59E4CC();
  v4 = sub_20C59D9AC();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_20C549C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_20C59E4DC();
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v40 - v15;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  if (v19)
  {
    v40 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v13[9];
    v27 = *(a1 + 48) + v26 * v21;
    v28 = v13[2];
    v41 = v13;
    v42 = v28;
    v43 = v13 + 2;
    v44 = v26;
    (v28)(v11, v27, v4, v14);
    v30 = v41 + 4;
    v29 = v41[4];
    v29(v47, v11, v4);
    v46 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v32 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v32 >= v23)
      {

        v38 = v40;
        v29(v40, v47, v4);
        return (v41[7])(v38, 0, 1, v4);
      }

      v22 = *(v16 + 8 * v32);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v34 = v45;
          v42(v45, *(v46 + 48) + (v33 | (v32 << 6)) * v44, v4);
          v29(v8, v34, v4);
          sub_20C54A9A0(&qword_27C7C5798, 255, MEMORY[0x277D51FE0]);
          v35 = v47;
          v36 = sub_20C5A031C();
          v37 = *(v30 - 3);
          if (v36)
          {
            v37(v35, v4);
            result = (v29)(v35, v8, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v37)(v8, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v32 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 64 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v40 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v39 = v13[7];

    return v39(a2, 1, 1, v4, v14);
  }

  return result;
}

uint64_t sub_20C54A040()
{
  v0 = sub_20C59E32C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C59D46C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59E4CC();
  sub_20C59D99C();
  (*(v1 + 8))(v3, v0);
  v8 = sub_20C59D42C();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_20C54A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20C47FCF0;

  return WorkoutPlanArchiver.archive(workoutIdentifier:sessionIdentifier:)(a1, a2, a3, a4);
}

uint64_t sub_20C54A2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_20C493624;

  return MEMORY[0x2821AF798](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_20C54A3C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of WorkoutPlanArchiverProtocol.archive(workoutIdentifier:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_20C47FCF0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_20C54A5E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v7 = sub_20C59E4DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v36 = v12;
    v42 = v11;
    v43 = v9;
    v47 = v4;
    v38 = &v35;
    MEMORY[0x28223BE20](v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v8 + 16;
    v41 = (v8 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + *(v8 + 72) * v12;
      v4 = v8;
      v24 = *(v8 + 16);
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v8 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return sub_20C5563A4(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return sub_20C5563A4(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = sub_20C54A9E8(v33, v12, a3, v44, a2);

  result = MEMORY[0x20F2FFF90](v33, -1, -1);
  if (!v4)
  {
    return v34;
  }

  return result;
}

uint64_t sub_20C54A9A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_20C54A9E8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20C5922D4(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t static MediaPlayerElapsedTimeChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id AMSProcessInfo.withTreatmentNamespace(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_20C5A036C();
  }

  else
  {
    v2 = 0;
  }

  [v4 setTreatmentNamespace_];

  return v4;
}

uint64_t sub_20C54AB7C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_20C5A080C();
  if (!v19)
  {
    return sub_20C5A066C();
  }

  v41 = v19;
  v45 = sub_20C5A0CEC();
  v32 = sub_20C5A0CFC();
  sub_20C5A0CAC();
  result = sub_20C5A07FC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_20C5A082C();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_20C5A0CDC();
      result = sub_20C5A081C();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20C54AF9C()
{
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  sub_20C4FACE0(*(v0 + 40), *(v0 + 48));
  return sub_20C5A0FFC();
}

uint64_t sub_20C54AFE8()
{
  sub_20C5A0B8C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_20C4FACE0(v1, v2);
}

uint64_t sub_20C54B024()
{
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  sub_20C4FACE0(*(v0 + 40), *(v0 + 48));
  return sub_20C5A0FFC();
}

BOOL sub_20C54B06C(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F2FF020]() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

uint64_t sub_20C54B0B8()
{
  sub_20C59F34C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return v0;
}

uint64_t sub_20C54B14C()
{
  sub_20C54B0B8();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_20C54B1A4(uint64_t *a1, int a2)
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

uint64_t sub_20C54B1EC(uint64_t result, int a2, int a3)
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

uint64_t sub_20C54B23C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20C54B284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C54B2E4()
{
  result = qword_27C7C5A78;
  if (!qword_27C7C5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5A78);
  }

  return result;
}

uint64_t sub_20C54B338(double a1)
{
  swift_beginAccess();

  v3 = sub_20C5572A4(v2, a1);

  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = MEMORY[0x277D84F90];
    sub_20C4C484C(0, v4, 0);
    v5 = v33;
    v6 = v3 + 64;
    result = sub_20C5A0AFC();
    v8 = result;
    v9 = 0;
    v26 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 36);
      result = sub_20C494788(*(v3 + 48) + 56 * v8, v27);
      v29 = v27[0];
      v30 = v27[1];
      v31 = v27[2];
      v32 = v28;
      v33 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_20C4C484C((v13 > 1), v14 + 1, 1);
        v5 = v33;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 56 * v14;
      v16 = v29;
      v17 = v30;
      v18 = v31;
      *(v15 + 80) = v32;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 32) = v16;
      v10 = 1 << *(v3 + 32);
      if (v8 >= v10)
      {
        goto LABEL_24;
      }

      v19 = *(v6 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v12 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v3 + 72 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_20C558468(v8, v12, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_20C558468(v8, v12, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v26)
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_20C54B5E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(*(v1 + 80) + 16))
  {

    sub_20C495CEC(a1);
    v10 = v9;

    if (v10)
    {
      sub_20C59FE5C();
      sub_20C494788(a1, v27);
      v11 = sub_20C5A01BC();
      v12 = sub_20C5A08AC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25[0] = v24;
        *v13 = 136446210;
        sub_20C494788(v27, v26);
        v14 = sub_20C5A041C();
        v16 = v15;
        sub_20C496894(v27);
        v17 = sub_20C479640(v14, v16, v25);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_20C472000, v11, v12, "Entering %{public}s", v13, 0xCu);
        v18 = v24;
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x20F2FFF90](v18, -1, -1);
        MEMORY[0x20F2FFF90](v13, -1, -1);
      }

      else
      {

        sub_20C496894(v27);
      }

      (*(v5 + 8))(v7, v4);
      sub_20C494788(a1, v26);
      swift_beginAccess();
      sub_20C54F88C(v27, v26);
      swift_endAccess();
      sub_20C496894(v27);
      swift_beginAccess();
      v19 = *(v2 + 80);
      if (*(v19 + 16) && (v20 = sub_20C495CEC(a1), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 32 * v20);
        swift_retain_n();

        swift_endAccess();
        v23 = sub_20C55835C(v22);
        v22(v23);
      }

      else
      {
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_20C54B8DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = swift_beginAccess();
  if (*(*(v1 + 80) + 16))
  {

    sub_20C495CEC(a1);
    v10 = v9;

    if (v10)
    {
      sub_20C59FE5C();
      sub_20C494788(a1, v29);
      v11 = sub_20C5A01BC();
      v12 = sub_20C5A08AC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v13 = 136446210;
        sub_20C494788(v29, v27);
        v14 = sub_20C5A041C();
        v16 = v15;
        sub_20C496894(v29);
        v17 = sub_20C479640(v14, v16, &v28);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_20C472000, v11, v12, "Exiting %{public}s", v13, 0xCu);
        v18 = v26;
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x20F2FFF90](v18, -1, -1);
        MEMORY[0x20F2FFF90](v13, -1, -1);
      }

      else
      {

        sub_20C496894(v29);
      }

      (*(v5 + 8))(v7, v4);
      swift_beginAccess();
      sub_20C555754(a1, v29);
      swift_endAccess();
      sub_20C477B50(v29, &qword_27C7C5AA0);
      swift_beginAccess();
      v19 = *(v2 + 80);
      if (*(v19 + 16) && (v20 = sub_20C495CEC(a1), (v21 & 1) != 0))
      {
        v22 = (*(v19 + 56) + 32 * v20);
        v23 = *v22;
        v24 = v22[2];

        swift_retain_n();
        swift_endAccess();
        v25 = sub_20C55835C(v23);
        v24(v25);
      }

      else
      {
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_20C54BBE0(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 40) - a2 > 0.0)
  {
    v10 = *(a1 + 40) - a2;
  }

  else
  {
    v10 = 0.0;
  }

  sub_20C59FE5C();
  sub_20C494788(a1, v29);
  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315394;
    sub_20C494788(v29, v27);
    v16 = sub_20C5A041C();
    v18 = v17;
    sub_20C496894(v29);
    v19 = sub_20C479640(v16, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_20C472000, v11, v12, "Scheduling %s entry in %fs", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v14, -1, -1);

    (*(v7 + 8))(v9, v26);
  }

  else
  {

    sub_20C496894(v29);
    (*(v7 + 8))(v9, v6);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  sub_20C479154(0, &qword_2810F3D90);
  v20 = sub_20C5A08EC();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_20C494788(a1, v29);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = v29[1];
  *(v22 + 24) = v29[0];
  *(v22 + 40) = v23;
  *(v22 + 56) = v29[2];
  *(v22 + 72) = v30;

  v24 = sub_20C59F9EC();

  return v24;
}

uint64_t sub_20C54BF00(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 48) - a2 > 0.0)
  {
    v10 = *(a1 + 48) - a2;
  }

  else
  {
    v10 = 0.0;
  }

  sub_20C59FE5C();
  sub_20C494788(a1, v29);
  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315394;
    sub_20C494788(v29, v27);
    v16 = sub_20C5A041C();
    v18 = v17;
    sub_20C496894(v29);
    v19 = sub_20C479640(v16, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&dword_20C472000, v11, v12, "Scheduling %s exit in %fs", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v14, -1, -1);

    (*(v7 + 8))(v9, v26);
  }

  else
  {

    sub_20C496894(v29);
    (*(v7 + 8))(v9, v6);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  sub_20C479154(0, &qword_2810F3D90);
  v20 = sub_20C5A08EC();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_20C494788(a1, v29);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = v29[1];
  *(v22 + 24) = v29[0];
  *(v22 + 40) = v23;
  *(v22 + 56) = v29[2];
  *(v22 + 72) = v30;

  v24 = sub_20C59F9EC();

  return v24;
}

uint64_t sub_20C54C220()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    MEMORY[0x28223BE20](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AB8);
    sub_20C59F34C();
  }

  return result;
}

uint64_t sub_20C54C2FC@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    a2(a1);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_20C54C390(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_20C558818(v2, a1);

  swift_weakInit();
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);

  result = swift_beginAccess();
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_20C494788(*(v3 + 48) + 56 * v11, v16);
    v12 = *(v3 + 56) + 32 * v11;
    v13 = *(v12 + 24);
    v15 = *(v12 + 8);
    v17 = *v12;
    v18 = v15;
    v19 = v13;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      sub_20C54B8DC(v16);
    }

    v6 &= v6 - 1;
    result = sub_20C477B50(v16, &qword_27C7C5AD8);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      swift_weakDestroy();
      *(a1 + 80) = MEMORY[0x277D84F98];
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C54C57C()
{
  sub_20C58929C(MEMORY[0x277D84F90]);
  sub_20C5A07DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AE0);
  swift_getWitnessTable();
  sub_20C5A05BC();
  sub_20C59F34C();
}

uint64_t sub_20C54C690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a1;
  v36 = a6;
  v32 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_20C5A0D8C();
  v35 = a5;
  v14 = *(a5 + 8);
  v31 = a2;
  v38 = v14(a4, a5);
  v39 = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v30 = *(v9 + 16);
  v30(v13, a2, a4);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v20 = v35;
  v19 = v36;
  *(v18 + 2) = a4;
  *(v18 + 3) = v20;
  *(v18 + 4) = v19;
  *(v18 + 5) = v16;
  v29 = *(v9 + 32);
  v29(&v18[v17], v13, a4);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v33;
  v30(v33, v31, a4);
  v23 = swift_allocObject();
  v25 = v35;
  v24 = v36;
  *(v23 + 2) = a4;
  *(v23 + 3) = v25;
  *(v23 + 4) = v24;
  *(v23 + 5) = v21;
  v29(&v23[v17], v22, a4);
  v26 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v26;
  sub_20C49418C(sub_20C558E10, v18, sub_20C558F0C, v23, v37, isUniquelyReferenced_nonNull_native);
  *v26 = v40;
  return sub_20C496894(v37);
}

uint64_t sub_20C54C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v26 = a2;
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18(0, v16, v17, v13);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v25 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 24);
    v25[0] = a8;
    v25[1] = v24;
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v12 + 16))(v15, v26, a3);
    a7(v15, a3, a4);
    swift_getWitnessTable();
    sub_20C59F5FC();
    swift_unknownObjectRelease();
    return (*(v20 + 8))(v22, v19);
  }

  return result;
}

uint64_t sub_20C54CB4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 80);
  *(a1 + 80) = 0x8000000000000000;
  sub_20C558AA8(a2, sub_20C54F1B0, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    *(a1 + 80) = v7;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_20C54CC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v62[0] = a1;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v6 = sub_20C5A07DC();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_20C54AB7C(sub_20C5589FC, v57, v6, &type metadata for PlaybackTimelineRegionMonitor.Region, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  swift_beginAccess();
  v10 = *(a2 + 80);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v54 = v9 + 32;
  v55 = v9;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (2)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 < v14)
      {
        v13 = *(v10 + 64 + 8 * v18);
        ++v16;
        if (!v13)
        {
          continue;
        }

        v16 = v18;
        while (1)
        {
LABEL_10:
          while (1)
          {
            v19 = __clz(__rbit64(v13));
            v13 &= v13 - 1;
            sub_20C494788(*(v10 + 48) + 56 * (v19 | (v16 << 6)), v62);
            v20 = *(v55 + 16);
            if (v20)
            {
              break;
            }

LABEL_5:
            result = sub_20C496894(v62);
            if (!v13)
            {
              goto LABEL_6;
            }
          }

          v21 = v54;
          while (1)
          {
            sub_20C494788(v21, &v66);
            if (MEMORY[0x20F2FF020](&v66, v62))
            {
              break;
            }

            sub_20C496894(&v66);
LABEL_13:
            v21 += 56;
            if (!--v20)
            {
              goto LABEL_5;
            }
          }

          v22 = *(&v68 + 1);
          v23 = v69;
          v24 = *(&v63 + 1);
          v25 = v64;
          sub_20C496894(&v66);
          if (v22 != v24 || v23 != v25)
          {
            goto LABEL_13;
          }

          v66 = v62[0];
          v67 = v62[1];
          v68 = v63;
          v69 = v64;
          result = swift_isUniquelyReferenced_nonNull_native();
          v65 = v17;
          if ((result & 1) == 0)
          {
            result = sub_20C4C484C(0, *(v17 + 16) + 1, 1);
            v17 = v65;
          }

          v27 = v17;
          v28 = *(v17 + 16);
          v29 = *(v27 + 24);
          if (v28 >= v29 >> 1)
          {
            result = sub_20C4C484C((v29 > 1), v28 + 1, 1);
            v27 = v65;
          }

          *(v27 + 16) = v28 + 1;
          v30 = v27 + 56 * v28;
          v31 = v66;
          v32 = v67;
          v33 = v68;
          *(v30 + 80) = v69;
          *(v30 + 48) = v32;
          *(v30 + 64) = v33;
          *(v30 + 32) = v31;
          v17 = v27;
          if (!v13)
          {
            goto LABEL_6;
          }
        }
      }

      v34 = *(v17 + 16);
      if (!v34)
      {
      }

      v56 = v17 + 32;
      result = swift_beginAccess();
      v35 = 0;
      while (v35 < *(v17 + 16))
      {
        sub_20C494788(v56 + 56 * v35, &v66);
        v36 = *(a2 + 88);
        if (*(v36 + 16))
        {
          v37 = v17;
          sub_20C5A0FBC();

          sub_20C5A0B8C();
          v38 = *(&v68 + 1);
          v39 = v69;
          if (*(&v68 + 1) == 0.0)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = *(&v68 + 1);
          }

          MEMORY[0x20F2FF490](*&v40);
          if (v39 == 0.0)
          {
            v41 = 0.0;
          }

          else
          {
            v41 = v39;
          }

          MEMORY[0x20F2FF490](*&v41);
          v42 = sub_20C5A0FFC();
          v43 = -1 << *(v36 + 32);
          v44 = v42 & ~v43;
          if ((*(v36 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            do
            {
              sub_20C494788(*(v36 + 48) + 56 * v44, v62);
              if (MEMORY[0x20F2FF020](v62, &v66))
              {
                v46 = *(&v63 + 1);
                v47 = v64;
                sub_20C496894(v62);
                if (v46 == v38 && v47 == v39)
                {

                  sub_20C54B8DC(&v66);
                  v17 = v37;
                  goto LABEL_30;
                }
              }

              else
              {
                sub_20C496894(v62);
              }

              v44 = (v44 + 1) & v45;
            }

            while (((*(v36 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
          }

          v17 = v37;
        }

        swift_beginAccess();
        v49 = sub_20C495CEC(&v66);
        if (v50)
        {
          v51 = v49;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = *(a2 + 80);
          v61 = v53;
          *(a2 + 80) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_20C4BBA30();
            v53 = v61;
          }

          sub_20C496894(*(v53 + 48) + 56 * v51);

          sub_20C54EE08(v51, v53);
          *(a2 + 80) = v53;
        }

        swift_endAccess();
LABEL_30:
        ++v35;
        result = sub_20C496894(&v66);
        if (v35 == v34)
        {
        }
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C54D178(void *a1)
{
  swift_beginAccess();
  a1[11] = MEMORY[0x277D84FA0];

  v2 = a1[12];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_20C5A0B3C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2FF0E0](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        swift_unknownObjectRetain();
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
      sub_20C59F9FC();
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v5 != v3);
  }

  a1[12] = MEMORY[0x277D84F90];
}

uint64_t sub_20C54D2EC(char *a1, uint64_t a2)
{
  v121 = a2;
  v126 = a1;
  v119 = sub_20C59ECFC();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119 - 8);
  v115 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v109 - v5;
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v116 = v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = v109 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v109 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v109 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v109 - v19;
  sub_20C59FE5C();
  sub_20C5A01AC();
  v117 = *(v8 + 8);
  v123 = v8 + 8;
  v117(v20, v7);
  v21 = *(a1 + 12);
  v124 = v7;
  v112 = v14;
  v114 = v17;
  v113 = v6;
  if (v21 >> 62)
  {
LABEL_67:
    v22 = sub_20C5A0B3C();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = 0;
    *&v125 = v21 & 0xC000000000000001;
    do
    {
      if (v125)
      {
        MEMORY[0x20F2FF0E0](v23, v21);
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_67;
        }

        swift_unknownObjectRetain();
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_12;
        }
      }

      __swift_project_boxed_opaque_existential_1(v126 + 4, *(v126 + 7));
      sub_20C59F9FC();
      swift_unknownObjectRelease();
      ++v23;
    }

    while (v24 != v22);
  }

  v25 = v126;
  *(v126 + 12) = MEMORY[0x277D84F90];

  v26 = v121;
  v27 = sub_20C59ECDC();
  LODWORD(v131[0]) = v27;
  BYTE4(v131[0]) = BYTE4(v27) & 1;
  v129 = 0;
  v130 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  result = sub_20C59DA6C();
  if ((result & 1) == 0)
  {
    return result;
  }

  v29 = v114;
  sub_20C59FE5C();
  v30 = v118;
  v31 = v118 + 16;
  v32 = *(v118 + 16);
  v33 = v113;
  v34 = v119;
  v32(v113, v26, v119);
  v35 = sub_20C5A01BC();
  LODWORD(v125) = sub_20C5A08AC();
  v36 = os_log_type_enabled(v35, v125);
  v111 = v31;
  v110 = v32;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v131[0] = v38;
    *v37 = 136446210;
    sub_20C558FAC(&qword_27C7C5A90, MEMORY[0x277D53C58]);
    v39 = sub_20C5A0E6C();
    v41 = v40;
    v113 = *(v30 + 8);
    v113(v33, v34);
    v42 = sub_20C479640(v39, v41, v131);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_20C472000, v35, v125, "[PlaybackTimelineRegionMonitor] Setting up timeline timers for %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x20F2FFF90](v38, -1, -1);
    v43 = v37;
    v25 = v126;
    MEMORY[0x20F2FFF90](v43, -1, -1);
  }

  else
  {

    v113 = *(v30 + 8);
    v113(v33, v34);
  }

  v44 = v117;
  v117(v29, v124);
  v45 = v122;
  sub_20C59EC7C();
  v47 = v46;
  v48 = sub_20C54B338(v46);
  v49 = sub_20C55827C(v48);

  swift_beginAccess();
  v50 = *(v25 + 11);
  if (*(v49 + 16) <= *(v50 + 16) >> 3)
  {
    v131[0] = *(v25 + 11);

    sub_20C5541E0(v49);
    v51 = v131[0];
  }

  else
  {

    v51 = sub_20C554D6C(v49, v50);
  }

  v52 = *(v51 + 2);
  v53 = MEMORY[0x277D84F90];
  v114 = v51;
  if (v52)
  {
    v53 = sub_20C4AB66C(v52, 0);
    v54 = sub_20C4AEADC(v131, (v53 + 32), v52, v51);
    v55 = v131[1];
    v56 = v131[2];
    v57 = v131[3];
    v58 = v131[4];

    sub_20C483B94();
    if (v54 != v52)
    {
      __break(1u);
      goto LABEL_69;
    }

    v25 = v126;
    v45 = v122;
  }

  v109[2] = v49;
  v131[0] = v53;
  v59 = v120;
  sub_20C552890(v131, sub_20C5532D0, sub_20C552B34);
  if (v59)
  {
    v108 = v59;
LABEL_72:

    __break(1u);
    return result;
  }

  v120 = 0;
  v60 = *(v131[0] + 2);
  if (v60)
  {
    v109[1] = v131[0];
    v61 = v131[0] + 32;
    swift_beginAccess();
    *&v62 = 136446210;
    v125 = v62;
    do
    {
      sub_20C494788(v61, v131);
      if (*(*(v25 + 10) + 16))
      {

        sub_20C495CEC(v131);
        v64 = v63;

        if (v64)
        {
          sub_20C59FE5C();
          sub_20C494788(v131, &v129);
          v65 = sub_20C5A01BC();
          v66 = sub_20C5A08AC();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v128 = v68;
            *v67 = v125;
            sub_20C494788(&v129, v127);
            v69 = sub_20C5A041C();
            v71 = v70;
            sub_20C496894(&v129);
            v72 = sub_20C479640(v69, v71, &v128);
            v45 = v122;

            *(v67 + 4) = v72;
            _os_log_impl(&dword_20C472000, v65, v66, "Exiting %{public}s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v68);
            MEMORY[0x20F2FFF90](v68, -1, -1);
            MEMORY[0x20F2FFF90](v67, -1, -1);
          }

          else
          {

            sub_20C496894(&v129);
          }

          v44(v45, v124);
          v25 = v126;
          swift_beginAccess();
          sub_20C555754(v131, &v129);
          swift_endAccess();
          sub_20C477B50(&v129, &qword_27C7C5AA0);
          swift_beginAccess();
          v73 = *(v25 + 10);
          if (*(v73 + 16) && (v74 = sub_20C495CEC(v131), (v75 & 1) != 0))
          {
            v76 = (*(v73 + 56) + 32 * v74);
            v77 = *v76;
            v78 = v76[2];

            swift_retain_n();
            swift_endAccess();
            v79 = sub_20C55835C(v77);
            v78(v79);
            v45 = v122;
          }

          else
          {
            swift_endAccess();
          }
        }
      }

      sub_20C496894(v131);
      v61 += 56;
      --v60;
    }

    while (v60);
  }

  swift_beginAccess();
  v80 = v114;
  sub_20C5541E0(v114);
  swift_endAccess();
  v81 = v112;
  sub_20C59FE5C();

  v82 = sub_20C5A01BC();
  v83 = sub_20C5A08AC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v131[0] = v85;
    *v84 = 134218242;
    *(v84 + 4) = *(v80 + 16);

    *(v84 + 12) = 2082;
    sub_20C558308();
    v86 = sub_20C5A07AC();
    v88 = sub_20C479640(v86, v87, v131);

    *(v84 + 14) = v88;
    _os_log_impl(&dword_20C472000, v82, v83, "[PlaybackTimelineRegionMonitor] Manually exiting %ld regions: %{public}s", v84, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x20F2FFF90](v85, -1, -1);
    MEMORY[0x20F2FFF90](v84, -1, -1);
  }

  else
  {
  }

  v44(v81, v124);
  swift_beginAccess();
  v89 = *(v25 + 10);
  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = sub_20C4AB66C(*(v89 + 16), 0);
    *&v125 = sub_20C4AE96C(v131, (v91 + 32), v90, v89);
    swift_bridgeObjectRetain_n();
    sub_20C483B94();
    if (v125 == v90)
    {
      goto LABEL_43;
    }

    __break(1u);
  }

  v91 = MEMORY[0x277D84F90];
LABEL_43:
  v131[0] = v91;
  v92 = v120;
  sub_20C552890(v131, sub_20C552C4C, sub_20C552A1C);
  v120 = v92;
  if (v92)
  {
    v108 = v120;
    goto LABEL_72;
  }

  v127[0] = MEMORY[0x277D84F90];
  v93 = *(v131[0] + 2);
  v57 = v126;
  if (v93)
  {
    v94 = v131[0] + 32;
    v95 = MEMORY[0x277D84F90];
    do
    {
      sub_20C494788(v94, v131);
      if (*&v131[5] < 0.0 || v132 < 0.0 || v47 >= v132)
      {
        sub_20C496894(v131);
      }

      else
      {
        v96 = *(v57 + 11);

        v97 = sub_20C510230(v131, v96);

        if ((v97 & 1) == 0)
        {
          sub_20C54BBE0(v131, v47);
          MEMORY[0x20F2FEAA0]();
          if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C5A065C();
          }

          sub_20C5A068C();
        }

        sub_20C54BF00(v131, v47);
        MEMORY[0x20F2FEAA0]();
        if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C5A065C();
        }

        sub_20C5A068C();
        sub_20C496894(v131);
        v95 = v127[0];
      }

      v94 += 56;
      --v93;
    }

    while (v93);
  }

  else
  {

    v95 = MEMORY[0x277D84F90];
  }

  *(v57 + 12) = v95;

  v98 = v116;
  sub_20C59FE5C();
  v99 = v115;
  v100 = v119;
  v110(v115, v121, v119);

  v55 = sub_20C5A01BC();
  LOBYTE(v49) = sub_20C5A08AC();
  if (os_log_type_enabled(v55, v49))
  {
    v56 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v131[0] = v58;
    *v56 = 134218754;
    if (!(v95 >> 62))
    {
      v101 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_63:

      *(v56 + 4) = v101;

      *(v56 + 6) = 2048;
      *(v56 + 14) = *(*(v57 + 10) + 16);

      *(v56 + 11) = 2082;
      sub_20C558FAC(&qword_27C7C5A90, MEMORY[0x277D53C58]);
      v102 = v115;
      v103 = v119;
      v104 = sub_20C5A0E6C();
      v106 = v105;
      v113(v102, v103);
      v107 = sub_20C479640(v104, v106, v131);

      *(v56 + 3) = v107;
      *(v56 + 16) = 2048;
      *(v56 + 34) = v47;
      _os_log_impl(&dword_20C472000, v55, v49, "Setting up %ld timeline timer(s) from %ld monitored regions for %{public}s at %fs", v56, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x20F2FFF90](v58, -1, -1);
      MEMORY[0x20F2FFF90](v56, -1, -1);

      return (v117)(v116, v124);
    }

LABEL_69:
    v101 = sub_20C5A0B3C();
    goto LABEL_63;
  }

  swift_bridgeObjectRelease_n();
  v113(v99, v100);
  return (v44)(v98, v124);
}

uint64_t sub_20C54E584(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    do
    {
      sub_20C5A0FBC();

      sub_20C5A049C();
      v11 = sub_20C5A0FFC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20C54E740(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    while (1)
    {
      sub_20C5A0FBC();

      sub_20C5A049C();
      v9 = sub_20C5A0FFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20C54E92C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    v33 = v7;
    v34 = v4;
    v32 = v8;
    while (1)
    {
      v9 = 88 * v6;
      v10 = *(a2 + 48) + 88 * v6;
      v11 = *(v10 + 16);
      v39 = *v10;
      v40 = v11;
      v13 = *(v10 + 48);
      v12 = *(v10 + 64);
      v14 = *(v10 + 32);
      v44 = *(v10 + 80);
      v42 = v13;
      v43 = v12;
      v41 = v14;
      sub_20C5A0FBC();
      v15 = v39;
      if (v44)
      {
        v35 = v43;
        v16 = *(&v40 + 1);
        MEMORY[0x20F2FF470](1);
        if (*&v15 == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = *&v15;
        }

        MEMORY[0x20F2FF490](*&v17);
        v37[2] = v41;
        v37[3] = v42;
        v37[4] = v43;
        v38 = v44;
        v37[0] = v39;
        v37[1] = v40;
        sub_20C4775E4(v37, v36, &unk_27C7C5B80);
        sub_20C5A049C();
        MEMORY[0x20F2FF470](*(v16 + 16));
        v18 = *(v16 + 16);
        if (v18)
        {
          v19 = v16 + 40;
          do
          {

            sub_20C5A049C();

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        sub_20C5A049C();
        sub_20C5A049C();
        MEMORY[0x20F2FF470](v35);
        MEMORY[0x20F2FF470](*(&v35 + 1));
        v7 = v33;
        v4 = v34;
        v8 = v32;
      }

      else
      {
        MEMORY[0x20F2FF470](0);
        if (*&v15 == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = *&v15;
        }

        MEMORY[0x20F2FF490](*&v20);
        if ((*(&v15 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = *(&v15 + 1);
        }

        else
        {
          v21 = 0;
        }

        MEMORY[0x20F2FF490](v21);
      }

      v22 = sub_20C5A0FFC();
      result = sub_20C515440(&v39);
      v23 = v22 & v7;
      if (v3 >= v8)
      {
        if (v23 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v23 >= v8)
      {
        goto LABEL_25;
      }

      if (v3 >= v23)
      {
LABEL_25:
        v24 = *(a2 + 48);
        result = v24 + 88 * v3;
        v25 = (v24 + v9);
        if (88 * v3 < v9 || result >= v25 + 88 || v3 != v6)
        {
          result = memmove(result, v25, 0x58uLL);
        }

        v26 = *(a2 + 56);
        v27 = (v26 + 8 * v3);
        v28 = (v26 + 8 * v6);
        if (v3 != v6 || v27 >= v28 + 1)
        {
          *v27 = *v28;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_34;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_34:
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

void sub_20C54EC7C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_20C5A09AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_20C54EE08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    do
    {
      sub_20C494788(*(a2 + 48) + 56 * v6, v27);
      sub_20C5A0FBC();
      sub_20C5A0B8C();
      v10 = v28;
      v11 = v29;
      if (v28 == 0.0)
      {
        v10 = 0.0;
      }

      MEMORY[0x20F2FF490](*&v10);
      if (v11 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v11;
      }

      MEMORY[0x20F2FF490](*&v12);
      v13 = sub_20C5A0FFC();
      result = sub_20C496894(v27);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_15;
      }

      if (v3 >= v14)
      {
LABEL_15:
        v15 = *(a2 + 48);
        v16 = v15 + 56 * v3;
        v17 = (v15 + 56 * v6);
        if (v3 != v6 || v16 >= v17 + 56)
        {
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[2];
          *(v16 + 48) = *(v17 + 6);
          *(v16 + 16) = v19;
          *(v16 + 32) = v20;
          *v16 = v18;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 32 * v3);
        v23 = (v21 + 32 * v6);
        if (v3 != v6 || v22 >= v23 + 2)
        {
          v9 = v23[1];
          *v22 = *v23;
          v22[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20C54F000(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20C5A0B0C() + 1) & ~v5;
    do
    {
      sub_20C5A0FBC();

      sub_20C5A049C();
      v10 = sub_20C5A0FFC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20C54F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v6 = *(a1 + 64);
  sub_20C494788(a1, a2);
  *(a2 + 56) = v3;
  *(a2 + 64) = v6;
  *(a2 + 80) = v4;
}

uint64_t sub_20C54F224(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20C5A0FBC();
  sub_20C5A049C();
  v8 = sub_20C5A0FFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20C5A0E9C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_20C55073C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20C54F374(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_20C5A0B4C();

    if (v9)
    {

      sub_20C479154(0, &qword_27C7C5580);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_20C5A0B3C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20C54FA28(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_20C54FE78();
    }

    v18 = v8;
    sub_20C5506B8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_20C479154(0, &qword_27C7C5580);
  v11 = sub_20C5A09AC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_20C5508BC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_20C5A09BC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_20C54F5AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C59D4CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_20C5A02EC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20C558FAC(&qword_27C7C5B48, MEMORY[0x277CC95F0]);
      v21 = sub_20C5A033C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20C550A2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20C54F88C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  sub_20C4FACE0(v6, v7);
  v8 = sub_20C5A0FFC();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      sub_20C494788(*(v5 + 48) + 56 * v10, v19);
      if (MEMORY[0x20F2FF020](v19, a2))
      {
        v12 = v20;
        v13 = v21;
        sub_20C496894(v19);
        if (v12 == v6 && v13 == v7)
        {
          sub_20C496894(a2);
          sub_20C494788(*(v5 + 48) + 56 * v10, a1);
          return 0;
        }
      }

      else
      {
        sub_20C496894(v19);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20C494788(a2, v19);
  v18 = *v2;
  sub_20C550CD0(v19, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v18;
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return 1;
}

uint64_t sub_20C54FA28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BD8);
    v2 = sub_20C5A0BCC();
    v14 = v2;
    sub_20C5A0B2C();
    if (sub_20C5A0B5C())
    {
      sub_20C479154(0, &qword_27C7C5580);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_20C54FE78();
        }

        v2 = v14;
        result = sub_20C5A09AC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_20C5A0B5C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20C54FC18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B10);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20C54FE78()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BD8);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_20C5A09AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20C5500A0()
{
  v1 = v0;
  v35 = sub_20C59D4CC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B50);
  result = sub_20C5A0BBC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
      result = sub_20C5A02EC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_20C5503FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5AA8);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 56 * (v14 | (v5 << 6));
      v28 = *v17;
      v29 = *(v17 + 16);
      v30 = *(v17 + 32);
      v31 = *(v17 + 48);
      sub_20C5A0FBC();
      sub_20C5A0B8C();
      v18 = *(&v30 + 1);
      if (*(&v30 + 1) == 0.0)
      {
        v18 = 0.0;
      }

      MEMORY[0x20F2FF490](*&v18);
      if (v31 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v31;
      }

      MEMORY[0x20F2FF490](*&v19);
      result = sub_20C5A0FFC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 56 * v12;
      *v13 = v28;
      *(v13 + 16) = v29;
      *(v13 + 32) = v30;
      *(v13 + 48) = v31;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_20C5506B8(uint64_t a1, uint64_t a2)
{
  sub_20C5A09AC();
  result = sub_20C5A0B1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_20C55073C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20C54FC18();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20C550EA0();
      goto LABEL_16;
    }

    sub_20C551504();
  }

  v10 = *v4;
  sub_20C5A0FBC();
  sub_20C5A049C();
  result = sub_20C5A0FFC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20C5A0E9C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20C5A0ECC();
  __break(1u);
  return result;
}

void sub_20C5508BC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20C54FE78();
  }

  else
  {
    if (v7 > v6)
    {
      sub_20C550FFC();
      goto LABEL_12;
    }

    sub_20C55173C();
  }

  v8 = *v3;
  v9 = sub_20C5A09AC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_20C479154(0, &qword_27C7C5580);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_20C5A09BC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_20C5A0ECC();
  __break(1u);
}

uint64_t sub_20C550A2C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20C59D4CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20C5500A0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_20C55114C();
      goto LABEL_12;
    }

    sub_20C551950();
  }

  v12 = *v3;
  sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
  v13 = sub_20C5A02EC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20C558FAC(&qword_27C7C5B48, MEMORY[0x277CC95F0]);
      v21 = sub_20C5A033C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C5A0ECC();
  __break(1u);
  return result;
}

uint64_t sub_20C550CD0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_20C5503FC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_20C551384();
      goto LABEL_19;
    }

    sub_20C551C6C();
  }

  v8 = *v3;
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  sub_20C4FACE0(v9, v10);
  result = sub_20C5A0FFC();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_20C494788(*(v8 + 48) + 56 * a2, v22);
      if (MEMORY[0x20F2FF020](v22, v5))
      {
        v13 = v23;
        v14 = v24;
        result = sub_20C496894(v22);
        if (v13 == v9 && v14 == v10)
        {
          result = sub_20C5A0ECC();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_20C496894(v22);
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48) + 56 * a2;
  v18 = *(v5 + 16);
  *v17 = *v5;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(v5 + 32);
  *(v17 + 48) = *(v5 + 48);
  v19 = *(v16 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v21;
  }

  return result;
}

void *sub_20C550EA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B10);
  v2 = *v0;
  v3 = sub_20C5A0BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_20C550FFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BD8);
  v2 = *v0;
  v3 = sub_20C5A0BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_20C55114C()
{
  v1 = v0;
  v2 = sub_20C59D4CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B50);
  v6 = *v0;
  v7 = sub_20C5A0BAC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_20C551384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5AA8);
  v2 = *v0;
  v3 = sub_20C5A0BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        result = sub_20C494788(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_20C551504()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B10);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_20C5A0FBC();

      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20C55173C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5BD8);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_20C5A09AC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20C551950()
{
  v1 = v0;
  v32 = sub_20C59D4CC();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B50);
  v6 = sub_20C5A0BBC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
      result = sub_20C5A02EC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20C551C6C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5AA8);
  result = sub_20C5A0BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_20C494788(*(v2 + 48) + 56 * (v16 | (v5 << 6)), v29);
      sub_20C5A0FBC();
      sub_20C5A0B8C();
      v19 = *(&v30 + 1);
      v20 = v31;
      if (*(&v30 + 1) == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x20F2FF490](*&v19);
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      MEMORY[0x20F2FF490](*&v21);
      result = sub_20C5A0FFC();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v10 + 8 * v24);
          if (v28 != -1)
          {
            v11 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 56 * v11;
      v13 = v29[0];
      v14 = v29[1];
      v15 = v30;
      *(v12 + 48) = v31;
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
      *v12 = v13;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_31;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v1 = v4;
  }

  return result;
}

char *sub_20C551EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20C552020(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_20C5521FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BA0);
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

char *sub_20C55232C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B98);
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

size_t sub_20C552438(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

char *sub_20C552620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20C552748(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B60);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20C552890(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_20C557EF4(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_20C552914(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_20C552914(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_20C5A0E4C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_20C5A067C();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_20C552A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_20C494788(v10, v22);
      v11 = v10 - 56;
      sub_20C494788(v10 - 56, v20);
      v12 = v23;
      v13 = v21;
      sub_20C496894(v20);
      result = sub_20C496894(v22);
      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 48);
      v16 = *(v10 + 16);
      v15 = *(v10 + 32);
      v17 = *v10;
      v18 = *(v10 - 40);
      *v10 = *v11;
      *(v10 + 16) = v18;
      *(v10 + 32) = *(v10 - 24);
      *(v10 + 48) = *(v10 - 8);
      *v11 = v17;
      *(v10 - 40) = v16;
      *(v10 - 24) = v15;
      v10 -= 56;
      *(v11 + 48) = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C552B34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_20C494788(v10, v22);
      v11 = v10 - 56;
      sub_20C494788(v10 - 56, v20);
      v12 = v23;
      v13 = v21;
      sub_20C496894(v20);
      result = sub_20C496894(v22);
      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 48);
      v16 = *(v10 + 16);
      v15 = *(v10 + 32);
      v17 = *v10;
      v18 = *(v10 - 40);
      *v10 = *v11;
      *(v10 + 16) = v18;
      *(v10 + 32) = *(v10 - 24);
      *(v10 + 48) = *(v10 - 8);
      *v11 = v17;
      *(v10 - 40) = v16;
      *(v10 - 24) = v15;
      v10 -= 56;
      *(v11 + 48) = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C552C4C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v103 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_20C553FB0(v10);
      v10 = result;
    }

    v110 = v10;
    v96 = *(v10 + 2);
    if (v96 >= 2)
    {
      while (*v7)
      {
        v97 = *&v10[16 * v96];
        v98 = *&v10[16 * v96 + 24];
        sub_20C553954((*v7 + 56 * v97), (*v7 + 56 * *&v10[16 * v96 + 16]), *v7 + 56 * v98, v5);
        if (v6)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20C553FB0(v10);
        }

        if (v96 - 2 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v10[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v110 = v10;
        result = sub_20C553F24(v96 - 1);
        v10 = v110;
        v96 = *(v110 + 2);
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v12 = *v7;
      sub_20C494788(*v7 + 56 * (v9 + 1), v108);
      v13 = 56 * v11;
      v14 = v12 + 56 * v11;
      sub_20C494788(v14, v106);
      v15 = v109;
      v16 = v107;
      sub_20C496894(v106);
      result = sub_20C496894(v108);
      v17 = v11 + 2;
      v18 = v14 + 112;
      while (v8 != v17)
      {
        v5 = v15 < v16;
        sub_20C494788(v18, v108);
        sub_20C494788(v18 - 56, v106);
        v19 = v109;
        v20 = v107;
        sub_20C496894(v106);
        result = sub_20C496894(v108);
        ++v17;
        v18 += 56;
        if (v15 < v16 == v19 >= v20)
        {
          v8 = v17 - 1;
          break;
        }
      }

      if (v15 < v16)
      {
        if (v8 < v11)
        {
          goto LABEL_118;
        }

        if (v11 < v8)
        {
          v21 = 56 * v8 - 56;
          v22 = v8;
          v23 = v11;
          do
          {
            if (v23 != --v22)
            {
              v33 = *v7;
              if (!*v7)
              {
                goto LABEL_124;
              }

              v24 = (v33 + v13);
              v25 = *(v33 + v13 + 48);
              v26 = (v33 + v21);
              v28 = v24[1];
              v27 = v24[2];
              v29 = *v24;
              v31 = v26[1];
              v30 = v26[2];
              v32 = *v26;
              *(v24 + 6) = *(v26 + 6);
              v24[1] = v31;
              v24[2] = v30;
              *v24 = v32;
              *v26 = v29;
              v26[1] = v28;
              v26[2] = v27;
              *(v26 + 6) = v25;
            }

            ++v23;
            v21 -= 56;
            v13 += 56;
          }

          while (v23 < v22);
        }
      }
    }

    v34 = v7[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v34)
        {
          v5 = v7[1];
        }

        else
        {
          v5 = v11 + a4;
        }

        if (v5 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v5)
        {
          break;
        }
      }
    }

    v5 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20C4EC940(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v36 = *(v10 + 2);
    v35 = *(v10 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_20C4EC940((v35 > 1), v36 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v37;
    v38 = &v10[16 * v36];
    *(v38 + 4) = v11;
    *(v38 + 5) = v5;
    v39 = *v103;
    if (!*v103)
    {
      goto LABEL_126;
    }

    v104 = v5;
    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v10 + 4);
          v42 = *(v10 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_105;
          }

          v57 = &v10[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_108;
          }

          v63 = &v10[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_112;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = &v10[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_107;
        }

        v70 = &v10[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v5 = *&v10[16 * v78 + 32];
        v79 = *&v10[16 * v40 + 40];
        sub_20C553954((*v7 + 56 * v5), (*v7 + 56 * *&v10[16 * v40 + 32]), *v7 + 56 * v79, v39);
        if (v6)
        {
        }

        if (v79 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20C553FB0(v10);
        }

        if (v78 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v80 = &v10[16 * v78];
        *(v80 + 4) = v5;
        *(v80 + 5) = v79;
        v110 = v10;
        result = sub_20C553F24(v40);
        v10 = v110;
        v37 = *(v110 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v10[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_103;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_104;
      }

      v52 = &v10[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_106;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_109;
      }

      if (v56 >= v48)
      {
        v74 = &v10[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v104;
    if (v104 >= v8)
    {
      goto LABEL_89;
    }
  }

  v100 = v11;
  v101 = v6;
  v105 = v7;
  v81 = *v7;
  v82 = v81 + 56 * v8;
  v83 = v11 - v8;
LABEL_80:
  v84 = v5;
  v85 = v83;
  v86 = v82;
  while (1)
  {
    sub_20C494788(v86, v108);
    v87 = v86 - 56;
    sub_20C494788(v86 - 56, v106);
    v88 = v109;
    v89 = v107;
    sub_20C496894(v106);
    result = sub_20C496894(v108);
    if (v88 >= v89)
    {
LABEL_79:
      ++v8;
      v82 += 56;
      --v83;
      v5 = v84;
      if (v8 != v84)
      {
        goto LABEL_80;
      }

      v7 = v105;
      v11 = v100;
      v6 = v101;
      if (v5 < v100)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v81)
    {
      break;
    }

    v90 = *(v86 + 48);
    v92 = *(v86 + 16);
    v91 = *(v86 + 32);
    v93 = *v86;
    v94 = *(v86 - 40);
    *v86 = *v87;
    *(v86 + 16) = v94;
    *(v86 + 32) = *(v86 - 24);
    *(v86 + 48) = *(v86 - 8);
    *v87 = v93;
    *(v86 - 40) = v92;
    *(v86 - 24) = v91;
    v86 -= 56;
    *(v87 + 48) = v90;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_20C5532D0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v103 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_20C553FB0(v10);
      v10 = result;
    }

    v110 = v10;
    v96 = *(v10 + 2);
    if (v96 >= 2)
    {
      while (*v7)
      {
        v97 = *&v10[16 * v96];
        v98 = *&v10[16 * v96 + 24];
        sub_20C553C3C((*v7 + 56 * v97), (*v7 + 56 * *&v10[16 * v96 + 16]), *v7 + 56 * v98, v5);
        if (v6)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20C553FB0(v10);
        }

        if (v96 - 2 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v10[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v110 = v10;
        result = sub_20C553F24(v96 - 1);
        v10 = v110;
        v96 = *(v110 + 2);
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v12 = *v7;
      sub_20C494788(*v7 + 56 * (v9 + 1), v108);
      v13 = 56 * v11;
      v14 = v12 + 56 * v11;
      sub_20C494788(v14, v106);
      v15 = v109;
      v16 = v107;
      sub_20C496894(v106);
      result = sub_20C496894(v108);
      v17 = v11 + 2;
      v18 = v14 + 112;
      while (v8 != v17)
      {
        v5 = v15 < v16;
        sub_20C494788(v18, v108);
        sub_20C494788(v18 - 56, v106);
        v19 = v109;
        v20 = v107;
        sub_20C496894(v106);
        result = sub_20C496894(v108);
        ++v17;
        v18 += 56;
        if (v15 < v16 == v19 >= v20)
        {
          v8 = v17 - 1;
          break;
        }
      }

      if (v15 < v16)
      {
        if (v8 < v11)
        {
          goto LABEL_118;
        }

        if (v11 < v8)
        {
          v21 = 56 * v8 - 56;
          v22 = v8;
          v23 = v11;
          do
          {
            if (v23 != --v22)
            {
              v33 = *v7;
              if (!*v7)
              {
                goto LABEL_124;
              }

              v24 = (v33 + v13);
              v25 = *(v33 + v13 + 48);
              v26 = (v33 + v21);
              v28 = v24[1];
              v27 = v24[2];
              v29 = *v24;
              v31 = v26[1];
              v30 = v26[2];
              v32 = *v26;
              *(v24 + 6) = *(v26 + 6);
              v24[1] = v31;
              v24[2] = v30;
              *v24 = v32;
              *v26 = v29;
              v26[1] = v28;
              v26[2] = v27;
              *(v26 + 6) = v25;
            }

            ++v23;
            v21 -= 56;
            v13 += 56;
          }

          while (v23 < v22);
        }
      }
    }

    v34 = v7[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v34)
        {
          v5 = v7[1];
        }

        else
        {
          v5 = v11 + a4;
        }

        if (v5 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v5)
        {
          break;
        }
      }
    }

    v5 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20C4EC940(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v36 = *(v10 + 2);
    v35 = *(v10 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_20C4EC940((v35 > 1), v36 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v37;
    v38 = &v10[16 * v36];
    *(v38 + 4) = v11;
    *(v38 + 5) = v5;
    v39 = *v103;
    if (!*v103)
    {
      goto LABEL_126;
    }

    v104 = v5;
    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v10 + 4);
          v42 = *(v10 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_105;
          }

          v57 = &v10[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_108;
          }

          v63 = &v10[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_112;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = &v10[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_107;
        }

        v70 = &v10[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v5 = *&v10[16 * v78 + 32];
        v79 = *&v10[16 * v40 + 40];
        sub_20C553C3C((*v7 + 56 * v5), (*v7 + 56 * *&v10[16 * v40 + 32]), *v7 + 56 * v79, v39);
        if (v6)
        {
        }

        if (v79 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20C553FB0(v10);
        }

        if (v78 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v80 = &v10[16 * v78];
        *(v80 + 4) = v5;
        *(v80 + 5) = v79;
        v110 = v10;
        result = sub_20C553F24(v40);
        v10 = v110;
        v37 = *(v110 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v10[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_103;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_104;
      }

      v52 = &v10[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_106;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_109;
      }

      if (v56 >= v48)
      {
        v74 = &v10[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v104;
    if (v104 >= v8)
    {
      goto LABEL_89;
    }
  }

  v100 = v11;
  v101 = v6;
  v105 = v7;
  v81 = *v7;
  v82 = v81 + 56 * v8;
  v83 = v11 - v8;
LABEL_80:
  v84 = v5;
  v85 = v83;
  v86 = v82;
  while (1)
  {
    sub_20C494788(v86, v108);
    v87 = v86 - 56;
    sub_20C494788(v86 - 56, v106);
    v88 = v109;
    v89 = v107;
    sub_20C496894(v106);
    result = sub_20C496894(v108);
    if (v88 >= v89)
    {
LABEL_79:
      ++v8;
      v82 += 56;
      --v83;
      v5 = v84;
      if (v8 != v84)
      {
        goto LABEL_80;
      }

      v7 = v105;
      v11 = v100;
      v6 = v101;
      if (v5 < v100)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v81)
    {
      break;
    }

    v90 = *(v86 + 48);
    v92 = *(v86 + 16);
    v91 = *(v86 + 32);
    v93 = *v86;
    v94 = *(v86 - 40);
    *v86 = *v87;
    *(v86 + 16) = v94;
    *(v86 + 32) = *(v86 - 24);
    *(v86 + 48) = *(v86 - 8);
    *v87 = v93;
    *(v86 - 40) = v92;
    *(v86 - 24) = v91;
    v86 -= 56;
    *(v87 + 48) = v90;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_20C553954(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_32:
      v20 = v6;
    }

    else
    {
      do
      {
        v20 = v6 - 56;
        v21 = (v12 - 56);
        v5 -= 56;
        while (1)
        {
          v12 = (v21 + 56);
          v24 = (v5 + 56);
          sub_20C494788(v21, v37);
          sub_20C494788((v6 - 56), v35);
          v25 = v38;
          v26 = v36;
          sub_20C496894(v35);
          sub_20C496894(v37);
          if (v25 < v26)
          {
            break;
          }

          if (v24 != v12)
          {
            v27 = *v21;
            v28 = *(v21 + 16);
            v29 = *(v21 + 32);
            *(v5 + 48) = *(v21 + 48);
            *(v5 + 16) = v28;
            *(v5 + 32) = v29;
            *v5 = v27;
          }

          v22 = v21 - 56;
          v5 -= 56;
          v23 = v21 > v4;
          v21 -= 56;
          if (!v23)
          {
            v12 = (v22 + 56);
            goto LABEL_32;
          }
        }

        if (v24 != v6)
        {
          v30 = *v20;
          v31 = *(v6 - 40);
          v32 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v31;
          *(v5 + 32) = v32;
          *v5 = v30;
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v20 > v7);
      v12 = (v21 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_20C494788(v6, v37);
        sub_20C494788(v4, v35);
        v13 = v38;
        v14 = v36;
        sub_20C496894(v35);
        sub_20C496894(v37);
        if (v13 >= v14)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 56;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 56;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v18;
      *(v7 + 2) = v19;
      *v7 = v17;
      goto LABEL_13;
    }

LABEL_15:
    v20 = v7;
  }

  v33 = (v12 - v4) / 56;
  if (v20 != v4 || v20 >= &v4[56 * v33])
  {
    memmove(v20, v4, 56 * v33);
  }

  return 1;
}

uint64_t sub_20C553C3C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_32:
      v20 = v6;
    }

    else
    {
      do
      {
        v20 = v6 - 56;
        v21 = (v12 - 56);
        v5 -= 56;
        while (1)
        {
          v12 = (v21 + 56);
          v24 = (v5 + 56);
          sub_20C494788(v21, v37);
          sub_20C494788((v6 - 56), v35);
          v25 = v38;
          v26 = v36;
          sub_20C496894(v35);
          sub_20C496894(v37);
          if (v25 < v26)
          {
            break;
          }

          if (v24 != v12)
          {
            v27 = *v21;
            v28 = *(v21 + 16);
            v29 = *(v21 + 32);
            *(v5 + 48) = *(v21 + 48);
            *(v5 + 16) = v28;
            *(v5 + 32) = v29;
            *v5 = v27;
          }

          v22 = v21 - 56;
          v5 -= 56;
          v23 = v21 > v4;
          v21 -= 56;
          if (!v23)
          {
            v12 = (v22 + 56);
            goto LABEL_32;
          }
        }

        if (v24 != v6)
        {
          v30 = *v20;
          v31 = *(v6 - 40);
          v32 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v31;
          *(v5 + 32) = v32;
          *v5 = v30;
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v20 > v7);
      v12 = (v21 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_20C494788(v6, v37);
        sub_20C494788(v4, v35);
        v13 = v38;
        v14 = v36;
        sub_20C496894(v35);
        sub_20C496894(v37);
        if (v13 >= v14)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 56;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 56;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v18;
      *(v7 + 2) = v19;
      *v7 = v17;
      goto LABEL_13;
    }

LABEL_15:
    v20 = v7;
  }

  v33 = (v12 - v4) / 56;
  if (v20 != v4 || v20 >= &v4[56 * v33])
  {
    memmove(v20, v4, 56 * v33);
  }

  return 1;
}

uint64_t sub_20C553F24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20C553FB0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20C553FC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_20C59D4CC();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_20C477B50(v5, &qword_27C7C4588))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_20C5554AC(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C5541E0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_20C477B50(v11, &qword_27C7C5AA0))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_20C494788(*(v2 + 48) + 56 * (v10 | (v9 << 6)), v12);
      sub_20C555754(v12, v11);
      sub_20C496894(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C554308(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v64 - v9);
  v11 = sub_20C59D4CC();
  v12 = MEMORY[0x28223BE20](v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v64 - v15);
  MEMORY[0x28223BE20](v14);
  v79 = (&v64 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = (a2 + 56);
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_20C477B50(v30, &qword_27C7C4588);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_20C558FAC(&qword_27C7C5B40, MEMORY[0x277CC95F0]);
    v32 = sub_20C5A02EC();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, *(a2 + 48) + v83 * v24, v11);
    v35 = sub_20C558FAC(&qword_27C7C5B48, MEMORY[0x277CC95F0]);
    v36 = sub_20C5A033C();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x28223BE20](v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_20C477B50(v24, &qword_27C7C4588);
        a2 = sub_20C55607C(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = sub_20C5A02EC();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, *(v52 + 48) + v54 * v83, v11);
        v55 = sub_20C5A033C();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, *(v52 + 48) + v54 * v83, v11);
            v57 = sub_20C5A033C();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_20C5558E4(v63, v64, v79, v24, &v88);

  MEMORY[0x20F2FFF90](v63, -1, -1);
LABEL_52:
  sub_20C483B94();
  return a2;
}

uint64_t sub_20C554D6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v76 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v3 = a1;
  v4 = *(a1 + 56);
  v63 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  v59 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v61 = (63 - v5) >> 6;
  v8 = a2 + 56;
  v9 = 0;
  v10 = 0;

  {
    v11 = v7;
    if (!v7)
    {
      v12 = v9;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v10 >= v61)
        {
          break;
        }

        v11 = *(v63 + 8 * v10);
        ++v12;
        if (v11)
        {
          goto LABEL_12;
        }
      }

      v67 = 0.0;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
LABEL_62:
      sub_20C477B50(&v64, &qword_27C7C5AA0);
      goto LABEL_65;
    }

LABEL_12:
    sub_20C494788(*(v3 + 48) + 56 * (__clz(__rbit64(v11)) | (v10 << 6)), &v64);
    if (!*(&v65 + 1))
    {
      goto LABEL_62;
    }

    v7 = (v11 - 1) & v11;
    v68 = v64;
    v69 = v65;
    v70 = v66;
    v71 = v67;
    sub_20C5A0FBC();
    sub_20C5A0B8C();
    v13 = *(&v70 + 1);
    v14 = v71;
    v15 = *(&v70 + 1) == 0.0 ? 0.0 : *(&v70 + 1);
    MEMORY[0x20F2FF490](*&v15);
    v16 = v14 == 0.0 ? 0.0 : v14;
    MEMORY[0x20F2FF490](*&v16);
    v17 = sub_20C5A0FFC();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v8 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    sub_20C496894(&v68);
    v9 = v10;
  }

  v22 = ~v18;
  while (1)
  {
    sub_20C494788(*(v2 + 48) + 56 * v19, &v64);
    if (MEMORY[0x20F2FF020](&v64, &v68))
    {
      break;
    }

    sub_20C496894(&v64);
LABEL_22:
    v19 = (v19 + 1) & v22;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if ((*(v8 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_6;
    }
  }

  v23 = *(&v66 + 1);
  v24 = v67;
  sub_20C496894(&v64);
  if (v23 != v13 || v24 != v14)
  {
    goto LABEL_22;
  }

  v73 = v59;
  v74 = v10;
  v75 = v7;
  v26 = i;
  v72[0] = i;
  v72[1] = v63;
  v27 = sub_20C496894(&v68);
  v28 = *(v2 + 32);
  v29 = ((1 << v28) + 63) >> 6;
  v30 = 8 * v29;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v56 = v29;
    v57 = &v55;
    MEMORY[0x28223BE20](v27);
    v32 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, (v2 + 56), v31);
    v33 = *&v32[8 * v20] & ~v21;
    v58 = v32;
    *&v32[8 * v20] = v33;
    v19 = *(v2 + 16) - 1;
    v29 = 1;
    v34 = v63;
    v35 = v61;
LABEL_31:
    if (v7)
    {
      goto LABEL_37;
    }

    v36 = v10;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {
        v67 = 0.0;
        v66 = 0u;
        v65 = 0uLL;
        v64 = 0uLL;
LABEL_64:
        sub_20C477B50(&v64, &qword_27C7C5AA0);
        v2 = sub_20C5566CC(v58, v56, v19, v2);
        goto LABEL_65;
      }

      v7 = *(v34 + 8 * v37);
      ++v36;
      if (v7)
      {
        v10 = v37;
LABEL_37:
        v38 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        sub_20C494788(*(v26 + 48) + 56 * (v38 | (v10 << 6)), &v64);
        if (!*(&v65 + 1))
        {
          goto LABEL_64;
        }

        v60 = v19;
        v68 = v64;
        v69 = v65;
        v70 = v66;
        v71 = v67;
        sub_20C5A0FBC();
        sub_20C5A0B8C();
        v39 = *(&v70 + 1);
        v40 = v71;
        if (*(&v70 + 1) == 0.0)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = *(&v70 + 1);
        }

        MEMORY[0x20F2FF490](*&v41);
        if (v40 == 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v40;
        }

        MEMORY[0x20F2FF490](*&v42);
        v43 = sub_20C5A0FFC();
        v44 = -1 << *(v2 + 32);
        v45 = v43 & ~v44;
        v20 = v45 >> 6;
        v46 = 1 << v45;
        if (((1 << v45) & *(v8 + 8 * (v45 >> 6))) == 0)
        {
LABEL_58:
          sub_20C496894(&v68);
LABEL_59:
          v26 = i;
          v34 = v63;
          v35 = v61;
          v19 = v60;
          goto LABEL_31;
        }

        v21 = ~v44;
        while (1)
        {
          sub_20C494788(*(v2 + 48) + 56 * v45, &v64);
          if (MEMORY[0x20F2FF020](&v64, &v68))
          {
            v47 = *(&v66 + 1);
            v48 = v67;
            sub_20C496894(&v64);
            if (v47 == v39 && v48 == v40)
            {
              sub_20C496894(&v68);
              v50 = v58[v20];
              v58[v20] = v50 & ~v46;
              if ((v50 & v46) == 0)
              {
                goto LABEL_59;
              }

              v19 = v60 - 1;
              v26 = i;
              v34 = v63;
              v35 = v61;
              if (__OFSUB__(v60, 1))
              {
                __break(1u);
              }

              if (v60 == 1)
              {
LABEL_68:

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_65;
              }

              goto LABEL_31;
            }
          }

          else
          {
            sub_20C496894(&v64);
          }

          v45 = (v45 + 1) & v21;
          v20 = v45 >> 6;
          v46 = 1 << v45;
          if ((*(v8 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
          {
            goto LABEL_58;
          }
        }
      }
    }

    __break(1u);
LABEL_70:
    v52 = v30;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v26 = i;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, (v2 + 56), v52);
  v54 = sub_20C555DB8(v53, v29, v2, v19, v72);

  MEMORY[0x20F2FFF90](v53, -1, -1);
  v59 = v73;
  v2 = v54;
LABEL_65:
  sub_20C483B94();
  return v2;
}