unint64_t sub_222B5EBC4()
{
  result = qword_280FE02A0;
  if (!qword_280FE02A0)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE02A0);
  }

  return result;
}

uint64_t sub_222B5EC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B5EC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B5ECF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B5ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = **(v2 + 16);
  return sub_222B5BB50(v4, a1, v5, a2);
}

uint64_t sub_222B5ED94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B5EDF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_222B5EE44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PartialRepetitionGroundTruthGenerator.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PartialRepetitionGroundTruthGenerator.init(_:)(a1);
  return v5;
}

char *PartialRepetitionGroundTruthGenerator.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for PartialRepetitionGroundTruthGenerator();
  *(v1 + 2) = static InferenceLogUtils.loggerTag<A>(_:)();
  *(v1 + 3) = v5;
  (*(*(v3 - 8) + 32))(&v1[*(*v1 + 104)], a1, v3);
  return v1;
}

uint64_t sub_222B5EFDC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v96) = a3;
  v97 = a2;
  v6 = *v3;
  v7 = v6[11];
  v8 = v6[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = sub_222C94B5C();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v89 = &v80 - v12;
  v92 = *(AssociatedTypeWitness - 8);
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v11);
  v91 = &v80 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v88 = sub_222C94B5C();
  v87 = *(v88 - 8);
  v16 = *(v87 + 64);
  v17 = MEMORY[0x28223BE20](v88);
  v93 = &v80 - v18;
  v95 = v15;
  v94 = *(v15 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v80 - v24;
  v26 = type metadata accessor for TurnPairRestatementClassification();
  v98 = *(v26 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v7 + 160);
  v99 = v6[13];
  v90 = a1;
  v31 = a1;
  v32 = v97;
  if ((v30(v31, v97, v96, v8, v7) & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v42 = sub_222C9431C();
    __swift_project_value_buffer(v42, qword_280FE2340);

    v43 = sub_222C942FC();
    v44 = sub_222C94A3C();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_29;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v101[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_222B437C0(v4[2], v4[3], v101);
    v47 = "%s Validation not passed. Skipping partial repetition ground truth generation";
LABEL_28:
    _os_log_impl(&dword_222B39000, v43, v44, v47, v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x223DCA8C0](v46, -1, -1);
    MEMORY[0x223DCA8C0](v45, -1, -1);
LABEL_29:

    swift_getAssociatedTypeWitness();
    return sub_222C9477C();
  }

  v81 = AssociatedTypeWitness;
  v82 = v21;
  v83 = v4;
  v84 = v7;
  v96 = v8;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + 32;
    v35 = v99;
    v36 = (v98 + 56);
    v37 = (v98 + 48);
    v38 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v34, v101);
      sub_222B405A0(v101, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v39 = swift_dynamicCast();
      (*v36)(v25, v39 ^ 1u, 1, v26);
      if ((*v37)(v25, 1, v26) == 1)
      {
        sub_222B4FCD4(v25, &qword_27D025020, &unk_222C98410);
      }

      else
      {
        sub_222B617D8(v25, v29, type metadata accessor for TurnPairRestatementClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_222B4A2A0(0, v38[2] + 1, 1, v38);
        }

        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          v38 = sub_222B4A2A0(v40 > 1, v41 + 1, 1, v38);
        }

        v38[2] = v41 + 1;
        sub_222B617D8(v29, v38 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v41, type metadata accessor for TurnPairRestatementClassification);
        v35 = v99;
      }

      v34 += 40;
      --v33;
    }

    while (v33);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v35 = v99;
  }

  if (!v38[2])
  {

    v59 = v83;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v60 = sub_222C9431C();
    __swift_project_value_buffer(v60, qword_280FE2340);

    v43 = sub_222C942FC();
    v44 = sub_222C94A3C();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_29;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v101[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_222B437C0(v59[2], v59[3], v101);
    v47 = "%s No restatement classifications. Skipping partial repetition ground truth generation";
    goto LABEL_28;
  }

  v48 = v96;
  *&v101[0] = v97;
  v49 = v83;
  v50 = v84;
  sub_222B5FDA8(v35 + v83, v96, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025030, &qword_222C98420);
  sub_222B61940(&qword_280FDB7E8, &qword_27D025030, &qword_222C98420);
  v51 = v95;
  v52 = sub_222C9466C();
  v98 = 0;

  *&v101[0] = v52;
  sub_222C947FC();
  swift_getWitnessTable();
  v53 = v93;
  sub_222C949CC();
  v54 = v94;
  if ((*(v94 + 48))(v53, 1, v51) == 1)
  {

    (*(v87 + 8))(v53, v88);

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v55 = sub_222C9431C();
    __swift_project_value_buffer(v55, qword_280FE2340);

    v43 = sub_222C942FC();
    v56 = sub_222C94A3C();

    if (os_log_type_enabled(v43, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v101[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_222B437C0(v49[2], v49[3], v101);
      _os_log_impl(&dword_222B39000, v43, v56, "%s No successful event associated with session. Skipping partial repetition ground truth generation", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x223DCA8C0](v58, -1, -1);
      MEMORY[0x223DCA8C0](v57, -1, -1);
    }

    goto LABEL_29;
  }

  v62 = v82;
  (*(v54 + 32))(v82, v53, v51);

  v63 = *(v50 + 128);
  v64 = v89;
  v65 = v50;
  v66 = v90;
  v63(v90, v62, v48, v65);
  v67 = v92;
  v68 = v81;
  if ((*(v92 + 48))(v64, 1, v81) == 1)
  {

    (*(v85 + 8))(v64, v86);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v69 = sub_222C9431C();
    __swift_project_value_buffer(v69, qword_280FE2340);

    v70 = sub_222C942FC();
    v71 = sub_222C94A3C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v101[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_222B437C0(v49[2], v49[3], v101);
      _os_log_impl(&dword_222B39000, v70, v71, "%s Failed to extract successClassification entity. Skipping partial repetition ground truth generation", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x223DCA8C0](v73, -1, -1);
      MEMORY[0x223DCA8C0](v72, -1, -1);
    }

    swift_getAssociatedTypeWitness();
    v74 = sub_222C9477C();
    (*(v54 + 8))(v82, v51);
    return v74;
  }

  else
  {
    (*(v67 + 32))(v91, v64, v68);
    v75 = sub_222B61240(v66, v38);
    v97 = v75;

    v99 = &v80;
    *&v101[0] = v75;
    MEMORY[0x28223BE20](v76);
    *(&v80 - 4) = v49;
    *(&v80 - 3) = v66;
    v77 = v91;
    v78 = v82;
    *(&v80 - 2) = v91;
    *(&v80 - 1) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253D0, &unk_222C98428);
    swift_getAssociatedTypeWitness();
    sub_222B61940(&qword_27D0253D8, &qword_27D0253D0, &unk_222C98428);
    v79 = sub_222C9466C();

    (*(v92 + 8))(v77, v81);
    (*(v54 + 8))(v78, v95);
    return v79;
  }
}

uint64_t (*sub_222B5FDA8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_222B62284;
}

uint64_t sub_222B5FEC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v112 = a4;
  v115 = a3;
  v128 = a5;
  v9 = *v5;
  v10 = type metadata accessor for FeaturisedSession(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_222C9367C();
  v113 = *(v114 - 8);
  v13 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v9 + 88);
  v16 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = sub_222C94B5C();
  v109 = *(v121 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v99 - v18;
  v19 = swift_getAssociatedTypeWitness();
  *&v119 = sub_222C94B5C();
  *&v118 = *(v119 - 8);
  v20 = *(v118 + 64);
  v21 = MEMORY[0x28223BE20](v119);
  *&v124 = &v99 - v22;
  v126 = v19;
  v127 = *(v19 - 8);
  v23 = *(v127 + 64);
  MEMORY[0x28223BE20](v21);
  v125 = &v99 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v99 - v30;
  v32 = type metadata accessor for FeaturisedTurn(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v107 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v106 = &v99 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v122 = &v99 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v99 - v41;
  v108 = a1;
  v43 = *a1;
  v123 = a2;
  v129 = a2;
  v116 = v43;
  sub_222B41144(sub_222B617A8, v43, v31);
  v44 = *(v33 + 48);
  *&v117 = v32;
  if (v44(v31, 1, v32) == 1)
  {
    sub_222B4FCD4(v31, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v45 = sub_222C9431C();
    __swift_project_value_buffer(v45, qword_280FE2340);

    v46 = sub_222C942FC();
    v47 = sub_222C94A4C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v138 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_222B437C0(v6[2], v6[3], &v138);
      _os_log_impl(&dword_222B39000, v46, v47, "%s First turn missing. Partial repetion ground truth not generated", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x223DCA8C0](v49, -1, -1);
      MEMORY[0x223DCA8C0](v48, -1, -1);
    }

    goto LABEL_19;
  }

  v104 = v29;
  sub_222B617D8(v31, v42, type metadata accessor for FeaturisedTurn);
  v50 = *(*v6 + 104);
  if (((*(v15 + 104))(v42, v16, v15) & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v62 = sub_222C9431C();
    __swift_project_value_buffer(v62, qword_280FE2340);

    v63 = sub_222C942FC();
    v64 = sub_222C94A4C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v138 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_222B437C0(v6[2], v6[3], &v138);
      _os_log_impl(&dword_222B39000, v63, v64, "%s First turn failed isInitiatingSiriTurn test. Partial repetion ground truth not generated", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x223DCA8C0](v66, -1, -1);
      MEMORY[0x223DCA8C0](v65, -1, -1);
    }

    sub_222B62140(v42, type metadata accessor for FeaturisedTurn);
    goto LABEL_19;
  }

  v51 = *(v15 + 144);
  v101 = v6;
  v102 = v16;
  v103 = v15;
  v52 = v15;
  v53 = v124;
  v51(v42, v16, v52);
  v54 = v127;
  v55 = v126;
  if ((*(v127 + 48))(v53, 1, v126) == 1)
  {
    (*(v118 + 8))(v53, v119);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v56 = sub_222C9431C();
    __swift_project_value_buffer(v56, qword_280FE2340);
    v57 = v101;

    v58 = sub_222C942FC();
    v59 = sub_222C94A4C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v138 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_222B437C0(v57[2], v57[3], &v138);
      _os_log_impl(&dword_222B39000, v58, v59, "%s extractUsoEntity failed for first turn. Partial repetion ground truth not generated", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x223DCA8C0](v61, -1, -1);
      MEMORY[0x223DCA8C0](v60, -1, -1);
    }

LABEL_26:
    sub_222B62140(v42, type metadata accessor for FeaturisedTurn);
LABEL_19:
    v67 = swift_getAssociatedTypeWitness();
    return (*(*(v67 - 8) + 56))(v128, 1, 1, v67);
  }

  v100 = v50;
  v69 = (*(v54 + 32))(v125, v53, v55);
  MEMORY[0x28223BE20](v69);
  *(&v99 - 2) = v123;
  v70 = v104;
  sub_222B41144(sub_222B61840, v116, v104);
  v71 = v117;
  if (v44(v70, 1, v117) == 1)
  {
    sub_222B4FCD4(v70, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v72 = sub_222C9431C();
    __swift_project_value_buffer(v72, qword_280FE2340);
    v73 = v101;

    v74 = sub_222C942FC();
    v75 = sub_222C94A4C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v138 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_222B437C0(v73[2], v73[3], &v138);
      _os_log_impl(&dword_222B39000, v74, v75, "%s Second turn missing. Partial repetion ground truth not generated", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x223DCA8C0](v77, -1, -1);
      MEMORY[0x223DCA8C0](v76, -1, -1);
    }

    (*(v127 + 8))(v125, v55);
    goto LABEL_26;
  }

  sub_222B617D8(v70, v122, type metadata accessor for FeaturisedTurn);
  v78 = *&v42[*(v71 + 28)];
  v79 = v100;
  v80 = v101;
  v81 = v102;
  v82 = v103;
  v83 = sub_222B61000(v101 + v100, v102, v103);
  *&v133 = v78;
  *(&v133 + 1) = v83;
  *&v134 = v84;
  sub_222B61120(v80 + v79, v81, v82);
  v85 = v42;
  v99 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253E0, &qword_222C984B8);
  sub_222B61940(&qword_27D0253E8, &qword_27D0253E0, &qword_222C984B8);
  sub_222C94FCC();

  v124 = v138;
  v119 = v139;
  v133 = v138;
  v134 = v139;
  v118 = v140;
  v117 = v141;
  v135 = v140;
  v136 = v141;
  v137 = v142;
  sub_222B61940(&qword_27D0253F0, &qword_27D0253E0, &qword_222C984B8);
  sub_222C94E7C();
  swift_getWitnessTable();
  sub_222C94F3C();
  swift_getWitnessTable();
  sub_222C94E7C();
  v132 = sub_222B61890();
  WitnessTable = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_222C949CC();

  v86 = v111;
  sub_222C9366C();
  *&v124 = type metadata accessor for PartialRepetitionMetadata();
  v87 = v110;
  sub_222B620D8(v108, v110, type metadata accessor for FeaturisedSession);
  v88 = *(v123 + *(type metadata accessor for TurnPairRestatementClassification() + 24));
  v89 = v106;
  sub_222B620D8(v85, v106, type metadata accessor for FeaturisedTurn);
  v90 = v107;
  sub_222B620D8(v122, v107, type metadata accessor for FeaturisedTurn);
  v91 = v103;
  v92 = v102;
  v93 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v95 = sub_222BD7DDC(v87, v112, v88, v89, v90, v124, v93, AssociatedConformanceWitness);
  v96 = *(v91 + 120);

  v97 = v125;
  v98 = v120;
  v96(v86, v125, v120, v115, v95, v92, v91);

  (*(v113 + 8))(v86, v114);
  (*(v109 + 8))(v98, v121);
  sub_222B62140(v122, type metadata accessor for FeaturisedTurn);
  (*(v127 + 8))(v97, v126);
  return sub_222B62140(v99, type metadata accessor for FeaturisedTurn);
}

uint64_t (*sub_222B61000(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_222B62048;
}

uint64_t (*sub_222B61120(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_222B61FBC;
}

uint64_t sub_222B61240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for FeaturisedTurn(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v15 = *(*a1 + 16);
  if (!v15)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);

    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_222B437C0(v3[2], v3[3], &v31);
      _os_log_impl(&dword_222B39000, v22, v23, "%s Couldn't extract final turn in session as session contains no turns.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = *(v12 + 72);
  sub_222B620D8(*a1 + v16 + v17 * (v15 - 1), &v30 - v13, type metadata accessor for FeaturisedTurn);
  v18 = sub_222B61988(v14, a2);
  if (!*(v18 + 16))
  {

    v27 = *(*v3 + 104);
    v28 = (*(*(v6 + 88) + 152))(a1, *(v6 + 80));
    v29 = *(v28 + 16);
    if (v29)
    {
      sub_222B620D8(v28 + v16 + (v29 - 1) * v17, v11, type metadata accessor for FeaturisedTurn);

      v19 = sub_222B61988(v11, a2);
      sub_222B62140(v11, type metadata accessor for FeaturisedTurn);
      v20 = v14;
      goto LABEL_12;
    }

    sub_222B62140(v14, type metadata accessor for FeaturisedTurn);
    return MEMORY[0x277D84F90];
  }

  v19 = v18;
  v20 = v14;
LABEL_12:
  sub_222B62140(v20, type metadata accessor for FeaturisedTurn);
  return v19;
}

char *PartialRepetitionGroundTruthGenerator.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t PartialRepetitionGroundTruthGenerator.__deallocating_deinit()
{
  PartialRepetitionGroundTruthGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222B61680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[2];
  return sub_222B5FEC8(v4, a1, v5, v6, a2);
}

uint64_t sub_222B616B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222B617D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B61840()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for TurnPairRestatementClassification() + 20);
  return sub_222C9362C() & 1;
}

unint64_t sub_222B61890()
{
  result = qword_27D0253F8;
  if (!qword_27D0253F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0253E0, &qword_222C984B8);
    sub_222B61940(&qword_27D025400, &qword_27D025408, &unk_222C984C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0253F8);
  }

  return result;
}

uint64_t sub_222B61940(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222B61988(char *a1, uint64_t a2)
{
  v75 = sub_222C9367C();
  v4 = *(v75 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v75);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v63 - v8;
  v9 = type metadata accessor for TurnPairRestatementClassification();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v63 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v63 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v63 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v63 - v21;
  v23 = *(a2 + 16);
  v66 = v4;
  v71 = v20;
  if (!v23)
  {
    v29 = *(v4 + 16);
    v28 = MEMORY[0x277D84F98];
LABEL_18:
    v49 = v64;
    v29(v64, a1, v75);
    if (v28[2])
    {
      v50 = (v4 + 8);
      v51 = MEMORY[0x277D84F90];
      v52 = v75;
      do
      {
        v53 = sub_222B8CA54(v49);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v55 = *(v71 + 72);
        v56 = v65;
        sub_222B620D8(v28[7] + v55 * v53, v65, type metadata accessor for TurnPairRestatementClassification);
        v57 = v56;
        v58 = v69;
        sub_222B617D8(v57, v69, type metadata accessor for TurnPairRestatementClassification);
        sub_222B620D8(v58, v70, type metadata accessor for TurnPairRestatementClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_222B4A2A0(0, v51[2] + 1, 1, v51);
        }

        v60 = v51[2];
        v59 = v51[3];
        if (v60 >= v59 >> 1)
        {
          v51 = sub_222B4A2A0(v59 > 1, v60 + 1, 1, v51);
        }

        (*v50)(v49, v52);
        v51[2] = v60 + 1;
        sub_222B617D8(v70, v51 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + v60 * v55, type metadata accessor for TurnPairRestatementClassification);
        v61 = v69;
        v29(v49, v69, v52);
        sub_222B62140(v61, type metadata accessor for TurnPairRestatementClassification);
      }

      while (v28[2]);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    (*(v66 + 8))(v49, v75);
    return v51;
  }

  v63 = a1;
  v24 = *(v19 + 20);
  v25 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v26 = *(v20 + 72);
  v27 = (v4 + 16);
  v67 = (v4 + 8);
  v68 = v24;
  v28 = MEMORY[0x277D84F98];
  v72 = (v4 + 16);
  while (1)
  {
    sub_222B620D8(v25, v22, type metadata accessor for TurnPairRestatementClassification);
    v29 = *v27;
    v30 = v74;
    (*v27)(v74, &v22[v68], v75);
    sub_222B620D8(v22, v73, type metadata accessor for TurnPairRestatementClassification);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v28;
    v33 = sub_222B8CA54(v30);
    v34 = v28[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v28[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v76;
        if (v32)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_222B92F4C();
        v28 = v76;
        if (v37)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_222B8E4D4(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_222B8CA54(v74);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_31;
      }

      v33 = v38;
      v28 = v76;
      if (v37)
      {
LABEL_3:
        sub_222B621A0(v73, v28[7] + v33 * v26);
        (*v67)(v74, v75);
        sub_222B62140(v22, type metadata accessor for TurnPairRestatementClassification);
        goto LABEL_4;
      }
    }

    v28[(v33 >> 6) + 8] |= 1 << v33;
    v40 = v66;
    v41 = v29;
    v42 = v74;
    v43 = v75;
    v44 = v22;
    v45 = v41;
    v41(v28[6] + *(v66 + 72) * v33, v74, v75);
    sub_222B617D8(v73, v28[7] + v33 * v26, type metadata accessor for TurnPairRestatementClassification);
    (*(v40 + 8))(v42, v43);
    sub_222B62140(v44, type metadata accessor for TurnPairRestatementClassification);
    v46 = v28[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_30;
    }

    v28[2] = v48;
    v29 = v45;
    v22 = v44;
LABEL_4:
    v25 += v26;
    --v23;
    v27 = v72;
    if (!v23)
    {
      v4 = v66;
      a1 = v63;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222B61FBC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = a1[3];
  v5 = a1[4];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v4;
  v10 = v5;
  return (*(v2 + 136))(&v7);
}

uint64_t sub_222B62048(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = a1[3];
  v5 = a1[4];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v4;
  v10 = v5;
  return (*(v2 + 112))(&v7) & 1;
}

uint64_t sub_222B620D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B62140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B621A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnPairRestatementClassification();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222B62284()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 96))();
}

uint64_t PIMSProcessingState.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PIMSProcessingState.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PIMSProcessingState.getLoggableProperties()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000013;
  v3 = inited + 32;
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 40) = 0x8000000222C984B0;
  v4 = 0xD000000000000016;
  v5 = "edia.PlayMediaIntent";
  v6 = "enerationTriggered";
  v7 = 0xD00000000000001BLL;
  v8 = "GroundTruthExistsToConsider";
  v9 = 0xD000000000000024;
  if (v1 != 4)
  {
    v9 = 0xD000000000000021;
    v8 = "aturisationTriggered";
  }

  if (v1 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = "PIMSPluginRunTriggered";
  if (v1 == 1)
  {
    v11 = 0xD000000000000021;
  }

  else
  {
    v11 = 0xD000000000000022;
  }

  if (v1 != 1)
  {
    v10 = "aluationTriggered";
  }

  if (v1)
  {
    v4 = v11;
    v5 = v10;
  }

  if (v1 > 2)
  {
    v4 = v7;
    v5 = v6;
  }

  v12 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v13 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(v3);
  return v13;
}

unint64_t PIMSProcessingStateCode.rawValue.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000024;
  if (v2 != 4)
  {
    v4 = 0xD000000000000021;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_222B6258C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriPrivateLearningInference::PIMSProcessingStateCode_optional __swiftcall PIMSProcessingStateCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B62630()
{
  *v0;
  *v0;
  *v0;
  sub_222C9452C();
}

void sub_222B62718(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = *v1;
  v4 = "enerationTriggered";
  v5 = 0xD00000000000001BLL;
  v6 = "GroundTruthExistsToConsider";
  v7 = 0xD000000000000024;
  if (v3 != 4)
  {
    v7 = 0xD000000000000021;
    v6 = "aturisationTriggered";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "PIMSPluginRunTriggered";
  if (v3 != 1)
  {
    v2 = 0xD000000000000022;
    v8 = "aluationTriggered";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000016;
    v9 = "edia.PlayMediaIntent";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_222B627C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_222B628C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025500, &qword_222C98720);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_222B4FC6C(v4, &v13, &qword_27D025418, &qword_222C984F0);
      v5 = v13;
      v6 = v14;
      result = sub_222B8C9DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_222B405A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_222B629F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025418, &qword_222C984F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222B62A64()
{
  result = qword_27D025420;
  if (!qword_27D025420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025420);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222B62ACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_222B62B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222B62B74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025438, &qword_222C98658);
    v3 = sub_222C94F8C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v17[0] = *v4;
      v17[1] = v6;
      v7 = v4[3];
      v18 = v4[2];
      v19 = v7;
      v8 = *(&v7 + 1);
      v20 = v17[0];
      v21 = v6;
      v22 = v18;
      v23 = *(v4 + 24);
      sub_222B4FC6C(v17, &v16, &qword_27D025440, &qword_222C98660);
      result = sub_222B8CB28(&v20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 56 * result;
      v12 = v21;
      *v11 = v20;
      *(v11 + 16) = v12;
      *(v11 + 32) = v22;
      *(v11 + 48) = v23;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 4;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B62CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025428, &qword_222C98648);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 16);
      v16[0] = *v4;
      v16[1] = v6;
      v17 = *(v4 + 32);
      v18 = *(v4 + 48);
      v19 = v16[0];
      v20 = v6;
      v21 = v17;
      v22 = *(v4 + 48);
      sub_222B4FC6C(v16, v15, &qword_27D025430, &qword_222C98650);
      result = sub_222B8CB28(&v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 56 * result;
      v10 = v20;
      v11 = v21;
      *v9 = v19;
      *(v9 + 16) = v10;
      *(v9 + 32) = v11;
      *(v9 + 48) = v22;
      *(v3[7] + 2 * result) = HIWORD(v18);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 56;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222B62E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025450, &qword_222C98670);
    v3 = sub_222C94F8C();

    for (i = (a1 + 65); ; i += 20)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *(i + 2);
      v11 = *i;

      result = sub_222B8CB9C(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 4 * result;
      *v15 = v9;
      *(v15 + 3) = (v11 | (v10 << 16)) >> 16;
      *(v15 + 1) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_222B62F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025448, &qword_222C98668);
    v3 = sub_222C94F8C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_222B8CB9C(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
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

unint64_t sub_222B630B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F0, &qword_222C98710);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254F8, &qword_222C98718);
    v8 = sub_222C94F8C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_222B4FC6C(v10, v6, &qword_27D0254F0, &qword_222C98710);
      result = sub_222B8CE14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_222C942DC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_222C941AC();
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

unint64_t sub_222B632F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
    v3 = sub_222C94F8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
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

unint64_t sub_222B6340C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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

unint64_t sub_222B63558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_222B63678(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_222C94F8C();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_222B4FC6C(v17, v13, a2, v28);
      result = sub_222B8CA54(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_222C9367C();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_222B63858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254B8, &qword_222C986D8);
    v3 = sub_222C94F8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_222B8C9DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_222B6395C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v3 = sub_222C94F8C();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_222B4FC6C(&v24, v23, &qword_27D0254B0, &qword_222C986D0);
  result = sub_222B8C9DC(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_222B4FC6C(&v24, v23, &qword_27D0254B0, &qword_222C986D0);
    result = sub_222B8C9DC(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222B63B20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_222C94F8C();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

void *sub_222B63C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025498, &qword_222C986B8);
  v3 = sub_222C94F8C();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_222B95ADC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_222B95ADC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222B63D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
    v3 = sub_222C94F8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_222B4FC6C(v4, &v10, &qword_27D025480, &qword_222C986A0);
      result = sub_222B8CFCC(v10, *(&v10 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_222B405A0(v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 56;
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

uint64_t sub_222B63EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    if (v1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C78, &qword_222C96A50);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_222C97C40;
      *(v2 + 32) = a1;
    }

    else
    {
      v4 = *(type metadata accessor for FeaturisedSession(0) - 8);
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      sub_222B64124(2, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C88, &qword_222C96A60);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_222C97C40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C80, &qword_222C96A58);
      v7 = *(v4 + 72);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_222C97C40;
      v9 = sub_222B653E4(a1 + v5, v8 + v5, type metadata accessor for FeaturisedSession);
      *(v6 + 32) = v8;
      MEMORY[0x28223BE20](v9);
      v10 = sub_222BA6434(v6, sub_222B65138);

      v11 = *(v10 + 16);
      if (v11)
      {
        sub_222B4C438(0, v11, 0);
        v12 = 32;
        do
        {
          v13 = *(v10 + v12);
          v15 = *(v2 + 16);
          v14 = *(v2 + 24);

          if (v15 >= v14 >> 1)
          {
            sub_222B4C438((v14 > 1), v15 + 1, 1);
          }

          *(v2 + 16) = v15 + 1;
          *(v2 + 8 * v15 + 32) = v13;
          v12 += 8;
          --v11;
        }

        while (v11);
      }
    }
  }

  return v2;
}

uint64_t sub_222B64124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = *(a2 + 16);
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_222B654B8;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025508, &qword_222C987A0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    *(v8 + 33) = 1;
    *(v8 + 40) = sub_222B651EC;
    *(v8 + 48) = v6;
    *(v8 + 56) = 0;
    *(v8 + 64) = sub_222B651F4;
    *(v8 + 72) = v7;
    swift_bridgeObjectRetain_n();
    return v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025510, &qword_222C987A8);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222B64278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = *(a2 + 16);
    }

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_222B65274;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025518, &qword_222C987B0);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    *(v8 + 33) = 1;
    *(v8 + 40) = sub_222B654B4;
    *(v8 + 48) = v6;
    *(v8 + 56) = 0;
    *(v8 + 64) = sub_222B6534C;
    *(v8 + 72) = v7;
    swift_bridgeObjectRetain_n();
    return v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025520, &qword_222C987B8);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222B643CC(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v41 = a1;
  v11 = type metadata accessor for FeaturisedSession(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v17;
  v21 = a2[2];
  v22 = a2[3] >> 1;
  if (v21 != v22)
  {
    if (v21 < v22)
    {
      v37 = v18;
      v39 = v5;
      v40 = v19;
      v23 = a2[1];
      v24 = *(v12 + 72);
      a2 = type metadata accessor for FeaturisedSession;
      sub_222B653E4(v23 + v24 * v21, &v35 - v17, type metadata accessor for FeaturisedSession);
      v25 = v22 - 1;
      v22 = v24;
      v6 = v40;
      sub_222B653E4(v23 + v22 * v25, v40, type metadata accessor for FeaturisedSession);
      v26 = *(a5 + 8);
      v38 = v20;
      if ((v26(v20, v6, a4, a5) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C80, &qword_222C96A58);
        v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_222C97C40;
        sub_222B653E4(v6, v22 + v32, type metadata accessor for FeaturisedSession);
        a4 = v41;
        a3 = *v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_13:
          v34 = a3[2];
          v33 = a3[3];
          if (v34 >= v33 >> 1)
          {
            a3 = sub_222B4A70C((v33 > 1), v34 + 1, 1, a3);
          }

          sub_222B64B00(v6);
          result = sub_222B64B00(v38);
          a3[2] = v34 + 1;
          a3[v34 + 4] = v22;
LABEL_16:
          *a4 = a3;
          return result;
        }

LABEL_20:
        a3 = sub_222B4A70C(0, a3[2] + 1, 1, a3);
        goto LABEL_13;
      }

      v36 = v12;
      a3 = *v41;
      v27 = v6;
      v6 = *(*v41 + 16);
      a4 = v37;
      sub_222B653E4(v27, v37, type metadata accessor for FeaturisedSession);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v6)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_7:
        if (v6 > a3[2])
        {
          __break(1u);
        }

        else
        {
          v39 = v22;
          v22 = (a3 + 3);
          a2 = a3[v6 + 3];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3[v6 + 3] = a2;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_9:
            v30 = a2[2];
            v29 = a2[3];
            if (v30 >= v29 >> 1)
            {
              *(v22 + 8 * v6) = sub_222B4A730(v29 > 1, v30 + 1, 1, a2);
            }

            sub_222B64B00(v40);
            sub_222B64B00(v38);
            v31 = *(v22 + 8 * v6);
            *(v31 + 16) = v30 + 1;
            result = sub_222B6544C(a4, v31 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v30 * v39, type metadata accessor for FeaturisedSession);
            a4 = v41;
            goto LABEL_16;
          }
        }

        a2 = sub_222B4A730(0, a2[2] + 1, 1, a2);
        *(v22 + 8 * v6) = a2;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    a3 = sub_222B64B5C(a3);
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t CompositeSession.combinedSession.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FeaturisedSession(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](*(v3 - 8));
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = *v1;
  v12 = *(*v1 + 16);
  v31 = v8;
  if (v12)
  {
    v30 = a1;
    v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    sub_222B653E4(v13, &v29 - v9, type metadata accessor for FeaturisedSession);
    v32 = MEMORY[0x277D84F90];
    sub_222B4C580(0, v12, 0);
    v14 = v32;
    v15 = *(v31 + 72);
    do
    {
      sub_222B653E4(v13, v7, type metadata accessor for FeaturisedSession);
      v16 = *v7;

      sub_222B64B00(v7);
      v32 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222B4C580((v17 > 1), v18 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = v16;
      v13 += v15;
      --v12;
    }

    while (v12);
    v19 = sub_222B64BAC(v14);

    v20 = *(v3 + 20);
    v21 = sub_222C9367C();
    v22 = v30;
    (*(*(v21 - 8) + 16))(v30 + v20, &v10[v20], v21);
    sub_222B5551C(&v10[*(v3 + 24)], v22 + *(v3 + 24));
    sub_222B64B00(v10);
    *v22 = v19;
    return (*(v31 + 56))(v22, 0, 1, v3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_222B39000, v25, v26, "Zero sessions in CompositeSession", v27, 2u);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    v28 = *(v31 + 56);

    return v28(a1, 1, 1, v3);
  }
}

uint64_t sub_222B64B00(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B64BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = type metadata accessor for FeaturisedTurn(0);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v58 = 0;
  v56 = 0;
  v13 = 0;
  v48 = *(v14 + 80);
  v57 = MEMORY[0x277D84F90];
  v54 = (v48 + 32) & ~v48;
  v55 = MEMORY[0x277D84F90] + v54;
  v15 = (v14 + 56);
  v51 = v14 + 48;
  v52 = v14;
  v49 = result;
  v50 = v8;
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_4:
  v18 = *(a1 + 16);
  if (v13 != v18)
  {
    if (v13 < v18)
    {
      while (1)
      {
        v19 = *(a1 + 32 + 8 * v13);

        if (v19)
        {
          break;
        }

LABEL_9:
        ++v13;
        v20 = *(a1 + 16);
        if (v13 == v20)
        {
          goto LABEL_37;
        }

        if (v13 >= v20)
        {
          goto LABEL_42;
        }
      }

      v16 = *(v19 + 16);
      if (!v16)
      {
        (*v15)(v6, 1, 1, v9);
        result = sub_222B6537C(v6);
        goto LABEL_9;
      }

      v17 = 0;
      ++v13;
      while (1)
      {
        if (v17 >= v16)
        {
          goto LABEL_43;
        }

        v21 = v52;
        v22 = *(v52 + 72);
        v58 = v17;
        sub_222B653E4(v19 + v54 + v22 * v17, v6, type metadata accessor for FeaturisedTurn);
        (*(v21 + 56))(v6, 0, 1, v9);
        sub_222B5EC84(v6, v8);
        if ((*(v21 + 48))(v8, 1, v9) == 1)
        {
          goto LABEL_38;
        }

        v23 = v53;
        result = sub_222B6544C(v8, v53, type metadata accessor for FeaturisedTurn);
        v24 = v56;
        if (!v56)
        {
          break;
        }

        v25 = v57;
LABEL_35:
        v39 = __OFSUB__(v24, 1);
        v40 = v24 - 1;
        if (v39)
        {
          goto LABEL_44;
        }

        v56 = v40;
        ++v58;
        v41 = v23;
        v42 = v55;
        result = sub_222B6544C(v41, v55, type metadata accessor for FeaturisedTurn);
        v55 = v42 + v22;
        v57 = v25;
        v9 = v49;
        v8 = v50;
        v16 = *(v19 + 16);
        v17 = v58;
        if (v58 == v16)
        {
          (*v15)(v6, 1, 1, v49);
          result = sub_222B6537C(v6);
          goto LABEL_4;
        }
      }

      v26 = v57[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DF0, &qword_222C96BC0);
      v29 = v54;
      v56 = v28;
      v25 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v25);
      if (!v22)
      {
        goto LABEL_47;
      }

      v30 = result - v29;
      if (result - v29 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_48;
      }

      v32 = v29;
      v33 = v30 / v22;
      v34 = v57;
      v25[2] = v56;
      v25[3] = 2 * (v30 / v22);
      v35 = v25 + v29;
      v36 = *(v34 + 24) >> 1;
      v37 = v36 * v22;
      if (!*(v34 + 16))
      {
LABEL_34:
        v55 = v35 + v37;
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v24 = v38;
        v23 = v53;
        goto LABEL_35;
      }

      if (v25 < v34 || v35 >= v34 + v32 + v37)
      {
        v55 = v35;
        v56 = v30 / v22;
        v47 = v36 * v22;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v25 == v57)
        {
LABEL_33:
          v57[2] = 0;
          goto LABEL_34;
        }

        v55 = v35;
        v56 = v30 / v22;
        v47 = v36 * v22;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v47;
      v35 = v55;
      v33 = v56;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_37:
  (*v15)(v8, 1, 1, v9);
LABEL_38:
  v43 = v57;

  result = sub_222B6537C(v8);
  v44 = v43[3];
  if (v44 < 2)
  {
    return v43;
  }

  v45 = v44 >> 1;
  v39 = __OFSUB__(v45, v56);
  v46 = v45 - v56;
  if (!v39)
  {
    v43[2] = v46;
    return v43;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition(uint64_t result, int a2, int a3)
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

void *sub_222B65158@<X0>(void *result@<X0>, void *(*a2)(void *__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = *(result + 16);
  if (*(result + 17) == 1)
  {
    *(result + 17) = 0;
  }

  else if (*(result + 16))
  {
    v7 = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v10[0] = v5;
    v10[1] = v6;
    v8 = a3;
    v9 = result;
    result = a2(v11, v10);
    a3 = v8;
    v5 = v11[0];
    v6 = v11[1];
    v7 = v12;
    *v9 = v11[0];
    v9[1] = v6;
    *(v9 + 16) = v7;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

void *sub_222B65224@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = *(*a2 + 16);
  if (v3 == v4)
  {
    v5 = 0;
    v6 = 0;
LABEL_5:
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v3 == v4;
    return result;
  }

  v5 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_222B65290@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (v5 < *result)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  if (v8 < v4 || v8 < v5)
  {
    goto LABEL_12;
  }

  v10 = *(a3(0) - 8);
  v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  *a4 = v7;
  a4[1] = v11;
  a4[2] = v4;
  a4[3] = (2 * v5) | 1;
}

uint64_t sub_222B6537C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B653E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B6544C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_222B654C0()
{
  result = qword_27D025528[0];
  if (!qword_27D025528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D025528);
  }

  return result;
}

unint64_t sub_222B65518()
{
  result = qword_280FDF1E0;
  if (!qword_280FDF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF1E0);
  }

  return result;
}

uint64_t sub_222B655C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v23 - v10;
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v7 + 32))(v11, v14, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v21 = sub_222C9495C();
      (*(v7 + 8))(v11, AssociatedTypeWitness);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    v19 = *v14;
    swift_getAssociatedConformanceWitness();
    v18 = sub_222C948EC();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v11, v14, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v20 = sub_222C9495C();
      (*(v7 + 8))(v11, AssociatedTypeWitness);
      return v20 & 1;
    }

    v17 = *v14;
    swift_getAssociatedConformanceWitness();
    v18 = sub_222C9496C();
  }

  v20 = v18;

  return v20 & 1;
}

BOOL sub_222B658C0()
{
  v1 = *v0;
  (*(*(*v0 + 96) + 24))(*(*v0 + 80), *(*v0 + 96));
  v5 = v0[2];
  v4 = *(v1 + 88);
  type metadata accessor for TagNominationFilter.TagMatchRule();
  sub_222C947FC();

  swift_getWitnessTable();
  v2 = sub_222C9465C();

  return (v2 & 1) == 0;
}

uint64_t sub_222B659FC()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_222B65A1C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222B65A74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  result = sub_222C9497C();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222B65B58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_25:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 253;
}

void sub_222B65CAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_222B65ED0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  matched = type metadata accessor for TagNominationFilter.TagMatchRule();
  return sub_222B655C8(v4, matched) & 1;
}

uint64_t sub_222B66098(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v26 = a7;
  v31 = a6;
  v33 = a1;
  v34 = a2;
  v10 = a4(0);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v30 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v29 = *(a3 + 16);
  if (v29)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v27 = a5;
    v28 = a3;
    while (v17 < *(a3 + 16))
    {
      v19 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v20 = *(v32 + 72);
      sub_222B72B48(a3 + v19 + v20 * v17, v16, a5);
      v21 = v33(v16);
      if (v7)
      {
        sub_222B72BB0(v16, a5);

        goto LABEL_15;
      }

      if (v21)
      {
        sub_222B7240C(v16, v30, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26(0, *(v18 + 16) + 1, 1);
          v18 = v35;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          v26(v23 > 1, v24 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v24 + 1;
        result = sub_222B7240C(v30, v18 + v19 + v24 * v20, v31);
        a5 = v27;
        a3 = v28;
      }

      else
      {
        result = sub_222B72BB0(v16, a5);
      }

      if (v29 == ++v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_15:

    return v18;
  }

  return result;
}

uint64_t CoreDuetEvent.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  sub_222B41CB8(v7, &v14 - v5);
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_222B41CE4(v7);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      sub_222C935AC();
      v12 = 0;
    }

    (*(v9 + 56))(a1, v12, 1, v8);
    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return sub_222B4FCD4(v6, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t FeaturisedSession.init(turns:sessionId:originalPlusId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for FeaturisedSession(0);
  v8 = *(v7 + 20);
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  return sub_222B723A4(a3, &a4[*(v7 + 24)], &unk_27D026290, &qword_222C96B40);
}

uint64_t CoreDuetEvent.init(eventId:features:eventType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t CoreDuetEvent.eventId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreDuetEvent.eventType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CoreDuetEvent.init(features:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_16:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v27 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v25);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v23 = swift_allocObject();
      sub_222B43E3C(v25, v23 + 16);
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      if (sub_222B69F7C(&v23, DynamicType))
      {
        sub_222B405A0(v25, &v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v26;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v23, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v7 = v22;
    v10 = v21;
    v11 = v20;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = a4;
  v9 = v7[1];
  v10 = v7[2];
  v47 = v7[3];
  v45 = *v7;
  v46 = v7[4];
  v11 = *(a3 + 16);
  v52 = v9;
  if (!v11)
  {
    v34 = a5;
    v35 = a1;

    if (*(v8 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  *&v56 = MEMORY[0x277D84F90];
  sub_222B4C600(0, v11, 0);
  v13 = v56;
  v14 = (a3 + 32);
  v15 = *(v56 + 16);
  do
  {
    v16 = *v14;
    *&v56 = v13;
    v17 = *(v13 + 24);
    if (v15 >= v17 >> 1)
    {
      sub_222B4C600((v17 > 1), v15 + 1, 1);
      v13 = v56;
    }

    *(v13 + 16) = v15 + 1;
    *(v13 + 8 * v15 + 32) = v16;
    v14 += 2;
    ++v15;
    --v11;
  }

  while (v11);
  v18 = sub_222B72274(v13);

  v20 = v10[2];
  if (!v20)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_27:

    v10 = v23;
    v9 = v52;
    v34 = a5;
    v35 = a1;
    v8 = a4;
    if (*(a4 + 16))
    {
LABEL_28:
      *&v56 = v8;

      sub_222B49058(v10);
      v58 = MEMORY[0x277D84FA0];
      v39 = *(v56 + 16);
      if (v39)
      {
        v10 = MEMORY[0x277D84F90];
        v40 = v56 + 32;
        do
        {
          sub_222B43E3C(v40, &v56);
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
          *&v54 = swift_allocObject();
          sub_222B43E3C(&v56, v54 + 16);
          __swift_project_boxed_opaque_existential_1(&v54, v55);
          DynamicType = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_0Tm(&v54);
          if (sub_222B69F7C(&v54, DynamicType))
          {
            sub_222B405A0(&v56, &v54);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_222B4C5C0(0, v10[2] + 1, 1);
            }

            v43 = v10[2];
            v42 = v10[3];
            if (v43 >= v42 >> 1)
            {
              sub_222B4C5C0((v42 > 1), v43 + 1, 1);
            }

            v10[2] = v43 + 1;
            sub_222B405A0(&v54, &v10[5 * v43 + 4]);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v56);
          }

          v40 += 40;
          --v39;
        }

        while (v39);
        v9 = v52;
        v34 = a5;
        v35 = a1;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v37 = a2;
      v36 = a6;
      if (!a2)
      {
LABEL_41:

        v35 = v45;
        v38 = v36;
        if (v36)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      v9 = v37;
      v38 = v36;
      if (v36)
      {
LABEL_25:
        *a7 = v35;
        a7[1] = v9;
        a7[2] = v10;
        a7[3] = v34;
        a7[4] = v38;
      }

LABEL_24:
      v34 = v47;

      goto LABEL_25;
    }

LABEL_22:
    v37 = a2;
    v36 = a6;
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v21 = 0;
  v22 = v18 + 56;
  v23 = MEMORY[0x277D84F90];
  while (v21 < v10[2])
  {
    sub_222B43E3C(&v10[5 * v21 + 4], &v56);
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v24 = swift_getDynamicType();
    if (*(v18 + 16) && (v25 = v24, v26 = *(v18 + 40), v27 = sub_222C952EC(), v28 = -1 << *(v18 + 32), v29 = v27 & ~v28, ((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v30 = ~v28;
      while (*(*(v18 + 48) + 8 * v29) != v25)
      {
        v29 = (v29 + 1) & v30;
        if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    }

    else
    {
LABEL_16:
      sub_222B405A0(&v56, &v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C5C0(0, v23[2] + 1, 1);
        v23 = v58;
      }

      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        sub_222B4C5C0((v32 > 1), v33 + 1, 1);
        v23 = v58;
      }

      v23[2] = v33 + 1;
      result = sub_222B405A0(&v54, &v23[5 * v33 + 4]);
    }

    if (++v21 == v20)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B66CBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72C10();
  result = MEMORY[0x223DC96B0](v2, &type metadata for MediaEntityField, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_222B6AD70(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeaturisedTurn.init(turnId:features:coreDuetEvents:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for FeaturisedTurn(0);
  *(a5 + v11[6]) = a2;
  *(a5 + v11[7]) = a3;
  return sub_222B723A4(a4, a5 + v11[5], &qword_27D025360, &unk_222C98300);
}

uint64_t FeaturisedTurn.turnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeaturisedTurn.features.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeaturisedTurn(0) + 24));
}

uint64_t FeaturisedTurn.coreDuetEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeaturisedTurn(0) + 28));
}

uint64_t FeaturisedTurn.friendlyName.getter()
{
  sub_222C94D1C();

  sub_222C9367C();
  sub_222B72D78(&qword_280FE0298, MEMORY[0x277CC95F0]);
  v1 = sub_222C9517C();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](2112032, 0xE300000000000000);
  v2 = type metadata accessor for FeaturisedTurn(0);
  if (sub_222B417F4(*(v0 + *(v2 + 24))))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    sub_222B72340();
    v3 = sub_222C9445C();
    v5 = v4;
  }

  else
  {
    v5 = 0x8000000222CA9A90;
    v3 = 0xD000000000000012;
  }

  MEMORY[0x223DC9330](v3, v5);

  MEMORY[0x223DC9330](41, 0xE100000000000000);
  return 0x7369727574616546;
}

uint64_t FeaturisedTurn.postITNUtterance.getter()
{
  v1 = type metadata accessor for FeaturisedTurn(0);
  if (!sub_222B417F4(*(v0 + *(v1 + 24))))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
  sub_222B72340();
  v2 = sub_222C9445C();

  return v2;
}

uint64_t Array<A>.getSessionId()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(type metadata accessor for FeaturisedTurn(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = sub_222C9367C();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, a1 + v5, v6);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_222C9367C();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t Array<A>.getOriginalPlusId()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v25 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  v28 = a1;

  if (!v11)
  {
LABEL_5:
    v19 = sub_222C9367C();
    (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  }

  v29 = type metadata accessor for FeaturisedTurn(0);
  v12 = v28 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80));
  v13 = *(*(v29 - 8) + 72);
  while (1)
  {
    v14 = *(v12 + *(v29 + 24));
    sub_222B42000(v14, v10);
    v15 = sub_222C9367C();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(v10, 1, v15);
    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
    if (v18 != 1)
    {
      break;
    }

    v12 += v13;
    if (!--v11)
    {
      goto LABEL_5;
    }
  }

  v20 = v25;
  sub_222B42000(v14, v25);
  v21 = v26;
  sub_222B4FC6C(v20, v26, &unk_27D026290, &qword_222C96B40);
  result = v17(v21, 1, v15);
  if (result != 1)
  {
    v23 = v27;
    (*(v16 + 32))(v27, v21, v15);
    sub_222B4FCD4(v20, &unk_27D026290, &qword_222C96B40);
    (*(v16 + 56))(v23, 0, 1, v15);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.getOriginalRequestID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - v11;
  v12 = sub_222C9367C();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v51 - v17;
  sub_222B43E3C(a1, v69);
  v18 = *(a2 + 16);
  v55 = a2;

  v60 = v18;
  if (!v18)
  {
    goto LABEL_9;
  }

  v67 = v64 + 8;
  v68 = v64 + 16;
  v19 = type metadata accessor for FeaturisedTurn(0);
  v20 = 0;
  v56 = v19;
  v21 = *(v19 - 8);
  v59 = v55 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v58 = *(v21 + 72);
  v22 = v61;
  while (2)
  {
    v62 = v20;
    v65 = (v59 + v58 * v20);
    v23 = v70;
    v24 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v25 = 0;
    v63 = (*(v24 + 16))(v23, v24);
    v66 = *(v63 + 16);
    while (v66 != v25)
    {
      if (v25 >= *(v63 + 16))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = v64;
      v27 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v28 = *(v64 + 72);
      v29 = *(v64 + 16);
      v29(v22, v63 + v27 + v28 * v25++, v12);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      v30 = sub_222C9447C();
      v31 = *(v26 + 8);
      v31(v22, v12);
      if (v30)
      {
        v65 = v29;
        v66 = v28;
        v61 = v27;

        v63 = v64 + 48;
LABEL_11:
        v33 = v62;
        if (v62 < v60)
        {
          v34 = v57;
          v35 = *(v59 + v58 * v62 + *(v56 + 24));
          sub_222B421FC(v35, v57);
          v36 = *v63;
          v37 = (*v63)(v34, 1, v12);
          sub_222B4FCD4(v34, &unk_27D026290, &qword_222C96B40);
          if (v37 == 1)
          {
            v38 = __OFADD__(v33, 1);
            v39 = v33 + 1;
            if (!v38)
            {
              while (v39 != v60)
              {
                if (v39 >= v60)
                {
                  goto LABEL_28;
                }

                v62 = v39;
                v35 = v59 + v39 * v58;
                v41 = v70;
                v40 = v71;
                __swift_project_boxed_opaque_existential_1(v69, v70);
                v42 = (*(v40 + 16))(v41, v40);
                v43 = &v61[v42];
                v36 = -*(v42 + 16);
                v44 = -1;
                while ((v36 + v44) != -1)
                {
                  if (++v44 >= *(v42 + 16))
                  {
                    __break(1u);
                    goto LABEL_27;
                  }

                  v45 = &v43[v66];
                  v65(v16);
                  v46 = sub_222C9447C();
                  v31(v16, v12);
                  v43 = v45;
                  if (v46)
                  {

                    goto LABEL_11;
                  }
                }

                v39 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  goto LABEL_23;
                }
              }

              goto LABEL_9;
            }

LABEL_23:
            __break(1u);
          }

          v47 = v52;
          sub_222B421FC(v35, v52);
          v48 = v53;
          sub_222B4FC6C(v47, v53, &unk_27D026290, &qword_222C96B40);
          if (v36(v48, 1, v12) != 1)
          {
            v49 = v64;
            v50 = v54;
            (*(v64 + 32))(v54, v48, v12);
            sub_222B4FCD4(v47, &unk_27D026290, &qword_222C96B40);
            (*(v49 + 56))(v50, 0, 1, v12);
            goto LABEL_10;
          }

LABEL_30:
          result = __swift_destroy_boxed_opaque_existential_0Tm(v69);
          __break(1u);
          return result;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v20 = v62 + 1;
    if (v62 + 1 != v60)
    {
      continue;
    }

    break;
  }

LABEL_9:
  (*(v64 + 56))(v54, 1, 1, v12);
LABEL_10:

  return __swift_destroy_boxed_opaque_existential_0Tm(v69);
}

uint64_t sub_222B67BFC()
{
  type metadata accessor for FeaturisedSession(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E0, &qword_222C98AC8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025630 = 91;
  *algn_27D025638 = 0xE100000000000000;
  return result;
}

uint64_t FeaturisedSession.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturisedSession(0) + 20);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeaturisedSession.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v49 - v19;
  v61 = type metadata accessor for FeaturisedSession(0);
  v57 = *(v61 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (!v23)
  {
    v33 = v58;

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v42 = sub_222C9431C();
    __swift_project_value_buffer(v42, qword_280FE2340);
    v31 = sub_222C942FC();
    LOBYTE(v28) = sub_222C94A4C();
    if (!os_log_type_enabled(v31, v28))
    {
      goto LABEL_13;
    }

    v30 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v30 = 136315138;
    if (qword_27D024668 == -1)
    {
LABEL_12:
      *(v30 + 4) = sub_222B437C0(qword_27D025630, *algn_27D025638, &v62);
      _os_log_impl(&dword_222B39000, v31, v28, "%s FeaturisedSession not created, no sessionId available", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223DCA8C0](v34, -1, -1);
      MEMORY[0x223DCA8C0](v30, -1, -1);
LABEL_13:

      v43 = *(v57 + 56);
      v44 = v61;

      return v43(v33, 1, 1, v44);
    }

LABEL_21:
    swift_once();
    goto LABEL_12;
  }

  v50 = v10;
  v51 = v7;
  v24 = type metadata accessor for FeaturisedTurn(0);
  v55 = *(v24 - 8);
  v56 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v60 = a1;
  v54 = v14[2];
  v54(v18);
  v53 = v14;
  v25 = v59;
  v49 = v14[4];
  v49(v59, v18, v13);
  v26 = *(v61 + 20);
  v52 = v22;
  v27 = &v22[v26];
  v28 = v13;
  (v54)(v27, v25, v13);
  v29 = v55[9];
  v55 = v14 + 4;
  v30 = (v14 + 6);

  v31 = 0;
  v32 = v56;
  while (1)
  {
    sub_222B42000(*(v32 + *(v24 + 24)), v12);
    v33 = (*v30)(v12, 1, v28);
    sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
    if (v33 != 1)
    {
      break;
    }

    ++v31;
    v32 += v29;
    if (v23 == v31)
    {
      v31 = v23;
      break;
    }
  }

  v34 = v61;
  v35 = *(v61 + 24);
  v36 = *(v60 + 16);
  if (v31 == v36)
  {
    v37 = 1;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    v41 = v52;
LABEL_19:
    v48 = v53;
    (v53[7])(&v41[v35], v37, 1, v28);

    (v48[1])(v39, v28);
    *v41 = v40;
    sub_222B7240C(v41, v38, type metadata accessor for FeaturisedSession);
    return (*(v57 + 56))(v38, 0, 1, v34);
  }

  if (v31 >= v36)
  {
    __break(1u);
    goto LABEL_21;
  }

  v46 = v50;
  sub_222B42000(*(v56 + v29 * v31 + *(v24 + 24)), v50);
  v47 = v51;
  sub_222B4FC6C(v46, v51, &unk_27D026290, &qword_222C96B40);
  result = (*v30)(v47, 1, v28);
  if (result != 1)
  {
    v41 = v52;
    v49(&v52[v35], v47, v28);
    sub_222B4FCD4(v46, &unk_27D026290, &qword_222C96B40);
    v37 = 0;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t FeaturisedSession.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;

  result = sub_222B66098(a1, a2, v8, type metadata accessor for FeaturisedTurn, type metadata accessor for FeaturisedTurn, type metadata accessor for FeaturisedTurn, sub_222B4C3D4);
  if (!v4)
  {
    v10 = result;
    v11 = type metadata accessor for FeaturisedSession(0);
    v12 = *(v11 + 20);
    v13 = sub_222C9367C();
    (*(*(v13 - 8) + 16))(a3 + v12, v3 + v12, v13);
    result = sub_222B4FC6C(v3 + *(v11 + 24), a3 + *(v11 + 24), &unk_27D026290, &qword_222C96B40);
    *a3 = v10;
  }

  return result;
}

uint64_t FeaturisedSession.findEvent(eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v37 - v13;
  v14 = *v3;
  v37 = v6;
  v40 = (v6 + 48);
  v41 = (v6 + 56);
  v46 = v14;

  v45 = 0;
  while (1)
  {
    v25 = v45;
    v26 = *(v46 + 16);
    if (v45 == v26)
    {
      v27 = 1;
      v29 = v43;
      v28 = v44;
      v30 = v42;
      goto LABEL_15;
    }

    v29 = v43;
    v28 = v44;
    v30 = v42;
    if (v45 >= v26)
    {
      break;
    }

    sub_222B72B48(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42, type metadata accessor for FeaturisedTurn);
    v27 = 0;
    ++v25;
LABEL_15:
    (*v41)(v30, v27, 1, v28);
    sub_222B723A4(v30, v29, &qword_27D0253C8, &unk_222C98400);
    if ((*v40)(v29, 1, v28) == 1)
    {

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      v36[1] = 0u;
      return result;
    }

    v45 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B7240C(v31, v39, type metadata accessor for FeaturisedTurn);
    v33 = *(v32 + *(v28 + 28));

    sub_222B72BB0(v32, type metadata accessor for FeaturisedTurn);

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_22;
        }

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == a1 && v19 == a2)
        {
          v20 = a1;
LABEL_19:

          v35 = v38;
          *v38 = v20;
          v35[1] = v19;
          v35[2] = v21;
          v35[3] = v22;
          v35[4] = v23;
          return result;
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t FeaturisedSession.getOriginalRequestID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v52 = &v46 - v13;
  v14 = *v2;
  sub_222B43E3C(a1, v57);
  v15 = *(v14 + 16);

  v56 = v15;
  if (v15)
  {
    v47 = v12;
    v48 = v9;
    v50 = a2;
    v16 = 0;
    v51 = type metadata accessor for FeaturisedTurn(0);
    v17 = *(v51 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v49 = v14;
    v19 = v14 + v18;
    v20 = *(v17 + 72);
    v53 = v19;
    v54 = v20;
LABEL_3:
    v55 = (v19 + v20 * v16);
    v21 = v58;
    v22 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v23 = 0;
    v24 = *((*(v22 + 16))(v21, v22) + 16);
    do
    {
      if (v24 == v23)
      {

        ++v16;
        v19 = v53;
        v20 = v54;
        if (v16 != v56)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

      v25 = sub_222C9367C();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = *(v26 + 72);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      ++v23;
    }

    while ((sub_222C9447C() & 1) == 0);
    v55 = (v26 + 48);
LABEL_9:

    if (v16 < v56)
    {
      v29 = v52;
      sub_222B421FC(*(v53 + v54 * v16 + *(v51 + 24)), v52);
      v30 = (*v55)(v29, 1, v25);
      sub_222B4FCD4(v29, &unk_27D026290, &qword_222C96B40);
      if (v30 == 1)
      {
        v31 = __OFADD__(v16++, 1);
        if (!v31)
        {
          while (v16 != v56)
          {
            if (v16 >= v56)
            {
              __break(1u);
              goto LABEL_30;
            }

            v33 = v58;
            v32 = v59;
            __swift_project_boxed_opaque_existential_1(v57, v58);
            v34 = (*(v32 + 16))(v33, v32);
            v35 = *(v34 + 16);
            v36 = v34 + v27;
            v37 = v35 + 1;
            while (--v37)
            {
              v38 = v36 + v28;
              v39 = sub_222C9447C();
              v36 = v38;
              if (v39)
              {
                goto LABEL_9;
              }
            }

            v31 = __OFADD__(v16++, 1);
            if (v31)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
      }

      v56 = v16;
LABEL_22:
      v14 = v49;
      a2 = v50;
      v12 = v47;
      v9 = v48;
      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_23:
  v40 = *(v14 + 16);
  if (v56 == v40)
  {
    v41 = sub_222C9367C();
    (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
LABEL_28:

    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  if (v56 >= v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = type metadata accessor for FeaturisedTurn(0);
  sub_222B421FC(*(v14 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)) + *(*(v42 - 8) + 72) * v56 + *(v42 + 24)), v12);
  sub_222B4FC6C(v12, v9, &unk_27D026290, &qword_222C96B40);
  v43 = sub_222C9367C();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v9, 1, v43) != 1)
  {
    (*(v44 + 32))(a2, v9, v43);
    sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
    (*(v44 + 56))(a2, 0, 1, v43);
    goto LABEL_28;
  }

LABEL_32:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v57);
  __break(1u);
  return result;
}

uint64_t sub_222B68DD8(void *a1, uint64_t a2)
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

    v8 = sub_222C94C7C();

    if (v8)
    {

      sub_222C9378C();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_222C94C6C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v11 = sub_222B6AE68(v7, result + 1);
        v12 = *(v11 + 16);
        if (*(v11 + 24) <= v12)
        {
          sub_222B6B37C(v12 + 1);
        }

        sub_222B6D258(v13, v11);

        *v3 = v11;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_222C952FC();
    if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
    {
      sub_222C9531C();
      sub_222C9452C();
    }

    else
    {
      sub_222C9531C();
    }

    v24 = v2;
    v14 = sub_222C9534C();
    v15 = -1 << *(v6 + 32);
    v16 = v14 & ~v15;
    if ((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v6 + 48) + 8 * v16);
        sub_222C952FC();

        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        v19 = sub_222C9534C();
        sub_222C952FC();
        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        v20 = sub_222C9534C();

        if (v19 == v20)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v16);

      return 0;
    }

    else
    {
LABEL_24:
      v21 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v24;

      sub_222B6D44C(v23, v16, isUniquelyReferenced_nonNull_native);
      *v24 = v26;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_222B69110(uint64_t *a1, uint64_t a2)
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

    v8 = sub_222C94C7C();

    if (v8)
    {

      *&v121 = v8;
      sub_222C9386C();
      swift_dynamicCast();
      result = 0;
      *a1 = v88;
    }

    else
    {
      result = sub_222C94C6C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v11 = sub_222B6B030(v7, result + 1);
        v88 = v11;
        v12 = *(v11 + 16);
        if (*(v11 + 24) <= v12)
        {
          sub_222B6B59C(v12 + 1);
          v11 = v88;
        }

        sub_222B6D340(v13, v11);

        *v3 = v11;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v10 = *(v6 + 40);
  sub_222C952FC();
  sub_222C0A220(a2, v104);
  if (*(&v104[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v123 = v104[2];
    v124 = v104[3];
    v125 = v104[4];
    v121 = v104[0];
    v122 = v104[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v104, &qword_27D0256C8, &unk_222C98AB0);
  }

  v58 = v2;
  v59 = a1;
  v14 = sub_222C9534C();
  v15 = -1 << *(v6 + 32);
  v16 = v14 & ~v15;
  v70 = v6 + 56;
  if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_65:
    v53 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v58;

    sub_222B6D6D8(v55, v16, isUniquelyReferenced_nonNull_native);
    *v58 = v88;
    *v59 = a2;
    return 1;
  }

  v68 = v6;
  v69 = ~v15;
  v67 = a2;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v16);

    sub_222C0A220(v18, &v105);
    sub_222C0A220(a2, &v115);
    v19 = v105;
    v20 = v106;
    v21 = v108;
    v76 = v110;
    v77 = v107;
    v74 = v109;
    v75 = v112;
    v71 = v113;
    v72 = v111;
    v73 = v114;
    v22 = v115;
    v23 = v116;
    v100 = v117;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    if (v106 == 1)
    {

      if (v23 == 1)
      {
        v88 = v19;
        v89 = 1;
        *&v90 = v77;
        *(&v90 + 1) = v21;
        *&v91 = v74;
        *(&v91 + 1) = v76;
        *&v92 = v72;
        *(&v92 + 1) = v75;
        *&v93 = v71;
        *(&v93 + 1) = v73;
        v56 = &v88;
        goto LABEL_66;
      }

      goto LABEL_24;
    }

    if (v116 == 1)
    {

LABEL_24:
      v88 = v19;
      v89 = v20;
      *&v90 = v77;
      *(&v90 + 1) = v21;
      *&v91 = v74;
      *(&v91 + 1) = v76;
      *&v92 = v72;
      *(&v92 + 1) = v75;
      *&v93 = v71;
      *(&v93 + 1) = v73;
      v94 = v22;
      v95 = v23;
      v96 = v100;
      v97 = v101;
      v98 = v102;
      v99 = v103;
      v24 = &v88;
      v25 = &qword_27D0256D0;
      v26 = &unk_222C9A490;
      goto LABEL_25;
    }

    v88 = v115;
    v89 = v116;
    v92 = v119;
    v93 = v120;
    v90 = v117;
    v91 = v118;
    v27 = v117;
    v28 = *(&v118 + 1);
    v29 = v118;
    v30 = *(&v119 + 1);
    v31 = v119;
    v33 = *(&v120 + 1);
    v32 = v120;
    if (v106)
    {
      if (!v116)
      {
        goto LABEL_17;
      }

      if (v105 != v115 || v106 != v116)
      {
        v60 = *(&v93 + 1);
        v63 = v93;
        v34 = *(&v92 + 1);
        v35 = v92;
        v57 = v105;
        v36 = *(&v118 + 1);
        v37 = v118;
        v38 = sub_222C951FC();
        v29 = v37;
        v28 = v36;
        v19 = v57;
        v31 = v35;
        v30 = v34;
        v33 = v60;
        v32 = v63;
        if ((v38 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else if (v116)
    {
      goto LABEL_17;
    }

    if (v21)
    {
      break;
    }

    if (!*(&v27 + 1))
    {
      goto LABEL_35;
    }

LABEL_17:
    sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);

    sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v115, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v105, &qword_27D0256C8, &unk_222C98AB0);
    v78 = v19;
    v79 = v20;
    v80 = v77;
    v81 = v21;
    v82 = v74;
    v83 = v76;
    v84 = v72;
    v85 = v75;
    v86 = v71;
    v87 = v73;
    sub_222B4FCD4(&v78, &qword_27D0256C8, &unk_222C98AB0);
    a2 = v67;
    v6 = v68;
LABEL_18:
    v16 = (v16 + 1) & v69;
    if (((*(v70 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (!*(&v27 + 1))
  {
    goto LABEL_17;
  }

  if (__PAIR128__(v21, v77) != v27)
  {
    v61 = v33;
    v64 = v32;
    v39 = v30;
    v40 = v31;
    v41 = v19;
    v42 = v28;
    v43 = v29;
    v44 = sub_222C951FC();
    v29 = v43;
    v28 = v42;
    v19 = v41;
    v31 = v40;
    v30 = v39;
    v33 = v61;
    v32 = v64;
    if ((v44 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_35:
  if (v76)
  {
    v6 = v68;
    if (!v28)
    {
      sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);
      a2 = v67;
      goto LABEL_60;
    }

    a2 = v67;
    if (v74 != v29 || v76 != v28)
    {
      v62 = v33;
      v65 = v32;
      v45 = v30;
      v46 = v31;
      v47 = sub_222C951FC();
      v31 = v46;
      v30 = v45;
      v33 = v62;
      v32 = v65;
      if ((v47 & 1) == 0)
      {
LABEL_59:
        sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
        sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);
LABEL_60:

        sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
        sub_222B4FCD4(&v115, &qword_27D0256C8, &unk_222C98AB0);
        v51 = &v105;
LABEL_61:
        sub_222B4FCD4(v51, &qword_27D0256C8, &unk_222C98AB0);
LABEL_62:
        v78 = v19;
        v79 = v20;
        v80 = v77;
        v81 = v21;
        v82 = v74;
        v83 = v76;
        v84 = v72;
        v85 = v75;
        v86 = v71;
        v87 = v73;
        v24 = &v78;
        v25 = &qword_27D0256C8;
        v26 = &unk_222C98AB0;
LABEL_25:
        sub_222B4FCD4(v24, v25, v26);
        goto LABEL_18;
      }
    }
  }

  else
  {
    a2 = v67;
    v6 = v68;
    if (v28)
    {
      sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);

      sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v115, &qword_27D0256C8, &unk_222C98AB0);
      sub_222B4FCD4(&v105, &qword_27D0256C8, &unk_222C98AB0);
      v78 = v19;
      v79 = v20;
      v80 = v77;
      v81 = v21;
      v82 = v74;
      v83 = 0;
      v84 = v72;
      v85 = v75;
      v86 = v71;
      v87 = v73;
      v24 = &v78;
      v25 = &qword_27D0256C8;
      v26 = &unk_222C98AB0;
      goto LABEL_25;
    }
  }

  if (v75)
  {
    if (!v30)
    {
      goto LABEL_59;
    }

    if (v72 != v31 || v75 != v30)
    {
      v48 = v32;
      v49 = v33;
      v50 = sub_222C951FC();
      v32 = v48;
      v33 = v49;
      if ((v50 & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_59;
  }

  if (!v73)
  {
    v52 = v33;

    v51 = &v88;
    if (!v52)
    {
      goto LABEL_68;
    }

    goto LABEL_61;
  }

  if (!v33)
  {
    goto LABEL_59;
  }

  if (v71 != v32 || v73 != v33)
  {
    v66 = sub_222C951FC();
    sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);

    sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v115, &qword_27D0256C8, &unk_222C98AB0);
    sub_222B4FCD4(&v105, &qword_27D0256C8, &unk_222C98AB0);
    if (v66)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  sub_222B4FC6C(&v105, &v78, &qword_27D0256C8, &unk_222C98AB0);
  sub_222B4FC6C(&v115, &v78, &qword_27D0256C8, &unk_222C98AB0);

  sub_222B4FCD4(&v88, &qword_27D0256C8, &unk_222C98AB0);
  v6 = v68;
  sub_222B4FCD4(&v115, &qword_27D0256C8, &unk_222C98AB0);
  v51 = &v105;
LABEL_68:
  sub_222B4FCD4(v51, &qword_27D0256C8, &unk_222C98AB0);
LABEL_69:
  v78 = v19;
  v79 = v20;
  v80 = v77;
  v81 = v21;
  v82 = v74;
  v83 = v76;
  v84 = v72;
  v85 = v75;
  v86 = v71;
  v87 = v73;
  v56 = &v78;
LABEL_66:
  sub_222B4FCD4(v56, &qword_27D0256C8, &unk_222C98AB0);

  *v59 = *(*(v6 + 48) + 8 * v16);

  return 0;
}

uint64_t sub_222B69B4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v9 = sub_222C9534C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_222C951FC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_222B6DF54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222B69C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_222C9440C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      v23 = sub_222C9447C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_222B6E0D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_222B69F7C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_222C952EC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_222B6E39C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6A060(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_222BBF5A4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v32 = ~v7;
    v9 = 0xE900000000000064;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v10 == 6)
          {
            v15 = 0xD000000000000013;
            v16 = 0x8000000222CA93E0;
          }

          else
          {
            v15 = 0xD000000000000012;
            v16 = 0x8000000222CA9400;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v15 = 0x7972617262696CLL;
          }

          else
          {
            v15 = 0xD000000000000011;
          }

          if (v10 == 4)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0x8000000222CA93C0;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v11 = 0x6974636572726F63;
        }

        if (v10 == 2)
        {
          v12 = 0xE900000000000064;
        }

        else
        {
          v12 = 0xEA00000000006E6FLL;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = 0x656D7269666E6F63;
        }

        else
        {
          v13 = 0x754D6E69616D6F64;
        }

        if (*(*(v4 + 48) + v8))
        {
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = 0xEB00000000636973;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0xD000000000000013;
      if (a2 != 6)
      {
        v17 = 0xD000000000000012;
      }

      v18 = 0x8000000222CA9400;
      if (a2 == 6)
      {
        v18 = 0x8000000222CA93E0;
      }

      v19 = 0x7972617262696CLL;
      if (a2 != 4)
      {
        v19 = 0xD000000000000011;
      }

      v20 = 0x8000000222CA93C0;
      if (a2 == 4)
      {
        v20 = 0xE700000000000000;
      }

      if (a2 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a2 == 2)
      {
        v21 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v21 = 0x6974636572726F63;
      }

      if (a2 == 2)
      {
        v22 = 0xE900000000000064;
      }

      else
      {
        v22 = 0xEA00000000006E6FLL;
      }

      if (a2)
      {
        v23 = 0x656D7269666E6F63;
      }

      else
      {
        v23 = 0x754D6E69616D6F64;
      }

      if (!a2)
      {
        v9 = 0xEB00000000636973;
      }

      if (a2 <= 1u)
      {
        v21 = v23;
        v22 = v9;
      }

      v24 = a2 <= 3u ? v21 : v17;
      v25 = a2 <= 3u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        break;
      }

      v26 = sub_222C951FC();

      if (v26)
      {
        goto LABEL_67;
      }

      v8 = (v8 + 1) & v32;
      v9 = 0xE900000000000064;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_65:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_222B6E4BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6A358(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_222C952FC();
  sub_222C9452C();

  v6 = sub_222C9534C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v27 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v26 = ~v7;
    v9 = 0xEA00000000006E6FLL;
    v10 = 0x6974636572726F63;
    v28 = v4;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v12 = 0x68506E69616D6F64;
        }

        else
        {
          v12 = 0x654D6E69616D6F64;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v13 = 0xEE00736567617373;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0x656D7269666E6F63;
        v13 = 0xE900000000000064;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v12 = v10;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xEA00000000006E6FLL;
        }
      }

      if (a2 == 3)
      {
        v14 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v14 = v10;
      }

      if (a2 == 3)
      {
        v9 = 0xE900000000000064;
      }

      if (a2 == 2)
      {
        v14 = 0x656D7269666E6F63;
        v9 = 0xE900000000000064;
      }

      v15 = a2 ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
      v16 = a2 ? 0xEF6C6C6143656E6FLL : 0xEE00736567617373;
      v17 = a2 <= 1u ? v15 : v14;
      v18 = a2 <= 1u ? v16 : v9;
      v29 = v8;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = v10;
      v20 = sub_222C951FC();

      if (v20)
      {
        goto LABEL_43;
      }

      v8 = (v29 + 1) & v26;
      v9 = 0xEA00000000006E6FLL;
      v10 = v19;
      v4 = v28;
      if (((*(v27 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v28 + 48) + v29);
  }

  else
  {
LABEL_41:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v24;
    sub_222B6E814(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v30;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6A674(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v6 = a2[2];
  v42 = *a2;
  v43 = v5;
  v7 = *a2;
  v8 = *(a2 + 1);
  v44 = v6;
  v45 = *(a2 + 24);
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v11 = sub_222C9534C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v9 + 48) + 56 * v13;
      v16 = *(v15 + 48);
      v17 = *(v15 + 32);
      v18 = *v15;
      v36[1] = *(v15 + 16);
      v36[2] = v17;
      v36[0] = v18;
      v37 = v16;
      v32 = *v15;
      v33 = *(v15 + 16);
      v34 = *(v15 + 32);
      v35 = *(v15 + 48);
      sub_222B554C0(v36, v30);
      v19 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v32, &v42);
      v38 = v32;
      v39 = v33;
      v40 = v34;
      v41 = v35;
      sub_222B55A80(&v38);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v30[0] = v42;
    v30[1] = v43;
    v30[2] = v44;
    v31 = v45;
    sub_222B55A80(v30);
    v24 = *(v9 + 48) + 56 * v13;
    v26 = *(v24 + 16);
    v25 = *(v24 + 32);
    v27 = *v24;
    v35 = *(v24 + 48);
    v32 = v27;
    v33 = v26;
    v34 = v25;
    v28 = *(v24 + 16);
    *a1 = *v24;
    *(a1 + 16) = v28;
    *(a1 + 32) = *(v24 + 32);
    *(a1 + 48) = *(v24 + 48);
    sub_222B554C0(&v32, v29);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    *&v32 = *v3;
    sub_222B554C0(&v38, v36);
    sub_222B6EBA8(&v38, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    v22 = v43;
    *a1 = v42;
    *(a1 + 16) = v22;
    *(a1 + 32) = v44;
    *(a1 + 48) = v45;
    return 1;
  }
}

uint64_t sub_222B6A8B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222C942CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8]);
  v36 = a2;
  v13 = sub_222C9440C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_222B72D78(&qword_27D0256A0, MEMORY[0x277D5FCE8]);
      v23 = sub_222C9447C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_222B6EDA8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_222B6AB94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v12 = sub_222C9534C();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_18:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_222B6F070(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v16 = ~v14;
  v30 = v10;
  v17 = *(v10 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v20 = v18[2];
    v19 = v18[3];
    v21 = *v18 == a2 && v18[1] == a3;
    if (!v21 && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v19)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_19;
    }

LABEL_4:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!a5)
  {
    goto LABEL_4;
  }

  v22 = v20 == a4 && v19 == a5;
  if (!v22 && (sub_222C951FC() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:

  v26 = (*(v30 + 48) + 32 * v15);
  v27 = v26[1];
  v29 = v26[2];
  v28 = v26[3];
  *a1 = *v26;
  a1[1] = v27;
  a1[2] = v29;
  a1[3] = v28;

  return 0;
}

uint64_t sub_222B6AD70(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_222C952FC();
  MEMORY[0x223DCA0B0](a2);
  v7 = sub_222C9534C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_222B6F238(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_222B6AE68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
    v2 = sub_222C94CEC();
    v9 = v2;
    sub_222C94C5C();
    if (sub_222C94C8C())
    {
      sub_222C9378C();
      do
      {
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_222B6B37C(v6 + 1);
        }

        v2 = v9;
        v3 = *(v9 + 40);
        sub_222C952FC();
        if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
        {
          sub_222C9531C();
          sub_222C9452C();
        }

        else
        {
          sub_222C9531C();
        }

        sub_222C9534C();
        v4 = -1 << *(v9 + 32);
        v5 = sub_222C94C4C();
        *(v9 + 56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
        *(*(v9 + 48) + 8 * v5) = v8;
        ++*(v9 + 16);
      }

      while (sub_222C94C8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_222B6B030(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
    v2 = sub_222C94CEC();
    v21 = v2;
    sub_222C94C5C();
    if (sub_222C94C8C())
    {
      sub_222C9386C();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_222B6B59C(v4 + 1);
        }

        v2 = v21;
        v5 = *(v21 + 40);
        sub_222C952FC();
        sub_222C0A220(v20, &v22);
        v6 = v23;
        if (v23 == 1)
        {
          sub_222C9531C();
        }

        else
        {
          v7 = v24;
          v8 = v25;
          v9 = v26;
          v10 = v27;
          sub_222C9531C();
          sub_222C9531C();
          if (v6)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v7)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v8)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v9)
          {
            sub_222C9452C();
          }

          sub_222C9531C();
          if (v10)
          {
            sub_222C9452C();
          }

          sub_222B4FCD4(&v22, &qword_27D0256C8, &unk_222C98AB0);
        }

        result = sub_222C9534C();
        v12 = v21 + 56;
        v13 = -1 << *(v21 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v21 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v14) & ~*(v21 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v15 == v17;
            if (v15 == v17)
            {
              v15 = 0;
            }

            v16 |= v18;
            v19 = *(v12 + 8 * v15);
          }

          while (v19 == -1);
          v3 = __clz(__rbit64(~v19)) + (v15 << 6);
        }

        *(v12 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v21 + 48) + 8 * v3) = v20;
        ++*(v21 + 16);
      }

      while (sub_222C94C8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_222B6B37C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v22 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      sub_222C9534C();
      v14 = -1 << *(v6 + 32);
      result = sub_222C94C4C();
      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v18;
      ++*(v6 + 16);
      v3 = v22;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
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
        goto LABEL_17;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero(v8, ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6B59C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = result;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_46;
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
            v36 = (v17 - 1) & v17;
            goto LABEL_17;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v31;
        }

        v2 = v32;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_222C952FC();
      sub_222C0A220(v18, &v37);
      v20 = v38;
      if (v38 == 1)
      {
        sub_222C9531C();
        goto LABEL_31;
      }

      v21 = v39;
      v34 = v40;
      v35 = v41;
      v22 = v42;
      sub_222C9531C();
      sub_222C9531C();
      if (v20)
      {
        sub_222C9452C();
      }

      v23 = v22;
      sub_222C9531C();
      if (v21)
      {
        sub_222C9452C();
      }

      v6 = v33;
      if (v34)
      {
        sub_222C9531C();
        sub_222C9452C();
        if (!v35)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_222C9531C();
        if (!v35)
        {
LABEL_27:
          sub_222C9531C();
          goto LABEL_28;
        }
      }

      sub_222C9531C();
      sub_222C9452C();
LABEL_28:
      sub_222C9531C();
      if (v23)
      {
        sub_222C9452C();
      }

      sub_222B4FCD4(&v37, &qword_27D0256C8, &unk_222C98AB0);
LABEL_31:
      result = sub_222C9534C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v11 = v36;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6B95C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6BBBC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_222C9367C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025668, &qword_222C98A80);
  result = sub_222C94CDC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_222B6BF18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_222C952EC();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6C13C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6C4AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6C7B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v32 = *(v19 + 16);
      v33 = *(v19 + 32);
      v34 = *(v19 + 48);
      v22 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v32;
      *(v15 + 32) = v33;
      *(v15 + 48) = v34;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6CA38(uint64_t a1)
{
  v2 = v1;
  v41 = sub_222C942CC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256A8, &qword_222C98AA0);
  result = sub_222C94CDC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8]);
      result = sub_222C9440C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_222B6CD94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v34 = v19[3];
      v23 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();
      result = sub_222C9534C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v34;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B6D008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025670, &qword_222C98A88);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v18);
      result = sub_222C9534C();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_222B6D258(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  sub_222C9534C();
  v5 = -1 << *(a2 + 32);
  result = sub_222C94C4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_222B6D340(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_222C952FC();
  sub_222C0A220(a1, v7);
  if (*(&v7[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v7[7] = v7[2];
    v7[8] = v7[3];
    v7[9] = v7[4];
    v7[5] = v7[0];
    v7[6] = v7[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v7, &qword_27D0256C8, &unk_222C98AB0);
  }

  sub_222C9534C();
  v5 = -1 << *(a2 + 32);
  result = sub_222C94C4C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_222B6D44C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_222B6B37C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_222B6F398(&qword_27D0256B8, &qword_222C98AA8);
      goto LABEL_21;
    }

    sub_222B6FDE0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  result = sub_222C9534C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_222C9378C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v13 = sub_222C9534C();
      sub_222C952FC();
      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      v14 = sub_222C9534C();

      if (v13 == v14)
      {
        goto LABEL_24;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6D6D8(uint64_t result, unint64_t a2, char a3)
{
  v65 = result;
  v11 = *(*v4 + 16);
  v12 = *(*v4 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v13 = v61;
      sub_222B6B59C(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_222B6F398(&qword_27D0256D8, &qword_222C98AC0);
        goto LABEL_66;
      }

      v13 = v61;
      sub_222B6FFCC(v11 + 1);
    }

    v64 = *v13;
    v14 = *(*v13 + 40);
    sub_222C952FC();
    sub_222C0A220(v65, v92);
    if (*(&v92[0] + 1) == 1)
    {
      sub_222C9531C();
    }

    else
    {
      v109 = v92[2];
      v110 = v92[3];
      v111 = v92[4];
      v107 = v92[0];
      v108 = v92[1];
      sub_222C9531C();
      sub_222BEEE64();
      sub_222B4FCD4(v92, &qword_27D0256C8, &unk_222C98AB0);
    }

    result = sub_222C9534C();
    v15 = -1 << *(v64 + 32);
    a2 = result & ~v15;
    if ((*(v64 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v63 = ~v15;
      sub_222C9386C();
      do
      {
        v16 = *(*(v64 + 48) + 8 * a2);

        sub_222C0A220(v17, &v93);
        sub_222C0A220(v65, &v101);
        v3 = v93;
        v8 = v94;
        v67 = v95;
        v66 = v96;
        v9 = v97;
        v5 = v98;
        v6 = v99;
        v7 = v100;
        v19 = v101;
        v18 = v102;
        v88 = v103;
        v89 = v104;
        v90 = v105;
        v91 = v106;
        if (v94 == 1)
        {

          if (v18 == 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v102 != 1)
          {
            v62 = v99;
            v76 = v101;
            v77 = v102;
            v80 = v105;
            v81 = v106;
            v78 = v103;
            v79 = v104;
            v6 = *(&v103 + 1);
            v23 = v103;
            v24 = *(&v104 + 1);
            v25 = v104;
            v26 = *(&v105 + 1);
            v27 = v105;
            v28 = *(&v106 + 1);
            v29 = v106;
            if (v94)
            {
              if (!v102)
              {
                goto LABEL_36;
              }

              if (v93 != v101 || v94 != v102)
              {
                v55 = *(&v81 + 1);
                v57 = *(&v80 + 1);
                v30 = v81;
                v31 = v80;
                v53 = v104;
                v52 = v103;
                v32 = sub_222C951FC();
                v23 = v52;
                v24 = *(&v53 + 1);
                v25 = v53;
                v28 = v55;
                v27 = v31;
                v26 = v57;
                v29 = v30;
                if ((v32 & 1) == 0)
                {
LABEL_36:
                  sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);

                  sub_222B4FCD4(&v76, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v101, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v93, &qword_27D0256C8, &unk_222C98AB0);
                  v68 = v3;
                  v69 = v8;
                  v70 = v67;
                  v71 = v66;
                  v72 = v9;
                  v73 = v5;
                  goto LABEL_37;
                }
              }
            }

            else if (v102)
            {
              goto LABEL_36;
            }

            if (*(&v67 + 1))
            {
              if (!v6)
              {
                goto LABEL_36;
              }

              if (v67 != __PAIR128__(v6, v23))
              {
                v56 = v28;
                v58 = v26;
                v33 = v29;
                v34 = v27;
                v54 = v24;
                v6 = v25;
                v35 = sub_222C951FC();
                v25 = v6;
                v24 = v54;
                v28 = v56;
                v27 = v34;
                v26 = v58;
                v29 = v33;
                if ((v35 & 1) == 0)
                {
                  goto LABEL_36;
                }
              }
            }

            else if (v6)
            {
              goto LABEL_36;
            }

            if (*(&v66 + 1))
            {
              v6 = v5;
              if (!v24)
              {
                sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);
                v5 = v9;
LABEL_51:
                v9 = v7;
                goto LABEL_59;
              }

              v5 = v9;
              if (v66 != __PAIR128__(v24, v25))
              {
                v36 = v28;
                v37 = v29;
                v38 = v26;
                v59 = v6;
                v39 = v5;
                v40 = v27;
                v41 = sub_222C951FC();
                v27 = v40;
                v5 = v39;
                v6 = v59;
                v26 = v38;
                v29 = v37;
                v28 = v36;
                if ((v41 & 1) == 0)
                {
                  sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);
                  goto LABEL_51;
                }
              }

LABEL_44:
              v9 = v7;
              if (v6)
              {
                if (!v26)
                {
                  goto LABEL_58;
                }

                if (v5 != v27 || v6 != v26)
                {
                  v42 = v28;
                  v43 = v29;
                  v44 = sub_222C951FC();
                  v29 = v43;
                  v28 = v42;
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_58;
                  }
                }
              }

              else if (v26)
              {
                goto LABEL_58;
              }

              if (v7)
              {
                if (v28)
                {
                  v7 = v62;
                  if (v62 == v29 && v9 == v28)
                  {
                    v60 = 1;
                  }

                  else
                  {
                    v60 = sub_222C951FC();
                  }

                  sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);

                  sub_222B4FCD4(&v76, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v101, &qword_27D0256C8, &unk_222C98AB0);
                  sub_222B4FCD4(&v93, &qword_27D0256C8, &unk_222C98AB0);
                  v68 = v3;
                  v69 = v8;
                  v70 = v67;
                  v71 = v66;
                  v72 = v5;
                  v73 = v6;
                  v74 = v62;
                  v75 = v9;
                  result = sub_222B4FCD4(&v68, &qword_27D0256C8, &unk_222C98AB0);
                  if (v60)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_40;
                }

LABEL_58:
                sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);
LABEL_59:

                sub_222B4FCD4(&v76, &qword_27D0256C8, &unk_222C98AB0);
                sub_222B4FCD4(&v101, &qword_27D0256C8, &unk_222C98AB0);
                v45 = &v93;
              }

              else
              {
                v46 = v28;

                if (!v46)
                {
                  goto LABEL_72;
                }

                v45 = &v76;
              }

              sub_222B4FCD4(v45, &qword_27D0256C8, &unk_222C98AB0);
              v68 = v3;
              v69 = v8;
              v70 = v67;
              v71 = v66;
              v72 = v5;
              v73 = v6;
              v74 = v62;
              v75 = v9;
            }

            else
            {
              v6 = v5;
              v5 = v9;
              if (!v24)
              {
                goto LABEL_44;
              }

              sub_222B4FC6C(&v93, &v68, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FC6C(&v101, &v68, &qword_27D0256C8, &unk_222C98AB0);

              sub_222B4FCD4(&v76, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FCD4(&v101, &qword_27D0256C8, &unk_222C98AB0);
              sub_222B4FCD4(&v93, &qword_27D0256C8, &unk_222C98AB0);
              v68 = v3;
              v69 = v8;
              v70 = v67;
              v71 = v66;
              v72 = v9;
              v73 = v6;
LABEL_37:
              v74 = v62;
              v75 = v7;
            }

            v20 = &v68;
            v21 = &qword_27D0256C8;
            v22 = &unk_222C98AB0;
            goto LABEL_39;
          }
        }

        v76 = v3;
        v77 = v8;
        v78 = v67;
        v79 = v66;
        *&v80 = v9;
        *(&v80 + 1) = v5;
        *&v81 = v6;
        *(&v81 + 1) = v7;
        v82 = v19;
        v83 = v18;
        v84 = v88;
        v85 = v89;
        v86 = v90;
        v87 = v91;
        v20 = &v76;
        v21 = &qword_27D0256D0;
        v22 = &unk_222C9A490;
LABEL_39:
        result = sub_222B4FCD4(v20, v21, v22);
LABEL_40:
        a2 = (a2 + 1) & v63;
      }

      while (((*(v64 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_66:
  v47 = *v61;
  *(*v61 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v47 + 48) + 8 * a2) = v65;
  v48 = *(v47 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
LABEL_69:
    v76 = v3;
    v77 = 1;
    v78 = v67;
    v79 = v66;
    *&v80 = v9;
    *(&v80 + 1) = v5;
    *&v81 = v6;
    *(&v81 + 1) = v7;
    for (i = &v76; ; i = &v68)
    {
      sub_222B4FCD4(i, &qword_27D0256C8, &unk_222C98AB0);
LABEL_71:
      sub_222C9525C();
      __break(1u);
LABEL_72:
      sub_222B4FCD4(&v76, &qword_27D0256C8, &unk_222C98AB0);
      v68 = v3;
      v69 = v8;
      v70 = v67;
      v71 = v66;
      v72 = v5;
      v73 = v6;
      v74 = v62;
      v75 = 0;
    }
  }

  *(v47 + 16) = v50;
  return result;
}

uint64_t sub_222B6DF54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_222B6B95C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222B6F4D8();
      goto LABEL_16;
    }

    sub_222B70358(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_222C951FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E0D4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6BBBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222B6F90C(MEMORY[0x277CC95F0], &qword_27D025668, &qword_222C98A80);
      goto LABEL_12;
    }

    sub_222B70590(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  v15 = sub_222C9440C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_222B72D78(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      v23 = sub_222C9447C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E39C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6BF18(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_222B6F634();
      a2 = v7;
      goto LABEL_12;
    }

    sub_222B708AC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_222C952EC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E4BC(uint64_t result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_222B6C13C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_222B6FCB0(&qword_27D025648, &qword_222C9B8E0);
      goto LABEL_72;
    }

    sub_222B70A9C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_222BBF5A4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v9;
    v10 = 0xEB00000000636973;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v11 == 6)
          {
            v16 = 0xD000000000000013;
            v17 = 0x8000000222CA93E0;
          }

          else
          {
            v16 = 0xD000000000000012;
            v17 = 0x8000000222CA9400;
          }
        }

        else
        {
          if (v11 == 4)
          {
            v16 = 0x7972617262696CLL;
          }

          else
          {
            v16 = 0xD000000000000011;
          }

          if (v11 == 4)
          {
            v17 = 0xE700000000000000;
          }

          else
          {
            v17 = 0x8000000222CA93C0;
          }
        }
      }

      else
      {
        if (v11 == 2)
        {
          v12 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v12 = 0x6974636572726F63;
        }

        if (v11 == 2)
        {
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xEA00000000006E6FLL;
        }

        if (*(*(v7 + 48) + a2))
        {
          v14 = 0x656D7269666E6F63;
        }

        else
        {
          v14 = 0x754D6E69616D6F64;
        }

        if (*(*(v7 + 48) + a2))
        {
          v15 = 0xE900000000000064;
        }

        else
        {
          v15 = v10;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }
      }

      v18 = 0xD000000000000013;
      if (v35 != 6)
      {
        v18 = 0xD000000000000012;
      }

      v19 = 0x8000000222CA9400;
      if (v35 == 6)
      {
        v19 = 0x8000000222CA93E0;
      }

      v20 = 0x7972617262696CLL;
      if (v35 != 4)
      {
        v20 = 0xD000000000000011;
      }

      v21 = 0x8000000222CA93C0;
      if (v35 == 4)
      {
        v21 = 0xE700000000000000;
      }

      if (v35 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v35 == 2)
      {
        v22 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v22 = 0x6974636572726F63;
      }

      if (v35 == 2)
      {
        v23 = 0xE900000000000064;
      }

      else
      {
        v23 = 0xEA00000000006E6FLL;
      }

      if (v35)
      {
        v24 = 0x656D7269666E6F63;
      }

      else
      {
        v24 = 0x754D6E69616D6F64;
      }

      v25 = v10;
      if (v35)
      {
        v10 = 0xE900000000000064;
      }

      if (v35 <= 1u)
      {
        v22 = v24;
        v23 = v10;
      }

      v26 = v35 <= 3u ? v22 : v18;
      v27 = v35 <= 3u ? v23 : v19;
      if (v16 == v26 && v17 == v27)
      {
        goto LABEL_75;
      }

      v28 = sub_222C951FC();

      if (v28)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v34;
      v10 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6E814(uint64_t result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_222B6C4AC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_222B6FCB0(&qword_27D025650, &unk_222C98A70);
      goto LABEL_46;
    }

    sub_222B70DDC(v5 + 1);
  }

  v7 = 0xEE00736567617373;
  v8 = 0x654D6E69616D6F64;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_222C952FC();
  sub_222C9452C();

  result = sub_222C9534C();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = v9;
    v34 = ~v11;
    v12 = 0xEF6C6C6143656E6FLL;
    v13 = 0x6974636572726F63;
    v14 = 0x68506E69616D6F64;
    do
    {
      v15 = *(*(v9 + 48) + a2);
      if (v15 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v16 = v14;
        }

        else
        {
          v16 = v8;
        }

        if (*(*(v9 + 48) + a2))
        {
          v17 = v12;
        }

        else
        {
          v17 = v7;
        }
      }

      else if (v15 == 2)
      {
        v16 = 0x656D7269666E6F63;
        v17 = 0xE900000000000064;
      }

      else
      {
        if (v15 == 3)
        {
          v16 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v16 = v13;
        }

        if (v15 == 3)
        {
          v17 = 0xE900000000000064;
        }

        else
        {
          v17 = 0xEA00000000006E6FLL;
        }
      }

      v18 = v13;
      if (v36 == 3)
      {
        v19 = 0x6574616E696D6F6ELL;
      }

      else
      {
        v19 = v13;
      }

      v20 = 0xEA00000000006E6FLL;
      if (v36 == 3)
      {
        v20 = 0xE900000000000064;
      }

      if (v36 == 2)
      {
        v19 = 0x656D7269666E6F63;
        v20 = 0xE900000000000064;
      }

      v21 = v14;
      if (!v36)
      {
        v14 = v8;
      }

      v22 = v7;
      v23 = v12;
      if (!v36)
      {
        v12 = v7;
      }

      v24 = v36 <= 1u ? v14 : v19;
      v25 = v36 <= 1u ? v12 : v20;
      v26 = v8;
      if (v16 == v24 && v17 == v25)
      {
        goto LABEL_49;
      }

      v27 = sub_222C951FC();

      if (v27)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v34;
      v7 = v22;
      v8 = v26;
      v12 = v23;
      v9 = v33;
      v13 = v18;
      v14 = v21;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v36;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6EBA8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 16);
  v36 = *result;
  v37 = v7;
  v38 = *(result + 32);
  v39 = *(result + 48);
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6C7B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222B6F774();
      goto LABEL_12;
    }

    sub_222B710B0(v8 + 1);
  }

  v10 = *v6;
  v11 = v6[1];
  v12 = *v4;
  v13 = *(*v4 + 40);
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v14 = -1 << *(v12 + 32);
  a2 = result & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v12 + 48) + 56 * a2;
      v17 = *(v16 + 48);
      v18 = *(v16 + 32);
      v19 = *v16;
      v32[1] = *(v16 + 16);
      v32[2] = v18;
      v32[0] = v19;
      v33 = v17;
      v20 = *(v16 + 16);
      v28 = *v16;
      v29 = v20;
      v30 = *(v16 + 32);
      v31 = *(v16 + 48);
      sub_222B554C0(v32, v34);
      v21 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v28, &v36);
      v34[0] = v28;
      v34[1] = v29;
      v34[2] = v30;
      v35 = v31;
      result = sub_222B55A80(v34);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 56 * a2;
  v24 = v37;
  *v23 = v36;
  *(v23 + 16) = v24;
  *(v23 + 32) = v38;
  *(v23 + 48) = v39;
  v25 = *(v22 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v22 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6EDA8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_222C942CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6CA38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222B6F90C(MEMORY[0x277D5FCE8], &qword_27D0256A8, &qword_222C98AA0);
      goto LABEL_12;
    }

    sub_222B7131C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8]);
  v15 = sub_222C9440C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_222B72D78(&qword_27D0256A0, MEMORY[0x277D5FCE8]);
      v23 = sub_222C9447C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

uint64_t sub_222B6F070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a6)
  {
    sub_222B6CD94(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_222B6FB44();
      goto LABEL_25;
    }

    sub_222B71638(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_222C952FC();
  sub_222C9452C();
  result = sub_222C9534C();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      result = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_222C951FC(), (result & 1) != 0))
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (result = sub_222C951FC(), (result & 1) != 0))
            {
LABEL_24:
              result = sub_222C9525C();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_25:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_222B6F238(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222B6D008(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_222B6FCB0(&qword_27D025670, &qword_222C98A88);
      a2 = v7;
      goto LABEL_12;
    }

    sub_222B71888(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v4);
  result = sub_222C9534C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222C9525C();
  __break(1u);
  return result;
}

void *sub_222B6F398(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94CCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_222B6F4D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  v2 = *v0;
  v3 = sub_222C94CCC();
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

void *sub_222B6F634()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  v2 = *v0;
  v3 = sub_222C94CCC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_222B6F774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  v2 = *v0;
  v3 = sub_222C94CCC();
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
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *v18;
        v28 = *(v18 + 48);
        v27[1] = v20;
        v27[2] = v19;
        v27[0] = v21;
        v22 = *(v4 + 48) + v17;
        v23 = *v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        *(v22 + 48) = *(v18 + 48);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        result = sub_222B554C0(v27, v26);
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