uint64_t sub_1D9021A10()
{
  v138 = v0;
  v1 = v0[133];
  v2 = v0[111];
  v128 = v0[86];
  v0[89] = v0[85];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
  sub_1D9026800(&qword_1ECAAFF30, &qword_1ECAB8998, &unk_1D91A78E0, sub_1D8FEE854);
  v3 = sub_1D91765AC();
  if (v1)
  {

    v5 = 0;
    v6 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
    v6 = v4;
  }

  v7 = v0[109];
  sub_1D917824C();
  v132 = sub_1D917822C();
  if (v8)
  {
    v9 = v8;
    sub_1D8D7567C(v5, v6);
  }

  else
  {
    sub_1D8D7567C(v5, v6);

    v132 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[111];
  v0[90] = v0[126];

  v13 = sub_1D91765AC();
  v15 = v14;
  v16 = v0[109];
  sub_1D917824C();
  v17 = sub_1D917822C();
  v19 = v0[126];
  v134 = v9;
  if (v18)
  {
    v20 = v18;
    v130 = v17;
    sub_1D8D7567C(v13, v15);
  }

  else
  {
    sub_1D8D7567C(v13, v15);

    v130 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = v0[119];
  v22 = v0[118];
  v23 = v0[104];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x73656B696CLL;
  *(inited + 40) = 0xE500000000000000;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D918A530;
  *(v25 + 32) = 0x69726F6765746163;
  *(v25 + 40) = 0xEA00000000007365;
  *(v25 + 48) = v132;
  *(v25 + 56) = v9;
  *(v25 + 64) = 0xD000000000000010;
  *(v25 + 72) = 0x80000001D91C7F60;
  *(v25 + 80) = v130;
  *(v25 + 88) = v20;

  v26 = sub_1D8E27090(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8C48, &unk_1D91A6960);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 48) = v26;
  v0[136] = sub_1D8E2731C(inited);
  swift_setDeallocating();
  sub_1D8D08A50(inited + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  sub_1D917742C();

  v27 = sub_1D917741C();
  v28 = sub_1D9178CEC();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[121];
  v31 = v0[104];
  v32 = v0[99];
  v33 = v0[98];
  if (v29)
  {
    v125 = v0[121];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v137[0] = v35;
    *v34 = 136315138;
    v36 = sub_1D8CFA924(v130, v20, v137);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Recommendations Metadata - liked channels %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1DA72CB90](v35, -1, -1);
    MEMORY[0x1DA72CB90](v34, -1, -1);

    v125(v31, v33);
  }

  else
  {

    v30(v31, v33);
  }

  v37 = v0[103];
  sub_1D917742C();

  v38 = sub_1D917741C();
  v39 = sub_1D9178CEC();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[121];
  v42 = v0[103];
  v43 = v0[99];
  v44 = v0[98];
  if (v40)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v137[0] = v46;
    *v45 = 136315138;
    v47 = sub_1D8CFA924(v132, v134, v137);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_1D8CEC000, v38, v39, "Recommendations Metadata - liked categories %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v45, -1, -1);
  }

  else
  {
  }

  v41(v42, v44);
  v48 = v0[117];
  v49 = v0[116];
  v50 = v0[111];
  v0[92] = v0[115];

  v51 = sub_1D91765AC();
  v53 = v52;
  v54 = v0[109];
  sub_1D917824C();
  v55 = sub_1D917822C();
  v56 = v0[115];
  v57 = v0[114];
  v58 = v0[113];
  v131 = v59;
  if (v59)
  {
    v133 = v55;
    sub_1D8D7567C(v51, v53);
  }

  else
  {
    sub_1D8D7567C(v51, v53);

    v131 = 0xE000000000000000;
    v133 = 0;
  }

  v60 = v0[129];
  v61 = v0[128];
  v62 = v0[127];
  v63 = v0[115];
  v64 = v0[111];

  v0[93] = v62;

  v65 = sub_1D91765AC();
  v67 = v66;
  v68 = v0[109];
  sub_1D917824C();
  v69 = sub_1D917822C();
  v71 = v0[127];
  v72 = v0[126];
  v73 = v0[125];
  if (v70)
  {
    v74 = v69;
    v75 = v70;
    sub_1D8D7567C(v65, v67);
  }

  else
  {
    sub_1D8D7567C(v65, v67);

    v74 = 0;
    v75 = 0xE000000000000000;
  }

  v76 = v0[127];
  v77 = v0[111];

  v0[94] = v128;

  v78 = sub_1D91765AC();
  v80 = v79;
  v0[137] = 0;
  v81 = v0[109];
  sub_1D917824C();
  v82 = sub_1D917822C();
  v135 = v83;
  if (v83)
  {
    v84 = v82;
    sub_1D8D7567C(v78, v80);
  }

  else
  {
    sub_1D8D7567C(v78, v80);

    v84 = 0;
    v135 = 0xE000000000000000;
  }

  v85 = v0[119];
  v86 = v0[118];
  v87 = v0[102];

  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1D9189080;
  *(v88 + 32) = 0x73656B696C736964;
  *(v88 + 40) = 0xE800000000000000;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D9189060;
  *(v89 + 32) = 0x69726F6765746163;
  *(v89 + 40) = 0xEA00000000007365;
  *(v89 + 48) = v84;
  v126 = v74;
  v127 = v84;
  *(v89 + 56) = v135;
  *(v89 + 64) = 0xD000000000000010;
  *(v89 + 72) = 0x80000001D91C7F60;
  *(v89 + 80) = v74;
  *(v89 + 88) = v75;
  *(v89 + 96) = 0x7374736163646F70;
  *(v89 + 104) = 0xE800000000000000;
  *(v89 + 112) = v133;
  *(v89 + 120) = v131;

  v129 = v75;

  v90 = sub_1D8E27090(v89);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v88 + 48) = v90;
  v0[138] = sub_1D8E2731C(v88);
  swift_setDeallocating();
  sub_1D8D08A50(v88 + 32, &qword_1ECAB8EC0, &qword_1D91A78D8);
  swift_deallocClassInstance();
  sub_1D917742C();

  v91 = sub_1D917741C();
  v92 = sub_1D9178CEC();

  v93 = os_log_type_enabled(v91, v92);
  v94 = v0[121];
  v95 = v0[102];
  v96 = v0[99];
  v97 = v0[98];
  if (v93)
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v137[0] = v99;
    *v98 = 136315138;
    v100 = sub_1D8CFA924(v133, v131, v137);

    *(v98 + 4) = v100;
    _os_log_impl(&dword_1D8CEC000, v91, v92, "Recommendations Metadata - disliked shows %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1DA72CB90](v99, -1, -1);
    MEMORY[0x1DA72CB90](v98, -1, -1);
  }

  else
  {
  }

  v94(v95, v97);
  v101 = v0[101];
  sub_1D917742C();

  v102 = sub_1D917741C();
  v103 = sub_1D9178CEC();

  v104 = os_log_type_enabled(v102, v103);
  v105 = v0[121];
  v106 = v0[101];
  v107 = v0[99];
  v108 = v0[98];
  if (v104)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v137[0] = v110;
    *v109 = 136315138;
    v111 = sub_1D8CFA924(v126, v129, v137);

    *(v109 + 4) = v111;
    _os_log_impl(&dword_1D8CEC000, v102, v103, "Recommendations Metadata - disliked channels %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x1DA72CB90](v110, -1, -1);
    MEMORY[0x1DA72CB90](v109, -1, -1);
  }

  else
  {
  }

  v105(v106, v108);
  v112 = v0[100];
  sub_1D917742C();

  v113 = sub_1D917741C();
  v114 = sub_1D9178CEC();

  v115 = os_log_type_enabled(v113, v114);
  v116 = v0[121];
  v117 = v0[100];
  v118 = v0[99];
  v119 = v0[98];
  if (v115)
  {
    v136 = v0[121];
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v137[0] = v121;
    *v120 = 136315138;
    v122 = sub_1D8CFA924(v127, v135, v137);

    *(v120 + 4) = v122;
    _os_log_impl(&dword_1D8CEC000, v113, v114, "Recommendations Metadata - disliked categories %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    MEMORY[0x1DA72CB90](v121, -1, -1);
    MEMORY[0x1DA72CB90](v120, -1, -1);

    v136(v117, v119);
  }

  else
  {

    v116(v117, v119);
  }

  v123 = swift_task_alloc();
  v0[139] = v123;
  *v123 = v0;
  v123[1] = sub_1D90227D8;

  return sub_1D9024CFC((v0 + 74));
}

uint64_t sub_1D90227D8()
{
  v1 = *(*v0 + 1112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D90228D4, 0, 0);
}

uint64_t sub_1D90228D4()
{
  v58 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 888);
  v3 = *(v0 + 616);
  v4 = *(v0 + 624);
  v5 = *(v0 + 625);
  v6 = *(v0 + 626);
  v7 = *(v0 + 600);
  *(v0 + 552) = *(v0 + 592);
  *(v0 + 560) = v7;
  *(v0 + 576) = v3;
  *(v0 + 584) = v4;
  *(v0 + 585) = v5;
  *(v0 + 586) = v6;
  sub_1D8FEEFE0();
  v8 = sub_1D91765AC();
  if (v1)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = *(v0 + 872);
  sub_1D917824C();
  v13 = sub_1D917822C();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_1D8D7567C(v10, v11);
  }

  else
  {
    sub_1D8D7567C(v10, v11);

    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 880);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D9189080;
  *(v20 + 32) = 0x636974796C616E61;
  v21 = v20 + 32;
  *(v20 + 40) = 0xE900000000000073;
  *(v20 + 48) = v15;
  *(v20 + 56) = v16;
  v22 = sub_1D8E27090(v20);
  swift_setDeallocating();
  sub_1D8D08A50(v21, &qword_1ECAB8C48, &unk_1D91A6960);
  swift_deallocClassInstance();
  v23 = sub_1D90537A0(v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v19;
  sub_1D902687C(v23, sub_1D8FD6534, 0, isUniquelyReferenced_nonNull_native, v57);

  v25 = v57[0];
  v26 = sub_1D90537A0(*(v0 + 984));

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v25;
  sub_1D902687C(v26, sub_1D8FD6534, 0, v27, v57);

  v28 = v57[0];
  v29 = sub_1D90537A0(*(v0 + 1048));

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v28;
  sub_1D902687C(v29, sub_1D8FD6534, 0, v30, v57);

  v31 = v57[0];
  v32 = sub_1D90537A0(*(v0 + 1072));

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v31;
  sub_1D902687C(v32, sub_1D8FD6534, 0, v33, v57);

  v34 = v57[0];
  v35 = sub_1D90537A0(*(v0 + 1088));

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v34;
  sub_1D902687C(v35, sub_1D8FD6534, 0, v36, v57);

  v37 = v57[0];
  v38 = sub_1D90537A0(*(v0 + 1104));

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v37;
  sub_1D902687C(v38, sub_1D8FD6534, 0, v39, v57);

  v40 = v57[0];
  v41 = sub_1D9053A00(v22);

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = v40;
  sub_1D902687C(v41, sub_1D8FD6534, 0, v42, v57);

  v43 = *(v0 + 888);
  v44 = *(v0 + 872);
  v45 = *(v0 + 864);
  v46 = *(v0 + 856);
  v47 = *(v0 + 848);
  v48 = *(v0 + 840);
  v49 = *(v0 + 832);
  v50 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 800);
  v56 = sub_1D9053C58(v57[0]);

  v51 = *(v0 + 8);

  return v51(v56);
}

uint64_t sub_1D9022E14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9022ED4, 0, 0);
}

uint64_t sub_1D9022ED4()
{
  v1 = v0[5];
  v2 = v0[3];
  v24 = v0[4];
  v25 = v0[6];
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[7] = v3;
  v4 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v9 = sub_1D91785DC();

  [v3 setSortDescriptors_];

  [v3 setFetchLimit_];
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v10 initWithEntityName_];
  v0[8] = v12;

  v13 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  [v12 setPredicate_];

  [v12 setFetchLimit_];
  v14 = *&v2[OBJC_IVAR___MTRecommendationModulesRequest_context];
  v15 = swift_allocObject();
  v0[9] = v15;
  v15[2] = v2;
  v15[3] = v3;
  v15[4] = v12;
  (*(v1 + 104))(v25, *MEMORY[0x1E695D2B8], v24);
  v16 = *(MEMORY[0x1E695D2C0] + 4);
  v17 = v2;
  v18 = v3;
  v19 = v12;
  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_1D90231F4;
  v21 = v0[6];
  v22 = v0[2];

  return MEMORY[0x1EEDB6538](v22, v21, sub_1D90267E0, v15, &type metadata for RecommendationsMetadata.Shows);
}

void sub_1D90231F4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[9];
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D902334C, 0, 0);
  }
}

uint64_t sub_1D902334C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1D90233BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR___MTRecommendationModulesRequest_context);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v10 = sub_1D917908C();
  v38 = a2;
  if (v2)
  {

    v37._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v37._rawValue = v10;
  }

  type metadata accessor for MTInterest();
  v11 = 0;
  v12 = sub_1D917908C();
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_29:
    v14._rawValue = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_28:
  v13 = sub_1D917935C();
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_6:
  v33 = v5;
  v5 = 0;
  v32 = (v6 + 8);
  v14._rawValue = MEMORY[0x1E69E7CC0];
  v6 = 1000000000000;
  do
  {
    rawValue = v14._rawValue;
    v36 = v11;
    v15 = v5;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA72AA90](v15, v12);
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v18 = [v16 adamID];
      if (v18 != 1000000000000 && v18 != 0)
      {
        break;
      }

      ++v15;
      if (v5 == v13)
      {
        v14._rawValue = rawValue;
        goto LABEL_30;
      }
    }

    v20 = v18;
    v31 = [v17 lastUpdatedDate];
    v21 = v34;
    sub_1D9176DFC();

    sub_1D9176DDC();
    v23 = v22;
    (*v32)(v21, v33);

    v24 = rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1D8ECD6F4(0, *(v24 + 2) + 1, 1, v24);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = v24;
    if (v27 >= v26 >> 1)
    {
      v28 = sub_1D8ECD6F4((v26 > 1), v27 + 1, 1, v24);
    }

    *(v28 + 2) = v27 + 1;
    v14._rawValue = v28;
    v29 = &v28[16 * v27];
    *(v29 + 4) = v20;
    *(v29 + 5) = floor(v23 * 1000.0);
    v11 = v36;
  }

  while (v5 != v13);
LABEL_30:

  return RecommendationsMetadata.Shows.init(from:dislikedPodcasts:)(v37, v14);
}

uint64_t sub_1D9023714(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90237D4, 0, 0);
}

uint64_t sub_1D90237D4()
{
  v29 = v0[4];
  v30 = v0[6];
  v27 = v0[5];
  v28 = v0[3];
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[7] = v1;
  v2 = [objc_opt_self() predicateForSubscribedChannel];
  [v1 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v7 = sub_1D91785DC();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 &selRef:v9 cStringUsingEncoding:? + 6];
  v0[8] = v10;

  v11 = _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0();
  [v10 setPredicate_];

  [v10 setFetchLimit_];
  v12 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v14 = [v12 &selRef:v13 cStringUsingEncoding:? + 6];
  v0[9] = v14;

  v15 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  [v14 setPredicate_];

  [v14 setFetchLimit_];
  v16 = *&v28[OBJC_IVAR___MTRecommendationModulesRequest_context];
  v17 = swift_allocObject();
  v0[10] = v17;
  v17[2] = v28;
  v17[3] = v1;
  v17[4] = v10;
  v17[5] = v14;
  (*(v27 + 104))(v30, *MEMORY[0x1E695D2B8], v29);
  v18 = *(MEMORY[0x1E695D2C0] + 4);
  v19 = v28;
  v20 = v1;
  v21 = v10;
  v22 = v14;
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_1D9023B74;
  v24 = v0[6];
  v25 = v0[2];

  return MEMORY[0x1EEDB6538](v25, v24, sub_1D90267C0, v17, &type metadata for RecommendationsMetadata.Channels);
}

void sub_1D9023B74()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[10];
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D9023CCC, 0, 0);
  }
}

uint64_t sub_1D9023CCC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1D9023D48@<X0>(uint64_t a1@<X0>, char *a2@<X3>, uint64_t a3@<X8>)
{
  v62 = a2;
  v58 = a3;
  v56 = sub_1D9176E3C();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR___MTRecommendationModulesRequest_context);
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v9 = sub_1D917908C();
  if (v3)
  {

    v57._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v57._rawValue = v9;
  }

  v60 = type metadata accessor for MTInterest();
  v10 = sub_1D917908C();
  v59 = 0;
  v61 = v8;
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v54 = (v5 + 8);
    v13 = &off_1E856D000;
    if (i)
    {
      v5 = 0;
      v63._rawValue = MEMORY[0x1E69E7CC0];
      do
      {
        v14 = v5;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1DA72AA90](v14, v10);
          }

          else
          {
            if (v14 >= *(v11 + 16))
            {
              goto LABEL_54;
            }

            v15 = *(v10 + 8 * v14 + 32);
          }

          v16 = v15;
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v17 = v13;
          v18 = [v15 v13[229]];
          if (v18 != 1000000000000 && v18 != 0)
          {
            break;
          }

          ++v14;
          if (v5 == i)
          {
            goto LABEL_28;
          }
        }

        v20 = v18;
        v53 = [v16 lastUpdatedDate];
        v21 = v55;
        sub_1D9176DFC();

        sub_1D9176DDC();
        v23 = v22;
        (*v54)(v21, v56);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63._rawValue = sub_1D8ECD5C8(0, *(v63._rawValue + 2) + 1, 1, v63._rawValue);
        }

        v26 = *(v63._rawValue + 2);
        v25 = *(v63._rawValue + 3);
        if (v26 >= v25 >> 1)
        {
          v63._rawValue = sub_1D8ECD5C8((v25 > 1), v26 + 1, 1, v63._rawValue);
        }

        rawValue = v63._rawValue;
        *(v63._rawValue + 2) = v26 + 1;
        v28 = &rawValue[16 * v26];
        *(v28 + 4) = v20;
        *(v28 + 5) = floor(v23 * 1000.0);
        v13 = v17;
      }

      while (v5 != i);
    }

    else
    {
      v63._rawValue = MEMORY[0x1E69E7CC0];
    }

LABEL_28:

    v29 = v59;
    v30 = sub_1D917908C();
    v31 = v29;
    if (v29)
    {

      v31 = 0;
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = v30;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      break;
    }

    v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_59;
    }

LABEL_33:
    v5 = 0;
    v33._rawValue = MEMORY[0x1E69E7CC0];
LABEL_34:
    v62 = v33._rawValue;
    v34 = v5;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1DA72AA90](v34, v10);
      }

      else
      {
        if (v34 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v35 = *(v10 + 8 * v34 + 32);
      }

      v36 = v35;
      v5 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [v35 v13[229]];
      if (v37 != 1000000000000 && v37 != 0)
      {
        v60 = v31;
        v61 = v37;
        v39 = v13;
        v40 = [v36 lastUpdatedDate];
        v41 = v55;
        sub_1D9176DFC();

        sub_1D9176DDC();
        v43 = v42;
        (*v54)(v41, v56);

        v44 = v62;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        if ((v45 & 1) == 0)
        {
          v44 = sub_1D8ECD5C8(0, *(v44 + 2) + 1, 1, v44);
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        v48 = v44;
        v49 = v61;
        v13 = v39;
        if (v47 >= v46 >> 1)
        {
          v48 = sub_1D8ECD5C8((v46 > 1), v47 + 1, 1, v44);
          v49 = v61;
        }

        v31 = v60;
        *(v48 + 2) = v47 + 1;
        v33._rawValue = v48;
        v50 = &v48[16 * v47];
        *(v50 + 4) = v49;
        *(v50 + 5) = floor(v43 * 1000.0);
        if (v5 != v32)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }

      ++v34;
      if (v5 == v32)
      {
        v33._rawValue = v62;
        goto LABEL_60;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v32 = sub_1D917935C();
  if (v32)
  {
    goto LABEL_33;
  }

LABEL_59:
  v33._rawValue = MEMORY[0x1E69E7CC0];
LABEL_60:

  return RecommendationsMetadata.Channels.init(from:favoritedChannels:dislikedChannels:)(v57, v63, v33);
}

uint64_t sub_1D90242B0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_1D917906C();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9024370, 0, 0);
}

uint64_t sub_1D9024370()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3082;
  *(v0 + 88) = 3;
  *(v0 + 96) = 0;
  *(v0 + 100) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  *(v0 + 144) = v5;
  v19 = *(v0 + 48);
  v20 = *(v0 + 64);
  *v21 = *(v0 + 80);
  *&v21[13] = *(v0 + 93);
  v17 = *(v0 + 16);
  v18 = *(v0 + 32);
  v6 = EpisodeListSettings.predicate.getter();
  [v5 setPredicate_];

  EpisodeSortType.descriptors.getter(12);
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v7 = sub_1D91785DC();

  [v5 setSortDescriptors_];

  [v5 setFetchLimit_];
  v8 = *&v4[OBJC_IVAR___MTRecommendationModulesRequest_context];
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v11 = v4;
  v12 = v5;
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_1D90245B8;
  v14 = *(v0 + 136);
  v15 = *(v0 + 104);

  return MEMORY[0x1EEDB6538](v15, v14, sub_1D90267A4, v9, &type metadata for RecommendationsMetadata.Episodes);
}

void sub_1D90245B8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[19];
    (*(v2[16] + 8))(v2[17], v2[15]);

    MEMORY[0x1EEE6DFA0](sub_1D9024710, 0, 0);
  }
}

uint64_t sub_1D9024710()
{
  v1 = *(v0 + 136);

  sub_1D8F3D204(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

PodcastsFoundation::RecommendationsMetadata::Episodes sub_1D9024780(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MTRecommendationModulesRequest_context);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v3 = sub_1D917908C();
  if (v1)
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  return RecommendationsMetadata.Episodes.init(from:)(v3);
}

uint64_t sub_1D902480C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D917906C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90248CC, 0, 0);
}

uint64_t sub_1D90248CC()
{
  v1 = v0[5];
  v2 = v0[3];
  v21 = v0[4];
  v22 = v0[6];
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 initWithEntityName_];
  v0[7] = v5;

  v6 = sub_1D8D20F80();
  [v5 setPredicate_];

  v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v7 initWithEntityName_];
  v0[8] = v9;

  v10 = sub_1D8D20F90();
  [v9 setPredicate_];

  v11 = *&v2[OBJC_IVAR___MTRecommendationModulesRequest_context];
  v12 = swift_allocObject();
  v0[9] = v12;
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v9;
  (*(v1 + 104))(v22, *MEMORY[0x1E695D2B8], v21);
  v13 = *(MEMORY[0x1E695D2C0] + 4);
  v14 = v2;
  v15 = v5;
  v16 = v9;
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1D9024AE0;
  v18 = v0[6];
  v19 = v0[2];

  return MEMORY[0x1EEDB6538](v19, v18, sub_1D9026784, v12, &type metadata for RecommendationsMetadata.Categories);
}

void sub_1D9024AE0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[9];
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x1EEE6DFA0](sub_1D9026FA0, 0, 0);
  }
}

void *sub_1D9024C38(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MTRecommendationModulesRequest_context);
  type metadata accessor for MTInterest();
  v3 = sub_1D917908C();
  if (v1)
  {

    v4._rawValue = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4._rawValue = v3;
  }

  v5 = sub_1D917908C();
  return RecommendationsMetadata.Categories.init(from:dislikedInterests:)(v4, v5).liked._rawValue;
}

uint64_t sub_1D9024D1C()
{
  v1 = type metadata accessor for AnalyticsUserIdentifier();
  *(v0 + 216) = v1;
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = 0;
  v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = 0;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  *(v0 + 224) = objc_msgSendSuper2((v0 + 168), sel_init);
  if (qword_1EDCD2A78 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCD2A80;
  v6 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v0 + 232) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 200;
  *(v0 + 24) = sub_1D9024F28;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8EA8, &unk_1D91A78B0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D8D77280;
  *(v0 + 104) = &block_descriptor_62;
  *(v0 + 112) = v8;
  [v7 resultWithTimeout:v0 + 80 completion:1.0];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D9024F28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1D9025154;
  }

  else
  {
    v3 = sub_1D9025038;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9025038()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  v5 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v6 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v7 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v8 = v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v14 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v13 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v10 = v13;
  *&v9 = v14;
  *(&v10 + 1) = v4;
  *(&v9 + 1) = v7;
  *v3 = v10;
  *(v3 + 16) = v9;
  *(v3 + 32) = v5;
  *(v3 + 33) = v6;
  *(v3 + 34) = v8;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D9025154()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  swift_willThrow();

  v5 = objc_allocWithZone(v3);
  v6 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v7 = 0;
  v7[1] = 0;
  v5[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = 0;
  v5[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = 0;
  v5[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = 0;
  *(v0 + 184) = v5;
  *(v0 + 192) = v3;
  v8 = objc_msgSendSuper2((v0 + 184), sel_init);

  v9 = *(v0 + 208);
  v10 = *&v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8];
  LOBYTE(v2) = v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization];
  v11 = v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount];
  v12 = *&v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8];
  v13 = v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld];
  v19 = *&v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  v18 = *&v8[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];

  *&v15 = v18;
  *&v14 = v19;
  *(&v15 + 1) = v10;
  *(&v14 + 1) = v12;
  *v9 = v15;
  *(v9 + 16) = v14;
  *(v9 + 32) = v2;
  *(v9 + 33) = v11;
  *(v9 + 34) = v13;
  v16 = *(v0 + 8);

  return v16();
}

id RecommendationModulesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationModulesRequest.init()()
{
  *&v0[OBJC_IVAR___MTRecommendationModulesRequest_kPayloadDataFetchLimit] = 50;
  v1 = OBJC_IVAR___MTRecommendationModulesRequest_context;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainQueueContext];

  *&v0[v1] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RecommendationModulesRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id RecommendationModulesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationModulesRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecommendationModulesResponse.init(json:)(void *a1)
{
  v2 = v1;
  v25._rawValue = a1;
  v3 = sub_1D9176AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecommendationModulesCache();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v18 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v26, "ListenNowCache");
  v26[15] = -18;
  (*(v4 + 104))(v7, *MEMORY[0x1E6968F58], v3);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  v19 = &v17[*(v14 + 28)];
  *v19 = 0x4D73656C75646F4DLL;
  *(v19 + 1) = 0xEF61746164617465;
  v20 = &v17[*(v14 + 32)];
  strcpy(v20, "ModuleContent-");
  v20[15] = -18;
  RecommendationModulesCache.writeToCache(with:)(v25);

  v21 = RecommendationModulesCache.modulesMetadata.getter();
  sub_1D9026F40(v17, type metadata accessor for RecommendationModulesCache);
  v22 = *(v2 + 16);
  *(v2 + 16) = v21;

  return v2;
}

uint64_t RecommendationModulesResponse.init()()
{
  v62 = sub_1D917744C();
  v61 = *(v62 - 8);
  v1 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D9176AAC();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for RecommendationModulesCache();
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = sub_1D9176E3C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v58 - v28;
  v69 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  if (qword_1ECAB36C0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v13, qword_1ECAB8E38);
  swift_beginAccess();
  sub_1D8CF6B1C(v29, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
    return 0;
  }

  v59 = v18;
  (*(v18 + 32))(v70, v16, v17);
  v30 = [objc_opt_self() sharedInstance];
  v31 = [v30 syncValueForKey_];

  if (v31)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v73[0] = v71;
  v73[1] = v72;
  if (*(&v72 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1D8D08A50(v73, &qword_1ECAB57F0, &unk_1D9190AA0);
  }

  v32 = [objc_opt_self() sharedCacheDirectory];
  sub_1D9176B9C();

  strcpy(v73, "ListenNowCache");
  HIBYTE(v73[0]) = -18;
  v33 = v67;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F58], v67);
  sub_1D8D447DC();
  v34 = v68;
  sub_1D9176C0C();
  v35 = v6;
  v36 = v34;
  (*(v3 + 8))(v35, v33);
  (*(v65 + 8))(v10, v66);
  v37 = v64;
  v38 = (v34 + *(v64 + 20));
  *v38 = 0x4D73656C75646F4DLL;
  v38[1] = 0xEF61746164617465;
  v39 = (v34 + *(v37 + 24));
  strcpy(v39, "ModuleContent-");
  v39[15] = -18;
  sub_1D9176D7C();
  sub_1D9176E2C();
  sub_1D8F132BC(&qword_1EDCD5940);
  LOBYTE(v34) = sub_1D917818C();
  v40 = *(v59 + 8);
  v40(v23, v17);
  v40(v26, v17);
  if ((v34 & 1) != 0 || ((v41 = RecommendationModulesCache.modulesMetadata.getter(), v41 >> 62) ? (v42 = sub_1D917935C()) : (v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v42 < 1))
  {

    sub_1D9026F40(v36, type metadata accessor for RecommendationModulesCache);
    v40(v70, v17);
    return 0;
  }

  v43 = v63;
  sub_1D917742C();
  v44 = v60;
  (*(v59 + 16))(v60, v70, v17);
  v45 = sub_1D917741C();
  v46 = sub_1D9178D1C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v73[0] = v48;
    *v47 = 136315138;
    sub_1D8F132BC(&qword_1EDCD5930);
    v49 = sub_1D9179A4C();
    v51 = v50;
    v40(v44, v17);
    v52 = sub_1D8CFA924(v49, v51, v73);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1D8CEC000, v45, v46, "RecommendationModulesRequest returning cached recommendations response. Last cached date was: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1DA72CB90](v48, -1, -1);
    MEMORY[0x1DA72CB90](v47, -1, -1);

    (*(v61 + 8))(v63, v62);
  }

  else
  {

    v40(v44, v17);
    (*(v61 + 8))(v43, v62);
  }

  v54 = v68;
  v55 = RecommendationModulesCache.modulesMetadata.getter();
  sub_1D9026F40(v54, type metadata accessor for RecommendationModulesCache);
  v40(v70, v17);
  v56 = v69;
  v57 = *(v69 + 16);
  *(v69 + 16) = v55;

  return v56;
}

uint64_t sub_1D9026104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D5FF18;

  return sub_1D901F828(a1, v4, v5, v6, v7, v8);
}

void sub_1D9026250(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = *(v2 + 16);

    MEMORY[0x1DA72AA90](a2, v3);

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(v3 + 8 * a2 + 32);

  v5 = v4;
}

uint64_t RecommendationModulesResponse.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RecommendationModulesResponse.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9026624@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D8CFAD1C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1D8D65618(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1D8D08A50(v22, &qword_1ECAB45F8, &qword_1D918A060);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D9026784()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_1D9024C38(v0[2]);
}

unint64_t sub_1D90267C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1D9023D48(*(v1 + 16), *(v1 + 40), a1);
}

unint64_t sub_1D90267E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1D90233BC(v1[2], a1);
}

uint64_t sub_1D9026800(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D902687C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1D9026624(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1D8D65618(v46, v44);
  v14 = *a5;
  result = sub_1D8D33C70(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1D900C074(v20, a4 & 1);
    v22 = *a5;
    result = sub_1D8D33C70(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1D8F86F90();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    sub_1D8D65618(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1D8D65618(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1D9026624(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1D8D65618(v46, v44);
        v33 = *a5;
        result = sub_1D8D33C70(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1D900C074(v37, 1);
          v38 = *a5;
          result = sub_1D8D33C70(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          sub_1D8D65618(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1D8D65618(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1D9026624(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1D8D1B144();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D9026B8C(void *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  type metadata accessor for RecommendationModulesResponse();
  swift_allocObject();
  _Block_copy(a2);
  v14 = RecommendationModulesResponse.init()();
  if (v14)
  {
    v15 = v14;
    sub_1D917742C();
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "RecommendationModulesRequest returning cached response", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a2[2](a2, v15, 0);
  }

  else
  {
    v19 = sub_1D917886C();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a1;
    v20[5] = sub_1D8D96FE8;
    v20[6] = v13;
    v21 = a1;

    sub_1D8E91268(0, 0, v7, &unk_1D91A78F0, v20);
  }
}

uint64_t sub_1D9026E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D901F828(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9026F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9027258(char *a1)
{
  v2 = *(*(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 72);
  if (!v2)
  {
    return v2;
  }

  v3 = *a1;
  v15 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA72AA90](v5, v2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v13 = v15;
          goto LABEL_24;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          v4 = sub_1D917935C();
          goto LABEL_4;
        }

        v6 = *(v2 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_21;
        }
      }

      v8 = *(v6 + 16);
      v9 = *(v6 + 24);

      v10 = sub_1D917980C();

      if (v10 > 3)
      {
        if (v3 == 4)
        {
          goto LABEL_16;
        }
      }

      else if (v3 != 4)
      {
        if (*&aStdq_10[8 * v10] == *&aStdq_10[8 * v3])
        {
          swift_bridgeObjectRelease_n();
LABEL_16:
          sub_1D917959C();
          v11 = *(v15 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          goto LABEL_7;
        }

        v12 = sub_1D9179ACC();
        swift_bridgeObjectRelease_n();
        if (v12)
        {
          goto LABEL_16;
        }
      }

LABEL_7:
      ++v5;
      if (v7 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_24:

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if (*(v13 + 16))
    {
      goto LABEL_27;
    }

LABEL_34:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA72AA90](0, v13);
    goto LABEL_30;
  }

  if (*(v13 + 16))
  {
    v2 = *(v13 + 32);

LABEL_30:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ServerPodcastEpisode.alternatePaidURL()@<X0>(uint64_t a1@<X8>)
{
  v8 = 2;
  v2 = sub_1D9027258(&v8);
  if (v2)
  {
    if (*(v2 + 56))
    {
      v3 = *(v2 + 48);
      v4 = *(v2 + 56);

      sub_1D9176BFC();
    }
  }

  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

void __swiftcall ServerPodcastEpisode.determineBestTranscriptMetadata(isSubscriptionActive:)(Swift::tuple_ttmlToken_String_optional_snippet_String_optional_source_PodcastsFoundation_MetadataSource_optional *__return_ptr retstr, Swift::Bool isSubscriptionActive)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(retstr, &v4);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, isSubscriptionActive);
}

PodcastsFoundation::MetadataSource_optional __swiftcall MetadataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MetadataSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x72656469766F7270;
  }

  else
  {
    result = 0x656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_1D9027854@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

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

unint64_t sub_1D9027968()
{
  result = qword_1ECAB8EC8;
  if (!qword_1ECAB8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8EC8);
  }

  return result;
}

unint64_t sub_1D90279BC()
{
  result = qword_1ECAB2640;
  if (!qword_1ECAB2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2640);
  }

  return result;
}

id sub_1D9027AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

uint64_t sub_1D9027B30(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1D9027B90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1D9027C08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1D9027C64(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

void *RecommendationModule.attributes.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTRecommendationModule_attributes);
  v2 = v1;
  return v1;
}

uint64_t sub_1D9027E5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

BOOL sub_1D9027F38()
{
  v1 = OBJC_IVAR___MTRecommendationModule_shows;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v4 = *(v0 + v1);
      }

      if (sub_1D917935C())
      {
        return 0;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }
  }

  v5 = OBJC_IVAR___MTRecommendationModule_episodes;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v8 = *(v0 + v5);
      }

      v7 = sub_1D917935C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 == 0;
}

uint64_t sub_1D9028000()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x69726F6765746163;
  v4 = 0x73776F6873;
  if (v1 != 4)
  {
    v4 = 0x7365646F73697065;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x7475626972747461;
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

uint64_t sub_1D90280AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D902AF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90280D4(uint64_t a1)
{
  v2 = sub_1D90285E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9028110(uint64_t a1)
{
  v2 = sub_1D90285E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D902821C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F00, &unk_1D91A7A50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90285E0();
  sub_1D9179F1C();
  v12 = (v4 + OBJC_IVAR___MTRecommendationModule_id);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v28 = 0;

  sub_1D91799BC();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v15 = (v4 + OBJC_IVAR___MTRecommendationModule_type);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 1;

    sub_1D91799BC();

    v27 = *(v4 + OBJC_IVAR___MTRecommendationModule_attributes);
    LOBYTE(v26) = 2;
    type metadata accessor for RecommendationModuleAttributes();
    sub_1D9029CA8(&qword_1ECAB8F10, v18, type metadata accessor for RecommendationModuleAttributes);
    sub_1D917999C();
    v19 = OBJC_IVAR___MTRecommendationModule_categories;
    swift_beginAccess();
    v26 = *(v4 + v19);
    LOBYTE(v25) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9028658();
    sub_1D917999C();
    v20 = OBJC_IVAR___MTRecommendationModule_shows;
    swift_beginAccess();
    v25 = *(v4 + v20);
    LOBYTE(v24) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9028710();
    sub_1D917999C();
    v21 = OBJC_IVAR___MTRecommendationModule_episodes;
    swift_beginAccess();
    v24 = *(v4 + v21);
    v23[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D90287C8();
    sub_1D917999C();
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1D90285E0()
{
  result = qword_1ECAB8F08;
  if (!qword_1ECAB8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F08);
  }

  return result;
}

unint64_t sub_1D9028658()
{
  result = qword_1ECAB8F18;
  if (!qword_1ECAB8F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9029CA8(&qword_1ECAB8F20, 255, type metadata accessor for ServerCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F18);
  }

  return result;
}

unint64_t sub_1D9028710()
{
  result = qword_1ECAB8F30;
  if (!qword_1ECAB8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9029CA8(&qword_1ECAB26C8, 255, type metadata accessor for ServerPodcast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F30);
  }

  return result;
}

unint64_t sub_1D90287C8()
{
  result = qword_1ECAB8F40;
  if (!qword_1ECAB8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D9029CA8(&qword_1ECAB8F48, 255, type metadata accessor for ServerPodcastEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F40);
  }

  return result;
}

char *RecommendationModule.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F50, &qword_1D91A7A70);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR___MTRecommendationModule_categories;
  *&v1[OBJC_IVAR___MTRecommendationModule_categories] = 0;
  v34 = OBJC_IVAR___MTRecommendationModule_shows;
  *&v1[OBJC_IVAR___MTRecommendationModule_shows] = 0;
  v33 = OBJC_IVAR___MTRecommendationModule_episodes;
  *&v1[OBJC_IVAR___MTRecommendationModule_episodes] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90285E0();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v12 = *&v1[v9];

    v13 = *&v1[v34];

    v14 = *&v1[v33];

    type metadata accessor for RecommendationModule();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v38) = 0;
    v11 = sub_1D91798BC();
    v16 = &v1[OBJC_IVAR___MTRecommendationModule_id];
    *v16 = v11;
    v16[1] = v17;
    LOBYTE(v38) = 1;
    v18 = sub_1D91798BC();
    v19 = &v1[OBJC_IVAR___MTRecommendationModule_type];
    *v19 = v18;
    v19[1] = v20;
    type metadata accessor for RecommendationModuleAttributes();
    LOBYTE(v37) = 2;
    sub_1D9029CA8(&qword_1ECAB8F58, v21, type metadata accessor for RecommendationModuleAttributes);
    sub_1D917989C();
    *&v1[OBJC_IVAR___MTRecommendationModule_attributes] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
    LOBYTE(v38) = 3;
    sub_1D9028DC0();
    sub_1D917989C();
    v22 = v37;
    swift_beginAccess();
    v23 = *&v3[v9];
    *&v3[v9] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    LOBYTE(v37) = 4;
    sub_1D9028E78();
    sub_1D917989C();
    v31 = v36;
    v24 = v34;
    swift_beginAccess();
    v25 = *&v3[v24];
    *&v3[v24] = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    LOBYTE(v36) = 5;
    sub_1D9028F30();
    sub_1D917989C();
    v26 = v39;
    v27 = v33;
    swift_beginAccess();
    v28 = *&v3[v27];
    *&v3[v27] = v26;

    v29 = type metadata accessor for RecommendationModule();
    v35.receiver = v3;
    v35.super_class = v29;
    v3 = objc_msgSendSuper2(&v35, sel_init);
    (*(v5 + 8))(v8, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t sub_1D9028DC0()
{
  result = qword_1ECAB8F60;
  if (!qword_1ECAB8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41A0, &qword_1D91A8140);
    sub_1D9029CA8(&qword_1ECAB8F68, 255, type metadata accessor for ServerCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F60);
  }

  return result;
}

unint64_t sub_1D9028E78()
{
  result = qword_1ECAB8F70;
  if (!qword_1ECAB8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F28, &qword_1D91A7A60);
    sub_1D9029CA8(&qword_1ECAB26C0, 255, type metadata accessor for ServerPodcast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F70);
  }

  return result;
}

unint64_t sub_1D9028F30()
{
  result = qword_1ECAB8F78;
  if (!qword_1ECAB8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D9029CA8(&qword_1ECAB1D70, 255, type metadata accessor for ServerPodcastEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F78);
  }

  return result;
}

char *sub_1D9028FE8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for RecommendationModule());
  result = RecommendationModule.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *RecommendationModuleAttributes.title.getter()
{
  v1 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RecommendationModuleAttributes.title.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D902921C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1D902926C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id RecommendationModuleAttributes.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___MTRecommendationModuleAttributes_title] = 0;
  *&v0[OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D90293C8()
{
  if (*v0)
  {
    result = 0x656372756F736572;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1D902940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xED00007365707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90294EC(uint64_t a1)
{
  v2 = sub_1D90297F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9029528(uint64_t a1)
{
  v2 = sub_1D90297F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationModuleAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F90, &qword_1D91A7A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90297F4();
  sub_1D9179F1C();
  v11 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v17 = *(v3 + v11);
  LOBYTE(v16) = 0;
  type metadata accessor for RecommendationModuleTitle();
  sub_1D9029CA8(&qword_1ECAB8FA0, v12, type metadata accessor for RecommendationModuleTitle);
  sub_1D917999C();
  if (!v2)
  {
    v13 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
    swift_beginAccess();
    v16 = *(v3 + v13);
    v15[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    sub_1D902986C(&qword_1ECAB8FB0, sub_1D90298E4);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D90297F4()
{
  result = qword_1ECAB8F98;
  if (!qword_1ECAB8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8F98);
  }

  return result;
}

uint64_t sub_1D902986C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90298E4()
{
  result = qword_1ECAB8FB8;
  if (!qword_1ECAB8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FB8);
  }

  return result;
}

void *RecommendationModuleAttributes.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FC0, &qword_1D91A7A88);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  *&v1[OBJC_IVAR___MTRecommendationModuleAttributes_title] = 0;
  v10 = OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes;
  *&v1[OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes] = 0;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90297F4();
  v31 = v8;
  v13 = v32;
  v14 = ObjectType;
  sub_1D9179EEC();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v22 = *&v2[v10];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v9;
    v28 = v10;
    v15 = v29;
    type metadata accessor for RecommendationModuleTitle();
    v35 = 0;
    sub_1D9029CA8(&qword_1ECAB8FC8, v16, type metadata accessor for RecommendationModuleTitle);
    v17 = v30;
    sub_1D917989C();
    v18 = v34;
    v19 = v32;
    swift_beginAccess();
    v20 = *&v2[v19];
    *&v2[v19] = v18;
    v21 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FA8, &qword_1D91A7A80);
    LOBYTE(v34) = 1;
    sub_1D902986C(&qword_1ECAB8FD0, sub_1D9029CF0);
    sub_1D917989C();
    v24 = v36;
    v25 = v28;
    swift_beginAccess();
    v26 = *&v2[v25];
    *&v2[v25] = v24;

    v33.receiver = v2;
    v33.super_class = v14;
    v12 = objc_msgSendSuper2(&v33, sel_init);
    (*(v15 + 8))(v21, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v12;
}

uint64_t sub_1D9029CA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D9029CF0()
{
  result = qword_1ECAB8FD8;
  if (!qword_1ECAB8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FD8);
  }

  return result;
}

uint64_t RecommendationModuleTitle.stringForDisplay.getter()
{
  v1 = (v0 + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RecommendationModuleTitle.stringForDisplay.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id RecommendationModuleTitle.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D902A068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D91D2F90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9179ACC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D902A0FC(uint64_t a1)
{
  v2 = sub_1D902A2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902A138(uint64_t a1)
{
  v2 = sub_1D902A2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationModuleTitle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FE8, &qword_1D91A7A90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902A2F8();
  sub_1D9179F1C();
  v10 = (v2 + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];

  sub_1D917994C();
  (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D902A2F8()
{
  result = qword_1ECAB8FF0;
  if (!qword_1ECAB8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8FF0);
  }

  return result;
}

void *RecommendationModuleTitle.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8FF8, &qword_1D91A7A98);
  v19 = *(v21 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v19 - v7;
  v9 = &v1[OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay];
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902A2F8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v13 = v9[1];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v21;
    v15 = sub_1D917984C();
    v17 = v16;
    swift_beginAccess();
    v18 = v9[1];
    *v9 = v15;
    v9[1] = v17;

    v20.receiver = v3;
    v20.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    (*(v19 + 8))(v8, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v11;
}

uint64_t sub_1D902A5B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id RecentlyPlayedModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentlyPlayedModule.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentlyPlayedModule();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D902A720(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

unint64_t sub_1D902AC88()
{
  result = qword_1ECAB9000;
  if (!qword_1ECAB9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9000);
  }

  return result;
}

unint64_t sub_1D902ACE0()
{
  result = qword_1ECAB9008;
  if (!qword_1ECAB9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9008);
  }

  return result;
}

unint64_t sub_1D902AD38()
{
  result = qword_1ECAB9010;
  if (!qword_1ECAB9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9010);
  }

  return result;
}

unint64_t sub_1D902AD90()
{
  result = qword_1ECAB9018;
  if (!qword_1ECAB9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9018);
  }

  return result;
}

unint64_t sub_1D902ADE8()
{
  result = qword_1ECAB9020;
  if (!qword_1ECAB9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9020);
  }

  return result;
}

unint64_t sub_1D902AE40()
{
  result = qword_1ECAB9028;
  if (!qword_1ECAB9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9028);
  }

  return result;
}

unint64_t sub_1D902AE98()
{
  result = qword_1ECAB9030;
  if (!qword_1ECAB9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9030);
  }

  return result;
}

unint64_t sub_1D902AEF0()
{
  result = qword_1ECAB9038;
  if (!qword_1ECAB9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9038);
  }

  return result;
}

unint64_t sub_1D902AF48()
{
  result = qword_1ECAB9040;
  if (!qword_1ECAB9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9040);
  }

  return result;
}

uint64_t sub_1D902AF9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F6873 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

PodcastsFoundation::RecommendationsDisplayKind_optional __swiftcall RecommendationsDisplayKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecommendationsDisplayKind.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6C656E6E616863;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x6143656E696C6E69;
    }

    if (*v0)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 2003789939;
    v3 = 0x4865646F73697065;
    if (v1 != 7)
    {
      v3 = 0x6F726548776F6873;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6F77537265776F70;
    if (v1 != 4)
    {
      v4 = 0x6867696C68676968;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D902B368()
{
  result = qword_1ECAB9048;
  if (!qword_1ECAB9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9048);
  }

  return result;
}

uint64_t sub_1D902B3BC()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAA24();
  return sub_1D9179E1C();
}

uint64_t sub_1D902B40C()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAA24();
  return sub_1D9179E1C();
}

unint64_t sub_1D902B45C@<X0>(unint64_t *a1@<X8>)
{
  result = RecommendationsDisplayKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D902B488()
{
  result = qword_1ECAB9050;
  if (!qword_1ECAB9050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9058, &qword_1D91A8040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9050);
  }

  return result;
}

uint64_t ServerCategory.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerCategory.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *ServerCategory.__allocating_init(id:type:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *ServerCategory.init(id:type:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t ServerCategory.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t static ServerCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D902B718()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974616C6572;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D902B790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D902EDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D902B7B8(uint64_t a1)
{
  v2 = sub_1D902E154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902B7F4(uint64_t a1)
{
  v2 = sub_1D902E154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ServerCategory.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t ServerCategory.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t ServerCategory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9060, &qword_1D91A80F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E154();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  LOBYTE(v19) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v19) = 1;
    sub_1D91799BC();
    v19 = v3[6];
    HIBYTE(v18) = 2;
    type metadata accessor for ServerCategoryAttributes();
    sub_1D902E530(&qword_1ECAB9068, v16, type metadata accessor for ServerCategoryAttributes);
    sub_1D91799FC();
    v19 = v3[7];
    HIBYTE(v18) = 3;
    type metadata accessor for ServerCategoryRelationships();
    sub_1D902E530(&qword_1ECAB9070, v17, type metadata accessor for ServerCategoryRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerCategory.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerCategory.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategory.init(from:)(a1);
  return v2;
}

uint64_t *ServerCategory.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9078, &qword_1D91A80F8);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E154();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    LOBYTE(v17) = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v11;
    type metadata accessor for ServerCategoryAttributes();
    v16 = 2;
    sub_1D902E530(&qword_1ECAB1948, v12, type metadata accessor for ServerCategoryAttributes);
    sub_1D91798FC();
    v1[6] = v17;
    type metadata accessor for ServerCategoryRelationships();
    v16 = 3;
    sub_1D902E530(&qword_1ECAB1820, v13, type metadata accessor for ServerCategoryRelationships);
    sub_1D917989C();
    (*(v5 + 8))(v8, v15);
    v1[7] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D902BF78()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902BFC0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D902BFCC()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902C010(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t ServerCategoryAttributes.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServerCategoryAttributes.color.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void *ServerCategoryAttributes.__allocating_init(name:url:editorialArtwork:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

void *ServerCategoryAttributes.init(name:url:editorialArtwork:color:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

unint64_t sub_1D902C12C()
{
  v1 = 1701667182;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F63;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_1D902C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D902EF30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D902C1C0(uint64_t a1)
{
  v2 = sub_1D902E1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902C1FC(uint64_t a1)
{
  v2 = sub_1D902E1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ServerCategoryAttributes.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return v0;
}

uint64_t ServerCategoryAttributes.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9080, &qword_1D91A8100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E1F0();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v22 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v21 = 1;
    sub_1D917994C();
    v20 = v3[6];
    v19[15] = 2;
    type metadata accessor for ServerCategoryBrandLogoArtwork();
    sub_1D902E530(&qword_1ECAB9088, v16, type metadata accessor for ServerCategoryBrandLogoArtwork);
    sub_1D917999C();
    v17 = v3[7];
    v18 = v3[8];
    v19[14] = 3;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerCategoryAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategoryAttributes.init(from:)(a1);
  return v2;
}

void *ServerCategoryAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9090, &qword_1D91A8108);
  v6 = *(v20[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E1F0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    v24 = 0;
    v12 = v20[0];
    v1[2] = sub_1D91798BC();
    v1[3] = v13;
    v23 = 1;
    v1[4] = sub_1D917984C();
    v1[5] = v14;
    type metadata accessor for ServerCategoryBrandLogoArtwork();
    v22 = 2;
    sub_1D902E530(&qword_1ECAB1428, v15, type metadata accessor for ServerCategoryBrandLogoArtwork);
    sub_1D917989C();
    v1[6] = v20[1];
    v21 = 3;
    v17 = sub_1D917984C();
    v19 = v18;
    (*(v11 + 8))(v9, v12);
    v3[7] = v17;
    v3[8] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D902C8C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6572646C696863;
  }

  else
  {
    v4 = 0x746E65726170;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6572646C696863;
  }

  else
  {
    v6 = 0x746E65726170;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D902C964()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D902C9E4()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D902CA50()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D902CACC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

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

void sub_1D902CB2C(uint64_t *a1@<X8>)
{
  v2 = 0x746E65726170;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D902CB68()
{
  if (*v0)
  {
    result = 0x6E6572646C696863;
  }

  else
  {
    result = 0x746E65726170;
  }

  *v0;
  return result;
}

uint64_t sub_1D902CBA0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

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

uint64_t sub_1D902CC04(uint64_t a1)
{
  v2 = sub_1D902E268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902CC40(uint64_t a1)
{
  v2 = sub_1D902E268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryRelationships.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategoryRelationships.init(from:)(a1);
  return v2;
}

uint64_t *ServerCategoryRelationships.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9098, &qword_1D91A8110);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E268();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for ServerCategoryParentRelationshipContainer();
    v16 = 0;
    sub_1D902E530(&qword_1ECAB11A0, v11, type metadata accessor for ServerCategoryParentRelationshipContainer);
    v12 = v15;
    sub_1D917989C();
    v1[2] = v17;
    type metadata accessor for ServerCategoryChildrenRelationshipContainer();
    v16 = 1;
    sub_1D902E530(&qword_1ECAB1168, v13, type metadata accessor for ServerCategoryChildrenRelationshipContainer);
    sub_1D917989C();
    (*(v10 + 8))(v8, v12);
    v1[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerCategoryRelationships.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ServerCategoryRelationships.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90A0, &qword_1D91A8118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E268();
  sub_1D9179F1C();
  v15 = *(v3 + 16);
  HIBYTE(v14) = 0;
  type metadata accessor for ServerCategoryParentRelationshipContainer();
  sub_1D902E530(&qword_1ECAB90A8, v11, type metadata accessor for ServerCategoryParentRelationshipContainer);
  sub_1D917999C();
  if (!v2)
  {
    v15 = *(v3 + 24);
    HIBYTE(v14) = 1;
    type metadata accessor for ServerCategoryChildrenRelationshipContainer();
    sub_1D902E530(&qword_1ECAB90B0, v12, type metadata accessor for ServerCategoryChildrenRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D902D22C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D902D284(uint64_t a1)
{
  v2 = sub_1D902E304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902D2C0(uint64_t a1)
{
  v2 = sub_1D902E304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryParentRelationshipContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategoryParentRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t ServerCategoryParentRelationshipContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ServerCategoryParentRelationshipContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D902D480()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902D4CC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D902D520@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D902D578(uint64_t a1)
{
  v2 = sub_1D902E440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902D5B4(uint64_t a1)
{
  v2 = sub_1D902E440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryChildrenRelationshipContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategoryChildrenRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t sub_1D902D684(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v14 = v27;
  sub_1D9179EEC();
  if (v14)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v6;
  }

  else
  {
    v15 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E358();
    result = sub_1D917989C();
    v27 = v12;
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v19 = v28;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v28 = MEMORY[0x1E69E7CC0];
    v20 = *(v19 + 16);
    while (1)
    {
      if (v20 == v17)
      {
        (*(v15 + 8))(v27, v26);

        v6[2] = v18;
        goto LABEL_4;
      }

      if (v17 >= *(v19 + 16))
      {
        break;
      }

      v21 = v19 + 8 * v17++;
      if (*(v21 + 32))
      {
        v22 = *(v21 + 32);

        MEMORY[0x1DA729B90](v23);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v18 = v28;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D902D954(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9179F1C();
  v15[3] = *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  sub_1D9028658();
  sub_1D91799FC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t ServerCategoryBrandLogoArtwork.__allocating_init(brandLogo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D902DB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676F4C646E617262 && a2 == 0xE90000000000006FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D902DBFC(uint64_t a1)
{
  v2 = sub_1D902E494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902DC38(uint64_t a1)
{
  v2 = sub_1D902E494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerCategoryBrandLogoArtwork.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ServerCategoryBrandLogoArtwork.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ServerCategoryBrandLogoArtwork.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90E8, &qword_1D91A8158);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E494();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  type metadata accessor for ServerArtwork();
  sub_1D902E530(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork);
  sub_1D917999C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t ServerCategoryBrandLogoArtwork.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerCategoryBrandLogoArtwork.init(from:)(a1);
  return v2;
}

uint64_t *ServerCategoryBrandLogoArtwork.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90F0, &qword_1D91A8160);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D902E494();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    sub_1D902E530(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D902E0C8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1D902E154()
{
  result = qword_1ECAB24B0;
  if (!qword_1ECAB24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24B0);
  }

  return result;
}

unint64_t sub_1D902E1F0()
{
  result = qword_1ECAB1960;
  if (!qword_1ECAB1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1960);
  }

  return result;
}

unint64_t sub_1D902E268()
{
  result = qword_1ECAB1838;
  if (!qword_1ECAB1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1838);
  }

  return result;
}

unint64_t sub_1D902E304()
{
  result = qword_1ECAB11B8[0];
  if (!qword_1ECAB11B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB11B8);
  }

  return result;
}

unint64_t sub_1D902E358()
{
  result = qword_1ECAAFF70;
  if (!qword_1ECAAFF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF70);
  }

  return result;
}

unint64_t sub_1D902E3DC()
{
  result = qword_1ECAB2280;
  if (!qword_1ECAB2280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB90C8, &qword_1D91A8130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2280);
  }

  return result;
}

unint64_t sub_1D902E440()
{
  result = qword_1ECAB1180;
  if (!qword_1ECAB1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1180);
  }

  return result;
}

unint64_t sub_1D902E494()
{
  result = qword_1ECAB1440;
  if (!qword_1ECAB1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1440);
  }

  return result;
}

uint64_t sub_1D902E530(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D902E798()
{
  result = qword_1ECAB90F8;
  if (!qword_1ECAB90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB90F8);
  }

  return result;
}

unint64_t sub_1D902E7F0()
{
  result = qword_1ECAB9100;
  if (!qword_1ECAB9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9100);
  }

  return result;
}

unint64_t sub_1D902E848()
{
  result = qword_1ECAB9108;
  if (!qword_1ECAB9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9108);
  }

  return result;
}

unint64_t sub_1D902E8A0()
{
  result = qword_1ECAB9110;
  if (!qword_1ECAB9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9110);
  }

  return result;
}

unint64_t sub_1D902E8F8()
{
  result = qword_1ECAB9118;
  if (!qword_1ECAB9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9118);
  }

  return result;
}

unint64_t sub_1D902E950()
{
  result = qword_1ECAB9120;
  if (!qword_1ECAB9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9120);
  }

  return result;
}

unint64_t sub_1D902E9A8()
{
  result = qword_1ECAB1430;
  if (!qword_1ECAB1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1430);
  }

  return result;
}

unint64_t sub_1D902EA00()
{
  result = qword_1ECAB1438;
  if (!qword_1ECAB1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1438);
  }

  return result;
}

unint64_t sub_1D902EA58()
{
  result = qword_1ECAB1170;
  if (!qword_1ECAB1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1170);
  }

  return result;
}

unint64_t sub_1D902EAB0()
{
  result = qword_1ECAB1178;
  if (!qword_1ECAB1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1178);
  }

  return result;
}

unint64_t sub_1D902EB08()
{
  result = qword_1ECAB11A8;
  if (!qword_1ECAB11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB11A8);
  }

  return result;
}

unint64_t sub_1D902EB60()
{
  result = qword_1ECAB11B0;
  if (!qword_1ECAB11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB11B0);
  }

  return result;
}

unint64_t sub_1D902EBB8()
{
  result = qword_1ECAB1828;
  if (!qword_1ECAB1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1828);
  }

  return result;
}

unint64_t sub_1D902EC10()
{
  result = qword_1ECAB1830;
  if (!qword_1ECAB1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1830);
  }

  return result;
}

unint64_t sub_1D902EC68()
{
  result = qword_1ECAB1950;
  if (!qword_1ECAB1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1950);
  }

  return result;
}

unint64_t sub_1D902ECC0()
{
  result = qword_1ECAB1958;
  if (!qword_1ECAB1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1958);
  }

  return result;
}

unint64_t sub_1D902ED18()
{
  result = qword_1ECAB24A0;
  if (!qword_1ECAB24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24A0);
  }

  return result;
}

unint64_t sub_1D902ED70()
{
  result = qword_1ECAB24A8;
  if (!qword_1ECAB24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24A8);
  }

  return result;
}

uint64_t sub_1D902EDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D902EF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t ServerChannel.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t ServerChannel.subscriptionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return v2;
}

uint64_t ServerChannel.showCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v1 + 56))
  {
    return 0;
  }

  else
  {
    return *(v1 + 48);
  }
}

uint64_t ServerChannel.availableShowCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v1 + 72))
  {
    return 0;
  }

  else
  {
    return *(v1 + 64);
  }
}

uint64_t ServerChannel.storeId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

  return v1;
}

uint64_t ServerChannel.displayType.getter()
{
  sub_1D902F434(v0, &v3);
  result = *&aFree_3[8 * v3];
  v2 = qword_1D91A8CC8[v3];
  return result;
}

uint64_t sub_1D902F434@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v4 = *(v3 + 73);
  if ((v4 - 1) > 1u)
  {
    v8 = 0;
  }

  else
  {
    if (*(v3 + 120))
    {
      v5 = *(v3 + 120);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    if (*(v3 + 152))
    {
      v6 = *(v3 + 152);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v9 = v5;

    sub_1D8E3025C(v6);
    if (v9 >> 62)
    {
      v7 = sub_1D917935C();
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  *a2 = v8;
  return result;
}

uint64_t ServerChannel.artworkURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t ServerChannel.logoImageURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t ServerChannel.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);

  return v2;
}

float ServerChannel.logoImageHeight.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v1 && *(v1 + 40) != 1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

float ServerChannel.logoImageWidth.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v1 && *(v1 + 24) != 1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerChannel.uberBackgroundImageURL.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return v3;
}

uint64_t ServerChannel.uberBackgroundJoeColor.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return v3;
}

uint64_t ServerChannel.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);

  return v2;
}

uint64_t ServerChannel.fallbackSubscriptionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v2 = *(v1 + 120);
  if (!v2)
  {
    goto LABEL_13;
  }

  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v5 = *(v1 + 120);
    }

    if (!sub_1D917935C())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1DA72AA90](0, v2);

    v2 = *(v6 + 80);
    v7 = *(v6 + 88);

    swift_unknownObjectRelease();
    if (v7)
    {
      return v2;
    }
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v3 = *(v2 + 32);
    if (*(v3 + 88))
    {
      v2 = *(v3 + 80);
      v4 = *(v3 + 88);

      return v2;
    }
  }

LABEL_13:
  v2 = *(v1 + 152);
  if (!v2)
  {

    return v2;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_23:

    return 0;
  }

  if (v2 < 0)
  {
    v11 = *(v1 + 152);
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_26:

    v12 = MEMORY[0x1DA72AA90](0, v2);

    v2 = *(v12 + 80);
    v13 = *(v12 + 88);

    swift_unknownObjectRelease();
    return v2;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v2 + 32);
    v2 = *(v9 + 80);
    v10 = *(v9 + 88);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ServerChapter.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerChapter.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServerChapter.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t static ServerChapter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D902FE04()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D902FE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D903210C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D902FE8C(uint64_t a1)
{
  v2 = sub_1D9030214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D902FEC8(uint64_t a1)
{
  v2 = sub_1D9030214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ServerChapter.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t ServerChapter.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t ServerChapter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9128, &qword_1D91A8CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030214();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  LOBYTE(v19) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v19) = 1;
    sub_1D91799BC();
    v19 = v3[6];
    HIBYTE(v18) = 2;
    type metadata accessor for ServerChapterAttributes();
    sub_1D9031B40(&qword_1ECAB9138, v16, type metadata accessor for ServerChapterAttributes);
    sub_1D91799FC();
    v19 = v3[7];
    HIBYTE(v18) = 3;
    type metadata accessor for ServerChapterResponseMeta();
    sub_1D9031B40(&qword_1ECAB9140, v17, type metadata accessor for ServerChapterResponseMeta);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9030214()
{
  result = qword_1ECAB9130;
  if (!qword_1ECAB9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9130);
  }

  return result;
}

uint64_t ServerChapter.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t ServerChapter.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerChapter.init(from:)(a1);
  return v2;
}

uint64_t *ServerChapter.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9148, &qword_1D91A8CE8);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030214();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    LOBYTE(v17) = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v11;
    type metadata accessor for ServerChapterAttributes();
    v16 = 2;
    sub_1D9031B40(&qword_1ECAB9150, v12, type metadata accessor for ServerChapterAttributes);
    sub_1D91798FC();
    v1[6] = v17;
    type metadata accessor for ServerChapterResponseMeta();
    v16 = 3;
    sub_1D9031B40(&qword_1ECAB9158, v13, type metadata accessor for ServerChapterResponseMeta);
    sub_1D91798FC();
    (*(v5 + 8))(v8, v15);
    v1[7] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerChapterAttributes.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t sub_1D9030734()
{
  v1 = 0x6B726F77747261;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1D90307A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9032270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90307D0(uint64_t a1)
{
  v2 = sub_1D9030B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903080C(uint64_t a1)
{
  v2 = sub_1D9030B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterAttributes.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ServerChapterAttributes.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t ServerChapterAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9160, &qword_1D91A8CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030B04();
  sub_1D9179F1C();
  v16 = *(v3 + 16);
  v15[7] = 0;
  type metadata accessor for ServerArtwork();
  sub_1D9031B40(&qword_1ECAB26D8, 255, type metadata accessor for ServerArtwork);
  sub_1D917999C();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v15[6] = 1;
    sub_1D91799CC();
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    v15[5] = 2;
    sub_1D917994C();
    v15[4] = *(v3 + 48);
    v15[3] = 3;
    sub_1D9030B58();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9030B04()
{
  result = qword_1ECAB9168;
  if (!qword_1ECAB9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9168);
  }

  return result;
}

unint64_t sub_1D9030B58()
{
  result = qword_1ECAB9170;
  if (!qword_1ECAB9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9170);
  }

  return result;
}

uint64_t ServerChapterAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerChapterAttributes.init(from:)(a1);
  return v2;
}

uint64_t *ServerChapterAttributes.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9178, &qword_1D91A8CF8);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9030B04();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for ServerArtwork();
    v19 = 0;
    sub_1D9031B40(&qword_1EDCD54A0, 255, type metadata accessor for ServerArtwork);
    v11 = v14;
    sub_1D917989C();
    v1[2] = v20;
    v18 = 1;
    *(v1 + 24) = sub_1D91798CC() & 1;
    v17 = 2;
    v1[4] = sub_1D917984C();
    v1[5] = v13;
    v15 = 3;
    sub_1D9030EE4();
    sub_1D91798FC();
    (*(v10 + 8))(v8, v11);
    *(v1 + 48) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9030EE4()
{
  result = qword_1ECAB9180;
  if (!qword_1ECAB9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9180);
  }

  return result;
}

uint64_t sub_1D9030FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746169636F737361 && a2 == 0xEC000000736E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9031044(uint64_t a1)
{
  v2 = sub_1D9031274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9031080(uint64_t a1)
{
  v2 = sub_1D9031274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterResponseMeta.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ServerChapterResponseMeta.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ServerChapterResponseMeta.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9188, &qword_1D91A8D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9031274();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  sub_1D90312C8();

  sub_1D91799FC();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9031274()
{
  result = qword_1ECAB9190;
  if (!qword_1ECAB9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9190);
  }

  return result;
}

unint64_t sub_1D90312C8()
{
  result = qword_1ECAB9198;
  if (!qword_1ECAB9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9198);
  }

  return result;
}

uint64_t ServerChapterResponseMeta.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerChapterResponseMeta.init(from:)(a1);
  return v2;
}

uint64_t *ServerChapterResponseMeta.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91A0, &qword_1D91A8D08);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9031274();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1D9031524();
    sub_1D91798FC();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D9031524()
{
  result = qword_1ECAB91A8;
  if (!qword_1ECAB91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91A8);
  }

  return result;
}

uint64_t sub_1D90315A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1D9031658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D617266656D6974 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D90316E8(uint64_t a1)
{
  v2 = sub_1D90318FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9031724(uint64_t a1)
{
  v2 = sub_1D90318FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerChapterResponseMetaAssociations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91B0, &qword_1D91A8D10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90318FC();

  sub_1D9179F1C();
  v11[1] = v8;
  type metadata accessor for ServerTimeframeContainer();
  sub_1D9031B40(&qword_1ECAB91C0, 255, type metadata accessor for ServerTimeframeContainer);
  sub_1D91799FC();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D90318FC()
{
  result = qword_1ECAB91B8;
  if (!qword_1ECAB91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91B8);
  }

  return result;
}

uint64_t ServerChapterResponseMetaAssociations.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB91C8, &qword_1D91A8D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90318FC();
  sub_1D9179EEC();
  if (!v2)
  {
    type metadata accessor for ServerTimeframeContainer();
    sub_1D9031B40(&qword_1ECAB91D0, 255, type metadata accessor for ServerTimeframeContainer);
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9031B40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D9031CF0()
{
  result = qword_1ECAB91E0;
  if (!qword_1ECAB91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91E0);
  }

  return result;
}

unint64_t sub_1D9031D48()
{
  result = qword_1ECAB91E8;
  if (!qword_1ECAB91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91E8);
  }

  return result;
}

unint64_t sub_1D9031DA0()
{
  result = qword_1ECAB91F0;
  if (!qword_1ECAB91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91F0);
  }

  return result;
}

unint64_t sub_1D9031DF8()
{
  result = qword_1ECAB91F8;
  if (!qword_1ECAB91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB91F8);
  }

  return result;
}

unint64_t sub_1D9031E50()
{
  result = qword_1ECAB9200;
  if (!qword_1ECAB9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9200);
  }

  return result;
}

unint64_t sub_1D9031EA8()
{
  result = qword_1ECAB9208;
  if (!qword_1ECAB9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9208);
  }

  return result;
}

unint64_t sub_1D9031F00()
{
  result = qword_1ECAB9210;
  if (!qword_1ECAB9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9210);
  }

  return result;
}

unint64_t sub_1D9031F58()
{
  result = qword_1ECAB9218;
  if (!qword_1ECAB9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9218);
  }

  return result;
}

unint64_t sub_1D9031FB0()
{
  result = qword_1ECAB9220;
  if (!qword_1ECAB9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9220);
  }

  return result;
}

unint64_t sub_1D9032008()
{
  result = qword_1ECAB9228;
  if (!qword_1ECAB9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9228);
  }

  return result;
}

unint64_t sub_1D9032060()
{
  result = qword_1ECAB9230;
  if (!qword_1ECAB9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9230);
  }

  return result;
}

unint64_t sub_1D90320B8()
{
  result = qword_1ECAB9238;
  if (!qword_1ECAB9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9238);
  }

  return result;
}

uint64_t sub_1D903210C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D9032270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D3290 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90323E8()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1D903240C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D90324DC(uint64_t a1)
{
  v2 = sub_1D90327D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9032518(uint64_t a1)
{
  v2 = sub_1D90327D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChapterRelationshipContainer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ChapterRelationshipContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ChapterRelationshipContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9240, &qword_1D91A9460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90327D0();
  sub_1D9179F1C();
  v14 = *(v3 + 16);
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9250, &qword_1D91A9468);
  sub_1D9032B44(&qword_1ECAB9258, &qword_1ECAB9260);
  sub_1D91799FC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    HIBYTE(v13) = 1;
    type metadata accessor for ChapterRelationshipContainerMetaAssociations();
    sub_1D9032BE4(&qword_1ECAB9268, v11, type metadata accessor for ChapterRelationshipContainerMetaAssociations);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D90327D0()
{
  result = qword_1ECAB9248;
  if (!qword_1ECAB9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9248);
  }

  return result;
}

uint64_t ChapterRelationshipContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ChapterRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t *ChapterRelationshipContainer.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9270, &qword_1D91A9470);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90327D0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9250, &qword_1D91A9468);
    v15 = 0;
    sub_1D9032B44(&qword_1ECAB9278, &qword_1ECAB9280);
    v11 = v14;
    sub_1D91798FC();
    v1[2] = v16;
    type metadata accessor for ChapterRelationshipContainerMetaAssociations();
    v15 = 1;
    sub_1D9032BE4(&qword_1ECAB9288, v12, type metadata accessor for ChapterRelationshipContainerMetaAssociations);
    sub_1D917989C();
    (*(v10 + 8))(v8, v11);
    v1[3] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D9032B44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9250, &qword_1D91A9468);
    sub_1D9032BE4(a2, 255, type metadata accessor for ServerChapter);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9032BE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D9032CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9032D24(uint64_t a1)
{
  v2 = sub_1D9032F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9032D60(uint64_t a1)
{
  v2 = sub_1D9032F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ChapterRelationshipContainerMetaAssociations.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9290, &qword_1D91A9478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9032F00();
  sub_1D9179F1C();
  v11[15] = *(v2 + 16);
  sub_1D9030B58();
  sub_1D917999C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D9032F00()
{
  result = qword_1ECAB9298;
  if (!qword_1ECAB9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9298);
  }

  return result;
}

uint64_t ChapterRelationshipContainerMetaAssociations.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ChapterRelationshipContainerMetaAssociations.init(from:)(a1);
  return v2;
}

uint64_t *ChapterRelationshipContainerMetaAssociations.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB92A0, &qword_1D91A9480);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9032F00();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1D9030EE4();
    sub_1D917989C();
    (*(v12 + 8))(v8, v5);
    *(v1 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D903318C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1D90332E0()
{
  result = qword_1ECAB92A8;
  if (!qword_1ECAB92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92A8);
  }

  return result;
}

unint64_t sub_1D9033338()
{
  result = qword_1ECAB92B0;
  if (!qword_1ECAB92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92B0);
  }

  return result;
}

unint64_t sub_1D9033390()
{
  result = qword_1ECAB92B8;
  if (!qword_1ECAB92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92B8);
  }

  return result;
}

unint64_t sub_1D90333E8()
{
  result = qword_1ECAB92C0;
  if (!qword_1ECAB92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92C0);
  }

  return result;
}

unint64_t sub_1D9033440()
{
  result = qword_1ECAB92C8;
  if (!qword_1ECAB92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92C8);
  }

  return result;
}

unint64_t sub_1D9033498()
{
  result = qword_1ECAB92D0;
  if (!qword_1ECAB92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB92D0);
  }

  return result;
}

uint64_t sub_1D90334FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D9179ACC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9033574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D90334FC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D90335AC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D8E3A3FC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D90335E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9033638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ServerGenericResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v13[1] = a2[2];
  v14 = v5;
  type metadata accessor for ServerGenericResponse.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D9179A1C();
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *v2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D9179F1C();
  v17 = v10;
  sub_1D91786FC();
  v16 = v14;
  swift_getWitnessTable();
  sub_1D91799FC();

  return (*(v15 + 8))(v9, v6);
}

uint64_t ServerGenericResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = a3;
  v15 = a2;
  type metadata accessor for ServerGenericResponse.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D917992C();
  v13 = *(v5 - 8);
  v6 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EEC();
  if (!v3)
  {
    v11 = v13;
    v10 = v14;
    sub_1D91786FC();
    v16 = v15;
    swift_getWitnessTable();
    sub_1D91798FC();
    (*(v11 + 8))(v8, v5);
    *v10 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9033A50@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[2];
  v4 = a2[4];
  return ServerGenericResponse.init(from:)(a1, a2[3], a3);
}

uint64_t ServerPodcast.feedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 104);
  if (!v2)
  {

    return 0;
  }

  if (v2[3])
  {
    v3 = v2[2];
    v4 = v2[3];
  }

  else
  {
    v3 = v2[4];
    v6 = v2[5];
  }

  return v3;
}

uint64_t ServerPodcast.category.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 208);
  if (!v2 || !v2[2])
  {
    return 0;
  }

  v4 = v2[4];
  v3 = v2[5];

  return v4;
}

BOOL ServerPodcast.hasEpisodes.getter()
{
  v1 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v5 = *(v0 + v1);
    }

    v3 = sub_1D917935C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

id sub_1D9033D38(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v2)
  {
    if (*(v2 + 24))
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _s18PodcastsFoundation13ServerPodcastC6authorSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t ServerPodcast.resolvedFeedURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 72);
  v3 = *(v1 + 80);

  return v2;
}

uint64_t ServerPodcast.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 88);
  v3 = *(v1 + 96);

  return v2;
}

uint64_t ServerPodcast.isExplicit.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v1)
  {
    if (!*(v1 + 184) || (v2 = *(v1 + 176), v3 = *(v1 + 184), , v4 = sub_1D917980C(), , v4 != 1))
    {
      LOBYTE(v4) = sub_1D9179ACC();
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t ServerPodcast.isNotSubscribable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v1)
  {
    return (*(v1 + 48) != 2) & (*(v1 + 48) ^ 1u);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerPodcast.shareURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t ServerPodcast.showType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 136);
  v3 = *(v1 + 144);

  return v2;
}

uint64_t ServerPodcast.webpageURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 192);
  v3 = *(v1 + 200);

  return v2;
}

uint64_t ServerPodcast.podcastStoreId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);

  return v1;
}

uint64_t ServerPodcast.displayType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  v4 = sub_1D917980C();

  if (v4 == 2)
  {
    return 0x646972627968;
  }

  if (v4 == 1)
  {
    return 1684627824;
  }

  return 1701147238;
}

uint64_t ServerPodcast.offers.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 224);
  if (!v2)
  {
    return 0;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA72AA90](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          return 0;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_23:
          v3 = sub_1D917935C();
          goto LABEL_5;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      v12 = v6;
      sub_1D903472C(&v12, &v11);

      if (v11)
      {
        MEMORY[0x1DA729B90](v8);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v5 = v13;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v5;
}

void sub_1D903472C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(IMPodcastOffer) init];
  v5 = v3[4];
  v6 = v3[5];

  v7 = sub_1D917980C();

  if (v7 > 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v4 setKind_];

  v9 = v3[2];
  v10 = v3[3];

  v11 = sub_1D917980C();

  if (v11 > 3)
  {
    v13 = 0;
  }

  else
  {
    v12 = *&aStdq_11[8 * v11];
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v4 setPriceType_];

  *a2 = v4;
}

uint64_t ServerPodcast.uberBackgroundImageURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 48);
  v4 = *(v3 + 56);

  return v5;
}

uint64_t ServerPodcast.uberBackgroundJoeColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 64);
  v4 = *(v3 + 72);

  return v5;
}

uint64_t ServerPodcast.uberArtworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 80);
  v4 = *(v3 + 88);

  return v5;
}

uint64_t ServerPodcast.uberArtworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 96);
  v4 = *(v3 + 104);

  return v5;
}

uint64_t ServerPodcast.uberArtworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 112);
  v4 = *(v3 + 120);

  return v5;
}

uint64_t ServerPodcast.uberArtworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 128);
  v4 = *(v3 + 136);

  return v5;
}

id sub_1D9034E78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ServerPodcast.imageURL.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v5 && *(v5 + 112))
  {
    v6 = *(v5 + 112);

    ServerArtwork.urlResolved.getter(v4);

    v7 = sub_1D9176C2C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      v10 = sub_1D9176ACC();
      (*(v8 + 8))(v4, v7);
      return v10;
    }

    sub_1D8E677CC(v4);
  }

  return 0;
}

uint64_t ServerPodcast.artworkTemplateURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return v3;
}

uint64_t ServerPodcast.artworkPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return v3;
}

uint64_t ServerPodcast.artworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return v3;
}

uint64_t ServerPodcast.artworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return v3;
}

uint64_t ServerPodcast.artworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 112);
  v4 = *(v2 + 120);

  return v3;
}

uint64_t ServerPodcast.artworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);

  return v3;
}

id ServerPodcast.channelItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x1DA72AA90](0, v3);

    return v5;
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v3 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ServerPodcast.showSpecificUpsellCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 232);
  v3 = *(v1 + 240);

  return v2;
}

id ServerPodcast.categories.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  sub_1D8F614D8(v4);

  v5 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v6 = sub_1D91785DC();

  v7 = [v5 initWithArray_];

  return v7;
}

unint64_t sub_1D90358A0()
{
  result = qword_1EDCD0A08;
  if (!qword_1EDCD0A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0A08);
  }

  return result;
}

uint64_t ServerPodcastEpisode.author.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t ServerPodcastEpisode.category.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 248);
  if (!v1 || !v1[2])
  {
    return 0;
  }

  v2 = v1[4];
  v3 = v1[5];

  return v2;
}

uint64_t ServerPodcastEpisode.isExplicit.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (!*(v1 + 224) || (v2 = *(v1 + 216), v3 = *(v1 + 224), , v4 = sub_1D917980C(), , v4 != 1))
  {
    LOBYTE(v4) = sub_1D9179ACC();
  }

  return v4 & 1;
}

uint64_t ServerPodcastEpisode.guid.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 320);
  v3 = *(v1 + 328);

  return v2;
}

uint64_t ServerPodcastEpisode.itemDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (v1[23])
  {
    v2 = v1[22];
    v3 = v1[23];
  }

  else
  {
    v4 = v1[14];
    if (v4)
    {
      v2 = *(v4 + 16);
      v5 = *(v4 + 24);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t ServerPodcastEpisode.firstTimeAvailableAsPaid.getter@<X0>(char *a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    v6 = 2;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v6, a1);
  }

  else
  {
    v4 = sub_1D9176E3C();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t ServerPodcastEpisode.firstTimeAvailableAsFree.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v3 + 208))
  {
    v4 = *(v3 + 208);

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(a1);
  }

  else
  {
    v6 = sub_1D9176E3C();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t ServerPodcastEpisode.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);

  return v2;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional ServerPodcastEpisode.mediaKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v4 = *(v3 + 280);
  if (v4)
  {
    v5 = *(v3 + 272);
    v6 = *(v3 + 280);

    v7._countAndFlagsBits = v5;
    v7._object = v4;
    result.value = PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v7).value;
    v9 = v10;
    if (v10 == 5)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t ServerPodcastEpisode.itunesTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return v2;
}

uint64_t ServerPodcastEpisode.itemSummary.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 112);
  if (v1)
  {
    if (v1[3])
    {
      v2 = v1[2];
      v3 = v1[3];
    }

    else
    {
      v2 = v1[4];
      v4 = v1[5];
    }
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t ServerPodcastEpisode.seasonNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 360))
  {
    return 0;
  }

  else
  {
    return *(v1 + 352);
  }
}

uint64_t ServerPodcastEpisode.episodeNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 344))
  {
    return 0;
  }

  else
  {
    return *(v1 + 336);
  }
}

id sub_1D90366F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ServerPodcastEpisode.episodeType.getter()
{
  v1 = 1819047270;
  v2 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 168))
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);

    v5 = sub_1D917980C();

    if (v5 == 2)
    {
      return 0x73756E6F62;
    }

    else if (v5 == 1)
    {
      return 0x72656C69617274;
    }
  }

  return v1;
}

uint64_t ServerPodcastEpisode.webpageURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);

  return v2;
}

uint64_t ServerPodcastEpisode.feedURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

uint64_t ServerPodcastEpisode.episodeStoreId.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v2 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id + 8);

  return v1;
}

uint64_t ServerPodcastEpisode.priceType.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v2);

  return *&aStdq_12[8 * v2];
}

uint64_t ServerPodcastEpisode.entitledPriceType.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v2);

  return *&aStdq_12[8 * v2];
}

double sub_1D9036B84(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);
  v4 = v3;
  v6 = v5;

  result = v4 / 1000.0;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

double sub_1D9036C08@<D0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v6);
  v2 = v1;
  v4 = v3;

  result = v2 / 1000.0;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

id sub_1D9036C98(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v7);
  v4 = v3;

  if (v4)
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTemplateURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 48);
  v6 = *(v4 + 56);

  return v5;
}

double ServerPodcastEpisode.artworkWidth.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (!v2 || (v1[15] == 0x65646F73697065 ? (v3 = v2 == 0xE700000000000000) : (v3 = 0), v3 || (sub_1D9179ACC())) && (v4 = v1[17]) != 0 && *(v4 + 24) != 1)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
  }
}

double ServerPodcastEpisode.artworkHeight.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (!v2 || (v1[15] == 0x65646F73697065 ? (v3 = v2 == 0xE700000000000000) : (v3 = 0), v3 || (sub_1D9179ACC())) && (v4 = v1[17]) != 0 && *(v4 + 40) != 1)
  {
    return *(v4 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t ServerPodcastEpisode.artworkBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 64);
  v6 = *(v4 + 72);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextPrimaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 80);
  v6 = *(v4 + 88);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextSecondaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 96);
  v6 = *(v4 + 104);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextTertiaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 112);
  v6 = *(v4 + 120);

  return v5;
}

uint64_t ServerPodcastEpisode.artworkTextQuaternaryColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v2 = v1[16];
  if (v2)
  {
    v3 = v1[15] == 0x65646F73697065 && v2 == 0xE700000000000000;
    if (!v3 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v1[17];
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 128);
  v6 = *(v4 + 136);

  return v5;
}

id sub_1D903728C(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, &v9);
  v5 = v4;

  if (v5)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1D903733C@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v5);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v6);
  v3 = v2;

  return v3;
}

id sub_1D90373B0(void *a1)
{
  v1 = a1;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v2, &v8);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v3, &v9);
  v5 = v4;

  if (v5)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1D9037460@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v5);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v6);
  v3 = v2;

  return v3;
}

uint64_t sub_1D90374FC@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v4);

  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v1, &v5);

  v2 = 0x656C707061;
  if (v5)
  {
    v2 = 0x72656469766F7270;
  }

  if (v5 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id ServerPodcastEpisode.chapters.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB8]) init];
  }

  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB8]) init];
  }

  v4 = *(v3 + 16);

  sub_1D8F614F0(v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v7 = sub_1D91785DC();

  v8 = [v6 initWithArray_];

  return v8;
}

id sub_1D90376E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ServerPodcastEpisode.chapterSource.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (v5 == 2)
  {
    return 0;
  }

  if (v5)
  {
    return 0x72656469766F7270;
  }

  return 0x656C707061;
}

uint64_t ServerPodcastEpisode.priceTypeIsPSUB.getter@<X0>(Swift::tuple_priceType_PodcastsFoundation_PriceType_assetUrl_String_optional_durationInMilliseconds_Double_optional *a1@<X8>)
{
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(a1, &v3);

  if (v3 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D9179ACC();
  }

  return v1 & 1;
}

uint64_t ServerPodcastEpisode.isRestricted.getter()
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
    if (!*(v3 + 224) || (v4 = *(v3 + 216), v5 = *(v3 + 224), , v6 = sub_1D917980C(), , v6 != 1))
    {
      LOBYTE(v6) = sub_1D9179ACC();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

Swift::Bool __swiftcall ServerPodcastEpisode.isEligibleSmartPlayEpisode()()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v1 + 168) && ((v2 = *(v1 + 160), v3 = *(v1 + 168), , v4 = sub_1D917980C(), , v4 == 1) || v4 == 2))
  {
    v5 = sub_1D9179ACC();
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void Array<A>.firstEligibleSmartPlayEpisode()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      while (1)
      {
        v4 = MEMORY[0x1DA72AA90](v3, a1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v6 = *(v4 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
        if (!*(v6 + 168))
        {
          goto LABEL_23;
        }

        v7 = *(v6 + 160);
        v8 = *(v6 + 168);

        v9 = sub_1D917980C();

        if (v9 != 1 && v9 != 2)
        {
          goto LABEL_23;
        }

        v10 = sub_1D9179ACC();

        if (v10)
        {
          return;
        }

        swift_unknownObjectRelease();
        ++v3;
        if (v5 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v12)
      {
        v13 = *v11;
        v14 = *(*v11 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
        if (!*(v14 + 168))
        {
          v13;
LABEL_23:

          return;
        }

        v15 = *(v14 + 160);
        v16 = v13;

        v17 = sub_1D917980C();

        if (v17 != 1 && v17 != 2)
        {
          goto LABEL_23;
        }

        v18 = sub_1D9179ACC();

        if (v18)
        {
          return;
        }

        --v12;
        ++v11;
        if (!--i)
        {
LABEL_19:
          if ((a1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA72AA90](0, a1);
          }

          else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v19 = *(a1 + 32);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }
    }

    __break(1u);
LABEL_26:
    ;
  }
}

void ServerPodcastEpisode.transcriptRequestInformation()(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:
    v2 = 0;
    goto LABEL_30;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x1DA72AA90](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v2 = *(v9 + 32);
  }

  v10 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_30;
  }

  v9 = *(v11 + 16);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_57:
  if (sub_1D917935C())
  {
LABEL_12:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x1DA72AA90](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v12 = *(v9 + 32);
    }

    v13 = *(*&v12[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v19 = [v1 freeTranscriptIdentifier];
      if (v19)
      {
        v20 = v19;
        v16 = sub_1D917820C();
        v18 = v21;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v22 = [v1 freeTranscriptProvider];
      if (!v22)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = [v1 entitledTranscriptIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1D917820C();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v22 = [v1 entitledTranscriptProvider];
      if (!v22)
      {
LABEL_27:

        goto LABEL_38;
      }
    }

    v23 = v22;
    sub_1D917820C();
    v25 = v24;

    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_30:
  v26 = [v1 freeTranscriptIdentifier];
  if (v26)
  {
    v27 = v26;
    v16 = sub_1D917820C();
    v18 = v28;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v29 = [v1 freeTranscriptProvider];
  if (!v29)
  {
LABEL_38:
    v25 = 0;
    if (!v18)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v30 = v29;
  sub_1D917820C();
  v25 = v31;

  if (!v18)
  {
LABEL_39:

    *(a1 + 73) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

LABEL_35:
  if (!v25)
  {
    goto LABEL_39;
  }

  v48 = v16;
  v32 = [v1 episodeStoreId];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D917820C();
    v46 = v35;
  }

  else
  {
    v46 = 0xE100000000000000;
    v34 = 48;
  }

  v36 = [v1 title];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1D917820C();
    v40 = v39;

    if (v2)
    {
      goto LABEL_43;
    }

LABEL_46:
    v41 = v2;
LABEL_48:
    v43 = 0;
    goto LABEL_49;
  }

  v38 = 0;
  v40 = 0;
  if (!v2)
  {
    goto LABEL_46;
  }

LABEL_43:
  v41 = v2;
  v42 = *&v2[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (!v42)
  {
    v2 = 0;
    goto LABEL_48;
  }

  v2 = *(v42 + 88);
  v43 = *(v42 + 96);

LABEL_49:
  v44 = sub_1D917980C();

  if (v44 == 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  if (!v44)
  {
    v45 = 0;
  }

  *a1 = v34;
  *(a1 + 8) = v47;
  *(a1 + 16) = v38;
  *(a1 + 24) = v40;
  *(a1 + 32) = v48;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v2;
  *(a1 + 80) = v43;
  *(a1 + 88) = v45;
}

id ServerPodcastEpisode.podcast.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1DA72AA90](0, v6);

    return v8;
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ServerPodcastEpisode.playhead.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5 >> 62)
      {
        result = sub_1D917935C();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          return result;
        }
      }

      if ((v5 & 0xC000000000000001) != 0)
      {

        v6 = MEMORY[0x1DA72AA90](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(v5 + 32);
      }

      v7 = *(v6 + 64);

      v8 = *(v7 + 16);
    }
  }

  return result;
}

uint64_t ServerPodcastEpisode.timeRemaining.getter()
{
  [v0 duration];
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5 >> 62)
      {
        result = sub_1D917935C();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          return result;
        }
      }

      if ((v5 & 0xC000000000000001) != 0)
      {

        v6 = MEMORY[0x1DA72AA90](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(v5 + 32);
      }

      v7 = *(v6 + 64);

      v8 = *(v7 + 16);
    }
  }

  return result;
}

uint64_t ServerPodcastEpisode.isPlayed.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (v4 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1DA72AA90](0, v4);

    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

LABEL_8:
    v7 = *(v6 + 64);

    v8 = *(v7 + 24);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ServerPodcastEpisode.isSerialShowTypeInFeed.getter()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 2;
  }

  v3 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    return 2;
  }

  v5 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return 2;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return 2;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x1DA72AA90](0, v6);

    v9 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);

    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_9;
    }

    return 2;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v8 = *(v6 + 32);
  v9 = *(v8 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v9)
  {
    return 2;
  }

  v10 = *(v8 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);

LABEL_9:
  if (*(v9 + 144))
  {
    v11 = *(v9 + 136);
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_opt_self() showTypeFromString_];

  return v13 == 2;
}

uint64_t ChannelAttributes.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t ServerChannel.href.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href + 8);

  return v1;
}

uint64_t ServerChannel.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

  return v1;
}

uint64_t ServerChannel.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type + 8);

  return v1;
}

uint64_t sub_1D90389CC()
{
  v1 = *v0;
  v2 = 1717924456;
  v3 = 1701869940;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9038A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D903F5B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9038A84(uint64_t a1)
{
  v2 = sub_1D9038E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9038AC0(uint64_t a1)
{
  v2 = sub_1D9038E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ServerChannel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerChannel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9038BB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9300, &qword_1D91A9A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9038E94();
  sub_1D9179F1C();
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href);
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href + 8);
  LOBYTE(v21) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    v14 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);
    LOBYTE(v21) = 1;
    sub_1D91799BC();
    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type);
    v16 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type + 8);
    LOBYTE(v21) = 2;
    sub_1D91799BC();
    v21 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
    HIBYTE(v20) = 3;
    type metadata accessor for ChannelAttributes();
    sub_1D903E83C(&qword_1ECAB20E0, v17, type metadata accessor for ChannelAttributes);
    sub_1D91799FC();
    v21 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships);
    HIBYTE(v20) = 4;
    type metadata accessor for ChannelRelationships();
    sub_1D903E83C(&qword_1ECAB1E00, v18, type metadata accessor for ChannelRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9038E94()
{
  result = qword_1EDCD5498;
  if (!qword_1EDCD5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5498);
  }

  return result;
}

id ServerChannel.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9308, &unk_1D91A9A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9038E94();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ServerChannel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v27) = 0;
    v11 = sub_1D91798BC();
    v13 = &v1[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_href];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v27) = 1;
    v15 = sub_1D91798BC();
    v16 = &v1[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v27) = 2;
    v18 = sub_1D91798BC();
    v19 = &v1[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_type];
    *v19 = v18;
    v19[1] = v20;
    type metadata accessor for ChannelAttributes();
    v26 = 3;
    sub_1D903E83C(&qword_1EDCD4B18, v21, type metadata accessor for ChannelAttributes);
    sub_1D91798FC();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] = v27;
    type metadata accessor for ChannelRelationships();
    v26 = 4;
    sub_1D903E83C(qword_1EDCD3A38, v22, type metadata accessor for ChannelRelationships);
    sub_1D917989C();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships] = v27;
    v23 = type metadata accessor for ServerChannel();
    v25.receiver = v1;
    v25.super_class = v23;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

id sub_1D9039390@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ServerChannel());
  result = ServerChannel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

PodcastsFoundation::ChannelAttributes::DisplayType_optional __swiftcall ChannelAttributes.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PodcastsFoundation::ChannelAttributes::SubscriptionType_optional __swiftcall ChannelAttributes.SubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChannelAttributes.SubscriptionType.rawValue.getter()
{
  v1 = 0x687475616FLL;
  if (*v0 != 1)
  {
    v1 = 0x7374736163646F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_1D90395CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x687475616FLL;
  if (v2 != 1)
  {
    v4 = 0x7374736163646F70;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1936748641;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x687475616FLL;
  if (*a2 != 1)
  {
    v8 = 0x7374736163646F70;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1936748641;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90396C0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9039758()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90397DC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D903987C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x687475616FLL;
  if (v2 != 1)
  {
    v5 = 0x7374736163646F70;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1936748641;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ChannelAttributes.showCount.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ChannelAttributes.availableShowCount.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ChannelAttributes.subscriptionEnabledDate.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_1D90399EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  if (*(v1 + 88))
  {
    v7 = *(v1 + 80);
    if (qword_1EDCD09F8 != -1)
    {
      v16 = *(v1 + 80);
      swift_once();
    }

    v8 = qword_1EDCD0A00;
    v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1D9176DFC();

      v11 = sub_1D9176E3C();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_1D9176E3C();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1D8E964A4(v6, a1);
  }

  else
  {
    v12 = sub_1D9176E3C();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t ChannelAttributes.subscriptionName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ChannelAttributes.backgroundSwatch.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t ChannelAttributes.url.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t sub_1D9039C98()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 120))
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v4 = v1;

  sub_1D8E3025C(v2);
  return v4;
}

uint64_t sub_1D9039D04@<X0>(char *a1@<X8>)
{
  if (*(v1 + 152))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 120);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v15 = v2;

  sub_1D8E3025C(v4);
  if (v15 >> 62)
  {
LABEL_27:
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_9:
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = v6;
        while ((v15 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = v8 + 1;
          v9 = *(*(v15 + 32 + 8 * v8) + 208);
          if (v9 != 4)
          {
            goto LABEL_19;
          }

LABEL_15:
          v8 = v6;
          if (v6 == v5)
          {
            goto LABEL_29;
          }
        }

        result = MEMORY[0x1DA72AA90](v8, v15);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          return result;
        }

        v9 = *(result + 208);
        swift_unknownObjectRelease();
        if (v9 == 4)
        {
          goto LABEL_15;
        }

LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D8ECD828(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1D8ECD828((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v7[v12 + 32] = v9;
        if (v6 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_29:

  if (*(v7 + 2))
  {
    v13 = v7[32];
  }

  else
  {
    v13 = 4;
  }

  *a1 = v13;
  return result;
}

unint64_t sub_1D9039EE4(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6E756F43776F6873;
      break;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x5479616C70736964;
      break;
    case 6:
      result = 0x7263736275537369;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x777472416F676F6CLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 7107189;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D903A0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D903F768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D903A0DC(uint64_t a1)
{
  v2 = sub_1D903E398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D903A118(uint64_t a1)
{
  v2 = sub_1D903E398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ChannelAttributes.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[19];

  v11 = v0[21];

  return v0;
}