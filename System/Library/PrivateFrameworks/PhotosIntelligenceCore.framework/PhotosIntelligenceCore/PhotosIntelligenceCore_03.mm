BOOL sub_25E6247DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(&v10, a4, AssociatedConformanceWitness);
  if (!v10)
  {

    goto LABEL_5;
  }

  v6 = sub_25E636070();

  if (v6)
  {
LABEL_5:
    MEMORY[0x28223BE20](v7);
    sub_25E635AC0();
    swift_getWitnessTable();
    sub_25E635920();
    v8 = v10 == 0;
    swift_unknownObjectRelease();
    return v8;
  }

  return 0;
}

BOOL sub_25E6249B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if ((*(a6 + 64))(a5, a6))
  {
    return 0;
  }

  (*(a6 + 40))(&v13, a5, a6);

  sub_25E635AC0();
  v10 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_25E635750();

  v9 = v12 != 0;
  if (v12)
  {
  }

  return v9;
}

uint64_t sub_25E624AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for RoundRobinElector.ItemAndClusterState();
  *(a4 + *(result + 52)) = a2;
  return result;
}

void sub_25E624B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_63_0();
  a19 = v22;
  a20 = v23;
  v127 = v24;
  v129 = v25;
  v26 = *v20;
  OUTLINED_FUNCTION_49_1();
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_49_1();
  v30 = *(v29 + 96);
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_24_1();
  v109 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v108 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57_0(v36, v108);
  OUTLINED_FUNCTION_3_8();
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  v128 = v42 - v43;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_49_1();
  v46 = *(v45 + 88);
  OUTLINED_FUNCTION_49_1();
  v48 = *(v47 + 104);
  *&v49 = v30;
  *(&v49 + 1) = v48;
  v120 = v49;
  v121 = v50;
  v132 = v49;
  v131 = v50;
  v51 = type metadata accessor for RoundRobinElector.ItemAndClusterState();
  OUTLINED_FUNCTION_13_3();
  v130 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v111 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7();
  v112 = v56 - v57;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v58);
  v60 = &v108 - v59;
  v61 = *(v38 + 16);
  v38 += 16;
  v61(v21, v129, v28);
  v62 = v21;
  v63 = v30;
  v114 = v46;
  sub_25E624AD8(v62, v127, v28, v60);
  v125 = 1;
  v64 = v51;
  v65 = v28;
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v64);
  v117 = v38 + 16;
  v129 = v20[7];
  v116 = v48 + 72;
  v118 = v38 - 8;
  v123 = (v111 + 8);
  v111 += 32;
  swift_unknownObjectRetain();
  v66 = 0;
  v67 = 0;
  *&v68 = 134217984;
  v110 = v68;
  v113 = v63;
  v119 = v48;
  v124 = TupleTypeMetadata2;
  v115 = v60;
  v126 = v20;
  while (1)
  {
    sub_25E620F70();
    v69 = sub_25E635A60();

    if (v69 >= v129)
    {
      v102 = OUTLINED_FUNCTION_31_1();
      goto LABEL_18;
    }

    MEMORY[0x28223BE20](v70);
    v71 = v120;
    *(&v108 - 2) = v121;
    *(&v108 - 1) = v71;
    v72 = v122;
    sub_25E620BA0(sub_25E627078, MEMORY[0x277D84A98], TupleTypeMetadata2, v73, v122);
    if (__swift_getEnumTagSinglePayload(v72, 1, TupleTypeMetadata2) == 1)
    {
      v104 = OUTLINED_FUNCTION_31_1();
      v105(v104, v130);
      (*(v108 + 8))(v72, v109);
      goto LABEL_19;
    }

    v127 = v67;
    v74 = *(v72 + *(TupleTypeMetadata2 + 48));
    OUTLINED_FUNCTION_17(&a18);
    v75 = v128;
    v76(v128, v72, v65);
    sub_25E6253E0();
    (*(v119 + 72))(v75, v63, v119);
    OUTLINED_FUNCTION_20_1();
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_13_3();
    v77 = type metadata accessor for SummaryItemRequirementEvaluationCollection();
    v78 = SummaryItemRequirementEvaluationCollection.updateRequirements(with:)(v75, v77);
    v79 = v65;
    v80 = v78;
    swift_endAccess();
    sub_25E620F70();
    v81 = v79;
    v82 = sub_25E635A60();

    if (v82 >= v129)
    {
      break;
    }

    sub_25E620E6C();
    OUTLINED_FUNCTION_18_3();
    v83 = *(swift_getAssociatedConformanceWitness() + 24);
    v84 = sub_25E635BB0();

    if ((v84 | v80))
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v85 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v85, qword_27FCFD930);

      v86 = sub_25E6356F0();
      v87 = sub_25E635CF0();
      if (os_log_type_enabled(v86, v87))
      {
        OUTLINED_FUNCTION_7_1();
        v88 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_1(v88);
        sub_25E621004();
        v89 = sub_25E635A60();

        *(v88 + 4) = v89;

        _os_log_impl(&dword_25E5F0000, v86, v87, "Re-processing %ld items in waiting room", v88, 0xCu);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {
      }

      v96 = v115;
      *&v131 = 0;
      v97 = v112;
      sub_25E6258A0();
      swift_unknownObjectRelease();
      v98 = OUTLINED_FUNCTION_11_4();
      v65 = v81;
      v99(v98, v81);
      v100 = OUTLINED_FUNCTION_31_1();
      v92 = v130;
      v101(v100, v130);
      OUTLINED_FUNCTION_17(&a12);
      v93 = v96;
      v94 = v97;
    }

    else
    {
      v65 = v81;
      if (v125)
      {
        break;
      }

      *&v131 = v66;
      sub_25E6258A0();
      swift_unknownObjectRelease();
      v90 = OUTLINED_FUNCTION_11_4();
      v91(v90, v81);
      v92 = v130;
      (*v123)(v115, v130);
      OUTLINED_FUNCTION_17(&a12);
      v93 = OUTLINED_FUNCTION_62();
    }

    v95(v93, v94, v92);
    v125 = 0;
    v66 = v131;
    v63 = v113;
    TupleTypeMetadata2 = v124;
    v67 = v127;
  }

  swift_unknownObjectRelease();
  v106 = OUTLINED_FUNCTION_11_4();
  v107(v106, v81);
  v103 = *v123;
  v102 = v115;
LABEL_18:
  v103(v102, v130);
LABEL_19:
  OUTLINED_FUNCTION_64_0();
}

uint64_t sub_25E625314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  *(a3 + v6) = *(a1 + *(type metadata accessor for RoundRobinElector.ItemAndClusterState() + 52));
  return swift_unknownObjectRetain();
}

void sub_25E6253E0()
{
  OUTLINED_FUNCTION_63_0();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_62_0();
  v10(v9);
  OUTLINED_FUNCTION_20_1();
  swift_beginAccess();
  sub_25E635AC0();
  sub_25E635A80();
  swift_endAccess();
  v11 = v0[6];
  v12 = *(v1 + 88);
  v13 = sub_25E635AC0();
  v44 = *(v2 + 96);
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_25E635750();
  if (v46[0])
  {
    v15 = sub_25E620E6C();
    v16 = *(swift_getAssociatedConformanceWitness() + 24);
    OUTLINED_FUNCTION_1_3();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F8B9820](v46, v15, v12, v13, v16, WitnessTable);
    OUTLINED_FUNCTION_65_0();
    sub_25E620E98(v15);
    sub_25E620E6C();
    v18 = sub_25E635B90();

    if (v18 <= 0)
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v34 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v34, qword_27FCFD930);
      v35 = sub_25E6356F0();
      sub_25E635CF0();
      v36 = OUTLINED_FUNCTION_7_5();
      if (os_log_type_enabled(v36, v37))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }
    }

    else
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v19 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v19, qword_27FCFD930);

      v20 = sub_25E6356F0();
      v21 = sub_25E635CF0();

      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_7_1();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v23 = swift_slowAlloc();
        v46[0] = v23;
        *v22 = 136315138;
        v43[1] = v43;
        v45 = sub_25E620E6C();
        MEMORY[0x28223BE20](v45);
        *&v24 = v3;
        *(&v24 + 1) = v12;
        v25 = v44;
        *&v43[-4] = v24;
        *&v43[-2] = v25;
        v26 = sub_25E635BE0();
        OUTLINED_FUNCTION_8_5();
        v27 = swift_getWitnessTable();
        v29 = sub_25E5FB6F4(sub_25E627054, &v43[-6], v26, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);

        v45 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
        sub_25E60EF1C();
        v30 = sub_25E6357A0();
        v32 = v31;

        v33 = sub_25E6011D4(v30, v32, v46);

        *(v22 + 4) = v33;
        _os_log_impl(&dword_25E5F0000, v20, v21, "[featuresToRepresent] Remaining\n%s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }
    }
  }

  OUTLINED_FUNCTION_64_0();
}

void sub_25E6258A0()
{
  OUTLINED_FUNCTION_63_0();
  v82 = v3;
  v80 = v4;
  v5 = *v0;
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 96);
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_2(TupleTypeMetadata2);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - v11;
  OUTLINED_FUNCTION_3_8();
  v81 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_35_1();
  MEMORY[0x28223BE20](v17);
  v77 = &v75 - v18;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v19);
  v83 = &v75 - v20;
  if (qword_27FCF8C18 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v21 = sub_25E635710();
  OUTLINED_FUNCTION_38_1(v21, qword_27FCFD930);

  v76 = v0;
  v22 = sub_25E6356F0();
  sub_25E635CF0();
  OUTLINED_FUNCTION_53_1();
  v24 = os_log_type_enabled(v22, v23);
  v79 = v5;
  v75 = v2;
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    sub_25E621004();
    v26 = TupleTypeMetadata2;
    v27 = v6;
    v28 = sub_25E635A60();

    *(v25 + 4) = v28;
    v6 = v27;

    _os_log_impl(&dword_25E5F0000, v22, v1, "Checking %ld items in waiting room for new requirements...", v25, 0xCu);
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x25F8BA800](v29);
  }

  else
  {

    v26 = TupleTypeMetadata2;
  }

  v30 = *v82;
  sub_25E621004();
  v31 = sub_25E635A60();

  v85 = v31;
  if (v31 < v30)
  {
    __break(1u);
  }

  else
  {
    v78 = v7;
    v84 = (v81 + 32);
    v32 = (v81 + 8);
    v33 = v83;
    while (1)
    {
      if (v85 == v30)
      {
        v45 = *(v79 + 88);
        v46 = *(v79 + 104);
        v87 = v6;
        v88 = v45;
        v89 = v78;
        v90 = v46;
        v47 = type metadata accessor for RoundRobinElector.ItemAndClusterState();
        v48 = 1;
        v49 = v80;
        goto LABEL_16;
      }

      sub_25E621004();
      sub_25E635AE0();

      v34 = *&v12[*(v26 + 48)];
      isa = v84->isa;
      (v84->isa)(v33, v12, v6);
      v36 = v6;
      v37 = sub_25E620ED4();
      v38 = OUTLINED_FUNCTION_15_4();
      sub_25E623614(v38, v39, v37, v40, v41, v42, v43, v44, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, TupleTypeMetadata2);

      if (!v87)
      {
        break;
      }

      (v32->isa)(v33, v36);
      swift_unknownObjectRelease();
      ++v30;
      v6 = v36;
      v26 = TupleTypeMetadata2;
    }

    v50 = v77;
    v81 = *(v81 + 2);
    (v81)(v77, v33, v36);
    swift_unknownObjectRetain();
    v51 = sub_25E6356F0();
    v52 = sub_25E635CF0();
    swift_unknownObjectRelease();
    LODWORD(v85) = v52;
    v53 = os_log_type_enabled(v51, v52);
    TupleTypeMetadata2 = v30 + 1;
    if (v53)
    {
      OUTLINED_FUNCTION_19_1();
      v54 = v50;
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_22_1();
      v76 = swift_slowAlloc();
      v91 = v76;
      *v55 = 136315394;
      v56 = v75;
      (v81)(v75, v54, v36);
      v57 = sub_25E635820();
      v81 = v51;
      v58 = v57;
      v60 = v59;
      (v32->isa)(v54, v36);
      v61 = sub_25E6011D4(v58, v60, &v91);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      v63 = v78;
      v62 = v79;
      (*(*(v79 + 104) + 40))(&v87, v78);
      v64 = v87;
      v65 = v88;

      v33 = v83;

      v66 = sub_25E6011D4(v64, v65, &v91);

      *(v55 + 14) = v66;
      v67 = v81;
      _os_log_impl(&dword_25E5F0000, v81, v85, "Accepting item %s from cluster %s from the waiting room", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();

      v68 = v36;
    }

    else
    {

      (v32->isa)(v50, v36);
      v63 = v78;
      v62 = v79;
      v68 = v36;
      v56 = v75;
    }

    *v82 = TupleTypeMetadata2;
    isa(v56, v33, v68);
    v69 = *(v62 + 88);
    v70 = *(v62 + 104);
    v71 = v68;
    v49 = v80;
    v72 = OUTLINED_FUNCTION_62();
    sub_25E624AD8(v72, v73, v71, v74);
    v87 = v71;
    v88 = v69;
    v89 = v63;
    v90 = v70;
    v47 = type metadata accessor for RoundRobinElector.ItemAndClusterState();
    v48 = 0;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v49, v48, 1, v47);
    OUTLINED_FUNCTION_64_0();
  }
}

void sub_25E625ED8(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  OUTLINED_FUNCTION_59_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59_0();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_59_0();
  v11 = *(v10 + 96);
  OUTLINED_FUNCTION_59_0();
  v13 = *(v12 + 104);
  v141 = v14;
  v146[0] = v14;
  v146[1] = v15;
  v135 = v15;
  v138 = v16;
  v146[2] = v16;
  v146[3] = v13;
  v136 = v13;
  v17 = type metadata accessor for RoundRobinElector.ItemAndClusterState();
  OUTLINED_FUNCTION_13_3();
  v18 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v134 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v122 - v27;
  OUTLINED_FUNCTION_3_8();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_33_0();
  v137 = a1;
  ProgressReporter.start()();
  v139 = v38;
  if (v38)
  {
    goto LABEL_2;
  }

  v140 = v36;
  v126 = v25;
  v130 = v18;
  sub_25E620F70();
  v44 = sub_25E635A60();

  v147 = v3[7];
  if (v44 >= v147)
  {
    goto LABEL_2;
  }

  v46 = v30;
  v47 = (v30 + 32);
  v48 = (v46 + 8);
  v129 = v134 + 1;
  *&v45 = 136315138;
  v127 = v45;
  while (1)
  {
LABEL_5:
    OUTLINED_FUNCTION_20_1();
    swift_beginAccess();
    v36 = v141;
    swift_getAssociatedConformanceWitness();
    v49 = type metadata accessor for SummaryItemRequirementEvaluationCollection();
    SummaryItemRequirementEvaluationCollection.removeOptionalRequirementEvaluation()(v49);
    swift_endAccess();
    if (!v144)
    {
      v77 = 0;
      *&v50 = 136315394;
      v122 = v50;
      v78 = v141;
      while (1)
      {
        v133 = v77;
        v79 = *(&unk_28704A618 + v77 + 32);
        v80 = sub_25E620E6C();
        v134 = &v122;
        MEMORY[0x28223BE20](v80);
        v81 = v135;
        *(&v122 - 6) = v78;
        *(&v122 - 5) = v81;
        v82 = v136;
        *(&v122 - 4) = v138;
        *(&v122 - 3) = v82;
        LODWORD(v132) = v79;
        *(&v122 - 16) = v79;
        v83 = *(swift_getAssociatedConformanceWitness() + 24);
        v84 = v139;
        v85 = sub_25E635BA0();
        v36 = v84;
        if (sub_25E635B90() < 1)
        {
          v139 = v84;

          v78 = v141;
          v94 = v133;
        }

        else
        {
          OUTLINED_FUNCTION_51_1();
          ProgressReporter.report(progress:)(v86);
          v139 = v87;
          if (v87)
          {

            goto LABEL_2;
          }

          if (qword_27FCF8C18 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          v88 = sub_25E635710();
          __swift_project_value_buffer(v88, qword_27FCFD930);

          v89 = sub_25E6356F0();
          v90 = sub_25E635CF0();

          LODWORD(v134) = v90;
          if (os_log_type_enabled(v89, v90))
          {
            v131 = v89;
            OUTLINED_FUNCTION_19_1();
            v91 = swift_slowAlloc();
            OUTLINED_FUNCTION_22_1();
            *&v127 = swift_slowAlloc();
            v146[0] = v127;
            *v91 = v122;
            if (v132)
            {
              if (v132 == 1)
              {
                v92 = 0x697469726F697270;
              }

              else
              {
                v92 = 0x6B61657262656974;
              }

              if (v132 == 1)
              {
                v93 = 0xEB0000000064657ALL;
              }

              else
              {
                v93 = 0xEA00000000007265;
              }
            }

            else
            {
              v93 = 0xE800000000000000;
              v92 = 0x6465726975716572;
            }

            sub_25E6011D4(v92, v93, v146);
            v95 = OUTLINED_FUNCTION_29_0();
            v124 = &v122;
            *(v91 + 4) = v85;
            *(v91 + 12) = 2080;
            v132 = v91;
            v125 = v85;
            *&v143 = v85;
            MEMORY[0x28223BE20](v95);
            OUTLINED_FUNCTION_34_1();
            v96 = v135;
            *(v97 - 32) = v141;
            *(v97 - 24) = v96;
            v98 = v136;
            *(v97 - 16) = v138;
            *(v97 - 8) = v98;
            v99 = sub_25E635BE0();
            OUTLINED_FUNCTION_8_5();
            swift_getWitnessTable();
            v100 = OUTLINED_FUNCTION_39_1();
            v101 = v139;
            v104 = sub_25E5FB6F4(v100, v93, v99, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v102, MEMORY[0x277D84AC0], v103);
            v139 = v101;
            *&v143 = v104;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E60EF1C();
            v105 = sub_25E6357A0();
            v107 = v106;

            v108 = sub_25E6011D4(v105, v107, v146);

            *(v132 + 14) = v108;
            OUTLINED_FUNCTION_58_0(&v149);
            v109 = v131;
            _os_log_impl(&dword_25E5F0000, v131, v110, "Removing remaining features-to-represent of handling type '%s' and re-electing items from the waiting room. Removing:\n%s", v111, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_20_1();
          swift_beginAccess();
          sub_25E635BE0();
          sub_25E635BD0();
          swift_endAccess();

          v146[0] = 0;
          v78 = v141;
          v112 = v130;
          v113 = v126;
          while (1)
          {
            sub_25E620F70();
            sub_25E635A60();
            OUTLINED_FUNCTION_29_0();
            if (v3 >= v147)
            {
              break;
            }

            sub_25E6258A0();
            if (__swift_getEnumTagSinglePayload(v113, 1, v17) == 1)
            {
              OUTLINED_FUNCTION_17(&v147);
              v121(v113, v112);
              break;
            }

            v114 = v140;
            (*v47)(v140, v113, v17);
            sub_25E624B70(v114, *(v114 + *(v17 + 52)), v115, v116, v117, v118, v119, v120, v122, *(&v122 + 1), v123, v124, v125, v126, v127, *(&v127 + 1), v128, v129, v130, v131);
            (*v48)(v114, v17);
          }

          sub_25E620F70();
          sub_25E635A60();
          OUTLINED_FUNCTION_29_0();
          v94 = v133;
          if (v3 >= v147)
          {
LABEL_45:
            OUTLINED_FUNCTION_51_1();
            ProgressReporter.complete()();
            return;
          }
        }

        v77 = (&v94->isa + 1);
        if (v77 == 3)
        {
          goto LABEL_45;
        }
      }
    }

    sub_25E5F20F4(&v143, v146);
    OUTLINED_FUNCTION_51_1();
    ProgressReporter.report(progress:)(v51);
    v139 = v52;
    if (v52)
    {
      break;
    }

    if (qword_27FCF8C18 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v53 = sub_25E635710();
    v54 = __swift_project_value_buffer(v53, qword_27FCFD930);
    sub_25E605AF0(v146, &v143);
    v55 = sub_25E6356F0();
    sub_25E635CF0();
    v56 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_7_1();
      v58 = swift_slowAlloc();
      v132 = v58;
      OUTLINED_FUNCTION_6_1();
      v134 = swift_slowAlloc();
      v142 = v134;
      *v58 = v127;
      v133 = v55;
      v59 = v145;
      __swift_project_boxed_opaque_existential_1(&v143, v144);
      v60 = *(v59 + 32);
      LODWORD(v131) = v54;
      v61 = OUTLINED_FUNCTION_18_3();
      v63 = v62(v61, v59);
      v65 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(&v143);
      v66 = sub_25E6011D4(v63, v65, &v142);

      *(v132 + 1) = v66;
      OUTLINED_FUNCTION_58_0(&v148);
      v67 = v133;
      _os_log_impl(&dword_25E5F0000, v133, v68, "Removing requirement evaluation: %s and re-electing items from the waiting room", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v134);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v143);
    }

    OUTLINED_FUNCTION_60_0();
    *&v143 = 0;
    while (1)
    {
      sub_25E620F70();
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 >= v147)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v146);
        goto LABEL_5;
      }

      sub_25E6258A0();
      if (__swift_getEnumTagSinglePayload(v28, 1, v17) == 1)
      {
        break;
      }

      (*v47)(v2, v28, v17);
      sub_25E624B70(v2, *(v2 + *(v17 + 52)), v70, v71, v72, v73, v74, v75, v122, *(&v122 + 1), v123, v124, v125, v126, v127, *(&v127 + 1), v128, v129, v130, v131);
      (*v48)(v2, v17);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v146);
    OUTLINED_FUNCTION_17(&v147);
    v76(v28, v130);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v146);
LABEL_2:
  v39 = sub_25E635710();
  OUTLINED_FUNCTION_0_2(v39);
  v41 = v137;
  (*(v40 + 8))(v137);
  v42 = type metadata accessor for ProgressReporter(0);
  OUTLINED_FUNCTION_9_4(v42);
  v43 = *(v41 + *(v36 + 24));
}

uint64_t sub_25E626A94(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(&v8, a4, AssociatedConformanceWitness);
  return sub_25E610928(v8, a2) & 1;
}

uint64_t sub_25E626B28@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 48))(a1, AssociatedConformanceWitness);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *RoundRobinElector.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[6];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  v6 = v0[13];

  v7 = v0[14];

  v9 = v0[15];
  v8 = v0[16];

  v10 = v0[17];

  v11 = v0[18];

  return v0;
}

uint64_t RoundRobinElector.__deallocating_deinit()
{
  RoundRobinElector.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_25E626C54(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25E626CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_25E622478(a1, *(v2 + 40), a2);
}

uint64_t sub_25E626D84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E626DC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E626E00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25E627054@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_25E626B28(v1[3], a1);
}

uint64_t sub_25E627078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_25E625314(a1, v2[2], a2);
}

BOOL sub_25E62709C(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_25E6247DC(a1, v1[6], v1[2], v1[3]);
}

uint64_t sub_25E62712C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_25E626A94(a1, *(v1 + 48), *(v1 + 16), *(v1 + 24)) & 1;
}

uint64_t sub_25E62715C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E6271E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25E627324(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20) + 24);
}

uint64_t *OUTLINED_FUNCTION_10_4(uint64_t *result)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  v2 = *(v0 - 336);

  return sub_25E635B90();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

__n128 OUTLINED_FUNCTION_30_1(_DWORD *a1)
{
  result = *(v1 - 336);
  *a1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  v3 = *(v0 + *(*(v1 - 312) + 20) + 24);
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_0()
{
}

Swift::String __swiftcall PersonalEvent.localizedText()()
{
  *v0;
  type metadata accessor for LocalizedString();
  v1 = static LocalizedString.localizedString(forKey:)();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t PersonalEvent.localizedSynonyms()()
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  switch(*v0)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      break;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      break;
    case 3:
      v2 = "electedItems";
      v1 = 0xD000000000000020;
      break;
    default:
      break;
  }

  v7 = v1;
  v8 = v2 | 0x8000000000000000;

  v3 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v3, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v7, v8);
  v5 = v4;

  return v5;
}

uint64_t static PersonalEvent.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = 0;
  v31 = v1;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v5 = byte_28704A640[v4++ + 32];
    static LocalizedString.localizedString(forKey:)();

    v6 = sub_25E635830();
    v8 = v7;

    if (v6 == v1 && v8 == v3)
    {
      break;
    }

    v10 = sub_25E636070();

    if (v10)
    {
      goto LABEL_23;
    }

    v11 = 0xD00000000000001ELL;
    v12 = "PNPersonalEventBirthdayText";
    v32 = v5;
    switch(v5)
    {
      case 1:
        v11 = 0xD00000000000001BLL;
        v12 = "PNPersonalEventWeddingText";
        break;
      case 2:
        v11 = 0xD00000000000001ALL;
        v12 = "ersonalEventText";
        break;
      case 3:
        v11 = 0xD000000000000020;
        v12 = "electedItems";
        break;
      default:
        break;
    }

    v33 = v11;
    v35 = v12 | 0x8000000000000000;

    v13 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v13, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v33, v35);
    v15 = v14;

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v3;
      v34 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v18 = v34;
      v19 = (v15 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = sub_25E635830();
        v24 = v23;
        v25 = *(v34 + 16);
        if (v25 >= *(v34 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v34 + 16) = v25 + 1;
        v26 = v34 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v24;
        v19 += 2;
        --v16;
      }

      while (v16);

      v3 = v17;
      v1 = v31;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v27 = sub_25E5F68AC(v18);
    v28 = sub_25E5F6F28(v1, v3, v27);

    LOBYTE(v5) = v32;
    if (v28)
    {
      goto LABEL_23;
    }

    if (v4 == 4)
    {
      LOBYTE(v5) = 4;
      goto LABEL_23;
    }
  }

LABEL_23:

  *a1 = v5;
  return result;
}

uint64_t static PersonalEvent.localizedMeaningLabel(for:)(_BYTE *a1)
{
  v1 = 0;
  switch(*a1)
  {
    case 3:
      return v1;
    default:
      type metadata accessor for LocalizedString();
      v1 = static LocalizedString.localizedString(forKey:)();

      break;
  }

  return v1;
}

uint64_t static PersonalEvent.localizedMeaningLabelSynonyms(for:)(_BYTE *a1)
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  switch(*a1)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      goto LABEL_4;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      goto LABEL_4;
    case 3:
      return MEMORY[0x277D84F90];
    default:
LABEL_4:
      v7 = v1;
      v8 = v2 | 0x8000000000000000;

      v3 = OUTLINED_FUNCTION_0_0();
      MEMORY[0x25F8B9540](v3, 0xE800000000000000);

      type metadata accessor for LocalizedString();
      static LocalizedString.localizedSynonyms(forKey:)(v7, v8);
      v5 = v4;

      return v5;
  }
}

PhotosIntelligenceCore::PersonalEvent_optional __swiftcall PersonalEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalEvent.rawValue.getter()
{
  result = 0x73726576696E6E61;
  switch(*v0)
  {
    case 1:
      result = 0x7961646874726962;
      break;
    case 2:
      result = 0x676E6964646577;
      break;
    case 3:
      result = 0x6C616E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E628044@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E628154()
{
  result = qword_27FCF9768;
  if (!qword_27FCF9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9770, &qword_25E63D188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9768);
  }

  return result;
}

unint64_t sub_25E6281BC()
{
  result = qword_27FCF9778;
  if (!qword_27FCF9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E6282EC()
{
  result = qword_27FCF9780;
  if (!qword_27FCF9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9780);
  }

  return result;
}

Swift::String __swiftcall CommonEvent.localizedText()()
{
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LocalizedString();
  v0 = static LocalizedString.localizedString(forKey:)();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t CommonEvent.localizedSynonyms()()
{
  OUTLINED_FUNCTION_1_8();
  v3 = "PNCommonEventDinnerText";
  if (v1 != 1)
  {
    ++v0;
    v3 = "PNPersonalEventAnniversaryText";
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v0 = v2;
    v4 = "PNCommonEventLunchText";
  }

  v9 = v0;
  v10 = v4 | 0x8000000000000000;

  v5 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v5, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v9, v10);
  v7 = v6;

  return v7;
}

uint64_t static CommonEvent.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = 0;
  type metadata accessor for LocalizedString();
  v32 = v1;
  v33 = v3;
  while (1)
  {
    v5 = byte_28704A6E8[v4++ + 32];
    static LocalizedString.localizedString(forKey:)();

    v6 = sub_25E635830();
    v8 = v7;

    if (v6 == v1 && v8 == v3)
    {
      break;
    }

    v10 = sub_25E636070();

    if (v10)
    {
      goto LABEL_28;
    }

    v11 = 0xD00000000000001ALL;
    if (v5 == 1)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v12 = 0xD000000000000017;
    }

    v13 = "PNCommonEventDinnerText";
    if (v5 != 1)
    {
      v13 = "PNPersonalEventAnniversaryText";
    }

    if (v5)
    {
      v11 = v12;
    }

    v14 = "PNCommonEventLunchText";
    if (v5)
    {
      v14 = v13;
    }

    v34 = v11;
    v36 = v14 | 0x8000000000000000;

    v15 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v15, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v34, v36);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v35 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v19 = v35;
      v20 = (v17 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = sub_25E635830();
        v25 = v24;
        v26 = *(v35 + 16);
        if (v26 >= *(v35 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v35 + 16) = v26 + 1;
        v27 = v35 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
        v20 += 2;
        --v18;
      }

      while (v18);

      v1 = v32;
      v3 = v33;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v28 = sub_25E5F68AC(v19);
    v29 = sub_25E5F6F28(v1, v3, v28);

    if (v29)
    {
      goto LABEL_28;
    }

    if (v4 == 3)
    {
      LOBYTE(v5) = 3;
      goto LABEL_28;
    }
  }

LABEL_28:

  *a1 = v5;
  return result;
}

PhotosIntelligenceCore::CommonEvent_optional __swiftcall CommonEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonEvent.rawValue.getter()
{
  v1 = 0x68636E756CLL;
  if (*v0 != 1)
  {
    v1 = 0x72656E6E6964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361666B61657262;
  }
}

uint64_t sub_25E62881C@<X0>(uint64_t *a1@<X8>)
{
  result = CommonEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E62892C()
{
  result = qword_27FCF9788;
  if (!qword_27FCF9788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9790, &qword_25E63D2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9788);
  }

  return result;
}

unint64_t sub_25E628994()
{
  result = qword_27FCF9798;
  if (!qword_27FCF9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9798);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E628AC4()
{
  result = qword_27FCF97A0;
  if (!qword_27FCF97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97A0);
  }

  return result;
}

Swift::String __swiftcall PublicEvent.localizedText()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_10();
  type metadata accessor for LocalizedString();
  v2 = static LocalizedString.localizedString(forKey:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t PublicEvent.localizedSynonyms()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_10();
  if (!v8)
  {
    v5 = v7;
  }

  if (v3)
  {
    v2 = v6;
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  v14 = v2;
  v15 = v9 | 0x8000000000000000;

  v10 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v10, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v14, v15);
  v12 = v11;

  return v12;
}

uint64_t static PublicEvent.from(localizedText:)@<X0>(_BYTE *a1@<X8>)
{
  v1 = sub_25E635830();
  v3 = v2;
  v4 = 0;
  type metadata accessor for LocalizedString();
  v30 = v1;
  v31 = v3;
  while (1)
  {
    v5 = byte_28704A778[v4++ + 32];
    OUTLINED_FUNCTION_0_10();
    static LocalizedString.localizedString(forKey:)();

    v6 = sub_25E635830();
    v8 = v7;

    v9 = v6 == v1 && v8 == v3;
    if (v9)
    {
      break;
    }

    v10 = sub_25E636070();

    if (v10)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_10();
    v12 = "PNPublicEventSportEventText";
    if (!v9)
    {
      v12 = "PNCommonEventBreakfastText";
    }

    if (!v5)
    {
      v11 = 0xD000000000000018;
      v12 = "PNPublicEventHolidayEventText";
    }

    v32 = v11;
    v34 = v12 | 0x8000000000000000;

    v13 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v13, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v32, v34);
    v15 = v14;

    v16 = *(v15 + 16);
    if (v16)
    {
      v33 = MEMORY[0x277D84F90];
      sub_25E5F3468();
      v17 = v33;
      v18 = (v15 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = sub_25E635830();
        v23 = v22;
        v24 = *(v33 + 16);
        if (v24 >= *(v33 + 24) >> 1)
        {
          sub_25E5F3468();
        }

        *(v33 + 16) = v24 + 1;
        v25 = v33 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v23;
        v18 += 2;
        --v16;
      }

      while (v16);

      v1 = v30;
      v3 = v31;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v26 = sub_25E5F68AC(v17);
    v27 = sub_25E5F6F28(v1, v3, v26);

    if (v27)
    {
      goto LABEL_23;
    }

    if (v4 == 3)
    {
      LOBYTE(v5) = 3;
      goto LABEL_23;
    }
  }

LABEL_23:

  *a1 = v5;
  return result;
}

PhotosIntelligenceCore::PublicEvent_optional __swiftcall PublicEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PublicEvent.rawValue.getter()
{
  v1 = 0x20796164696C6F68;
  if (*v0 != 1)
  {
    v1 = 0x76652074726F7073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747265636E6F63;
  }
}

uint64_t sub_25E629018@<X0>(uint64_t *a1@<X8>)
{
  result = PublicEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E629128()
{
  result = qword_27FCF97A8;
  if (!qword_27FCF97A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF97B0, &qword_25E63D458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97A8);
  }

  return result;
}

unint64_t sub_25E629190()
{
  result = qword_27FCF97B8;
  if (!qword_27FCF97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PublicEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E6292C0()
{
  result = qword_27FCF97C0;
  if (!qword_27FCF97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97C0);
  }

  return result;
}

void static AnalyticUtilities.roundToSignificantFigures(_:significantFigures:logger:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_25E635710();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 0.0 || a1 < 1)
  {
    return;
  }

  v15 = ceil(log10(fabs(a3)));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFSUB__(a1, v15))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = __exp10((a1 - v15));
  v17 = round(v16 * a3) / v16;
  sub_25E6295D4(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_25E629644(v9);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v18 = sub_25E6356F0();
    v19 = sub_25E635CD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218496;
      *(v20 + 4) = a3;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v17;
      *(v20 + 22) = 2048;
      *(v20 + 24) = a1;
      _os_log_impl(&dword_25E5F0000, v18, v19, "Rounded %f to %f with %ld significant figures", v20, 0x20u);
      MEMORY[0x25F8BA800](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_25E6295D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E629644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E62B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromPNErrorCode(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_279A28028[a1 + 1];
  }
}

__CFString *CLSTaxonomyBasedModelStringFromConfidenceThresholdType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_279A28078[a1];
  }
}

uint64_t SimilarityModelVersionFromSceneAnalysisVersion(unint64_t a1)
{
  v1 = 80;
  v2 = 33;
  if (a1 < 0x21)
  {
    v2 = 0;
  }

  if (a1 <= 0x4F)
  {
    v1 = v2;
  }

  if (a1 <= 0x53)
  {
    return v1;
  }

  else
  {
    return 84;
  }
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}