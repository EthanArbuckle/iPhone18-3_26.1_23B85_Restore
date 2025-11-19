uint64_t AMSSongMetadataClient.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for AMSClient();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t AMSSongMetadataClient.init()()
{
  type metadata accessor for AMSClient();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_222C23144(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222C23164, 0, 0);
}

uint64_t sub_222C23164()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_222C23204;
  v3 = v0[2];

  return sub_222C2244C(v3, 203);
}

uint64_t sub_222C23204(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_222C23354, 0, 0);
  }
}

uint64_t sub_222C23354()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_222C22B08();
  v4 = v3;

  v6 = v0[1];
  if (!v2)
  {
    v5 = v4;
  }

  return v6(v5);
}

uint64_t AMSSongMetadataClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AMSSongMetadataClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222C23430(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222C23164, 0, 0);
}

uint64_t dispatch thunk of AMSSongMetadataClient.searchSongs(identifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222C00D84;

  return v8(a1);
}

unint64_t sub_222C235C4()
{
  result = qword_27D026FD8;
  if (!qword_27D026FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FD8);
  }

  return result;
}

uint64_t sub_222C23618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE8, &qword_222CA1CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_222C2368C(uint64_t a1, void *a2)
{
  v16 = a1;
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *(v4 + 16);
  v8(&v14 - v6, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v15 = *(v4 + 32);
  v15(v10 + v9, v7, v3);
  v22 = sub_222C23AD4;
  v23 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222C23968;
  v21 = &block_descriptor_1;
  v11 = _Block_copy(&aBlock);

  [v17 addSuccessBlock_];
  _Block_release(v11);
  v8(v7, v16, v3);
  v12 = swift_allocObject();
  v15(v12 + v9, v7, v3);
  v22 = sub_222C23B98;
  v23 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222C23A18;
  v21 = &block_descriptor_24;
  v13 = _Block_copy(&aBlock);

  [v17 addErrorBlock_];
  _Block_release(v13);
}

uint64_t sub_222C23918(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  return sub_222C9482C();
}

uint64_t sub_222C23968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_222C239C8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  return sub_222C9481C();
}

void sub_222C23A18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_222C23A88()
{
  result = qword_27D026FF0;
  if (!qword_27D026FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D026FF0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222C23BB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_222C23C58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027050, &unk_222CA1E20);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027000 = 91;
  *algn_27D027008 = 0xE100000000000000;
  return result;
}

SiriPrivateLearningInference::MediaInAppFollowupGroundTruthGenerator __swiftcall MediaInAppFollowupGroundTruthGenerator.init(timeToFollowup:)(Swift::Double timeToFollowup)
{
  *v1 = 0x3FE3333333333333;
  *(v1 + 8) = timeToFollowup;
  result.componentSimilarityThreshold = timeToFollowup;
  return result;
}

uint64_t MediaInAppFollowupGroundTruthGenerator.generate(session:classifications:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v146 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for MediaGroundTruth();
  v9 = *(v142 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v142);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeaturisedTurn(0);
  v14 = *(v13 - 8);
  v139 = v13;
  v140 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v136 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v138 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v137 = &v131 - v21;
  v22 = type metadata accessor for MediaPlayClassification();
  v144 = *(v22 - 8);
  v145 = v22;
  v23 = *(v144 + 64);
  MEMORY[0x28223BE20](v22);
  v141 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v143 = &v131 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027010, &qword_222CA1D40);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v150 = &v131 - v30;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027018, &unk_222CA1D48);
  v31 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v147 = (&v131 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v149 = &v131 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027020, &unk_222CA1D58);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v131 - v38;
  v40 = type metadata accessor for MediaInAppFollowupClassification();
  v153 = *(v40 - 8);
  v41 = *(v153 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v151 = &v131 - v44;
  MEMORY[0x28223BE20](v43);
  v154 = &v131 - v46;
  v152 = a1;
  v47 = *(a1 + 16);
  if (v47 != 1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v58 = sub_222C9431C();
    __swift_project_value_buffer(v58, qword_280FE2340);

    v59 = sub_222C942FC();
    v60 = sub_222C94A3C();
    if (!os_log_type_enabled(v59, v60))
    {

      return MEMORY[0x277D84F90];
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v166 = v62;
    *v61 = 136315394;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v61 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v166);
    *(v61 + 12) = 2048;
    *(v61 + 14) = v47;

    v63 = "%s Session has %ld turns. Only single turn sessions are currently supported due to malformed SELF. Skipping GT generation.";
    v64 = v60;
    v65 = v59;
    v66 = v61;
    v67 = 22;
    goto LABEL_43;
  }

  v134 = v12;
  v135 = v45;
  v131 = v6;
  v132 = v5;
  v133 = v9;
  v48 = *v2;
  v49 = v2[1];
  v50 = *(a2 + 16);
  if (v50)
  {
    v51 = a2 + 32;
    v52 = (v153 + 56);
    v53 = (v153 + 48);
    v54 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v51, &v166);
      sub_222B405A0(&v166, &v162);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v55 = swift_dynamicCast();
      (*v52)(v39, v55 ^ 1u, 1, v40);
      if ((*v53)(v39, 1, v40) == 1)
      {
        sub_222B4FCD4(v39, &qword_27D027020, &unk_222CA1D58);
      }

      else
      {
        sub_222C26A98(v39, v154, type metadata accessor for MediaInAppFollowupClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_222B4B8A8(0, v54[2] + 1, 1, v54);
        }

        v57 = v54[2];
        v56 = v54[3];
        if (v57 >= v56 >> 1)
        {
          v54 = sub_222B4B8A8(v56 > 1, v57 + 1, 1, v54);
        }

        v54[2] = v57 + 1;
        sub_222C26A98(v154, v54 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v57, type metadata accessor for MediaInAppFollowupClassification);
      }

      v51 += 40;
      --v50;
    }

    while (v50);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v68 = v54[2];
  if (v68 > 1)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v69 = sub_222C9431C();
    __swift_project_value_buffer(v69, qword_280FE2340);
    v59 = sub_222C942FC();
    LOBYTE(v70) = sub_222C94A3C();
    if (!os_log_type_enabled(v59, v70))
    {
      goto LABEL_44;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v166 = v62;
    *v61 = 136315138;
    if (qword_27D024730 != -1)
    {
LABEL_81:
      swift_once();
    }

    *(v61 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v166);
    v63 = "%s Multiple In App Follows detected where only one should be present. Skipping Ground Truth Generation";
    goto LABEL_42;
  }

  if (!v68)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v85 = sub_222C9431C();
    __swift_project_value_buffer(v85, qword_280FE2340);
    v59 = sub_222C942FC();
    LOBYTE(v70) = sub_222C94A3C();
    if (!os_log_type_enabled(v59, v70))
    {
      goto LABEL_44;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v166 = v62;
    *v61 = 136315138;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v61 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v166);
    v63 = "%s No in app followup classification found. Skipping.";
LABEL_42:
    v64 = v70;
    v65 = v59;
    v66 = v61;
    v67 = 12;
LABEL_43:
    _os_log_impl(&dword_222B39000, v65, v64, v63, v66, v67);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x223DCA8C0](v62, -1, -1);
    MEMORY[0x223DCA8C0](v61, -1, -1);
LABEL_44:

    return MEMORY[0x277D84F90];
  }

  v71 = v135;
  sub_222C26A30(v54 + ((*(v153 + 80) + 32) & ~*(v153 + 80)), v135, type metadata accessor for MediaInAppFollowupClassification);

  v72 = v151;
  sub_222C26A98(v71, v151, type metadata accessor for MediaInAppFollowupClassification);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v73 = sub_222C9431C();
  __swift_project_value_buffer(v73, qword_280FE2340);
  v74 = sub_222C942FC();
  v75 = sub_222C94A3C();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v152;
  v78 = v150;
  if (v76)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v166 = v80;
    *v79 = 136315138;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v79 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v166);
    _os_log_impl(&dword_222B39000, v74, v75, "%s Found 1 Media In App Followup Classification. Reviewing for ground truth generation", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x223DCA8C0](v80, -1, -1);
    MEMORY[0x223DCA8C0](v79, -1, -1);
  }

  *&v166 = v48;
  *(&v166 + 1) = v49;
  if ((sub_222C24FFC(v72) & 1) == 0)
  {
LABEL_49:
    sub_222C26B00(v72, type metadata accessor for MediaInAppFollowupClassification);
    return MEMORY[0x277D84F90];
  }

  *&v166 = v48;
  *(&v166 + 1) = v49;
  sub_222C253A0(v77, v72, v78);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
  if ((*(*(v81 - 8) + 48))(v78, 1, v81) == 1)
  {
    v82 = &qword_27D027010;
    v83 = &qword_222CA1D40;
    v84 = v78;
LABEL_48:
    sub_222B4FCD4(v84, v82, v83);
    goto LABEL_49;
  }

  v87 = v78[*(v81 + 80)];
  v88 = *(v81 + 64);
  v89 = v147;
  v90 = v148;
  v91 = *(v148 + 64);
  v92 = *(v148 + 80);
  *v147 = *v78;
  *(v89 + 1) = *(v78 + 8);
  *(v89 + 3) = *(v78 + 24);
  *(v89 + 5) = *(v78 + 40);
  *(v89 + 49) = *(v78 + 49);
  sub_222B723A4(&v78[v88], v89 + v91, &unk_27D026290, &qword_222C96B40);
  *(v89 + v92) = v87;
  v93 = *v89;
  v94 = *(v89 + 3);
  v166 = *(v89 + 1);
  v167 = v94;
  v168[0] = *(v89 + 5);
  *(v168 + 9) = *(v89 + 49);
  v95 = *(v90 + 64);
  LODWORD(v153) = *(v89 + *(v90 + 80));
  v96 = v149;
  sub_222B723A4(v89 + v95, v149, &unk_27D026290, &qword_222C96B40);
  v155 = v48;
  v156 = v49;
  v162 = v166;
  v163 = v167;
  *v164 = v168[0];
  *&v164[9] = *(v168 + 9);
  sub_222C25FDC(&v162, &v165);
  if (v165 == 5)
  {
    sub_222B9801C(&v166);

    v82 = &unk_27D026290;
    v83 = &qword_222C96B40;
    v84 = v96;
    goto LABEL_48;
  }

  LODWORD(v148) = v165;
  v150 = v93;
  v97 = v143;
  sub_222B4FC6C(v72, v143, &qword_27D0257D8, &unk_222C990C0);
  if ((*(v144 + 48))(v97, 1, v145) == 1)
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v105 = v97;
    v106 = v141;
    sub_222C26A98(v105, v141, type metadata accessor for MediaPlayClassification);
    v70 = *(v106 + 24);
    v154 = *(v106 + 16);
    v144 = v140 + 48;
    v145 = (v140 + 56);

    LODWORD(v147) = 1;
    while (1)
    {
      if (v147)
      {
        v114 = v137;
        sub_222C26A30(v152 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v137, type metadata accessor for FeaturisedTurn);
        v115 = 0;
        v117 = v138;
        v116 = v139;
      }

      else
      {
        v115 = 1;
        v117 = v138;
        v116 = v139;
        v114 = v137;
      }

      (*v145)(v114, v115, 1, v116);
      sub_222B723A4(v114, v117, &qword_27D0253C8, &unk_222C98400);
      if ((*v144)(v117, 1, v116) == 1)
      {
        break;
      }

      v118 = v136;
      sub_222C26A98(v117, v136, type metadata accessor for FeaturisedTurn);
      v61 = *(v118 + *(v116 + 28));

      sub_222C26B00(v118, type metadata accessor for FeaturisedTurn);

      LODWORD(v147) = 0;
      if (v61)
      {
        v62 = v61;
        v107 = (v61 + 64);
        v59 = -1;
        while (1)
        {
          ++v59;
          v108 = v62[2];
          if (v59 == v108)
          {
            break;
          }

          if (v59 >= v108)
          {
            __break(1u);
            goto LABEL_81;
          }

          v61 = *(v107 - 4);
          v109 = *(v107 - 3);
          v111 = *(v107 - 2);
          v110 = *(v107 - 1);
          v112 = *v107;
          if (v61 == v154 && v109 == v70)
          {
            v61 = v154;
LABEL_69:

            v155 = v61;
            v156 = v109;
            v157 = v111;
            v158 = v110;
            v159 = v112;
            extractMediaReference(event:)(&v155, &v162);

            v103 = *(&v162 + 1);
            v104 = v162;
            v101 = *(&v163 + 1);
            v102 = v163;
            v99 = *&v164[8];
            v100 = *v164;
            v98 = *&v164[16];
            goto LABEL_70;
          }

          v107 += 5;
          if (sub_222C951FC())
          {
            goto LABEL_69;
          }
        }
      }
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v163 = 0u;
    memset(v164, 0, 18);
    v162 = 0u;
LABEL_70:
    sub_222C26B00(v141, type metadata accessor for MediaPlayClassification);
  }

  sub_222C9366C();
  v160[0] = v104;
  v160[1] = v103;
  v160[2] = v102;
  v160[3] = v101;
  v160[4] = v100;
  v160[5] = v99;
  v161 = v98;
  if (v103)
  {
    *&v162 = v104;
    *(&v162 + 1) = v103;
    *&v163 = v102;
    *(&v163 + 1) = v101;
    *v164 = v100;
    *&v164[8] = v99;
    LODWORD(v154) = v98;
    *&v164[16] = v98;
    sub_222B554C0(&v162, &v155);
    v119 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = sub_222B4A9F8(0, *(v119 + 2) + 1, 1, v119);
    }

    v121 = *(v119 + 2);
    v120 = *(v119 + 3);
    if (v121 >= v120 >> 1)
    {
      v119 = sub_222B4A9F8((v120 > 1), v121 + 1, 1, v119);
    }

    *(v119 + 2) = v121 + 1;
    v122 = &v119[56 * v121];
    *(v122 + 4) = v104;
    *(v122 + 5) = v103;
    *(v122 + 6) = v102;
    *(v122 + 7) = v101;
    *(v122 + 8) = v100;
    *(v122 + 9) = v99;
    *(v122 + 40) = v154;
  }

  else
  {
    v119 = MEMORY[0x277D84F90];
  }

  sub_222B4FCD4(v160, &qword_27D027030, &unk_222CA1D70);
  v123 = v166;

  sub_222B9801C(&v166);
  v124 = v142;
  v125 = v134;
  v126 = v149;
  sub_222B4FC6C(v149, &v134[*(v142 + 36)], &unk_27D026290, &qword_222C96B40);
  (*(v131 + 32))(v125, v146, v132);
  *(v125 + v124[5]) = v148;
  *(v125 + v124[6]) = v150;
  *(v125 + v124[7]) = v119;
  v127 = v125 + v124[8];
  *v127 = v123;
  *(v127 + 16) = xmmword_222C9A0B0;
  *(v127 + 32) = 0;
  *(v127 + 40) = 0;
  *(v127 + 48) = 2;
  *(v127 + 49) = v153;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
  v128 = *(v133 + 72);
  v129 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_222C97C40;
  sub_222C26A98(v125, v130 + v129, type metadata accessor for MediaGroundTruth);
  sub_222B4FCD4(v126, &unk_27D026290, &qword_222C96B40);
  sub_222C26B00(v151, type metadata accessor for MediaInAppFollowupClassification);
  return v130;
}

uint64_t sub_222C24FFC(uint64_t a1)
{
  v3 = type metadata accessor for MediaInAppFollowupClassification();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = a1 + *(v5 + 20);
  if ((sub_222BCB8C4() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v16 = sub_222C9431C();
    __swift_project_value_buffer(v16, qword_280FE2340);
    v17 = sub_222C942FC();
    v18 = sub_222C94A3C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v23);
      _os_log_impl(&dword_222B39000, v17, v18, "%s Followup play was not considered successful. Skipping.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x223DCA8C0](v20, -1, -1);
      MEMORY[0x223DCA8C0](v19, -1, -1);
    }

    return 0;
  }

  if (*(a1 + *(v3 + 24)) > v8)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    sub_222C26A30(a1, v7, type metadata accessor for MediaInAppFollowupClassification);
    v11 = sub_222C942FC();
    v12 = sub_222C94A3C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315650;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v23);
      *(v13 + 12) = 2048;
      v15 = *&v7[*(v3 + 24)];
      sub_222C26B00(v7, type metadata accessor for MediaInAppFollowupClassification);
      *(v13 + 14) = v15;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v8;
      _os_log_impl(&dword_222B39000, v11, v12, "%s Follow-up took of %f longer than the maximum time of %f. Not generating ground truth.", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    else
    {

      sub_222C26B00(v7, type metadata accessor for MediaInAppFollowupClassification);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222C253A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MediaInAppFollowupClassification();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v90 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v82 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - v16;
  v18 = type metadata accessor for FeaturisedTurn(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v87 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v82 - v23;
  v92 = a2;
  sub_222B41144(sub_222C26F34, a1, v17);
  v25 = v19;
  v27 = *(v19 + 48);
  v26 = (v19 + 48);
  v88 = v27;
  if (v27(v17, 1, v18) == 1)
  {
    v26 = a3;
    sub_222B4FCD4(v17, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
LABEL_52:
      swift_once();
    }

    v28 = sub_222C9431C();
    __swift_project_value_buffer(v28, qword_280FE2340);
    sub_222C26A30(a2, v9, type metadata accessor for MediaInAppFollowupClassification);
    v29 = sub_222C942FC();
    LOBYTE(a2) = sub_222C94A4C();
    if (os_log_type_enabled(v29, a2))
    {
      v30 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v96[0] = v18;
      *v30 = 136315394;
      if (qword_27D024730 != -1)
      {
LABEL_54:
        swift_once();
      }

      *(v30 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v96);
      *(v30 + 12) = 2080;
      v31 = &v9[*(v6 + 28)];
      v32 = sub_222C9360C();
      v34 = v33;
      sub_222C26B00(v9, type metadata accessor for MediaInAppFollowupClassification);
      v35 = sub_222B437C0(v32, v34, v96);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_222B39000, v29, a2, "%s Connected turn to the followup was not found. Turn ID=%s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v18, -1, -1);
      MEMORY[0x223DCA8C0](v30, -1, -1);
    }

    else
    {

      sub_222C26B00(v9, type metadata accessor for MediaInAppFollowupClassification);
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
    v65 = *(*(v64 - 8) + 56);
    v66 = v26;
  }

  else
  {
    v84 = a3;
    v83 = v24;
    sub_222C26A98(v17, v24, type metadata accessor for FeaturisedTurn);
    v36 = a2 + *(v6 + 20);
    a2 = *(v36 + 16);
    v37 = *(v36 + 24);
    v82 = v25;
    v85 = (v25 + 56);
    v86 = a1;

    v30 = 0;
    v91 = 0;
    while (1)
    {
      v29 = v86;
      isa = v86[2].isa;
      if (v91 == isa)
      {
        v44 = 1;
        v45 = v90;
        v46 = v89;
      }

      else
      {
        v45 = v90;
        v46 = v89;
        if (v91 >= isa)
        {
          __break(1u);
          goto LABEL_54;
        }

        v47 = v91;
        sub_222C26A30(v86 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v91, v89, type metadata accessor for FeaturisedTurn);
        v44 = 0;
        v9 = v47 + 1;
        v91 = v9;
      }

      (*v85)(v46, v44, 1, v18);
      sub_222B723A4(v46, v45, &qword_27D0253C8, &unk_222C98400);
      if (v88(v45, 1, v18) == 1)
      {
        break;
      }

      v48 = v87;
      sub_222C26A98(v45, v87, type metadata accessor for FeaturisedTurn);
      v49 = *(v48 + *(v18 + 28));

      sub_222C26B00(v48, type metadata accessor for FeaturisedTurn);

      v30 = v49;
      if (v49)
      {
        v38 = (v49 + 64);
        v39 = -1;
        while (1)
        {
          ++v39;
          v40 = *(v30 + 16);
          if (v39 == v40)
          {
            break;
          }

          if (v39 >= v40)
          {
            __break(1u);
            goto LABEL_52;
          }

          v9 = *(v38 - 3);
          v41 = *(v38 - 2);
          v6 = *v38;
          if (*(v38 - 4) != a2 || v9 != v37)
          {
            v38 += 5;
            if ((sub_222C951FC() & 1) == 0)
            {
              continue;
            }
          }

          sub_222B4183C(v50, &v93);

          swift_bridgeObjectRelease_n();

          v96[0] = v93;
          v96[1] = v94;
          v97[0] = v95[0];
          *(v97 + 9) = *(v95 + 9);
          v51 = v93;
          v98 = v94;
          *v99 = v95[0];
          *&v99[9] = *(v95 + 9);
          if (*(&v93 + 1))
          {
            v52 = v83;
            v53 = sub_222C13AC0(v83);
            v54 = *(v52 + *(v18 + 24));
            v55 = sub_222B41B48(v54);
            if (v55)
            {
              v56 = v55;
              v57 = v53 & 1;
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
              v59 = *(v58 + 64);
              v60 = *(v58 + 80);
              v61 = v84;
              *v84 = v56;
              *(v61 + 1) = v51;
              v62 = *v99;
              *(v61 + 3) = v98;
              *(v61 + 5) = v62;
              *(v61 + 49) = *&v99[9];

              sub_222B421FC(v54, v61 + v59);

              sub_222C26B00(v52, type metadata accessor for FeaturisedTurn);
              *(v61 + v60) = v57;
              return (*(*(v58 - 8) + 56))(v61, 0, 1, v58);
            }

            sub_222B4FCD4(v96, &qword_27D025370, &qword_222C98310);
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v75 = sub_222C9431C();
            __swift_project_value_buffer(v75, qword_280FE2340);
            v76 = sub_222C942FC();
            v77 = sub_222C94A3C();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *&v93 = v79;
              *v78 = 136315138;
              if (qword_27D024730 != -1)
              {
                swift_once();
              }

              *(v78 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v93);
              _os_log_impl(&dword_222B39000, v76, v77, "%s USO Media Query was not found in turn related to followup. Session not valid for ground truth.", v78, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v79);
              MEMORY[0x223DCA8C0](v79, -1, -1);
              MEMORY[0x223DCA8C0](v78, -1, -1);
            }

            v74 = v52;
            goto LABEL_43;
          }

          v67 = v83;
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v68 = sub_222C9431C();
          __swift_project_value_buffer(v68, qword_280FE2340);
          v69 = sub_222C942FC();
          v70 = sub_222C94A3C();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            *&v93 = v72;
            *v71 = 136315138;
            if (qword_27D024730 != -1)
            {
              swift_once();
            }

            *(v71 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v93);
            v73 = "%s Followup event was missing a played media item. Skipping.";
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v80 = sub_222C9431C();
    __swift_project_value_buffer(v80, qword_280FE2340);
    v69 = sub_222C942FC();
    v70 = sub_222C94A4C();
    v81 = os_log_type_enabled(v69, v70);
    v67 = v83;
    if (v81)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v96[0] = v72;
      *v71 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v71 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v96);
      v73 = "%s Invalid event id in classification. Could not find followup event.";
LABEL_34:
      _os_log_impl(&dword_222B39000, v69, v70, v73, v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x223DCA8C0](v72, -1, -1);
      MEMORY[0x223DCA8C0](v71, -1, -1);
    }

LABEL_35:

    v74 = v67;
LABEL_43:
    sub_222C26B00(v74, type metadata accessor for FeaturisedTurn);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
    v65 = *(*(v64 - 8) + 56);
    v66 = v84;
  }

  return v65(v66, 1, 1, v64);
}

void sub_222C25FDC(void *a1@<X1>, char *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[6];
  if (v4 == 1)
  {
    v53 = *v2;
    v7 = a1[5];
    v8 = a1[3];
    v9 = sub_222C386C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027040, &unk_222CA34E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C9CD00;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = v5;
    *(inited + 56) = 2;
    *(inited + 64) = v7;
    *(inited + 72) = v6;
    *(inited + 80) = 1;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    v11 = sub_222B63C18(inited);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027048, &unk_222CA1E10);
    swift_arrayDestroy();

    v13 = sub_222B66CBC(v12);

    v15 = sub_222C6E9C4(v14, v13);

    v16 = sub_222C26C14(v15, v9, v11, sub_222C267B0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (qword_280FDFE78 != -1)
    {
LABEL_35:
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    v18 = sub_222C942FC();
    v19 = sub_222C94A3C();
    v54 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v60 = v21;
      *v20 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v60);
      _os_log_impl(&dword_222B39000, v18, v19, "%s User query to played media item comparison for in App Followup:", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223DCA8C0](v21, -1, -1);
      MEMORY[0x223DCA8C0](v20, -1, -1);
    }

    v55 = *(v16 + 16);
    v56 = v16;
    if (v55)
    {
      v16 = *(v16 + 16);
      v22 = (v56 + 80);
      do
      {
        v23 = *(v22 - 48);
        v24 = *(v22 - 5);
        v25 = *(v22 - 4);
        v27 = *(v22 - 3);
        v26 = *(v22 - 2);
        v59 = *(v22 - 1);
        v58 = *v22;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v28 = sub_222C942FC();
        a2 = sub_222C94A3C();

        if (os_log_type_enabled(v28, a2))
        {
          v57 = v27;
          v29 = v24;
          v30 = v23;
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v66[0] = v32;
          *v31 = 136315394;
          if (qword_27D024730 != -1)
          {
            swift_once();
          }

          *(v31 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v66);
          *(v31 + 12) = 2080;
          LOBYTE(v60) = v30;
          *(&v60 + 1) = v29;
          v61 = v25;
          v62 = v57;
          v63 = v26;
          v64 = v59;
          v65 = v58;
          v33 = sub_222C944EC();
          v35 = sub_222B437C0(v33, v34, v66);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_222B39000, v28, a2, "%s    %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v32, -1, -1);
          MEMORY[0x223DCA8C0](v31, -1, -1);
        }

        else
        {
        }

        v22 += 56;
        --v16;
      }

      while (v16);
    }

    v45 = (v56 + 48);
    v46 = -1;
    while (1)
    {
      v47 = v45;
      if (v46 - v55 == -1)
      {
        break;
      }

      if (++v46 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v45 += 7;
      if (!*(v47 - 16) && *v47)
      {
        v60 = v53;
        sub_222C26874(v56, v66);

        v48 = v66[0];
        goto LABEL_33;
      }
    }

    v49 = sub_222C942FC();
    v50 = sub_222C94A3C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v60 = v52;
      *v51 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v51 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v60);
      _os_log_impl(&dword_222B39000, v49, v50, "%s User did not specify a song name in the query. Skipping.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x223DCA8C0](v52, -1, -1);
      MEMORY[0x223DCA8C0](v51, -1, -1);
    }

    v48 = 5;
LABEL_33:
    *v54 = v48;
  }

  else
  {
    v36 = a1[1];
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);

    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v60 = v41;
      *v40 = 136315394;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v40 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v60);
      *(v40 + 12) = 2080;
      v66[0] = v4;
      type metadata accessor for INMediaItemType(0);
      v42 = sub_222C944EC();
      v44 = sub_222B437C0(v42, v43, &v60);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_222B39000, v38, v39, "%s Followup was to a non song media type %s. Only songs are currently supported for followups.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v41, -1, -1);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    *a2 = 5;
  }
}

uint64_t sub_222C26874@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v4 = 0;
  v5 = *v2;
  v6 = result + 16;
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v6 + 56 * v4;
  while (v7 != v4)
  {
    if (v4 >= v7)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_22;
    }

    v11 = *(v9 + 32);
    ++v4;
    v9 += 56;
    if (v11)
    {
      v23 = *(v9 - 40);
      v22 = *(v9 - 32);
      v13 = *(v9 - 16);
      v12 = *(v9 - 8);
      v14 = *v9;
      v15 = *(v9 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v15;
      if ((result & 1) == 0)
      {
        result = sub_222B4CC98(0, *(v8 + 16) + 1, 1);
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_222B4CC98((v16 > 1), v17 + 1, 1);
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 56 * v17;
      *(v18 + 32) = v23;
      *(v18 + 40) = v22;
      *(v18 + 48) = v11;
      *(v18 + 56) = v13;
      *(v18 + 64) = v12;
      *(v18 + 72) = v14;
      *(v18 + 80) = v24;
      v4 = v10;
      goto LABEL_2;
    }
  }

  v19 = *(v8 + 16);
  if (v19)
  {
    v20 = (v8 + 80);
    do
    {
      if (*v20)
      {
        if (v5 > 0.0)
        {
LABEL_18:
          v21 = 3;
          goto LABEL_20;
        }
      }

      else if (v5 > *(v20 - 1))
      {
        goto LABEL_18;
      }

      v20 += 7;
      --v19;
    }

    while (v19);
  }

  v21 = 4;
LABEL_20:

  *a2 = v21;
  return result;
}

uint64_t sub_222C26A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C26A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C26B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222C26B64()
{
  result = qword_27D027038;
  if (!qword_27D027038)
  {
    type metadata accessor for MediaGroundTruth();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaInAppFollowupGroundTruthGenerator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaInAppFollowupGroundTruthGenerator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_222C26C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v50 = MEMORY[0x277D84F90];
    sub_222B4CC98(0, v5, 0);
    v48 = v50;
    v9 = v4 + 56;
    v10 = -1 << *(v4 + 32);
    result = sub_222C94C2C();
    v11 = result;
    v12 = 0;
    v38 = v4 + 64;
    v39 = v5;
    v40 = a2;
    v41 = a3;
    v42 = v4 + 56;
    v43 = v4;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v4 + 32))
    {
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_31;
      }

      v46 = *(v4 + 36);
      v15 = *(*(v4 + 48) + v11);
      if (*(a2 + 16) && (v16 = sub_222B95ADC(v15), (v17 & 1) != 0))
      {
        v18 = (*(a2 + 56) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      v47 = v11 >> 6;
      if (*(a3 + 16))
      {
        v21 = sub_222B95ADC(v15);
        if (v22)
        {
          v23 = (*(a3 + 56) + 16 * v21);
          v25 = *v23;
          v24 = v23[1];
        }

        else
        {
          v25 = 0;
          v24 = 0;
        }
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }

      result = a4(v15, v20, v19, v25, v24);
      v27 = v48;
      v51 = v48;
      v29 = *(v48 + 16);
      v28 = *(v48 + 24);
      if (v29 >= v28 >> 1)
      {
        v49 = result;
        v45 = v26;
        sub_222B4CC98((v28 > 1), v29 + 1, 1);
        v26 = v45;
        result = v49;
        v27 = v51;
      }

      *(v27 + 16) = v29 + 1;
      v48 = v27;
      v30 = v27 + 56 * v29;
      *(v30 + 32) = v15;
      *(v30 + 40) = v20;
      *(v30 + 48) = v19;
      *(v30 + 56) = v25;
      *(v30 + 64) = v24;
      *(v30 + 72) = result;
      *(v30 + 80) = v26 & 1;
      v4 = v43;
      v13 = 1 << *(v43 + 32);
      if (v11 >= v13)
      {
        goto LABEL_32;
      }

      v9 = v42;
      v31 = *(v42 + 8 * v47);
      if ((v31 & (1 << v11)) == 0)
      {
        goto LABEL_33;
      }

      if (v46 != *(v43 + 36))
      {
        goto LABEL_34;
      }

      v32 = v31 & (-2 << (v11 & 0x3F));
      if (v32)
      {
        v13 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v39;
      }

      else
      {
        v33 = v47 << 6;
        v34 = v47 + 1;
        v14 = v39;
        v35 = (v38 + 8 * v47);
        while (v34 < (v13 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_222B7D9C4(v11, v46, 0);
            v13 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_222B7D9C4(v11, v46, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      a2 = v40;
      a3 = v41;
      if (v12 == v14)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t sub_222C26F34()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MediaInAppFollowupClassification() + 28);
  return sub_222C9362C() & 1;
}

uint64_t sub_222C26F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v25 - v15);
  v18 = *v5;
  v17 = v5[1];
  v19 = *(*v5 + 16);
  if (v17 == v19)
  {
    v20 = *(v14 + 56);

    return v20(a5, 1, 1, v11);
  }

  else
  {
    if (v17 >= v19)
    {
      __break(1u);
    }

    else
    {
      v26 = v14;
      v21 = *(a3(0) - 8);
      v22 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17;
      v5[1] = v17 + 1;
      v23 = *(v11 + 48);
      v24 = v5[2];
      *v16 = v24;
      result = sub_222C29A80(v22, v16 + v23, a4);
      if (!__OFADD__(v24, 1))
      {
        v5[2] = v24 + 1;
        sub_222B723A4(v16, a5, a1, a2);
        return (*(v26 + 56))(a5, 0, 1, v11);
      }
    }

    __break(1u);
  }

  return result;
}

id DiagnosticLoggingHelper.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_222C9429C();
  v4 = v3;
  v5 = type metadata accessor for PIMSStoreCoreData();
  v6 = swift_allocObject();
  v7 = sub_222C769D4(v2, v4, 0);

  if (v7)
  {
    *(v6 + 16) = v7;
    *(v6 + 24) = [v7 newBackgroundContext];
    v8 = &protocol witness table for PIMSStoreCoreData;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v6 = 0;
    v5 = 0;
    v8 = 0;
  }

  v9 = sub_222C9428C();
  v11 = v10;
  v12 = type metadata accessor for PICSStoreCoreData();
  v13 = swift_allocObject();
  v14 = sub_222BE3CC0(v9, v11, 0);

  if (v14)
  {
    *(v13 + 16) = v14;
    result = [v14 newBackgroundContext];
    *(v13 + 24) = result;
    v16 = &protocol witness table for PICSStoreCoreData;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v16 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v5;
  a1[4] = v8;
  a1[5] = v13;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = v12;
  a1[9] = v16;
  return result;
}

__n128 DiagnosticLoggingHelper.init(pimsStore:picsStore:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t DiagnosticLoggingHelper.generateMediaSuggestionStoreDebugString(verbose:withMediaTitles:)(char a1, char a2)
{
  *(v3 + 224) = v2;
  *(v3 + 345) = a2;
  *(v3 + 344) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027058, &qword_222CA1E38) - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v5 = type metadata accessor for PlusMediaSuggestion();
  *(v3 + 248) = v5;
  v6 = *(v5 - 8);
  *(v3 + 256) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C27438, 0, 0);
}

uint64_t sub_222C27438()
{
  v87 = v0;
  *(v0 + 152) = 0;
  v1 = *(v0 + 224);
  *(v0 + 160) = 0xE000000000000000;
  sub_222B4FC6C(v1, v0 + 112, &qword_27D027060, &qword_222CA1E40);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 344);
    sub_222B405A0((v0 + 112), v0 + 72);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v3);
    result = (*(v4 + 40))(v3, v4);
    v6 = result;
    if ((v2 & 1) == 0)
    {
      v81 = *(result + 16);
      if (v81)
      {
        v7 = 0;
        v78 = *(v0 + 248);
        v79 = *(v0 + 256);
        v77 = MEMORY[0x277D84F90];
        v80 = result;
        while (v7 < *(v6 + 16))
        {
          v8 = *(v0 + 288);
          v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
          v82 = *(v79 + 72);
          sub_222C29A80(v6 + v83 + v82 * v7, v8, type metadata accessor for PlusMediaSuggestion);
          v9 = *(v8 + *(v78 + 44));
          if (*(v9 + 16) && (v10 = *(v9 + 40), sub_222C952FC(), sub_222C9452C(), v11 = sub_222C9534C(), v12 = -1 << *(v9 + 32), v13 = v11 & ~v12, ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
          {
            v14 = ~v12;
            while (1)
            {
              v15 = *(*(v9 + 48) + v13);
              if (v15 <= 3 && *(*(v9 + 48) + v13) > 1u && v15 != 3)
              {
                break;
              }

              v16 = sub_222C951FC();

              if (v16)
              {
                goto LABEL_18;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

LABEL_18:
            sub_222C29B48(*(v0 + 288), *(v0 + 280), type metadata accessor for PlusMediaSuggestion);
            v17 = v77;
            v86[0] = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_222B4C630(0, *(v77 + 16) + 1, 1);
              v17 = v86[0];
            }

            v6 = v80;
            v19 = *(v17 + 16);
            v18 = *(v17 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_222B4C630(v18 > 1, v19 + 1, 1);
              v17 = v86[0];
            }

            v20 = *(v0 + 280);
            *(v17 + 16) = v19 + 1;
            v77 = v17;
            result = sub_222C29B48(v20, v17 + v83 + v19 * v82, type metadata accessor for PlusMediaSuggestion);
          }

          else
          {
LABEL_5:
            result = sub_222C29AE8(*(v0 + 288), type metadata accessor for PlusMediaSuggestion);
            v6 = v80;
          }

          if (++v7 == v81)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_51;
      }

      v77 = MEMORY[0x277D84F90];
LABEL_25:

      v6 = v77;
    }

    *(v0 + 296) = v6;
    if (*(v0 + 345) != 1)
    {
      v40 = *(v0 + 248);
      sub_222C94D1C();

      v84 = *(v6 + 16);
      *(v0 + 200) = v84;
      v41 = sub_222C9517C();
      MEMORY[0x223DC9330](v41);

      MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
      MEMORY[0x223DC9330](0xD000000000000018, 0x8000000222CACA70);

      while (1)
      {
        v58 = *(v0 + 232);
        v57 = *(v0 + 240);
        sub_222C26F84(&qword_27D027068, &qword_222CA1E48, type metadata accessor for PlusMediaSuggestion, type metadata accessor for PlusMediaSuggestion, v58);
        sub_222B723A4(v58, v57, &qword_27D027058, &qword_222CA1E38);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027068, &qword_222CA1E48);
        if ((*(*(v59 - 8) + 48))(v57, 1, v59) == 1)
        {

          v22 = *(v0 + 152);
          v21 = *(v0 + 160);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
          goto LABEL_44;
        }

        v60 = *(v0 + 240);
        v61 = *v60;
        sub_222C29B48(v60 + *(v59 + 48), *(v0 + 264), type metadata accessor for PlusMediaSuggestion);
        v86[0] = 0;
        v86[1] = 0xE000000000000000;
        sub_222C94D1C();

        v86[0] = 0xD000000000000018;
        v86[1] = 0x8000000222CACA90;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        v62 = *(v0 + 264);
        *(v0 + 208) = v61 + 1;
        v63 = sub_222C9517C();
        MEMORY[0x223DC9330](v63);

        MEMORY[0x223DC9330](543584032, 0xE400000000000000);
        *(v0 + 216) = v84;
        v64 = sub_222C9517C();
        MEMORY[0x223DC9330](v64);

        MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CACAB0);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        v86[0] = 0x909093A4449;
        v86[1] = 0xE600000000000000;
        sub_222C9367C();
        sub_222B9E5D0();
        v65 = sub_222C9517C();
        MEMORY[0x223DC9330](v65);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        strcpy(v86, "Media ID:\t\t");
        HIDWORD(v86[1]) = -352321536;
        v66 = (v62 + v40[6]);
        MEMORY[0x223DC9330](*v66, v66[1]);
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        v67 = 0xE000000000000000;
        v86[0] = 0;
        v86[1] = 0xE000000000000000;
        sub_222C94D1C();

        v68 = 0;
        strcpy(v86, "Storefront:\t\t");
        HIWORD(v86[1]) = -4864;
        if (v66[3] != 1 && v66[5])
        {
          v68 = v66[4];
        }

        v42 = *(v0 + 264);
        MEMORY[0x223DC9330](v68, v67);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        *(v0 + 168) = 0;
        *(v0 + 176) = 0xE000000000000000;
        MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
        v43 = *(v42 + v40[10]);
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](*(v0 + 168), *(v0 + 176));

        v44 = *(v42 + v40[5]);
        v46 = UsoEntity_common_MediaItem.convertUSOMediaItemToString()();
        countAndFlagsBits = v46.value._countAndFlagsBits;
        if (v46.value._object)
        {
          object = v46.value._object;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        strcpy(v86, "USO key:\t\t");
        BYTE3(v86[1]) = 0;
        HIDWORD(v86[1]) = -369098752;
        MEMORY[0x223DC9330](countAndFlagsBits, object);

        MEMORY[0x223DC9330](v86[0], v86[1]);

        v86[0] = 0;
        v86[1] = 0xE000000000000000;
        sub_222C94D1C();

        v86[0] = 0xD000000000000011;
        v86[1] = 0x8000000222CACAD0;
        v48 = *(v42 + v40[7]);
        v49 = type metadata accessor for ThinMediaGroundTruth();
        v50 = MEMORY[0x223DC94D0](v48, v49);
        MEMORY[0x223DC9330](v50);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        strcpy(v86, "Tags:\t\t\t");
        BYTE1(v86[1]) = 0;
        WORD1(v86[1]) = 0;
        HIDWORD(v86[1]) = -402653184;
        v51 = *(v42 + v40[11]);
        sub_222B654C0();
        v52 = sub_222C948FC();
        MEMORY[0x223DC9330](v52);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        *(v0 + 184) = 0;
        *(v0 + 192) = 0xE000000000000000;
        MEMORY[0x223DC9330](0x9093A65726F6353, 0xE900000000000009);
        v53 = *(v42 + v40[8]);
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](*(v0 + 184), *(v0 + 192));

        v86[0] = 0;
        v86[1] = 0xE000000000000000;
        sub_222C94D1C();

        v86[0] = 0x73694865726F6353;
        v86[1] = 0xEF09093A79726F74;
        v54 = *(v42 + v40[9]);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261D8, &qword_222CA1E50);
        v56 = MEMORY[0x223DC94D0](v54, v55);
        MEMORY[0x223DC9330](v56);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v86[0], v86[1]);

        MEMORY[0x223DC9330](0xD000000000000048, 0x8000000222CACAF0);
        sub_222C29AE8(v42, type metadata accessor for PlusMediaSuggestion);
      }

      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v23 = type metadata accessor for AMSSongMetadataClient();
    v24 = swift_allocObject();
    type metadata accessor for AMSClient();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    type metadata accessor for AMPMetadataHelper();
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    inited[5] = v23;
    inited[6] = &protocol witness table for AMSSongMetadataClient;
    inited[2] = v24;
    v27 = *(v6 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v85 = MEMORY[0x277D84F90];
      v30 = *(v0 + 248);
      v29 = *(v0 + 256);
      sub_222B4C418(0, v27, 0);
      v28 = v85;
      v31 = v6 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v32 = *(v29 + 72);
      do
      {
        v33 = *(v0 + 272);
        sub_222C29A80(v31, v33, type metadata accessor for PlusMediaSuggestion);
        v34 = (v33 + *(v30 + 24));
        v35 = *v34;
        v36 = v34[1];

        sub_222C29AE8(v33, type metadata accessor for PlusMediaSuggestion);
        v38 = *(v85 + 16);
        v37 = *(v85 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_222B4C418((v37 > 1), v38 + 1, 1);
        }

        *(v85 + 16) = v38 + 1;
        v39 = v85 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v36;
        v31 += v32;
        --v27;
      }

      while (v27);
    }

    *(v0 + 312) = v28;
    v76 = swift_task_alloc();
    *(v0 + 320) = v76;
    *v76 = v0;
    v76[1] = sub_222C28214;

    return sub_222BFF544(v28);
  }

  else
  {
    sub_222B4FCD4(v0 + 112, &qword_27D027060, &qword_222CA1E40);
    MEMORY[0x223DC9330](0xD000000000000036, 0x8000000222CACA30);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
LABEL_44:
    v70 = *(v0 + 280);
    v69 = *(v0 + 288);
    v72 = *(v0 + 264);
    v71 = *(v0 + 272);
    v74 = *(v0 + 232);
    v73 = *(v0 + 240);

    v75 = *(v0 + 8);

    return v75(v22, v21);
  }
}

uint64_t sub_222C28214(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  v4[41] = v1;

  v7 = v4[39];
  if (v1)
  {
    v8 = v4[37];

    v9 = sub_222C28CA4;
  }

  else
  {

    v4[42] = a1;
    v9 = sub_222C28368;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_222C28368()
{
  v54 = v0;
  v1 = v0[38];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v51 = v0[42];
  v2 = v0[37];
  v3 = v0[31];
  *&v53[0] = 0;
  *(&v53[0] + 1) = 0xE000000000000000;
  sub_222C94D1C();

  v50 = *(v2 + 16);
  v0[25] = v50;
  *&v53[0] = 0xD000000000000018;
  *(&v53[0] + 1) = 0x8000000222CACA70;
  v4 = sub_222C9517C();
  MEMORY[0x223DC9330](v4);

  MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
  MEMORY[0x223DC9330](0xD000000000000018, 0x8000000222CACA70);

  while (1)
  {
    v21 = v0[29];
    v20 = v0[30];
    sub_222C26F84(&qword_27D027068, &qword_222CA1E48, type metadata accessor for PlusMediaSuggestion, type metadata accessor for PlusMediaSuggestion, v21);
    sub_222B723A4(v21, v20, &qword_27D027058, &qword_222CA1E38);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027068, &qword_222CA1E48);
    if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
    {
      break;
    }

    v23 = v0[30];
    v24 = *v23;
    sub_222C29B48(v23 + *(v22 + 48), v0[33], type metadata accessor for PlusMediaSuggestion);
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v53[0] = 0xD000000000000018;
    *(&v53[0] + 1) = 0x8000000222CACA90;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return result;
    }

    v26 = v0[33];
    v0[26] = v24 + 1;
    v27 = sub_222C9517C();
    MEMORY[0x223DC9330](v27);

    MEMORY[0x223DC9330](543584032, 0xE400000000000000);
    v0[27] = v50;
    v28 = sub_222C9517C();
    MEMORY[0x223DC9330](v28);

    MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CACAB0);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    *&v53[0] = 0x909093A4449;
    *(&v53[0] + 1) = 0xE600000000000000;
    sub_222C9367C();
    sub_222B9E5D0();
    v29 = sub_222C9517C();
    MEMORY[0x223DC9330](v29);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    *&v53[0] = 0x444920616964654DLL;
    *(&v53[0] + 1) = 0xEB0000000009093ALL;
    v30 = (v26 + v3[6]);
    v32 = *v30;
    v31 = v30[1];
    MEMORY[0x223DC9330](*v30, v31);
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    if (v51)
    {
      v33 = 0xE000000000000000;
      *&v53[0] = 0;
      *(&v53[0] + 1) = 0xE000000000000000;
      sub_222C94D1C();

      strcpy(v52, "Media title:\t\t");
      HIBYTE(v52[1]) = -18;
      if (*(v51 + 16) && (v34 = sub_222B8C9DC(v32, v31), (v35 & 1) != 0))
      {
        v36 = (*(v51 + 56) + (v34 << 6));
        v53[0] = *v36;
        v53[1] = v36[1];
        v53[2] = v36[2];
        v53[3] = v36[3];
        v37 = AMPSongMetadata.title.getter();
        v33 = v38;
      }

      else
      {
        v37 = 0;
      }

      MEMORY[0x223DC9330](v37, v33);

      MEMORY[0x223DC9330](10, 0xE100000000000000);
      MEMORY[0x223DC9330](v52[0], v52[1]);
    }

    v39 = 0xE000000000000000;
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    v40 = 0;
    strcpy(v53, "Storefront:\t\t");
    HIWORD(v53[0]) = -4864;
    if (v30[3] != 1 && v30[5])
    {
      v40 = v30[4];
    }

    v5 = v0[33];
    MEMORY[0x223DC9330](v40, v39);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    v0[21] = 0;
    v0[22] = 0xE000000000000000;
    MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
    v6 = *(v5 + v3[10]);
    sub_222C948DC();
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](v0[21], v0[22]);

    v7 = *(v5 + v3[5]);
    v9 = UsoEntity_common_MediaItem.convertUSOMediaItemToString()();
    countAndFlagsBits = v9.value._countAndFlagsBits;
    if (v9.value._object)
    {
      object = v9.value._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    *&v53[0] = 0x3A79656B204F5355;
    *(&v53[0] + 1) = 0xEA00000000000909;
    MEMORY[0x223DC9330](countAndFlagsBits, object);

    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v53[0] = 0xD000000000000011;
    *(&v53[0] + 1) = 0x8000000222CACAD0;
    v11 = *(v5 + v3[7]);
    v12 = type metadata accessor for ThinMediaGroundTruth();
    v13 = MEMORY[0x223DC94D0](v11, v12);
    MEMORY[0x223DC9330](v13);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    *&v53[0] = 0x909093A73676154;
    *(&v53[0] + 1) = 0xE800000000000000;
    v14 = *(v5 + v3[11]);
    sub_222B654C0();
    v15 = sub_222C948FC();
    MEMORY[0x223DC9330](v15);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    v0[23] = 0;
    v0[24] = 0xE000000000000000;
    MEMORY[0x223DC9330](0x9093A65726F6353, 0xE900000000000009);
    v16 = *(v5 + v3[8]);
    sub_222C948DC();
    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](v0[23], v0[24]);

    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_222C94D1C();

    *&v53[0] = 0x73694865726F6353;
    *(&v53[0] + 1) = 0xEF09093A79726F74;
    v17 = *(v5 + v3[9]);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261D8, &qword_222CA1E50);
    v19 = MEMORY[0x223DC94D0](v17, v18);
    MEMORY[0x223DC9330](v19);

    MEMORY[0x223DC9330](10, 0xE100000000000000);
    MEMORY[0x223DC9330](*&v53[0], *(&v53[0] + 1));

    MEMORY[0x223DC9330](0xD000000000000048, 0x8000000222CACAF0);
    sub_222C29AE8(v5, type metadata accessor for PlusMediaSuggestion);
  }

  v42 = v0[19];
  v41 = v0[20];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v44 = v0[35];
  v43 = v0[36];
  v46 = v0[33];
  v45 = v0[34];
  v48 = v0[29];
  v47 = v0[30];

  v49 = v0[1];

  return v49(v42, v41);
}

uint64_t sub_222C28CA4()
{
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);

  v8 = v0[1];
  v9 = v0[41];

  return v8();
}

Swift::String __swiftcall DiagnosticLoggingHelper.generateContactSuggestionStoreDebugString()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027070, &unk_222CA1E58);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v62 - v5);
  v71 = type metadata accessor for PlusContactSuggestion();
  v67 = *(v71 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v71);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_222B4FC6C(v0 + 40, &v74, &qword_27D025F60, &unk_222C9B880);
  if (v76)
  {
    sub_222B405A0(&v74, v77);
    v15 = v78;
    v16 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v17 = (*(v16 + 40))(v15, v16);
    v19 = v17;
    v66 = *(v17 + 16);
    if (v66)
    {
      v20 = 0;
      v63 = MEMORY[0x277D84F90];
      v62 = v6;
      v65 = v17;
      while (v20 < *(v19 + 16))
      {
        v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v68 = *(v67 + 72);
        sub_222C29A80(v19 + v69 + v68 * v20, v14, type metadata accessor for PlusContactSuggestion);
        v21 = v14;
        v22 = *&v14[*(v71 + 36)];
        if (*(v22 + 16) && (v23 = *(v22 + 40), sub_222C952FC(), sub_222C9452C(), v24 = sub_222C9534C(), v25 = -1 << *(v22 + 32), v26 = v24 & ~v25, ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = *(*(v22 + 48) + v26);
            if (v28 > 2 && v28 != 4)
            {
              break;
            }

            v29 = sub_222C951FC();

            if (v29)
            {
              goto LABEL_16;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_16:
          v14 = v21;
          sub_222C29B48(v21, v64, type metadata accessor for PlusContactSuggestion);
          v30 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73[0] = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C6E8(0, *(v30 + 16) + 1, 1);
            v30 = v73[0];
          }

          v19 = v65;
          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          v34 = v30;
          if (v33 >= v32 >> 1)
          {
            sub_222B4C6E8(v32 > 1, v33 + 1, 1);
            v34 = v73[0];
          }

          *(v34 + 16) = v33 + 1;
          v63 = v34;
          v17 = sub_222C29B48(v64, v34 + v69 + v33 * v68, type metadata accessor for PlusContactSuggestion);
        }

        else
        {
LABEL_4:
          v14 = v21;
          v17 = sub_222C29AE8(v21, type metadata accessor for PlusContactSuggestion);
          v19 = v65;
        }

        ++v20;
        v6 = v62;
        if (v20 == v66)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
LABEL_23:

      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_222C94D1C();

      *&v74 = 0xD000000000000018;
      *(&v74 + 1) = 0x8000000222CACB80;
      v37 = v63;
      v68 = *(v63 + 16);
      v73[0] = v68;
      v38 = sub_222C9517C();
      MEMORY[0x223DC9330](v38);

      MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
      MEMORY[0x223DC9330](v74, *(&v74 + 1));

      v69 = 0x8000000222CACA90;
      v67 = "-----------------Record ";
      v66 = 0x8000000222CACBA0;
      v65 = 0x8000000222CACAD0;
      v64 = "Contributing GT:\t";
      v75 = 0;
      v74 = v37;
      v63 = 0xD000000000000012;
      v39 = v71;
      while (1)
      {
        v40 = v70;
        sub_222C26F84(&qword_27D027078, &qword_222CA1E68, type metadata accessor for PlusContactSuggestion, type metadata accessor for PlusContactSuggestion, v70);
        sub_222B723A4(v40, v6, &qword_27D027070, &unk_222CA1E58);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027078, &qword_222CA1E68);
        if ((*(*(v41 - 8) + 48))(v6, 1, v41) == 1)
        {

          v35 = v80;
          v36 = v81;
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          goto LABEL_37;
        }

        v42 = *v6;
        sub_222C29B48(v6 + *(v41 + 48), v10, type metadata accessor for PlusContactSuggestion);
        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_222C94D1C();

        v73[0] = 0xD000000000000018;
        v73[1] = v69;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v72 = v42 + 1;
        v43 = sub_222C9517C();
        MEMORY[0x223DC9330](v43);

        MEMORY[0x223DC9330](543584032, 0xE400000000000000);
        v72 = v68;
        v44 = sub_222C9517C();
        MEMORY[0x223DC9330](v44);

        MEMORY[0x223DC9330](v63, v67 | 0x8000000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v73[0] = 0x909093A4449;
        v73[1] = 0xE600000000000000;
        sub_222C9367C();
        sub_222B9E5D0();
        v45 = sub_222C9517C();
        MEMORY[0x223DC9330](v45);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_222C94D1C();

        strcpy(v73, "Contact ID:\t\t");
        HIWORD(v73[1]) = -4864;
        v46 = &v10[v39[6]];
        MEMORY[0x223DC9330](*v46, *(v46 + 1));
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_222C94D1C();

        v73[0] = 0xD000000000000010;
        v73[1] = v66;
        v48 = *(v46 + 2);
        v47 = *(v46 + 3);
        if (v47)
        {
          v49 = *(v46 + 2);
        }

        else
        {
          v49 = 0;
        }

        if (v47)
        {
          v50 = *(v46 + 3);
        }

        else
        {
          v50 = 0xE000000000000000;
        }

        MEMORY[0x223DC9330](v49, v50);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
        v51 = *&v10[v39[8]];
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v52 = *&v10[v39[5]];
        v54 = UsoEntity_common_Person.convertUSOPersonToString()();
        countAndFlagsBits = v54.value._countAndFlagsBits;
        if (v54.value._object)
        {
          object = v54.value._object;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        strcpy(v73, "USO key:\t\t");
        BYTE3(v73[1]) = 0;
        HIDWORD(v73[1]) = -369098752;
        MEMORY[0x223DC9330](countAndFlagsBits, object);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        v73[0] = 0;
        v73[1] = 0xE000000000000000;
        sub_222C94D1C();

        v73[0] = 0xD000000000000011;
        v73[1] = v65;
        v56 = *&v10[v39[7]];
        v57 = type metadata accessor for ThinContactGroundTruth();
        v58 = MEMORY[0x223DC94D0](v56, v57);
        MEMORY[0x223DC9330](v58);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        strcpy(v73, "Tags:\t\t\t");
        BYTE1(v73[1]) = 0;
        WORD1(v73[1]) = 0;
        HIDWORD(v73[1]) = -402653184;
        v59 = *&v10[v39[9]];
        sub_222B65518();
        v60 = sub_222C948FC();
        MEMORY[0x223DC9330](v60);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v73[0], v73[1]);

        MEMORY[0x223DC9330](0xD000000000000048, v64 | 0x8000000000000000);
        sub_222C29AE8(v10, type metadata accessor for PlusContactSuggestion);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_222B4FCD4(&v74, &qword_27D025F60, &unk_222C9B880);
    MEMORY[0x223DC9330](0xD000000000000036, 0x8000000222CACB40);
    v35 = v80;
    v36 = v81;
LABEL_37:
    v17 = v35;
    v18 = v36;
  }

  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_222C29934(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_222C9459C();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_222C299FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_222C29A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C29AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C29B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C29BB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222C29C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_222C29C84(uint64_t a1, unint64_t a2)
{
  result = sub_222C9453C();
  v5 = MEMORY[0x277D84F90];
  if (result)
  {
    v6 = result;
    v7 = sub_222C299FC(result, 0);

    v8 = sub_222C29934(&v56, v7 + 4, v6, a1, a2);

    if (v8 != v6)
    {
LABEL_92:
      __break(1u);
      return result;
    }

    v9 = v7[2];
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = __OFADD__(v11, 900);
        v11 += 900;
        if (v13)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v10;
        if (v11 >= v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }

  v12 = 0;
LABEL_12:
  v56 = v5;

  result = sub_222B4CB74(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    goto LABEL_91;
  }

  v14 = v56;
  v53 = v7;
  if (!v12)
  {
    if (!v9)
    {
      goto LABEL_70;
    }

    v25 = 0;
    goto LABEL_42;
  }

  v15 = 0;
  v16 = 0;
  v17 = v7 + 4;
  v18 = 900;
  do
  {
    if (v9 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v9;
    }

    if (v16 >= v9)
    {
      goto LABEL_82;
    }

    if (v16 == 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_83;
    }

    if (v9 >= (v16 + 900))
    {
      v20 = v16 + 900;
    }

    else
    {
      v20 = v9;
    }

    if (v20 < v16)
    {
      goto LABEL_84;
    }

    v21 = v7[2];
    if (v21 < v16 || v21 < v20)
    {
      goto LABEL_85;
    }

    v54 = v16 + 900;
    v22 = v19 + v15;
    if (v19 + v15 == v21)
    {
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v16 != v20)
      {
        if (v22 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
          v7 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v7);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 17;
          }

          v7[2] = v22;
          v7[3] = 2 * (v27 >> 4);
        }

        result = swift_arrayInitWithCopy();
      }
    }

    v56 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_222B4CB74((v23 > 1), v24 + 1, 1);
      v14 = v56;
    }

    v18 += 900;
    *(v14 + 16) = v24 + 1;
    *(v14 + 8 * v24 + 32) = v7;
    v15 -= 900;
    v17 += 1800;
    v7 = v53;
    v25 = v54;
    v16 = v54;
    --v12;
  }

  while (v12);
  if (v54 < v9)
  {
LABEL_42:
    v28 = v25 + 900;
    v29 = -v25;
    v30 = &v7[2 * v25 + 4];
    v31 = v25;
    v55 = v25;
    do
    {
      if (v9 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v9;
      }

      v33 = v31 + 900;
      if (__OFADD__(v31, 900))
      {
        goto LABEL_87;
      }

      if (v9 >= v33)
      {
        v34 = v31 + 900;
      }

      else
      {
        v34 = v9;
      }

      if (v34 < v31)
      {
        goto LABEL_88;
      }

      if (v25 < 0)
      {
        goto LABEL_89;
      }

      v35 = v7[2];
      if (v35 < v31 || v35 < v34)
      {
        goto LABEL_90;
      }

      v37 = v32 + v29;
      if (v32 + v29 == v35)
      {
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
        if (v31 == v34)
        {
          goto LABEL_59;
        }

        if (v37 < 1)
        {
          v7 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027088, &qword_222CA1F20);
          v7 = swift_allocObject();
          v41 = _swift_stdlib_malloc_size(v7);
          v42 = v41 - 32;
          if (v41 < 32)
          {
            v42 = v41 - 17;
          }

          v7[2] = v37;
          v7[3] = 2 * (v42 >> 4);
        }

        result = swift_arrayInitWithCopy();
      }

      v38 = v7;
LABEL_59:
      v56 = v14;
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40 >= v39 >> 1)
      {
        v43 = v38;
        result = sub_222B4CB74((v39 > 1), v40 + 1, 1);
        v38 = v43;
        v14 = v56;
      }

      v31 += 900;
      *(v14 + 16) = v40 + 1;
      *(v14 + 8 * v40 + 32) = v38;
      v28 += 900;
      v29 -= 900;
      v30 += 14400;
      v7 = v53;
      v25 = v55;
    }

    while (v33 < v9);
  }

LABEL_70:

  v44 = *(v14 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    while (v45 < *(v14 + 16))
    {
      v56 = *(v14 + 32 + 8 * v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D98, &qword_222C96B78);
      sub_222C2A17C();
      v47 = sub_222C9460C();
      v49 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_222B49E84(0, *(v46 + 16) + 1, 1, v46);
        v46 = result;
      }

      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_222B49E84((v50 > 1), v51 + 1, 1, v46);
        v46 = result;
      }

      ++v45;
      *(v46 + 16) = v51 + 1;
      v52 = v46 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      if (v44 == v45)
      {
        goto LABEL_80;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_80:

  return v46;
}

unint64_t sub_222C2A17C()
{
  result = qword_27D027080;
  if (!qword_27D027080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024D98, &qword_222C96B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027080);
  }

  return result;
}

uint64_t getPlusContactSuggestionStoreRuntimeQueryWrapper()@<X0>(uint64_t *a1@<X8>)
{
  result = _s28SiriPrivateLearningInference45PlusContactSuggestionStoreRuntimeQueryWrapperCACSgycfC_0();
  v3 = result;
  if (result)
  {
    result = type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v4 = &protocol witness table for PlusContactSuggestionStoreRuntimeQueryWrapper;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

uint64_t makeTestablePlusContactSuggestionStoreRuntimeQueryWrapper(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Wrapper = type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
  sub_222B43E3C(a1, v17);
  v15 = sub_222C9410C();
  v16 = MEMORY[0x277D5FC40];
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_222C940FC();
  v5 = v18;
  v6 = v19;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_222C2BA70(v10, &v14, Wrapper, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
  a2[3] = Wrapper;
  a2[4] = &protocol witness table for PlusContactSuggestionStoreRuntimeQueryWrapper;
  *a2 = v12;
  return result;
}

uint64_t PlusContactSuggestionStoreRuntimeQueryWrapper.__allocating_init(store:logTarget:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  PlusContactSuggestionStoreRuntimeQueryWrapper.init(store:logTarget:)(a1, a2);
  return v4;
}

void *PlusContactSuggestionStoreRuntimeQueryWrapper.init(store:logTarget:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_222C9410C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[8] = 0xD000000000000030;
  v2[9] = 0x8000000222CAAB10;
  sub_222B43E3C(a1, (v2 + 2));
  sub_222C940FC();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  v16 = v5;
  v17 = MEMORY[0x277D5FC40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(v6 + 32))(boxed_opaque_existential_1, v9, v5);
  type metadata accessor for SELFEventLogEmitters();
  v12 = swift_allocObject();
  sub_222B405A0(&v15, v12 + 16);
  *(v10 + 16) = v12;
  v2[7] = v10;
  return v2;
}

unint64_t sub_222C2A580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PlusContactSuggestion();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v41 = v3[7];
  v42 = a3;
  sub_222BDCDBC(a1, a2, a3);
  v14 = v3[5];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v16 = (*(v15 + 56))(a1, v14, v15);
  v17 = v16;
  v18 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v18 = a2;
  }

  v48 = v18;
  v19 = *(v16 + 16);

  v45 = v19;
  if (v19)
  {
    v20 = 0;
    v44 = MEMORY[0x277D84F90];
    while (v20 < *(v17 + 16))
    {
      v21 = v17;
      v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v22 = *(v46 + 72);
      sub_222BB8CF4(v17 + v49 + v22 * v20, v13);
      v23 = *&v13[*(v47 + 36)];
      if (sub_222BB2AB8(v23, v48) & 1) != 0 && *(v23 + 16) && (v24 = *(v23 + 40), sub_222C952FC(), sub_222C9452C(), v25 = sub_222C9534C(), v4 = v23 + 56, v26 = -1 << *(v23 + 32), v27 = v25 & ~v26, ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27)))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = *(*(v23 + 48) + v27);
          if (v29 > 2 && v29 != 4)
          {
            break;
          }

          v30 = sub_222C951FC();

          if (v30)
          {
            goto LABEL_18;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v4 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_18:
        sub_222BB8DB4(v13, v43);
        v31 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C6E8(0, *(v31 + 16) + 1, 1);
          v31 = v50;
        }

        v17 = v21;
        v4 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v4 >= v33 >> 1)
        {
          sub_222B4C6E8(v33 > 1, v4 + 1, 1);
          v31 = v50;
        }

        *(v31 + 16) = v4 + 1;
        v44 = v31;
        sub_222BB8DB4(v43, v31 + v49 + v4 * v22);
      }

      else
      {
LABEL_5:
        sub_222BB8D58(v13);
        v17 = v21;
      }

      if (++v20 == v45)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_25;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_24:

  v4 = v44;
  sub_222BDD098(v44, v42);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_30;
  }

LABEL_25:
  v34 = sub_222C9431C();
  __swift_project_value_buffer(v34, qword_280FE2340);
  swift_retain_n();

  v35 = sub_222C942FC();
  v36 = sub_222C94A3C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    v38 = *(v17 + 16);

    *(v37 + 4) = v38;

    *(v37 + 12) = 2048;
    v39 = *(v4 + 16);

    *(v37 + 14) = v39;

    _os_log_impl(&dword_222B39000, v35, v36, "[PlusContactSuggestionStoreRuntimeQueryWrapper]: Found %ld results and %ld with matching tags.", v37, 0x16u);
    MEMORY[0x223DCA8C0](v37, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_222C2AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v102 - v12;
  v118 = type metadata accessor for PlusContactSuggestion();
  v14 = *(v118 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v118);
  v109 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v108 = v102 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v105 = v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v117 = v102 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v116 = v102 - v25;
  MEMORY[0x28223BE20](v24);
  v107 = v102 - v26;
  v114 = sub_222C9367C();
  v27 = *(v114 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v114);
  v30 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v4 + 56);
  v106 = a2;
  v115 = a3;
  v103 = a4;
  v102[1] = v31;
  sub_222BDCDBC(a2, a3, a4);
  v104 = v5;
  sub_222B43E3C(v5 + 16, v121);
  v32 = *(a1 + 16);
  v119 = v14;
  if (v32)
  {
    v34 = *(v27 + 16);
    v33 = v27 + 16;
    v112 = v34;
    v113 = v13;
    v35 = a1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v111 = *(v33 + 56);
    v110 = (v33 - 8);
    v36 = (v14 + 48);
    v120 = MEMORY[0x277D84F90];
    v37 = v33;
    do
    {
      v38 = v114;
      v39 = v37;
      v112(v30, v35, v114);
      v41 = v122;
      v40 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v42 = v113;
      (*(v40 + 64))(v30, v41, v40);
      (*v110)(v30, v38);
      if ((*v36)(v42, 1, v118) == 1)
      {
        sub_222C2BCD0(v42);
      }

      else
      {
        v43 = v42;
        v44 = v107;
        sub_222BB8DB4(v43, v107);
        sub_222BB8DB4(v44, v116);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v45 = v120;
        }

        else
        {
          v45 = sub_222B4ACA4(0, v120[2] + 1, 1, v120);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_222B4ACA4(v46 > 1, v47 + 1, 1, v45);
        }

        v45[2] = v47 + 1;
        v48 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v120 = v45;
        sub_222BB8DB4(v116, v45 + v48 + *(v119 + 72) * v47);
      }

      v35 += v111;
      --v32;
      v37 = v39;
    }

    while (v32);
  }

  else
  {
    v120 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v121);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v49 = sub_222C9431C();
    v50 = __swift_project_value_buffer(v49, qword_280FE2340);
    v51 = v104;

    v52 = v120;

    v113 = v50;
    v53 = sub_222C942FC();
    v54 = sub_222C94A3C();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v119;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_222B437C0(*(v51 + 64), *(v51 + 72), v121);
      *(v57 + 12) = 2048;
      *(v57 + 14) = v52[2];

      _os_log_impl(&dword_222B39000, v53, v54, "%s Number of suggestions found: %ld", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x223DCA8C0](v58, -1, -1);
      MEMORY[0x223DCA8C0](v57, -1, -1);
    }

    else
    {
    }

    v114 = v52[2];
    if (v114)
    {
      v59 = 0;
      if (v115)
      {
        v60 = v115;
      }

      else
      {
        v60 = MEMORY[0x277D84FA0];
      }

      v116 = MEMORY[0x277D84F90];
      while (v59 < v52[2])
      {
        v61 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v62 = v52 + v61;
        v63 = *(v56 + 72);
        v64 = v117;
        sub_222BB8CF4(&v62[v63 * v59], v117);
        v65 = *(v64 + *(v118 + 36));

        LOBYTE(v64) = sub_222BB2AB8(v65, v60);

        if (v64 & 1) != 0 && *(v65 + 16) && (v66 = *(v65 + 40), sub_222C952FC(), sub_222C9452C(), v67 = sub_222C9534C(), v68 = -1 << *(v65 + 32), v69 = v67 & ~v68, ((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69)))
        {
          v70 = ~v68;
          while (1)
          {
            v71 = *(*(v65 + 48) + v69);
            if (v71 > 2 && v71 != 4)
            {
              break;
            }

            v72 = sub_222C951FC();

            if (v72)
            {
              goto LABEL_35;
            }

            v69 = (v69 + 1) & v70;
            if (((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

LABEL_35:
          sub_222BB8DB4(v117, v105);
          v73 = v116;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v124 = v73;
          if (isUniquelyReferenced_nonNull_native)
          {
            v56 = v119;
            v75 = v73;
          }

          else
          {
            sub_222B4C6E8(0, *(v73 + 16) + 1, 1);
            v75 = v124;
            v56 = v119;
          }

          v77 = *(v75 + 16);
          v76 = *(v75 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_222B4C6E8(v76 > 1, v77 + 1, 1);
            v75 = v124;
          }

          *(v75 + 16) = v77 + 1;
          v116 = v75;
          sub_222BB8DB4(v105, v75 + v61 + v77 * v63);
        }

        else
        {
LABEL_22:
          sub_222BB8D58(v117);
          v56 = v119;
        }

        ++v59;
        v52 = v120;
        if (v59 == v114)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_42:

    v78 = v104;

    v79 = sub_222C942FC();
    v80 = sub_222C94A3C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v121[0] = v82;
      *v81 = 136315394;
      *(v81 + 4) = sub_222B437C0(*(v78 + 64), *(v78 + 72), v121);
      *(v81 + 12) = 2048;
      v83 = v116;
      *(v81 + 14) = *(v116 + 16);
      _os_log_impl(&dword_222B39000, v79, v80, "%s Number of nominated suggestions with matching tags: %ld", v81, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      MEMORY[0x223DCA8C0](v82, -1, -1);
      MEMORY[0x223DCA8C0](v81, -1, -1);

      v84 = v106;
      v85 = v108;
    }

    else
    {

      v84 = v106;
      v85 = v108;
      v83 = v116;
    }

    v86 = *(v83 + 16);

    if (!v86)
    {
      break;
    }

    v87 = 0;
    v88 = MEMORY[0x277D84F90];
    v89 = v116;
    while (v87 < *(v89 + 16))
    {
      v90 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v91 = *(v56 + 72);
      sub_222BB8CF4(v89 + v90 + v91 * v87, v85);
      if (sub_222C2B6D8(v85, v84, v78))
      {
        sub_222BB8DB4(v85, v109);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v88;
        if ((v92 & 1) == 0)
        {
          sub_222B4C6E8(0, *(v88 + 16) + 1, 1);
          v84 = v106;
          v88 = v121[0];
        }

        v94 = *(v88 + 16);
        v93 = *(v88 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_222B4C6E8(v93 > 1, v94 + 1, 1);
          v84 = v106;
          v88 = v121[0];
        }

        *(v88 + 16) = v94 + 1;
        sub_222BB8DB4(v109, v88 + v90 + v94 * v91);
        v56 = v119;
        v85 = v108;
      }

      else
      {
        sub_222BB8D58(v85);
      }

      ++v87;
      v89 = v116;
      if (v86 == v87)
      {
        goto LABEL_57;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v88 = MEMORY[0x277D84F90];
LABEL_57:

  v95 = sub_222C942FC();
  v96 = sub_222C94A3C();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v121[0] = v98;
    *v97 = 136315394;
    *(v97 + 4) = sub_222B437C0(*(v78 + 64), *(v78 + 72), v121);
    *(v97 + 12) = 2048;
    *(v97 + 14) = *(v88 + 16);

    _os_log_impl(&dword_222B39000, v95, v96, "%s Number of suggestions with matching names: %ld", v97, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x223DCA8C0](v98, -1, -1);
    MEMORY[0x223DCA8C0](v97, -1, -1);
  }

  else
  {
  }

  v99 = v103;

  sub_222BDD098(v100, v99);

  return v88;
}

uint64_t sub_222C2B6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + *(type metadata accessor for PlusContactSuggestion() + 20));
  v5 = sub_222C0AFD4();
  v7 = v6;
  v23 = sub_222C0AFD4();
  v9 = v8;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);

  v11 = sub_222C942FC();
  v12 = sub_222C94A3C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315650;
    *(v13 + 4) = sub_222B437C0(*(a3 + 64), *(a3 + 72), &v24);
    *(v13 + 12) = 2080;
    if (v7)
    {
      v14 = v5;
    }

    else
    {
      v14 = 7104878;
    }

    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_222B437C0(v14, v15, &v24);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    if (v9)
    {
      v17 = v23;
    }

    else
    {
      v17 = 7104878;
    }

    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_222B437C0(v17, v18, &v24);

    *(v13 + 24) = v19;
    _os_log_impl(&dword_222B39000, v11, v12, "%s Comparing names: '%s' (stored suggestion) to '%s' (query)", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v22, -1, -1);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }

  if (v7)
  {
    if (v9)
    {
      if (v5 == v23 && v7 == v9)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_222C951FC();
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (!v9)
    {
      v20 = 1;
      return v20 & 1;
    }

    v20 = 0;
  }

  return v20 & 1;
}

uint64_t *PlusContactSuggestionStoreRuntimeQueryWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return v0;
}

uint64_t PlusContactSuggestionStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return swift_deallocClassInstance();
}

void *sub_222C2BA70(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
  v9 = swift_allocObject();
  v9[8] = 0xD000000000000030;
  v9[9] = 0x8000000222CAAB10;
  sub_222B405A0(&v13, (v9 + 2));
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v11 = swift_allocObject();
  sub_222B405A0(a2, v11 + 16);
  *(v10 + 16) = v11;
  v9[7] = v10;
  return v9;
}

void *_s28SiriPrivateLearningInference45PlusContactSuggestionStoreRuntimeQueryWrapperCACSgycfC_0()
{
  v0 = sub_222C9428C();
  v2 = v1;
  v3 = type metadata accessor for PICSStoreCoreData();
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(v0, v2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
    sub_222C9403C();
    v11 = v3;
    v12 = &protocol witness table for PICSStoreCoreData;
    *&v10 = v4;
    type metadata accessor for PlusContactSuggestionStoreRuntimeQueryWrapper();
    v6 = swift_allocObject();
    v6[8] = 0xD000000000000030;
    v6[9] = 0x8000000222CAAB10;
    sub_222B405A0(&v10, (v6 + 2));
    type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
    v7 = swift_allocObject();
    type metadata accessor for SELFEventLogEmitters();
    v8 = swift_allocObject();
    sub_222B405A0(&v13, v8 + 16);
    result = v6;
    *(v7 + 16) = v8;
    v6[7] = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222C2BCD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SlotBasedTurnComparator.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SlotBasedTurnComparator.init(_:)(a1);
  return v5;
}

char *SlotBasedTurnComparator.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for SlotBasedTurnComparator();
  *(v1 + 2) = static InferenceLogUtils.loggerTag<A>(_:)();
  *(v1 + 3) = v5;
  (*(*(v3 - 8) + 32))(&v1[*(*v1 + 104)], a1, v3);
  return v1;
}

void sub_222C2BEE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 80);
  v11 = (*(v9 + 16))(v10, v9);
  v12 = *(v11 + 16);
  if (!v12)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v25 = sub_222C9431C();
    __swift_project_value_buffer(v25, qword_280FE2340);

    v26 = sub_222C942FC();
    v27 = sub_222C94A4C();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49.initialTurn._rawValue = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v49);
    v30 = "%s No FollowUpTurnClassifyings provided by definition";
    goto LABEL_26;
  }

  v39 = v11;
  v13 = *(v9 + 24);
  v14 = v13(a1, v10, v9);
  if (!v14)
  {
LABEL_22:

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v36 = sub_222C9431C();
    __swift_project_value_buffer(v36, qword_280FE2340);

    v26 = sub_222C942FC();
    v27 = sub_222C94A3C();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49.initialTurn._rawValue = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v49);
    v30 = "%s Could not get slots required for reformulation detection";
LABEL_26:
    _os_log_impl(&dword_222B39000, v26, v27, v30, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x223DCA8C0](v29, -1, -1);
    MEMORY[0x223DCA8C0](v28, -1, -1);
LABEL_27:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15._rawValue = v14;
  v16._rawValue = v13(a2, v10, v9);
  if (!v16._rawValue)
  {

    goto LABEL_22;
  }

  SlotsClassification.init(_:_:)(&v49, v15, v16);
  v17 = v39 + 32;
  v18 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43E3C(v17, v46);
    v19 = v47;
    v20 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v42 = v49;
    (*(v20 + 8))(&v43, &v42, v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    if (v45[24] == 255)
    {
      *&v42.initialTurn._rawValue = v43;
      *&v42.added._rawValue = v44;
      *&v42.identical._rawValue = *v45;
      *(&v42.similar._rawValue + 1) = *&v45[9];
      sub_222C2C678(&v42);
    }

    else
    {
      *&v42.initialTurn._rawValue = v43;
      *&v42.added._rawValue = v44;
      *&v42.identical._rawValue = *v45;
      *(&v42.similar._rawValue + 1) = *&v45[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_222B4B8D0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_222B4B8D0((v21 > 1), v22 + 1, 1, v18);
      }

      *v41 = *&v42.identical._rawValue;
      *&v41[9] = *(&v42.similar._rawValue + 1);
      v23 = *&v42.initialTurn._rawValue;
      v40 = *&v42.added._rawValue;
      *(v18 + 2) = v22 + 1;
      v24 = &v18[64 * v22];
      *(v24 + 73) = *&v41[9];
      *(v24 + 3) = v40;
      *(v24 + 4) = *v41;
      *(v24 + 2) = v23;
    }

    v17 += 40;
    --v12;
  }

  while (v12);

  sub_222C2C6E0(&v49);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v31 = sub_222C9431C();
  __swift_project_value_buffer(v31, qword_280FE2340);

  v32 = sub_222C942FC();
  v33 = sub_222C94A3C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42.initialTurn._rawValue = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_222B437C0(*(v4 + 16), *(v4 + 24), &v42);
    *(v34 + 12) = 2048;
    *(v34 + 14) = *(v18 + 2);

    _os_log_impl(&dword_222B39000, v32, v33, "%s identified %ld slot based matches", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x223DCA8C0](v35, -1, -1);
    MEMORY[0x223DCA8C0](v34, -1, -1);
  }

  else
  {
  }

  v37 = type metadata accessor for SlotBasedTurnComparison();
  v38 = swift_allocObject();
  *(v38 + 16) = v18;
  *(a3 + 24) = v37;
  *(a3 + 32) = sub_222C2C734();
  *a3 = v38;
}

uint64_t sub_222C2C4DC(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 8);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3) & 1;
}

char *SlotBasedTurnComparator.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t SlotBasedTurnComparator.__deallocating_deinit()
{
  SlotBasedTurnComparator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222C2C678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027090, &qword_222CA1FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C2C734()
{
  result = qword_27D027098;
  if (!qword_27D027098)
  {
    type metadata accessor for SlotBasedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027098);
  }

  return result;
}

uint64_t sub_222C2C7C8(uint64_t a1)
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

uint64_t sub_222C2C904@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  result = type metadata accessor for ContactPromptGroundTruth();
  v9 = result;
  v10 = *(v2 + *(result + 20));
  v11 = *(v2 + *(result + 36));
  if (v11 == 2)
  {
LABEL_2:
    v12 = *(v2 + *(v9 + 32) + 8) != 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (!v12)
    {
      v24 = 2;
      goto LABEL_68;
    }

    v36 = a2;
    v25 = (v2 + *(v9 + 32));
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    if (v5)
    {
      if (v27)
      {
        v30 = v4 == v26 && v27 == v5;
        if (v30 || (v31 = *v25, v32 = v25[1], (sub_222C951FC() & 1) != 0))
        {
          if (!v7)
          {

            if (!v29)
            {
              sub_222B98D00(v26, v27);
              sub_222B98D00(v4, v5);
              sub_222B450E8(v26, v27);
              goto LABEL_66;
            }

LABEL_58:
            sub_222B98D00(v26, v27);
            sub_222B98D00(v4, v5);
            sub_222B450E8(v26, v27);
            a2 = v36;
            goto LABEL_59;
          }

          if (v29)
          {
            if (v6 != v28 || v7 != v29)
            {
              v34 = sub_222C951FC();

              sub_222B98D00(v26, v27);
              sub_222B98D00(v4, v5);
              sub_222B450E8(v26, v27);
              a2 = v36;
              if (v34)
              {
                goto LABEL_67;
              }

LABEL_59:

              result = sub_222B450E8(v4, v5);
              v24 = 1;
              goto LABEL_68;
            }

            sub_222B98D00(v26, v27);
            sub_222B98D00(v4, v5);
            sub_222B450E8(v26, v27);
LABEL_66:
            a2 = v36;
LABEL_67:

            result = sub_222B450E8(v4, v5);
            v24 = 0;
            goto LABEL_68;
          }
        }

        goto LABEL_58;
      }

      sub_222B98D00(v26, 0);
      sub_222B98D00(v4, v5);
    }

    else
    {

      if (!v27)
      {
        sub_222B98D00(v26, 0);
        result = sub_222B450E8(v4, 0);
        v24 = 0;
        a2 = v36;
        goto LABEL_68;
      }

      sub_222B98D00(v26, v27);
    }

    v37 = v4;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v44 = v29;
    result = sub_222B4FCD4(&v37, &qword_27D0270B8, &qword_222CA20A0);
    v24 = 1;
    a2 = v36;
    goto LABEL_68;
  }

  if (v11)
  {
    v23 = sub_222C951FC();

    if ((v23 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = swift_bridgeObjectRelease_n();
  }

  v12 = 1;
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v12)
  {
    v35 = a2;
    v13 = (v2 + *(v9 + 32));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    if (v5)
    {
      if (v15)
      {
        v18 = v4 == v14 && v15 == v5;
        if (v18 || (v19 = *v13, v20 = v13[1], (sub_222C951FC() & 1) != 0))
        {
          if (!v7)
          {

            if (!v17)
            {
              sub_222B98D00(v14, v15);
              sub_222B98D00(v4, v5);
              sub_222B450E8(v14, v15);
              goto LABEL_63;
            }

LABEL_55:
            sub_222B98D00(v14, v15);
            sub_222B98D00(v4, v5);
            sub_222B450E8(v14, v15);
            a2 = v35;
LABEL_56:

            result = sub_222B450E8(v4, v5);
            v24 = 4;
            goto LABEL_68;
          }

          if (v17)
          {
            if (v6 != v16 || v7 != v17)
            {
              v22 = sub_222C951FC();

              sub_222B98D00(v14, v15);
              sub_222B98D00(v4, v5);
              sub_222B450E8(v14, v15);
              a2 = v35;
              if (v22)
              {
                goto LABEL_64;
              }

              goto LABEL_56;
            }

            sub_222B98D00(v14, v15);
            sub_222B98D00(v4, v5);
            sub_222B450E8(v14, v15);
LABEL_63:
            a2 = v35;
LABEL_64:

            result = sub_222B450E8(v4, v5);
            v24 = 3;
            goto LABEL_68;
          }
        }

        goto LABEL_55;
      }

      sub_222B98D00(v14, 0);
      sub_222B98D00(v4, v5);
    }

    else
    {

      if (!v15)
      {
        sub_222B98D00(v14, 0);
        result = sub_222B450E8(v4, 0);
        v24 = 3;
        a2 = v35;
        goto LABEL_68;
      }

      sub_222B98D00(v14, v15);
    }

    v37 = v4;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = v14;
    v42 = v15;
    v43 = v16;
    v44 = v17;
    result = sub_222B4FCD4(&v37, &qword_27D0270B8, &qword_222CA20A0);
    v24 = 4;
    a2 = v35;
  }

  else
  {
    v24 = 5;
  }

LABEL_68:
  *a2 = v24;
  return result;
}

void sub_222C2D03C(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5B268]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [a2 nodes];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 lastObject];

      if (v10)
      {
        sub_222C94BFC();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        sub_222B505A8(0, &qword_280FDB768, 0x277D5DDE8);
        if (swift_dynamicCast())
        {
          v14 = [objc_opt_self() convertUsoNodeDataTier1:v20 index:a1];
          [v7 setLinkedUsoNodeData_];

          [a3 addLinkedUsoGraphNodeData_];
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_222B4FCD4(&v22, &qword_27D026A20, qword_222CA5960);
LABEL_18:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);
    v16 = sub_222C942FC();
    v17 = sub_222C94A3C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_222B39000, v16, v17, "No valid USO node in redaction at index=%lld", v18, 0xCu);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    return;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v11 = sub_222C9431C();
  __swift_project_value_buffer(v11, qword_280FE2340);
  oslog = sub_222C942FC();
  v12 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_222B39000, oslog, v12, "Failed to create SELF USO node data for redaction at index=%lld", v13, 0xCu);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }
}

uint64_t sub_222C2D380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  sub_222B4FC6C(a1, &v26 - v16, &unk_27D026290, &qword_222C96B40);
  result = (*(v10 + 48))(v17, 1, v9);
  v19 = 0;
  v20 = 0;
  if (result != 1)
  {
    (*(v10 + 32))(v13, v17, v9);
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    (*(v22 + 64))(v13, v21, v22);
    (*(v10 + 8))(v13, v9);
    v23 = type metadata accessor for PlusContactSuggestion();
    if ((*(*(v23 - 8) + 48))(v8, 1, v23) == 1)
    {
      result = sub_222B4FCD4(v8, &qword_27D025A88, &unk_222C9A0C0);
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v24 = &v8[*(v23 + 24)];
      v19 = *v24;
      v20 = *(v24 + 1);

      result = sub_222BB8D58(v8);
    }
  }

  v25 = v27;
  *v27 = v19;
  v25[1] = v20;
  return result;
}

void *MediaCandidateEntity.convertToSchemaCandidateEntity()()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 50);
  v4 = v0[7];
  v5 = *(v0 + 8);
  v6 = [objc_allocWithZone(MEMORY[0x277D59D08]) init];
  if (v6)
  {
    v7 = v6;
    v8 = sub_222C9448C();
    [v7 setEntityAdamId_];

    [v7 setConfidence_];
    [v7 setNominated_];
    sub_222B7F688(v5);
    sub_222B505A8(0, &qword_27D0270A0, 0x277D59D18);
    v9 = sub_222C9470C();

    [v7 setEntityFeedbackHistorys_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v9 = sub_222C942FC();
    v11 = sub_222C94A3C();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222B39000, v9, v11, "Failed to create SELF message for media candidate entities", v12, 2u);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    v7 = 0;
  }

  return v7;
}

void *sub_222C2D808()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = [objc_allocWithZone(MEMORY[0x277D59D38]) init];
  if (v4)
  {
    v5 = v4;
    if ((v1 & 0x80) != 0)
    {
      if ((v1 & 0x7Fu) - 1 < 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = dword_222CA211C[v1];
    }

    [v4 setSource_];
    if (v3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v3 <= 0x7FFFFFFF)
    {
      [v5 setGroundTruthCount_];
      if (v2 >= 0xFFFFFFFF80000000)
      {
        if (v2 <= 0x7FFFFFFF)
        {
          [v5 setMediaEntityCount_];
          return v5;
        }

        goto LABEL_20;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_21:
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222B39000, v8, v9, "MediaGroundTruthSummary: Failed to create PLUSSchemaPLUSMediaGroundTruthSummary", v10, 2u);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

void *sub_222C2D9B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_222C2DA44(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222C2DA44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_222C10994(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_222C2DB8C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_222C951FC() & 1;
    }
  }

  return result;
}

id sub_222C2DC00(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  if (v4)
  {
    v5 = v4;
    [v4 setLinkId_];
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        sub_222C2D03C(v8, v9, v5);

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    return v5;
  }

  result = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  v5 = result;
  if (result)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_222C2DCC0()
{
  v0 = sub_222C9367C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C936EC();
  v5 = sub_222C9371C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_222C9370C();
  v9 = sub_222C9374C();
  v11 = v10;

  v17 = sub_222C936AC();

  v18 = [objc_opt_self() convertNonTier1UsoGraph_];
  if (!v18)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v40 = sub_222C9431C();
    __swift_project_value_buffer(v40, qword_280FE2340);
    v41 = sub_222C942FC();
    v42 = sub_222C94A4C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_222B39000, v41, v42, "Failed to convert ObjC USO graph to SELF", v43, 2u);
      MEMORY[0x223DCA8C0](v43, -1, -1);
    }

LABEL_5:

    return 0;
  }

  v49 = v17;
  v50 = v9;
  v55 = v11;
  v19 = v18;
  sub_222C9366C();
  v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v21 = sub_222C9361C();
  v22 = [v20 initWithNSUUID_];

  (*(v1 + 8))(v4, v0);
  v51 = v19;
  v23 = v19;
  v24 = v55;
  v48 = v22;
  [v23 setLinkId_];
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = v24 + 40;
    v46 = v26 - 1;
    v52 = MEMORY[0x277D84F90];
    *&v25 = 136315138;
    v53 = v25;
    v54 = v8;
    v47 = v24 + 40;
    while (1)
    {
      v29 = (v28 + 16 * v27);
      if (v27 >= *(v24 + 16))
      {
        break;
      }

      v30 = *(v29 - 1);
      v31 = *v29;

      v32 = sub_222C936AC();
      v56 = v27 + 1;
      v33 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_222B4B0C4(0, v52[2] + 1, 1, v52);
      }

      v35 = v52[2];
      v34 = v52[3];
      if (v35 >= v34 >> 1)
      {
        v52 = sub_222B4B0C4((v34 > 1), v35 + 1, 1, v52);
      }

      v36 = v46;
      v28 = v47;
      v37 = v52;
      v52[2] = v35 + 1;
      v38 = &v37[2 * v35];
      v38[4] = v30;
      v38[5] = v33;
      v39 = v36 == v27;
      v27 = v56;
      if (v39)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    swift_once();
    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to convert redacted USOGraph to protobuf", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    goto LABEL_5;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_23:
  v44 = v48;
  sub_222C2DC00(v52, v48);

  return v51;
}

uint64_t sub_222C2E330(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v6);
    bzero(&v25[-((v5 + 15) & 0x3FFFFFFFFFFFFFF0)], v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      if (*(*(a1 + 48) + v14) <= 1u)
      {
        *&v25[((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          v18 = sub_222C10994(&v25[-((v5 + 15) & 0x3FFFFFFFFFFFFFF0)], v4, v7, a1);
          goto LABEL_17;
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v18 = sub_222C2D9B4(v24, v4, a1, sub_222C2D634);
  swift_bridgeObjectRelease_n();
  MEMORY[0x223DCA8C0](v24, -1, -1);
LABEL_17:
  sub_222BB7734(v18, &v26);
  v19 = v26;
  if (v26 == 5)
  {

    result = 1;
  }

  else
  {
    v21 = *(v18 + 16);

    v22 = 2 * (v19 == 1);
    if (!v19)
    {
      v22 = 3;
    }

    if (v21 == 1)
    {
      result = v22;
    }

    else
    {
      result = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

NSObject *sub_222C2E5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v51 = &v49 - v23;
  v52 = [objc_allocWithZone(MEMORY[0x277D59CA8]) init];
  if (!v52)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v30 = sub_222C9431C();
    __swift_project_value_buffer(v30, qword_280FE2340);
    v31 = sub_222C942FC();
    v32 = sub_222C94A3C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_222B39000, v31, v32, "Failed to create SELF message for inferred suggestion", v33, 2u);
      MEMORY[0x223DCA8C0](v33, -1, -1);
    }

    goto LABEL_15;
  }

  v24 = a2;
  v25 = a1;
  v26 = *(v12 + 16);
  v26(v22, v24, v11);
  v50 = v25;
  v26(v19, v25, v11);
  v26(v16, v22, v11);
  sub_222C9360C();
  sub_222C42B54(v16, v8);
  v27 = *(v12 + 8);
  v27(v19, v11);
  v27(v22, v11);
  v28 = *(v12 + 48);
  if (v28(v8, 1, v11))
  {
    sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
    v29 = 1;
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    v29 = 0;
  }

  (*(v12 + 56))(v10, v29, 1, v11);
  if (v28(v10, 1, v11) == 1)
  {
    sub_222B4FCD4(v10, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);
    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    v37 = os_log_type_enabled(v35, v36);
    v31 = v52;
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_222B39000, v35, v36, "Failed to create a combined UUID for the suggestionId and plusId", v38, 2u);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

LABEL_15:
    return 0;
  }

  v40 = v51;
  (*(v12 + 32))(v51, v10, v11);
  v41 = v52;
  [v52 setSource:1];
  v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v43 = sub_222C9361C();
  v44 = [v42 initWithNSUUID_];

  [v41 setSuggestionId:v44];
  v45 = type metadata accessor for PlusContactSuggestion();
  v46 = v27;
  v47 = v50;
  sub_222C2168C(*(v50 + *(v45 + 28)));
  sub_222B505A8(0, &qword_27D0270B0, 0x277D59C70);
  v48 = sub_222C9470C();

  [v41 setContributingGroundTruths:v48];

  [v41 setConfidence:*(v47 + *(v45 + 40))];
  v46(v40, v11);
  return v41;
}

void *sub_222C2EB9C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for PhoneCallGroundTruth();
    [v3 setGroundTruthSource_];
    v5 = a1 + v4[7];
    v6 = *(v5 + 8);
    [v3 setHasSiriResolvedContactForEntity_];
    if (v6)
    {
      v19[4] = *v5;
      v19[5] = v6;
      v20 = *(v5 + 16);
      v7 = (a1 + v4[8]);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v19[0] = *v7;
      v19[1] = v8;
      v19[2] = v9;
      v19[3] = v10;
      v11 = sub_222C3DAC4(v19);
    }

    else
    {
      v11 = 1;
    }

    [v3 setSiriResolvedAndPlusInferredContactComparison_];
    v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v17 = sub_222C9361C();
    v13 = [v16 initWithNSUUID_];

    [v3 setGroundTruthId_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to create SELF message for inferred ground truth", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_222C2EDDC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for MessagesGroundTruth();
    [v3 setGroundTruthSource_];
    v5 = a1 + v4[7];
    v6 = *(v5 + 8);
    [v3 setHasSiriResolvedContactForEntity_];
    if (v6)
    {
      v19[4] = *v5;
      v19[5] = v6;
      v20 = *(v5 + 16);
      v7 = (a1 + v4[8]);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v19[0] = *v7;
      v19[1] = v8;
      v19[2] = v9;
      v19[3] = v10;
      v11 = sub_222C3DAC4(v19);
    }

    else
    {
      v11 = 1;
    }

    [v3 setSiriResolvedAndPlusInferredContactComparison_];
    v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v17 = sub_222C9361C();
    v13 = [v16 initWithNSUUID_];

    [v3 setGroundTruthId_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to create SELF message for inferred ground truth", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_222C2F018(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D28]) init];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v5 = sub_222C9361C();
    v6 = [v4 initWithNSUUID_];

    [v3 setGroundTruthId_];
    v7 = type metadata accessor for MediaGroundTruth();
    [v3 setGroundTruthSource_];
    v8 = *(a1 + v7[7]);
    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);

      v11 = sub_222C9448C();
    }

    else
    {
      v11 = 0;
    }

    [v3 setSelectedMediaEntityAdamId_];

    v16 = (a1 + v7[8]);
    v17 = *v16;
    v18 = v16[1];
    v19 = sub_222C9448C();
    [v3 setInferredMediaEntityAdamId_];

    if (*(v8 + 16))
    {
      v20 = dword_222CA2130[*(v8 + 81)];
    }

    else
    {
      v20 = 0;
    }

    [v3 setSelectedMediaEntitylocality_];
    [v3 setInferredMediaEntitylocality_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222B39000, v13, v14, "Failed to create SELF message for inferred ground truth", v15, 2u);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_222C2F26C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D28]) init];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v5 = sub_222C9361C();
    v6 = [v4 initWithNSUUID_];

    [v3 setGroundTruthId_];
    v7 = type metadata accessor for MediaFeedbackGroundTruth();
    if (*(a1 + *(v7 + 20)) - 1 < 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    [v3 setGroundTruthSource_];
    v9 = (a1 + *(v7 + 28));
    v10 = *v9;
    v11 = v9[1];
    v12 = sub_222C9448C();
    [v3 setSelectedMediaEntityAdamId_];

    [v3 setInferredMediaEntityAdamId_];
    [v3 setSelectedMediaEntitylocality_];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "Failed to create SELF message for inferred ground truth", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_222C2F454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v43[-v7];
  v9 = [objc_allocWithZone(MEMORY[0x277D59C60]) init];
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for ContactPromptGroundTruth();
    if (*(a1 + v11[8] + 8))
    {
      v12 = 8;
    }

    else
    {
      v12 = 9;
    }

    if (*(a1 + v11[8] + 8))
    {
      v13 = 6;
    }

    else
    {
      v13 = 7;
    }

    if (*(a1 + v11[5]))
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    [v10 setGroundTruthSource_];
    [v10 setHasSiriResolvedContactForEntity_];
    [v10 setSiriResolvedAndPlusInferredContactComparison_];
    v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v16 = sub_222C9361C();
    v17 = [v15 initWithNSUUID_];

    [v10 setGroundTruthId_];
    v18 = *(a1 + v11[10]);
    if (*(v18 + 16))
    {
      sub_222B4FC6C(a2, &v44, &qword_27D025F60, &unk_222C9B880);
      if (v45)
      {
        sub_222B505F4(&v44, v46);
        v19 = &selRef_setContactRelations_;
        [v10 setContactSuggestionUsedBySiri_];
        v20 = (a1 + v11[8]);
        v21 = v20[1];
        if (v21)
        {
          v22 = *v20;
          v23 = *(v18 + 16);
          if (v23)
          {
            *&v44 = MEMORY[0x277D84F90];

            sub_222B4CD10(0, v23, 0);
            v24 = v44;
            v25 = (v18 + 40);
            do
            {
              v26 = *(v25 - 1);
              v27 = *v25;

              sub_222C935FC();

              *&v44 = v24;
              v29 = *(v24 + 16);
              v28 = *(v24 + 24);
              if (v29 >= v28 >> 1)
              {
                sub_222B4CD10(v28 > 1, v29 + 1, 1);
                v24 = v44;
              }

              *(v24 + 16) = v29 + 1;
              v30 = sub_222B55BA0(v8, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29);
              v25 += 2;
              --v23;
            }

            while (v23);
            v19 = &selRef_setContactRelations_;
          }

          else
          {
            v35 = v20[1];

            v24 = MEMORY[0x277D84F90];
          }

          MEMORY[0x28223BE20](v30);
          *&v43[-16] = v46;
          v36 = sub_222C63414(sub_222C30068, &v43[-32], v24);

          *&v44 = v22;
          *(&v44 + 1) = v21;
          MEMORY[0x28223BE20](v37);
          *&v43[-16] = &v44;
          v38 = sub_222B42FF8(sub_222C30088, &v43[-32], v36);

          if (v38)
          {

            v40 = 3;
LABEL_32:
            [v10 v19[129]];
            goto LABEL_33;
          }

          v44 = 0uLL;
          MEMORY[0x28223BE20](v39);
          *&v43[-16] = &v44;
          v41 = sub_222B42FF8(sub_222C300A8, &v43[-32], v36);

          if (v41)
          {
            v40 = 0;
            goto LABEL_32;
          }
        }

LABEL_33:
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        return v10;
      }

      sub_222B4FCD4(&v44, &qword_27D025F60, &unk_222C9B880);
      [v10 setContactSuggestionUsedBySiri_];
    }

    else
    {
      [v10 setContactSuggestionUsedBySiri_];
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    v32 = sub_222C942FC();
    v33 = sub_222C94A3C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_222B39000, v32, v33, "Failed to create SELF message for inferred ground truth", v34, 2u);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    return 0;
  }

  return v10;
}

void *sub_222C2F984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v57 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D59D20]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D59D48]) init];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D59D10]) init];
      if (v10)
      {
        v11 = v10;
        v62 = v5;
        v12 = type metadata accessor for MediaEvaluationSummary();
        v13 = 0;
        v14 = v12[6];
        v15 = a1 + v14;
        v16 = *(a1 + v14);
        if (v16)
        {
          v17 = *(a1 + v14 + 8) == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = *(a1 + v14 + 8);

          v13 = sub_222C9470C();
        }

        [v9 setPommesAlternativeEntityIds_];

        v19 = 0;
        if (v16 && *(v15 + 24))
        {
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);

          v19 = sub_222C9448C();
        }

        [v9 setPommesSelectedMediaEntityAdamId_];

        v22 = 0;
        if (v16 && *(v15 + 40))
        {
          v23 = *(v15 + 32);
          v24 = *(v15 + 40);

          v22 = sub_222C9448C();
        }

        [v9 setInferredMediaEntityAdamId_];

        [v9 setHasInferredMediaEntityAdamId_];
        v25 = MEMORY[0x277D84F90];
        v63 = v12;
        v64 = a1;
        if (v16)
        {
          v61 = v11;
          v69 = MEMORY[0x277D84F90];
          v26 = *(v16 + 16);

          if (v26)
          {
            v27 = 0;
            v28 = v16 + 32;
            v58 = v26 - 1;
            v59 = v16 + 32;
            v60 = v9;
            do
            {
              v29 = v28 + 72 * v27;
              v30 = v27;
              while (1)
              {
                if (v30 >= *(v16 + 16))
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v31 = *(v29 + 48);
                v66 = *(v29 + 32);
                v67 = v31;
                v68 = *(v29 + 64);
                v32 = *(v29 + 16);
                *v65 = *v29;
                *&v65[16] = v32;
                v27 = v30 + 1;
                if (MediaCandidateEntity.convertToSchemaCandidateEntity()())
                {
                  break;
                }

                v29 += 72;
                ++v30;
                if (v26 == v27)
                {
                  v9 = v60;
                  goto LABEL_35;
                }
              }

              MEMORY[0x223DC94A0]();
              if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v33 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_222C9475C();
              }

              sub_222C947AC();
              v28 = v59;
              v9 = v60;
            }

            while (v58 != v30);
          }

LABEL_35:

          sub_222B505A8(0, &qword_27D0270A8, 0x277D59D08);
          v38 = sub_222C9470C();

          v11 = v61;
          v12 = v63;
          a1 = v64;
        }

        else
        {
          v38 = 0;
        }

        [v9 setEntitySummaries_];

        [v11 setShadowLogging_];
        v39 = a1;
        v40 = v62;
        sub_222B4FC6C(v39, v62, &unk_27D026290, &qword_222C96B40);
        v41 = sub_222C9367C();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v40, 1, v41) == 1)
        {
          sub_222B4FCD4(v40, &unk_27D026290, &qword_222C96B40);
          v43 = 0;
        }

        else
        {
          v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v45 = v11;
          v46 = sub_222C9361C();
          v43 = [v44 initWithNSUUID_];

          v11 = v45;
          v12 = v63;
          (*(v42 + 8))(v40, v41);
        }

        [v7 setOriginalRequestId_];

        v47 = v64;
        v48 = (v64 + v12[5]);
        if (v48[1])
        {
          v49 = *v48;
          v50 = sub_222C9448C();
        }

        else
        {
          v50 = 0;
        }

        [v7 setResultCandidateId_];

        [v7 setSuggestionEvaluation_];
        [v7 setConfiguredState_];
        [v7 setPlayUserFeedback_];
        v51 = *(v47 + v12[9]);
        v69 = v25;
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = (v51 + 40);
          do
          {
            v65[0] = *(v53 - 8);
            *&v65[8] = *v53;
            if (sub_222C2D808())
            {
              MEMORY[0x223DC94A0]();
              if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v54 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_222C9475C();
              }

              sub_222C947AC();
            }

            v53 = (v53 + 24);
            --v52;
          }

          while (v52);
        }

        sub_222B505A8(0, qword_27D025D30, 0x277D59D38);
        v55 = sub_222C9470C();

        [v7 setGroundTruthSummaries_];

        return v7;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_52:
    swift_once();
  }

  v34 = sub_222C9431C();
  __swift_project_value_buffer(v34, qword_280FE2340);
  v35 = sub_222C942FC();
  v36 = sub_222C94A4C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_222B39000, v35, v36, "Failed to create SELF message for evaluation summary", v37, 2u);
    MEMORY[0x223DCA8C0](v37, -1, -1);
  }

  return 0;
}

unint64_t sub_222C300F4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6F725072657375;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6E6162416B736174;
  if (v1 != 3)
  {
    v4 = 0x6C6961466B736174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 != 1)
  {
    v5 = 0x706D6F436B736174;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_222C30200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C34E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C30234(uint64_t a1)
{
  v2 = sub_222C33634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30270(uint64_t a1)
{
  v2 = sub_222C33634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C302AC(uint64_t a1)
{
  v2 = sub_222C3382C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C302E8(uint64_t a1)
{
  v2 = sub_222C3382C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30324(uint64_t a1)
{
  v2 = sub_222C33880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30360(uint64_t a1)
{
  v2 = sub_222C33880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3039C(uint64_t a1)
{
  v2 = sub_222C33688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C303D8(uint64_t a1)
{
  v2 = sub_222C33688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30414(uint64_t a1)
{
  v2 = sub_222C337D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30450(uint64_t a1)
{
  v2 = sub_222C337D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3048C(uint64_t a1)
{
  v2 = sub_222C33928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C304C8(uint64_t a1)
{
  v2 = sub_222C33928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C30504(uint64_t a1)
{
  v2 = sub_222C338D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C30540(uint64_t a1)
{
  v2 = sub_222C338D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3057C()
{
  if (*v0)
  {
    result = 0x656D6F6374756FLL;
  }

  else
  {
    result = 0x795474706D6F7270;
  }

  *v0;
  return result;
}

uint64_t sub_222C305BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222C306A0(uint64_t a1)
{
  v2 = sub_222C336DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C306DC(uint64_t a1)
{
  v2 = sub_222C336DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestionOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270C0, &qword_222CA2140);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270C8, &qword_222CA2148);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270D0, &qword_222CA2150);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270D8, &qword_222CA2158);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270E0, &qword_222CA2160);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270E8, &qword_222CA2168);
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270F0, &qword_222CA2170);
  v43 = *(v22 - 8);
  v23 = *(v43 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0270F8, &qword_222CA2178);
  v63 = *(v61 - 8);
  v26 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v28 = &v42 - v27;
  v29 = *v1;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33634();
  sub_222C9536C();
  if (v29 > 4u)
  {
    if (v29 != 5)
    {
      v32 = v61;
      v31 = v62;
      if (v29 == 6)
      {
        v68 = 4;
        sub_222C337D8();
        v33 = v52;
        sub_222C950BC();
        v35 = v53;
        v34 = v54;
        goto LABEL_19;
      }

      if (v29 == 7)
      {
        v74 = 6;
        sub_222C33688();
        v33 = v55;
        sub_222C950BC();
        v35 = v56;
        v34 = v57;
        goto LABEL_19;
      }

LABEL_12:
      v73 = 5;
      sub_222C336DC();
      v39 = v58;
      sub_222C950BC();
      v72 = v29 & 1;
      v71 = 0;
      sub_222C33730();
      v40 = v60;
      sub_222C9512C();
      if (!v31)
      {
        v70 = HIBYTE(v29);
        v69 = 1;
        sub_222C33784();
        sub_222C9512C();
      }

      (*(v59 + 8))(v39, v40);
      return (*(v63 + 8))(v28, v32);
    }

    v67 = 3;
    sub_222C3382C();
    v21 = v49;
    v36 = v61;
    sub_222C950BC();
    v38 = v50;
    v37 = v51;
    goto LABEL_16;
  }

  if (v29 == 2)
  {
    v64 = 0;
    sub_222C33928();
    v36 = v61;
    sub_222C950BC();
    (*(v43 + 8))(v25, v22);
    return (*(v63 + 8))(v28, v36);
  }

  if (v29 == 3)
  {
    v65 = 1;
    sub_222C338D4();
    v36 = v61;
    sub_222C950BC();
    v38 = v44;
    v37 = v45;
LABEL_16:
    (*(v38 + 8))(v21, v37);
    return (*(v63 + 8))(v28, v36);
  }

  v32 = v61;
  v31 = v62;
  if (v29 != 4)
  {
    goto LABEL_12;
  }

  v66 = 2;
  sub_222C33880();
  v33 = v46;
  sub_222C950BC();
  v35 = v47;
  v34 = v48;
LABEL_19:
  (*(v35 + 8))(v33, v34);
  return (*(v63 + 8))(v28, v32);
}

uint64_t SuggestionOutcome.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 2) >= 6u)
  {
    v2 = v1 >> 8;
    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v1 & 1);
  }

  else
  {
    v2 = qword_222CA3280[(v1 - 2)];
  }

  return MEMORY[0x223DCA0B0](v2);
}

uint64_t SuggestionOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  if ((v1 - 2) >= 6u)
  {
    v2 = v1 >> 8;
    MEMORY[0x223DCA0B0](5);
    MEMORY[0x223DCA0B0](v1 & 1);
  }

  else
  {
    v2 = qword_222CA3280[(v1 - 2)];
  }

  MEMORY[0x223DCA0B0](v2);
  return sub_222C9534C();
}

uint64_t SuggestionOutcome.init(from:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027150, &qword_222CA2180);
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027158, &qword_222CA2188);
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027160, &qword_222CA2190);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v77 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027168, &qword_222CA2198);
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v58 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027170, &qword_222CA21A0);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v76 = &v58 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027178, &qword_222CA21A8);
  v61 = *(v62 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027180, &qword_222CA21B0);
  v60 = *(v21 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027188, &unk_222CA21B8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_222C33634();
  v32 = v80;
  sub_222C9535C();
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = v24;
  v58 = v21;
  v59 = v20;
  v35 = v76;
  v34 = v77;
  v36 = v78;
  v80 = v26;
  v37 = sub_222C9508C();
  v38 = (2 * *(v37 + 16)) | 1;
  v81 = v37;
  v82 = v37 + 32;
  v83 = 0;
  v84 = v38;
  v39 = sub_222B572D4();
  if (v39 == 7 || v83 != v84 >> 1)
  {
    v45 = sub_222C94DBC();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
    *v47 = &type metadata for SuggestionOutcome;
    sub_222C9500C();
    sub_222C94DAC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v80 + 8))(v29, v25);
    swift_unknownObjectRelease();
LABEL_9:
    v49 = v79;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v87 = 1;
        sub_222C338D4();
        v51 = v59;
        sub_222C94FFC();
        (*(v61 + 8))(v51, v62);
        (*(v80 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v44 = 3;
      }

      else
      {
        v87 = 2;
        sub_222C33880();
        sub_222C94FFC();
        (*(v63 + 8))(v35, v64);
        (*(v80 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v44 = 4;
      }
    }

    else
    {
      v87 = 0;
      sub_222C33928();
      sub_222C94FFC();
      (*(v60 + 8))(v33, v58);
      (*(v80 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v44 = 2;
    }

    v49 = v79;
    v41 = v75;
  }

  else
  {
    v40 = v29;
    if (v39 > 4u)
    {
      v52 = v75;
      v53 = v80;
      if (v39 == 5)
      {
        v87 = 5;
        sub_222C336DC();
        v54 = v36;
        sub_222C94FFC();
        v86 = 0;
        sub_222C3397C();
        v56 = v71;
        sub_222C9507C();
        v57 = v54;
        LOWORD(v54) = v87;
        v85 = 1;
        sub_222C339D0();
        sub_222C9507C();
        (*(v72 + 8))(v57, v56);
        (*(v53 + 8))(v40, v25);
        swift_unknownObjectRelease();
        v44 = v54 | (v86 << 8);
      }

      else
      {
        v87 = 6;
        sub_222C33688();
        v55 = v74;
        sub_222C94FFC();
        (*(v69 + 8))(v55, v70);
        (*(v53 + 8))(v40, v25);
        swift_unknownObjectRelease();
        v44 = 7;
      }

      v49 = v79;
      v41 = v52;
    }

    else
    {
      v41 = v75;
      v42 = v80;
      if (v39 == 3)
      {
        v87 = 3;
        sub_222C3382C();
        v43 = v73;
        sub_222C94FFC();
        (*(v65 + 8))(v43, v66);
        (*(v42 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v44 = 5;
      }

      else
      {
        v87 = 4;
        sub_222C337D8();
        sub_222C94FFC();
        (*(v67 + 8))(v34, v68);
        (*(v42 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v44 = 6;
      }

      v49 = v79;
    }
  }

  *v41 = v44;
  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_222C31A94()
{
  v2 = *v0;
  sub_222C952FC();
  SuggestionOutcome.hash(into:)();
  return sub_222C9534C();
}

uint64_t sub_222C31ADC()
{
  if (*v0)
  {
    result = 0x616D7269666E6F63;
  }

  else
  {
    result = 0x6769626D61736964;
  }

  *v0;
  return result;
}

uint64_t sub_222C31B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222C31C14(uint64_t a1)
{
  v2 = sub_222C33A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31C50(uint64_t a1)
{
  v2 = sub_222C33A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C31C8C(uint64_t a1)
{
  v2 = sub_222C33A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31CC8(uint64_t a1)
{
  v2 = sub_222C33A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C31D04(uint64_t a1)
{
  v2 = sub_222C33ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C31D40(uint64_t a1)
{
  v2 = sub_222C33ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271A0, &qword_222CA21C8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271A8, &qword_222CA21D0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271B0, &qword_222CA21D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33A24();
  sub_222C9536C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_222C33A78();
    v18 = v22;
    sub_222C950BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_222C33ACC();
    sub_222C950BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t PromptType.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t PromptType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271D0, &qword_222CA21E0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271D8, &qword_222CA21E8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271E0, &qword_222CA21F0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33A24();
  v16 = v36;
  sub_222C9535C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_222C9508C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_222B530B4();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_222C94DBC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v26 = &type metadata for PromptType;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_222C33A78();
        sub_222C94FFC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_222C33ACC();
        sub_222C94FFC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_222C3258C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_222C93C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[6])
  {
    goto LABEL_2;
  }

  v12 = a1[7];
  v11 = a1[8];
  (*(v5 + 104))(v9, *MEMORY[0x277D5FB00], v4);

  v13 = sub_222C93C4C();
  v15 = v14;
  (*(v5 + 8))(v9, v4);
  if (!v11)
  {

LABEL_12:
    v10 = 1;
    goto LABEL_3;
  }

  if (v12 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_222C951FC();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_2:
  v10 = 0;
LABEL_3:
  *a2 = v10;
  return result;
}

uint64_t sub_222C32718(uint64_t a1)
{
  v2 = sub_222C33BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32754(uint64_t a1)
{
  v2 = sub_222C33BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C32790(uint64_t a1)
{
  v2 = sub_222C33C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C327CC(uint64_t a1)
{
  v2 = sub_222C33C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C32808(uint64_t a1)
{
  v2 = sub_222C33B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32844(uint64_t a1)
{
  v2 = sub_222C33B74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_222C32880()
{
  v1 = 0x6553797469746E65;
  v2 = 0x656E6F646E616261;
  if (*v0 != 2)
  {
    v2 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222C32914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C350A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C3293C(uint64_t a1)
{
  v2 = sub_222C33B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C32978(uint64_t a1)
{
  v2 = sub_222C33B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C329B4(uint64_t a1)
{
  v2 = sub_222C33C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C329F0(uint64_t a1)
{
  v2 = sub_222C33C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271E8, &qword_222CA21F8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271F0, &qword_222CA2200);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0271F8, &qword_222CA2208);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027200, &qword_222CA2210);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027208, &qword_222CA2218);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C33B20();
  sub_222C9536C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_222C33BC8();
      v24 = v33;
      sub_222C950BC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_222C33B74();
      v24 = v36;
      sub_222C950BC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_222C33C1C();
    v24 = v30;
    sub_222C950BC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_222C33C70();
  sub_222C950BC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t PromptOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t PromptOutcome.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027238, &qword_222CA2220);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027240, &qword_222CA2228);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027248, &qword_222CA2230);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027250, &qword_222CA2238);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027258, &qword_222CA2240);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_222C33B20();
  v21 = v53;
  sub_222C9535C();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_222C9508C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_222B572D0();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_222C94DBC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v34 = &type metadata for PromptOutcome;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_222C33C1C();
        v39 = v42;
        sub_222C94FFC();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_222C33C70();
        v31 = v42;
        sub_222C94FFC();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_222C33BC8();
      v38 = v42;
      sub_222C94FFC();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_222C33B74();
      v40 = v42;
      sub_222C94FFC();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

BOOL _s28SiriPrivateLearningInference17SuggestionOutcomeO2eeoiySbAC_ACtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 <= 4)
  {
    switch(v3)
    {
      case 2u:
        return v2 == 2;
      case 3u:
        return v2 == 3;
      case 4u:
        return v2 == 4;
    }

LABEL_16:
    if ((v2 - 2) >= 6)
    {
      return ((*a2 ^ *a1) & 0xFF01) == 0;
    }

    return 0;
  }

  if (v3 == 5)
  {
    return v2 == 5;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      return v2 == 7;
    }

    goto LABEL_16;
  }

  return v2 == 6;
}

unint64_t sub_222C33634()
{
  result = qword_27D027100;
  if (!qword_27D027100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027100);
  }

  return result;
}

unint64_t sub_222C33688()
{
  result = qword_27D027108;
  if (!qword_27D027108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027108);
  }

  return result;
}

unint64_t sub_222C336DC()
{
  result = qword_27D027110;
  if (!qword_27D027110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027110);
  }

  return result;
}

unint64_t sub_222C33730()
{
  result = qword_27D027118;
  if (!qword_27D027118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027118);
  }

  return result;
}

unint64_t sub_222C33784()
{
  result = qword_27D027120;
  if (!qword_27D027120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027120);
  }

  return result;
}

unint64_t sub_222C337D8()
{
  result = qword_27D027128;
  if (!qword_27D027128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027128);
  }

  return result;
}

unint64_t sub_222C3382C()
{
  result = qword_27D027130;
  if (!qword_27D027130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027130);
  }

  return result;
}

unint64_t sub_222C33880()
{
  result = qword_27D027138;
  if (!qword_27D027138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027138);
  }

  return result;
}

unint64_t sub_222C338D4()
{
  result = qword_27D027140;
  if (!qword_27D027140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027140);
  }

  return result;
}

unint64_t sub_222C33928()
{
  result = qword_27D027148;
  if (!qword_27D027148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027148);
  }

  return result;
}

unint64_t sub_222C3397C()
{
  result = qword_27D027190;
  if (!qword_27D027190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027190);
  }

  return result;
}

unint64_t sub_222C339D0()
{
  result = qword_27D027198;
  if (!qword_27D027198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027198);
  }

  return result;
}

unint64_t sub_222C33A24()
{
  result = qword_27D0271B8;
  if (!qword_27D0271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271B8);
  }

  return result;
}

unint64_t sub_222C33A78()
{
  result = qword_27D0271C0;
  if (!qword_27D0271C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271C0);
  }

  return result;
}

unint64_t sub_222C33ACC()
{
  result = qword_27D0271C8;
  if (!qword_27D0271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0271C8);
  }

  return result;
}

unint64_t sub_222C33B20()
{
  result = qword_27D027210;
  if (!qword_27D027210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027210);
  }

  return result;
}

unint64_t sub_222C33B74()
{
  result = qword_27D027218;
  if (!qword_27D027218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027218);
  }

  return result;
}

unint64_t sub_222C33BC8()
{
  result = qword_27D027220;
  if (!qword_27D027220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027220);
  }

  return result;
}

unint64_t sub_222C33C1C()
{
  result = qword_27D027228;
  if (!qword_27D027228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027228);
  }

  return result;
}

unint64_t sub_222C33C70()
{
  result = qword_27D027230;
  if (!qword_27D027230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027230);
  }

  return result;
}

unint64_t sub_222C33CC8()
{
  result = qword_27D027260;
  if (!qword_27D027260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027260);
  }

  return result;
}

unint64_t sub_222C33D20()
{
  result = qword_27D027268;
  if (!qword_27D027268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027268);
  }

  return result;
}

unint64_t sub_222C33D78()
{
  result = qword_27D027270;
  if (!qword_27D027270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionOutcome(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65287;
  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65287;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65287;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for SuggestionOutcome(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65287;
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222C33F28(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_222C33F3C(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionOutcome.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionOutcome.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222C341D4()
{
  result = qword_27D027278;
  if (!qword_27D027278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027278);
  }

  return result;
}

unint64_t sub_222C3422C()
{
  result = qword_27D027280;
  if (!qword_27D027280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027280);
  }

  return result;
}

unint64_t sub_222C34284()
{
  result = qword_27D027288;
  if (!qword_27D027288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027288);
  }

  return result;
}

unint64_t sub_222C342DC()
{
  result = qword_27D027290;
  if (!qword_27D027290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027290);
  }

  return result;
}

unint64_t sub_222C34334()
{
  result = qword_27D027298;
  if (!qword_27D027298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027298);
  }

  return result;
}

unint64_t sub_222C3438C()
{
  result = qword_27D0272A0;
  if (!qword_27D0272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272A0);
  }

  return result;
}

unint64_t sub_222C343E4()
{
  result = qword_27D0272A8;
  if (!qword_27D0272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272A8);
  }

  return result;
}

unint64_t sub_222C3443C()
{
  result = qword_27D0272B0;
  if (!qword_27D0272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272B0);
  }

  return result;
}

unint64_t sub_222C34494()
{
  result = qword_27D0272B8;
  if (!qword_27D0272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272B8);
  }

  return result;
}

unint64_t sub_222C344EC()
{
  result = qword_27D0272C0;
  if (!qword_27D0272C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272C0);
  }

  return result;
}

unint64_t sub_222C34544()
{
  result = qword_27D0272C8;
  if (!qword_27D0272C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272C8);
  }

  return result;
}

unint64_t sub_222C3459C()
{
  result = qword_27D0272D0;
  if (!qword_27D0272D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272D0);
  }

  return result;
}

unint64_t sub_222C345F4()
{
  result = qword_27D0272D8;
  if (!qword_27D0272D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272D8);
  }

  return result;
}

unint64_t sub_222C3464C()
{
  result = qword_27D0272E0;
  if (!qword_27D0272E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272E0);
  }

  return result;
}

unint64_t sub_222C346A4()
{
  result = qword_27D0272E8;
  if (!qword_27D0272E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272E8);
  }

  return result;
}

unint64_t sub_222C346FC()
{
  result = qword_27D0272F0;
  if (!qword_27D0272F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272F0);
  }

  return result;
}

unint64_t sub_222C34754()
{
  result = qword_27D0272F8;
  if (!qword_27D0272F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0272F8);
  }

  return result;
}

unint64_t sub_222C347AC()
{
  result = qword_27D027300;
  if (!qword_27D027300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027300);
  }

  return result;
}

unint64_t sub_222C34804()
{
  result = qword_27D027308;
  if (!qword_27D027308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027308);
  }

  return result;
}

unint64_t sub_222C3485C()
{
  result = qword_27D027310;
  if (!qword_27D027310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027310);
  }

  return result;
}

unint64_t sub_222C348B4()
{
  result = qword_27D027318;
  if (!qword_27D027318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027318);
  }

  return result;
}

unint64_t sub_222C3490C()
{
  result = qword_27D027320;
  if (!qword_27D027320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027320);
  }

  return result;
}

unint64_t sub_222C34964()
{
  result = qword_27D027328;
  if (!qword_27D027328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027328);
  }

  return result;
}

unint64_t sub_222C349BC()
{
  result = qword_27D027330;
  if (!qword_27D027330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027330);
  }

  return result;
}

unint64_t sub_222C34A14()
{
  result = qword_27D027338;
  if (!qword_27D027338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027338);
  }

  return result;
}

unint64_t sub_222C34A6C()
{
  result = qword_27D027340;
  if (!qword_27D027340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027340);
  }

  return result;
}

unint64_t sub_222C34AC4()
{
  result = qword_27D027348;
  if (!qword_27D027348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027348);
  }

  return result;
}

unint64_t sub_222C34B1C()
{
  result = qword_27D027350;
  if (!qword_27D027350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027350);
  }

  return result;
}

unint64_t sub_222C34B74()
{
  result = qword_27D027358;
  if (!qword_27D027358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027358);
  }

  return result;
}

unint64_t sub_222C34BCC()
{
  result = qword_27D027360;
  if (!qword_27D027360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027360);
  }

  return result;
}

unint64_t sub_222C34C24()
{
  result = qword_27D027368;
  if (!qword_27D027368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027368);
  }

  return result;
}

unint64_t sub_222C34C7C()
{
  result = qword_27D027370;
  if (!qword_27D027370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027370);
  }

  return result;
}

unint64_t sub_222C34CD4()
{
  result = qword_27D027378;
  if (!qword_27D027378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027378);
  }

  return result;
}

unint64_t sub_222C34D2C()
{
  result = qword_27D027380;
  if (!qword_27D027380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027380);
  }

  return result;
}

unint64_t sub_222C34D84()
{
  result = qword_27D027388;
  if (!qword_27D027388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027388);
  }

  return result;
}

unint64_t sub_222C34DDC()
{
  result = qword_27D027390;
  if (!qword_27D027390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027390);
  }

  return result;
}

uint64_t sub_222C34E30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CACC30 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F436B736174 && a2 == 0xED0000646574656CLL || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6162416B736174 && a2 == 0xED000064656E6F64 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961466B736174 && a2 == 0xEA00000000006465 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F725072657375 && a2 == 0xEC00000064657470 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000222CACC50 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222C350A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553797469746E65 && a2 == 0xEE0064657463656CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CACC70 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_222C35238(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_222B4A108(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
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
  return result;
}

uint64_t sub_222C353BC(uint64_t a1, uint64_t *a2)
{
  sub_222C36128(*a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222C35424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027398 = 91;
  unk_27D0273A0 = 0xE100000000000000;
  return result;
}

uint64_t INPlayMediaIntentStreamDefinition.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273A8, &qword_222CA32B8);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273B0, &unk_222CA32C0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78);
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v3[11] = *(v9 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273B8, &qword_222CA32D0);
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v13 = sub_222C935EC();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v3[21] = *(v14 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C35710, 0, 0);
}

uint64_t sub_222C35710()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v4;
  sub_222C9359C();
  v6 = v4[5];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v4[4]);
  v7 = sub_222BF0994();
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 7) & 0x1FFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C97C40;
  *(v10 + 32) = sub_222C36934();
  sub_222C93EBC();
  v46 = v0[23];
  v50 = v0[22];
  v39 = v0[21];
  v11 = v0[18];
  v48 = v0[20];
  v49 = v0[19];
  v12 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v51 = v0[14];
  v42 = v0[13];
  v43 = v0[12];
  v15 = v0[10];
  v41 = v0[9];
  v47 = v0[8];
  v16 = v0[6];
  v40 = v0[7];
  v36 = v0[5];
  v37 = v0[3];
  v44 = v0[11];
  v45 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0273C8, &qword_222CA32D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_222C97C40;
  v18 = type metadata accessor for CommonInteractionFeatureExtractor();
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F90];
  *(v17 + 56) = v18;
  *(v17 + 64) = sub_222C36CA0(&qword_27D0273D0, type metadata accessor for CommonInteractionFeatureExtractor);
  *(v17 + 32) = v19;
  type metadata accessor for INPlayMediaIntentFeatureExtractor();
  v20 = swift_allocObject();
  v21 = type metadata accessor for AdamIdExtractor();
  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  v20[5] = v21;
  v20[6] = &off_28360E4B8;
  v20[2] = v22;
  v38 = v14;
  (*(v12 + 16))(v13, v11, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  sub_222B61940(&qword_27D0273D8, &qword_27D0273B8, &qword_222CA32D0);
  sub_222C94EDC();
  sub_222B61940(&qword_27D0273E0, &qword_27D0273A8, &qword_222CA32B8);
  sub_222C9516C();
  (*(v48 + 16))(v50, v37, v49);
  v24 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v25 = swift_allocObject();
  (*(v48 + 32))(v25 + v24, v50, v49);
  sub_222B61940(&qword_27D0273E8, &qword_27D0273B0, &unk_222CA32C0);
  sub_222C94FAC();
  v26 = *(v15 + 16);
  v26(v42, v51, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C8, &qword_222C9DC80);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266D0, &qword_222C9DC88);
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v26(v43, v42, v41);
  v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  (*(v15 + 32))(v32 + v31, v43, v41);

  sub_222C948BC();

  v33 = *(v15 + 8);
  v33(v42, v41);
  v33(v51, v41);
  (*(v12 + 8))(v11, v38);
  (*(v48 + 8))(v46, v49);

  v34 = v0[1];

  return v34();
}

uint64_t sub_222C35DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_222C35E00, 0, 0);
}

uint64_t sub_222C35E00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = MEMORY[0x223DCA1C0]();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v0[6] = sub_222C35238(sub_222C36CE8, v4, v1);

  objc_autoreleasePoolPop(v3);
  v5 = sub_222C93CAC();
  v6 = [v5 intent];
  v0[7] = v6;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_222C35FA0;
    v10 = v0[5];

    return sub_222B46264(v8);
  }

  else
  {

    v12 = v0[2];
    v14 = v0[6];
    sub_222B49058(MEMORY[0x277D84F90]);
    *v12 = v14;
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_222C35FA0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_222C360A0, 0, 0);
}

uint64_t sub_222C360A0()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 48);
  sub_222B49058(*(v0 + 72));
  *v1 = v4;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222C36128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v25 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);

  if (v12)
  {
    v19 = v10;
    v20 = v6;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v23);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v21 = swift_allocObject();
      sub_222B43E3C(v23, v21 + 16);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (sub_222B69F7C(&v21, DynamicType))
      {
        sub_222B405A0(v23, &v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v21, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v6 = v20;
    v10 = v19;
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

uint64_t sub_222C3634C(uint64_t *a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v5 = sub_222C935EC();
  *(v2 + 80) = v5;
  v6 = *(v5 - 8);
  *(v2 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  *(v2 + 112) = *(a1 + 1);
  v10 = a1[4];
  *(v2 + 128) = a1[3];
  *(v2 + 136) = v10;

  return MEMORY[0x2822009F8](sub_222C36468, 0, 0);
}

uint64_t sub_222C36468()
{
  v42 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_222B41CB8(v0[15], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_222B41CE4(v0[15]);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v10 = v0[9];
      sub_222C935AC();
      v6 = 0;
    }

    v11 = v0[10];
    v12 = v0[8];
    (*(v0[11] + 56))(v0[9], v6, 1, v11);
    if (v4(v12, 1, v11) != 1)
    {
      sub_222BA2994(v0[8]);
    }
  }

  else
  {
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    (*(v8 + 32))(v9, v0[8], v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v13 = v0[9];
  v14 = v0[10];
  if (v4(v13, 1, v14) == 1)
  {
    sub_222BA2994(v13);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = v0[17];
    v17 = v0[14];
    v16 = v0[15];
    v18 = sub_222C9431C();
    __swift_project_value_buffer(v18, qword_280FE2340);

    v19 = sub_222C942FC();
    v20 = sub_222C94A4C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315394;
      if (qword_27D024738 != -1)
      {
        swift_once();
      }

      v24 = v0[16];
      v23 = v0[17];
      v26 = v0[14];
      v25 = v0[15];
      v27 = v0[13];
      *(v21 + 4) = sub_222B437C0(qword_27D027398, unk_27D0273A0, &v41);
      *(v21 + 12) = 2080;
      v0[2] = v27;
      v0[3] = v26;
      v0[4] = v25;
      v0[5] = v24;
      v0[6] = v23;

      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, &v41);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_222B39000, v19, v20, "%s event without timestamp encountered %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v22, -1, -1);
      MEMORY[0x223DCA8C0](v21, -1, -1);
    }

    v31 = 0;
  }

  else
  {
    v33 = v0[11];
    v32 = v0[12];
    v34 = v0[7];
    (*(v33 + 32))(v32, v13, v14);
    sub_222C36CA0(&qword_27D025A18, MEMORY[0x277CC9578]);
    v35 = sub_222C9446C();
    (*(v33 + 8))(v32, v14);
    v31 = v35 ^ 1;
  }

  v36 = v0[12];
  v37 = v0[8];
  v38 = v0[9];

  v39 = v0[1];

  return v39(v31 & 1);
}

uint64_t sub_222C3688C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return INPlayMediaIntentStreamDefinition.events(since:)(a1, a2);
}

unint64_t sub_222C36934()
{
  result = qword_27D0273C0;
  if (!qword_27D0273C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0273C0);
  }

  return result;
}

uint64_t sub_222C36980(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222B503AC;

  return sub_222C35DDC(a1, a2, v7, v6);
}

uint64_t sub_222C36A34(uint64_t *a1)
{
  v4 = *(sub_222C935EC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222B5016C;

  return sub_222C3634C(a1, v1 + v5);
}

uint64_t sub_222C36B0C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222B503AC;

  return sub_222BD5FEC(a1, v6, v1 + v5);
}

uint64_t sub_222C36BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C36C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C36CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C36CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_222C9416C();
  *a2 = result;
  return result;
}

uint64_t sub_222C36D5C()
{
  type metadata accessor for ContactSuggestionProvidedClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027400, &qword_222CA3408);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0273F0 = 91;
  *algn_27D0273F8 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C36DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ContactSuggestionProvidedClassification();
  sub_222B4128C(sub_222C379A4, a2, a4 + v8[6]);
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 16))(a4, a3, v9);
  result = sub_222C379C4(a1, a4 + v8[5], type metadata accessor for PlusContactSuggestionRuntimeSummary);
  *(a4 + v8[7]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222C36EF0(uint64_t a1)
{
  v2 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 72);
  v10 = *(v9 + 16);
  while (1)
  {
    v11 = v8;
    if (v10 == v8)
    {
      return v10 != v11;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    sub_222C379C4(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++, v7, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v12 = sub_222C9362C();
    result = sub_222C37A2C(v7, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v12)
    {
      return v10 != v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C37054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPromptClassification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v13 = sub_222B42A30(v12);
  if (v13 != 2 && (v13 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v29 = sub_222C9431C();
    __swift_project_value_buffer(v29, qword_280FE2340);
    v30 = sub_222C942FC();
    v31 = sub_222C94A3C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      if (qword_27D024740 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_222B437C0(qword_27D0273F0, *algn_27D0273F8, &v40);
      _os_log_impl(&dword_222B39000, v30, v31, "%s Runtime suggestions is not enabled for the request, no contact suggestion classification will be generated", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v14 = sub_222B42478(v12);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v38 = v14;
  v39 = a1;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = *(v5 + 72);
    v18 = a2 + v16;
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_222C379C4(v18, v11, type metadata accessor for EntityPromptClassification);
      v20 = *(v11 + 2);
      v21 = *(v11 + 3);
      v22 = v20 == 0x73746361746E6F63 && v21 == 0xE800000000000000;
      if (v22 || (v23 = *(v11 + 2), v24 = *(v11 + 3), (sub_222C951FC() & 1) != 0) || (v20 == 0x6E65697069636572 ? (v25 = v21 == 0xE900000000000074) : (v25 = 0), v25 || (sub_222C951FC() & 1) != 0))
      {
        sub_222BC93E4(v11, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v19 + 16) + 1, 1);
          v19 = v40;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_222B4C330(v27 > 1, v28 + 1, 1);
          v19 = v40;
        }

        *(v19 + 16) = v28 + 1;
        v14 = sub_222BC93E4(v9, v19 + v16 + v28 * v17);
      }

      else
      {
        v14 = sub_222C37A2C(v11, type metadata accessor for EntityPromptClassification);
      }

      v18 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v14);
  v36 = v38;
  v35 = v39;
  *(&v38 - 2) = v19;
  *(&v38 - 1) = v35;
  v37 = sub_222C63588(sub_222C37984, (&v38 - 4), v36);

  return v37;
}

uint64_t sub_222C37494(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for EntityPromptClassification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeaturisedTurn(0);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = a2 + 32;
    v18 = MEMORY[0x277D84F90];
    v44 = v11;
    v45 = v8;
    do
    {
      sub_222B43E3C(v17, v47);
      sub_222B405A0(v47, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v19 = swift_dynamicCast();
      (*(v8 + 56))(v6, v19 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_222BC937C(v6);
      }

      else
      {
        sub_222BC93E4(v6, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_222B49F90(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_222B49F90(v20 > 1, v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v22 = v18 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v21;
        v11 = v44;
        sub_222BC93E4(v44, v22);
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v23 = *(v43 + 16);
  if (!v23)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_30:

    v41 = sub_222C67060(v26);

    return v41;
  }

  v24 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v25 = *(v42 + 72);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_222C379C4(v24, v15, type metadata accessor for FeaturisedTurn);
    v28 = sub_222C37054(v15, v18);
    result = sub_222C37A2C(v15, type metadata accessor for FeaturisedTurn);
    v29 = *(v28 + 16);
    v30 = v26[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v31 <= v26[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      v26 = sub_222B4A6E4(isUniquelyReferenced_nonNull_native, v33, 1, v26);
      if (*(v28 + 16))
      {
LABEL_25:
        v34 = (v26[3] >> 1) - v26[2];
        result = type metadata accessor for ContactSuggestionProvidedClassification();
        v35 = *(result - 8);
        if (v34 < v29)
        {
          goto LABEL_33;
        }

        v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v37 = *(v35 + 72);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v38 = v26[2];
          v39 = __OFADD__(v38, v29);
          v40 = v38 + v29;
          if (v39)
          {
            goto LABEL_34;
          }

          v26[2] = v40;
        }

        goto LABEL_15;
      }
    }

    if (v29)
    {
      goto LABEL_32;
    }

LABEL_15:
    v24 += v25;
    if (!--v23)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_222C379C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C37A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C37A9C()
{
  type metadata accessor for SuccessfulMessageClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027408, &unk_222CA3470);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD9E0 = 91;
  unk_280FDD9E8 = 0xE100000000000000;
  return result;
}

double sub_222C37B34@<D0>(uint64_t *a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = v7;
  v16 = swift_allocObject();
  v48 = xmmword_222C97C40;
  *(v16 + 16) = xmmword_222C97C40;
  v17 = (v16 + v14);
  v18 = v12[14];
  *v17 = 0xD00000000000001DLL;
  v17[1] = 0x8000000222CACD20;
  v49 = v8;
  v53[0] = v8;
  v53[1] = v15;
  v53[2] = v9;
  v53[3] = v10;
  v53[4] = v11;
  sub_222C3808C(v53, (v17 + v18));
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  v20 = __swift_project_value_buffer(v19, qword_280FE2340);
  v21 = v50;
  sub_222B78534(v51, v50);

  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();

  if (os_log_type_enabled(v22, v23))
  {
    v46 = v20;
    v47 = v9;
    v51 = v15;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53[0] = v25;
    *v24 = 136315650;
    if (qword_280FDD9D8 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v53);
    *(v24 + 12) = 2080;
    v26 = FeaturisedTurn.friendlyName.getter();
    v27 = v21;
    v29 = v28;
    sub_222B73DD0(v27);
    v30 = sub_222B437C0(v26, v29, v53);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    v31 = v51;
    *(v24 + 24) = sub_222B437C0(v49, v51, v53);
    _os_log_impl(&dword_222B39000, v22, v23, "%s Rule matrix for [Turn ID: %s, Event ID: %s]:", v24, 0x20u);
    swift_arrayDestroy();
    v32 = v25;
    v15 = v31;
    MEMORY[0x223DCA8C0](v32, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);

    v9 = v47;
  }

  else
  {

    sub_222B73DD0(v21);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v16);
  v33 = sub_222B41CFC(v9);
  if (v33 == 2)
  {
    swift_setDeallocating();
    sub_222C385EC(v17);
    swift_deallocClassInstance();
    v34 = sub_222C942FC();
    v35 = sub_222C94A3C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315138;
      if (qword_280FDD9D8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v53);
      _os_log_impl(&dword_222B39000, v34, v35, "%s Sent message missing DonatedBySiri feature", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x223DCA8C0](v37, -1, -1);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }
  }

  else
  {
    v38 = v33;
    v39 = sub_222C1EC00(v16);
    swift_setDeallocating();
    sub_222C385EC(v17);
    swift_deallocClassInstance();
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
      v40 = swift_allocObject();
      *(v40 + 16) = v48;
      v41 = v49;
      *(v40 + 32) = v49;
      *(v40 + 40) = v15;
      v42 = v52;
      *v52 = v38 & 1;
      v42[1] = v41;
      v43 = MEMORY[0x277D84F90];
      v42[2] = v15;
      v42[3] = v43;
      v42[4] = v40;
      swift_bridgeObjectRetain_n();
      return result;
    }
  }

  v45 = v52;
  v52[4] = 0;
  result = 0.0;
  *v45 = 0u;
  v45[1] = 0u;
  return result;
}