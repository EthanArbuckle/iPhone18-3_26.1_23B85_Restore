uint64_t sub_226F052A4(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8210, type metadata accessor for MTIDOptionKey);
  v3 = sub_226F053F0(&qword_27D7B8218, type metadata accessor for MTIDOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F053F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F05480(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8360, type metadata accessor for AVContentKeySessionServerPlaybackContextOption);
  v3 = sub_226F053F0(&qword_27D7B8368, type metadata accessor for AVContentKeySessionServerPlaybackContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F0553C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22766BFD0();

  *a2 = v5;
  return result;
}

uint64_t sub_226F05584(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8390, type metadata accessor for AVMediaCharacteristic);
  v3 = sub_226F053F0(&qword_27D7B8398, type metadata accessor for AVMediaCharacteristic);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_226F057CC()
{
  v1 = *v0;
  v2 = sub_22766C000();
  v3 = MEMORY[0x22AA984E0](v2);

  return v3;
}

uint64_t sub_226F05808()
{
  v1 = *v0;
  sub_22766C000();
  sub_22766C100();
}

uint64_t sub_226F0585C()
{
  v1 = *v0;
  sub_22766C000();
  sub_22766D370();
  sub_22766C100();
  v2 = sub_22766D3F0();

  return v2;
}

uint64_t sub_226F058D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22766C000();
  v6 = v5;
  if (v4 == sub_22766C000() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22766D190();
  }

  return v9 & 1;
}

unint64_t sub_226F05E24()
{
  result = qword_281399188;
  if (!qword_281399188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399188);
  }

  return result;
}

uint64_t sub_226F05EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_227669BA0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_226F05F4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      swift_getKeyPath();
      v6 = sub_227664C10();
      v8 = v7;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v27 = v6;
      v28 = v8;
      sub_226F06498();

      v9 = sub_22766C820();
      sub_226ED25F8(&v27, v25);
      v10 = v26;
      if (!v26)
      {
        v21 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      swift_getKeyPath();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v27 = a1;
      v28 = a2;
      sub_226F06498();
      sub_226F04958(a1, a2, 2);

      v9 = sub_22766C820();
      sub_226ED25F8(&v27, v25);
      v10 = v26;
      if (!v26)
      {
        v21 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    swift_getKeyPath();
    v11 = sub_227663FB0();
    v13 = v12;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v27 = v11;
    v28 = v13;
    sub_226F06498();

    v9 = sub_22766C820();
    sub_226ED25F8(&v27, v25);
    v10 = v26;
    if (!v26)
    {
      v21 = 0;
      goto LABEL_12;
    }
  }

  v15 = __swift_project_boxed_opaque_existential_0(v25, v26);
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v18);
  v21 = sub_22766D170();
  (*(v16 + 8))(v20, v10);
  __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_12:
  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226EBC888(&v27);
  return v23;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_226F06498()
{
  result = qword_281398B40;
  if (!qword_281398B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B40);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_226F06518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_226F06560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226F065C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v138 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v136 = *(v5 - 8);
  v137 = v5;
  v6 = *(v136 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v132 = v8;
  v133 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = &v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = *(v127 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v13;
  MEMORY[0x28223BE20](v12);
  v121 = &v115 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v122 = *(v123 - 8);
  v15 = *(v122 + 64);
  v16 = MEMORY[0x28223BE20](v123);
  v119 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v17;
  MEMORY[0x28223BE20](v16);
  v118 = &v115 - v18;
  v19 = sub_2276665E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227664D30();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD580, &unk_22767E410);
  v28 = *(v117 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v117);
  v116 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v115 - v31;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v129 = *(v126 - 8);
  v33 = *(v129 + 64);
  v34 = MEMORY[0x28223BE20](v126);
  v131 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v134 = &v115 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v140 = &v115 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v147 = &v115 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v146 = &v115 - v43;
  v130 = v44;
  MEMORY[0x28223BE20](v42);
  v145 = &v115 - v45;
  v139 = swift_allocObject();
  *(v139 + 16) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  v143 = swift_allocBox();
  v47 = v46;
  v48 = sub_227666C80();
  (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  v141 = swift_allocBox();
  v50 = v49;
  v51 = sub_2276666A0();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  v142 = swift_allocBox();
  v53 = v52;
  v54 = type metadata accessor for MetricServiceSubscriptionState();
  (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
  v144 = a1;
  sub_226F09804(a1, v27, MEMORY[0x277D50F70]);
  if ((*(v20 + 48))(v27, 1, v19) == 1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    v55 = off_283AB27A8;
    type metadata accessor for PrivacyPreferenceDataSource();
    v55();
  }

  else
  {
    (*(v20 + 32))(v23, v27, v19);
    v56 = sub_2276665D0();
    *(swift_allocObject() + 16) = v56;
    sub_227669280();
    (*(v20 + 8))(v23, v19);
  }

  v57 = swift_allocObject();
  v58 = v139;
  *(v57 + 16) = sub_226F09590;
  *(v57 + 24) = v58;
  v59 = v116;
  v60 = v117;
  (*(v28 + 16))(v116, v32, v117);
  v61 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v62 = swift_allocObject();
  (*(v28 + 32))(v62 + v61, v59, v60);
  v63 = (v62 + ((v29 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v63 = sub_226F095D8;
  v63[1] = v57;

  sub_227669270();
  (*(v28 + 8))(v32, v60);
  v64 = v118;
  sub_226F074A0(v144, v118);
  v65 = swift_allocObject();
  v66 = v143;
  *(v65 + 16) = sub_226F09608;
  *(v65 + 24) = v66;
  v67 = v122;
  v68 = v119;
  v69 = v123;
  (*(v122 + 16))(v119, v64, v123);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v71 = (v120 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v67 + 32))(v72 + v70, v68, v69);
  v73 = (v72 + v71);
  *v73 = sub_226F09648;
  v73[1] = v65;

  sub_227669270();
  (*(v67 + 8))(v64, v69);
  v74 = v121;
  sub_226F0786C(v144, v121);
  v75 = swift_allocObject();
  v76 = v141;
  *(v75 + 16) = sub_226F09678;
  *(v75 + 24) = v76;
  v78 = v127;
  v77 = v128;
  v79 = v125;
  (*(v127 + 16))(v125, v74, v128);
  v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v81 = (v124 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v78 + 32))(v82 + v80, v79, v77);
  v83 = (v82 + v81);
  *v83 = sub_226F096B8;
  v83[1] = v75;

  sub_227669270();
  (*(v78 + 8))(v74, v77);
  v84 = v135;
  sub_226F07D80(v144, v135);
  v85 = swift_allocObject();
  v86 = v142;
  *(v85 + 16) = sub_226F096E8;
  *(v85 + 24) = v86;
  v88 = v136;
  v87 = v137;
  v89 = v133;
  (*(v136 + 16))(v133, v84, v137);
  v90 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v91 = (v132 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  (*(v88 + 32))(v92 + v90, v89, v87);
  v93 = (v92 + v91);
  *v93 = sub_226F09704;
  v93[1] = v85;

  v94 = v140;
  sub_227669270();
  (*(v88 + 8))(v84, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v95 = v129;
  v96 = *(v129 + 72);
  v97 = *(v129 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_2276707E0;
  v99 = v98 + ((v97 + 32) & ~v97);
  v100 = *(v95 + 16);
  v101 = v126;
  v100(v99, v145, v126);
  v100(v99 + v96, v146, v101);
  v100(v99 + 2 * v96, v147, v101);
  v100(v99 + 3 * v96, v94, v101);
  sub_226EA1CF4();
  v102 = sub_22766C950();
  sub_227669A50();
  v103 = v134;
  sub_227669250();

  v104 = swift_allocObject();
  v105 = v143;
  v104[2] = v139;
  v104[3] = v105;
  v106 = v142;
  v104[4] = v141;
  v104[5] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_226F09734;
  *(v107 + 24) = v104;
  v108 = v131;
  v100(v131, v103, v101);
  v109 = (v97 + 16) & ~v97;
  v110 = (v130 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  (*(v95 + 32))(v111 + v109, v108, v101);
  v112 = (v111 + v110);
  *v112 = sub_226F09740;
  v112[1] = v107;
  type metadata accessor for MetricRecordingContext();

  sub_227669270();
  v113 = *(v95 + 8);
  v113(v103, v101);
  v113(v140, v101);
  v113(v147, v101);
  v113(v146, v101);
  v113(v145, v101);
}

uint64_t sub_226F074A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = sub_227666C80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - v6;
  v7 = sub_2276665E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227664D30();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v31, v20, MEMORY[0x277D50F70]);
  if ((*(v8 + 48))(v20, 1, v7) == 1)
  {
    v21 = *__swift_project_boxed_opaque_existential_0(v28, v28[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v13 + 8))(v16, v12);
    return sub_227360A74(v32);
  }

  else
  {
    (*(v8 + 32))(v11, v20, v7);
    v23 = v30;
    sub_2276665C0();
    v24 = v29;
    (*(v3 + 16))(v29, v23, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    sub_227669280();
    (*(v3 + 8))(v23, v2);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_226F0786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = sub_2276666A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - v6;
  v7 = sub_2276665E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227664D30();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v31, v20, MEMORY[0x277D50F70]);
  if ((*(v8 + 48))(v20, 1, v7) == 1)
  {
    v21 = *__swift_project_boxed_opaque_existential_0(v28, v28[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v13 + 8))(v16, v12);
    return sub_226EDD55C(v32);
  }

  else
  {
    (*(v8 + 32))(v11, v20, v7);
    v23 = v30;
    sub_2276665B0();
    v24 = v29;
    (*(v3 + 16))(v29, v23, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    sub_227669280();
    (*(v3 + 8))(v23, v2);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_226F07C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = swift_projectBox();
  v14 = a5(0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  swift_beginAccess();
  return sub_226F09BAC(v12, v13, a3, a4);
}

uint64_t sub_226F07D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v57 = type metadata accessor for MetricServiceSubscriptionState();
  v51 = *(v57 - 8);
  v2 = *(v51 + 64);
  v3 = MEMORY[0x28223BE20](v57);
  v52 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_227665AD0();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276665E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v17 = *(v50 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = sub_227664D30();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F09804(v55, v25, MEMORY[0x277D50F70]);
  if ((*(v13 + 48))(v25, 1, v12) == 1)
  {
    v26 = *__swift_project_boxed_opaque_existential_0((v47 + 40), *(v47 + 64));
    v27 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
    swift_beginAccess();
    sub_226E92A44(v26 + v27, &v60);
    if (v61)
    {
      sub_226E92AB8(&v60, v59);
      sub_226E91B50(v59, v58);
      v28 = swift_allocObject();
      sub_226E92AB8(v58, v28 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0(v59);
    }

    else
    {
      sub_226F099DC();
      v40 = swift_allocError();
      *v41 = 0;
      *(swift_allocObject() + 16) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
      sub_227669280();
    }

    v42 = v49;
    v43 = v50;
    (*(v17 + 16))(v49, v21, v50);
    v44 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v45 = swift_allocObject();
    (*(v17 + 32))(v45 + v44, v42, v43);
    v46 = (v45 + ((v18 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v46 = sub_226F08FD4;
    v46[1] = 0;
    sub_227669270();
    return (*(v17 + 8))(v21, v43);
  }

  else
  {
    (*(v13 + 32))(v16, v25, v12);
    v55 = v16;
    sub_2276665A0();
    if ((*(v54 + 48))(v8, 1, v9) == 1)
    {
      sub_226E97D1C(v8, &qword_27D7B8428, &qword_227675CB0);
      v29 = v53;
      swift_storeEnumTagMultiPayload();
      v30 = v52;
      sub_226F09804(v29, v52, type metadata accessor for MetricServiceSubscriptionState);
      v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v32 = swift_allocObject();
      sub_226F0986C(v30, v32 + v31, type metadata accessor for MetricServiceSubscriptionState);
      sub_227669280();
      sub_226F09914(v29, type metadata accessor for MetricServiceSubscriptionState);
    }

    else
    {
      v33 = v54;
      v34 = v48;
      (*(v54 + 32))(v48, v8, v9);
      v35 = v53;
      (*(v33 + 16))(v53, v34, v9);
      swift_storeEnumTagMultiPayload();
      v36 = v52;
      sub_226F09804(v35, v52, type metadata accessor for MetricServiceSubscriptionState);
      v37 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v38 = swift_allocObject();
      sub_226F0986C(v36, v38 + v37, type metadata accessor for MetricServiceSubscriptionState);
      sub_227669280();
      sub_226F09914(v35, type metadata accessor for MetricServiceSubscriptionState);
      (*(v33 + 8))(v48, v9);
    }

    return (*(v13 + 8))(v55, v12);
  }
}

uint64_t sub_226F085B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = swift_projectBox();
  sub_226F09804(a1, v5, type metadata accessor for MetricServiceSubscriptionState);
  v7 = type metadata accessor for MetricServiceSubscriptionState();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_226F09BAC(v5, v6, &qword_27D7B8418, &qword_227670878);
}

uint64_t sub_226F086DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_22766B390();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MetricRecordingContext();
  v61 = *(v74 - 8);
  v7 = *(v61 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8418, &qword_227670878);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v59 - v12;
  v66 = type metadata accessor for MetricServiceSubscriptionState();
  v65 = *(v66 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - v17;
  v19 = sub_2276666A0();
  v69 = *(v19 - 8);
  v70 = v19;
  v20 = *(v69 + 64);
  MEMORY[0x28223BE20](v19);
  v68 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v59 - v24;
  v26 = sub_227666C80();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v71 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_projectBox();
  v31 = swift_projectBox();
  v64 = swift_projectBox();
  swift_beginAccess();
  v32 = *(a1 + 16);
  if (v32 != 3)
  {
    swift_beginAccess();
    sub_226E93170(v30, v25, &qword_27D7B8408, &qword_2276852B0);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      v33 = &qword_27D7B8408;
      v34 = &qword_2276852B0;
      v35 = v25;
    }

    else
    {
      v36 = v71;
      (*(v27 + 32))(v71, v25, v26);
      swift_beginAccess();
      sub_226E93170(v31, v18, &qword_27D7B8410, &qword_227670870);
      v38 = v69;
      v37 = v70;
      if ((*(v69 + 48))(v18, 1, v70) == 1)
      {
        (*(v27 + 8))(v36, v26);
        v33 = &qword_27D7B8410;
        v34 = &qword_227670870;
        v35 = v18;
      }

      else
      {
        v39 = v68;
        (*(v38 + 32))(v68, v18, v37);
        v40 = v64;
        swift_beginAccess();
        v41 = v40;
        v42 = v67;
        sub_226E93170(v41, v67, &qword_27D7B8418, &qword_227670878);
        if ((*(v65 + 48))(v42, 1, v66) != 1)
        {
          v50 = v60;
          sub_226F0986C(v42, v60, type metadata accessor for MetricServiceSubscriptionState);
          v51 = v39;
          v52 = v74;
          v53 = *(v74 + 20);
          v54 = *(v27 + 16);
          v73 = v27;
          v55 = v63;
          v54(&v63[v53], v71, v26);
          (*(v38 + 16))(&v55[*(v52 + 24)], v51, v37);
          sub_226F09804(v50, &v55[*(v52 + 28)], type metadata accessor for MetricServiceSubscriptionState);
          *v55 = v32;
          v56 = v62;
          sub_226F09804(v55, v62, type metadata accessor for MetricRecordingContext);
          v57 = (*(v61 + 80) + 16) & ~*(v61 + 80);
          v58 = swift_allocObject();
          sub_226F0986C(v56, v58 + v57, type metadata accessor for MetricRecordingContext);
          sub_227669280();
          sub_226F09914(v55, type metadata accessor for MetricRecordingContext);
          sub_226F09914(v50, type metadata accessor for MetricServiceSubscriptionState);
          (*(v38 + 8))(v68, v37);
          return (*(v73 + 8))(v71, v26);
        }

        (*(v38 + 8))(v39, v37);
        (*(v27 + 8))(v71, v26);
        v33 = &qword_27D7B8418;
        v34 = &qword_227670878;
        v35 = v42;
      }
    }

    sub_226E97D1C(v35, v33, v34);
  }

  sub_22766A740();
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_226E8E000, v43, v44, "Metric recording missing required info, dropping click event", v45, 2u);
    MEMORY[0x22AA9A450](v45, -1, -1);
  }

  (*(v72 + 8))(v6, v73);
  v46 = sub_2276636A0();
  sub_226F09790();
  v47 = swift_allocError();
  (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D500C8], v46);
  *(swift_allocObject() + 16) = v47;
  return sub_227669280();
}

uint64_t sub_226F08FD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v6 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v33 - v12;
  v13 = sub_227667900();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  sub_2276678E0();
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  (*(v17 + 8))(v16, v18, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_226F09448;
  *(v19 + 24) = 0;
  v20 = v34;
  (*(v3 + 16))(v6, v8, v34);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v6, v20);
  v23 = (v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_226F09A30;
  v23[1] = v19;
  type metadata accessor for MetricServiceSubscriptionState();
  v24 = v33;
  sub_227669270();
  (*(v3 + 8))(v8, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226F094D0;
  *(v25 + 24) = 0;
  v26 = v35;
  v27 = v24;
  v28 = v37;
  (*(v9 + 16))(v35, v24, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v26, v28);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_226F09A60;
  v31[1] = v25;
  sub_227669270();
  (*(v9 + 8))(v27, v28);
  return (*(v38 + 8))(v36, v39);
}

uint64_t sub_226F09448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227665AD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for MetricServiceSubscriptionState();
  return swift_storeEnumTagMultiPayload();
}

id sub_226F094D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_226F09B58();
  if (sub_2276660E0())
  {
    type metadata accessor for MetricServiceSubscriptionState();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = a1;
    type metadata accessor for MetricServiceSubscriptionState();
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t sub_226F09590(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_226F09734@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_226F086DC(v1[2], a1);
}

uint64_t sub_226F09740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_226F09790()
{
  result = qword_28139BCC0;
  if (!qword_28139BCC0)
  {
    sub_2276636A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BCC0);
  }

  return result;
}

uint64_t sub_226F09804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F0986C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F09914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226F099DC()
{
  result = qword_28139B558;
  if (!qword_28139B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B558);
  }

  return result;
}

uint64_t sub_226F09A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_226F09B58()
{
  result = qword_28139B550;
  if (!qword_28139B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B550);
  }

  return result;
}

uint64_t sub_226F09BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_72Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t *sub_226F09D80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[27];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  v2 = v0[44];

  return v0;
}

uint64_t sub_226F09DE8()
{
  sub_226F09D80();

  return swift_deallocClassInstance();
}

uint64_t sub_226F09E40()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F09F0C, 0, 0);
}

uint64_t sub_226F09F0C()
{
  __swift_project_boxed_opaque_existential_0((v0[2] + 16), *(v0[2] + 40));
  v1 = off_283AB4FA0;
  type metadata accessor for AccountSyncStatusObserver();
  v1();
  v2 = sub_227664EE0();
  v4 = v3;
  if (v2 == sub_227664EE0() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_22766D190();

    if ((v7 & 1) == 0)
    {
LABEL_12:
      v17 = v0[5];
      v16 = v0[6];

      v18 = v0[1];

      return v18(0);
    }
  }

  sub_2276693D0();
  if (sub_227669390())
  {
    v8 = v0[6];
    sub_22766A6B0();
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "Account is in upgradable state, but the device is in demo mode. Not showing UpgradeUI.", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_12;
  }

  v20 = v0[5];
  sub_22766A6B0();
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226E8E000, v21, v22, "Account is in an upgradable state, checking if shown UpgradeUI before.", v23, 2u);
    MEMORY[0x22AA9A450](v23, -1, -1);
  }

  v25 = v0[4];
  v24 = v0[5];
  v27 = v0[2];
  v26 = v0[3];

  (*(v25 + 8))(v24, v26);
  v28 = v27[32];
  v29 = v27[33];
  __swift_project_boxed_opaque_existential_0(v27 + 29, v28);
  v30 = *(v29 + 24);

  v35 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[7] = v32;
  *v32 = v0;
  v32[1] = sub_226F0A2A8;
  v33 = v0[2];
  v34 = MEMORY[0x277D839B0];

  return (v35)(v0 + 9, sub_226F1974C, v33, v34, v28, v29);
}

uint64_t sub_226F0A2A8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226F0A438;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_226F0A3C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0A3C4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_226F0A438()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[8];

  return v4(0);
}

uint64_t sub_226F0A4B4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  result = sub_22712E360(a1);
  if (!v2)
  {
    if (result)
    {
      sub_22766A6B0();
      v19 = sub_22766B380();
      v20 = sub_22766C8B0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_226E8E000, v19, v20, "Device has shown UpgradeUI before. Not showing.", v21, 2u);
        MEMORY[0x22AA9A450](v21, -1, -1);
      }

      result = (*(v6 + 8))(v10, v5);
      v18 = 0;
    }

    else
    {
      sub_22766A6B0();
      v14 = sub_22766B380();
      v15 = sub_22766C8B0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_226E8E000, v14, v15, "Device hasn't shown UpgradeUI before. Showing.", v16, 2u);
        MEMORY[0x22AA9A450](v16, -1, -1);
      }

      (*(v6 + 8))(v12, v5);
      v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      result = sub_2275542CC(&unk_283A91898, v17[1], *(v17 + 16), v17[3]);
      v18 = 1;
    }

    *a2 = v18;
  }

  return result;
}

uint64_t sub_226F0A70C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_2276694E0();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0A828, 0, 0);
}

uint64_t sub_226F0A828()
{
  v56 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  sub_22766A6B0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  if (v5)
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v55 = v12;
    *v11 = 136446210;
    sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v13 = sub_22766C610();
    v15 = sub_226E97AE8(v13, v14, &v55);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v3, v4, "Need to Bootstrap: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);
  v21 = *(v18 + 56);
  v20 = v18 + 56;
  v19 = v21;
  v22 = -1 << *(*(v0 + 120) + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  v53 = *(v0 + 120);

  result = swift_beginAccess();
  v26 = 0;
  v27 = (63 - v22) >> 6;
  v52 = (v16 + 8);
  v28 = MEMORY[0x277D84F90];
  v51 = v17;
  if (v24)
  {
    while (1)
    {
LABEL_14:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v16 + 16))(*(v0 + 152), *(v53 + 48) + *(v16 + 72) * (v30 | (v26 << 6)), *(v0 + 136));
      v31 = *(v17 + 352);
      if (!*(v31 + 16))
      {
        goto LABEL_9;
      }

      v32 = *(v0 + 152);
      v33 = *(v17 + 352);

      v34 = sub_226F39E30(v32);
      if (v35)
      {
        v36 = *(v0 + 152);
        v37 = v28;
        v38 = *(v0 + 136);
        sub_226E91B50(*(v31 + 56) + 40 * v34, v0 + 56);
        v39 = v38;
        v28 = v37;
        (*v52)(v36, v39);

        sub_226E92AB8((v0 + 56), v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2273A4CC4(0, v37[2] + 1, 1, v37);
        }

        v41 = v28[2];
        v40 = v28[3];
        v17 = v51;
        if (v41 >= v40 >> 1)
        {
          v28 = sub_2273A4CC4((v40 > 1), v41 + 1, 1, v28);
        }

        v28[2] = v41 + 1;
        result = sub_226E92AB8((v0 + 16), &v28[5 * v41 + 4]);
        if (!v24)
        {
          goto LABEL_10;
        }
      }

      else
      {

LABEL_9:
        result = (*v52)(*(v0 + 152), *(v0 + 136));
        if (!v24)
        {
          goto LABEL_10;
        }
      }
    }
  }

  while (1)
  {
LABEL_10:
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v27)
    {
      break;
    }

    v24 = *(v20 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_14;
    }
  }

  v42 = *(v0 + 120);
  v43 = *(v0 + 128);

  v44 = v43[43];
  __swift_project_boxed_opaque_existential_0(v43 + 39, v43[42]);
  *(v0 + 224) = 10;
  v45 = v28;
  *(v0 + 184) = sub_226F19410();
  *(v0 + 192) = sub_226F19464();
  sub_22766A130();
  v46 = v43[33];
  __swift_project_boxed_opaque_existential_0(v43 + 29, v43[32]);
  v47 = swift_allocObject();
  *(v0 + 200) = v47;
  *(v47 + 16) = v45;
  v48 = *(v46 + 24);
  v54 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  *(v0 + 208) = v50;
  *v50 = v0;
  v50[1] = sub_226F0AD88;

  return v54();
}

uint64_t sub_226F0AD88()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_226F0AFB4;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_226F0AEA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0AEA4()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = v5[43];
  __swift_project_boxed_opaque_existential_0(v5 + 39, v5[42]);
  *(v0 + 226) = 10;
  sub_22766A120();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226F0AFB4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);

  v7 = v6[43];
  __swift_project_boxed_opaque_existential_0(v6 + 39, v6[42]);
  *(v0 + 225) = 10;
  sub_22766A120();

  v8 = *(v0 + 8);
  v9 = *(v0 + 216);

  return v8();
}

uint64_t sub_226F0B0C8(char a1)
{
  *(v2 + 264) = v1;
  *(v2 + 696) = a1;
  v3 = *(type metadata accessor for SyncZoneChangeset() - 8);
  *(v2 + 272) = v3;
  v4 = *(v3 + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960);
  *(v2 + 288) = v5;
  v6 = *(v5 - 8);
  *(v2 + 296) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  v8 = sub_22766B390();
  *(v2 + 312) = v8;
  v9 = *(v8 - 8);
  *(v2 + 320) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0B258, 0, 0);
}

uint64_t sub_226F0B258()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 696);
  sub_22766A6B0();
  sub_22766B370();
  v5 = *(v3 + 8);
  *(v0 + 344) = v5;
  *(v0 + 352) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4 == 1)
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 312);
    v8 = *(v0 + 264);
    sub_22766A6B0();
    sub_22766B370();
    v5(v6, v7);
    v9 = sub_2276694D0();

    v10 = sub_226F17C84(v9, v8);

    v11 = v8[33];
    __swift_project_boxed_opaque_existential_0(v8 + 29, v8[32]);
    v12 = swift_allocObject();
    *(v0 + 360) = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v8;
    v13 = *(v11 + 24);

    v26 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 368) = v15;
    *v15 = v0;
    v15[1] = sub_226F0B690;

    return v26();
  }

  else
  {
    v17 = *(v0 + 264);
    sub_226F0E468();
    v18 = *(v0 + 264);
    v19 = v18[32];
    v20 = v18[33];
    __swift_project_boxed_opaque_existential_0(v18 + 29, v19);
    v21 = *(v20 + 24);

    v27 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 384) = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
    *(v0 + 392) = v24;
    *v23 = v0;
    v23[1] = sub_226F0BA2C;
    v25 = *(v0 + 264);

    return (v27)(v0 + 224, sub_226F0E75C, v25, v24, v19, v20);
  }
}

uint64_t sub_226F0B690()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_226F0B998;
  }

  else
  {
    v5 = *(v2 + 360);

    v4 = sub_226F0B7AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0B7AC()
{
  v1 = v0[47];
  v2 = v0[33];
  sub_226F0E468();
  if (v1)
  {
    v4 = v0[41];
    v3 = v0[42];
    v5 = v0[38];
    v6 = v0[35];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[33];
    v10 = v9[32];
    v11 = v9[33];
    __swift_project_boxed_opaque_existential_0(v9 + 29, v10);
    v12 = *(v11 + 24);

    v17 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[48] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
    v0[49] = v15;
    *v14 = v0;
    v14[1] = sub_226F0BA2C;
    v16 = v0[33];

    return (v17)(v0 + 28, sub_226F0E75C, v16, v15, v10, v11);
  }
}

uint64_t sub_226F0B998()
{
  v1 = v0[45];

  v2 = v0[47];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226F0BA2C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_226F0D800;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_226F0BB48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0BB48()
{
  v1 = v0[50];
  v2 = sub_226F0E778(v0[28], type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow);

  v0[51] = sub_226F3E1C0(v2);

  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_226F0BC38;
  v4 = v0[33];

  return sub_226F0F10C();
}

uint64_t sub_226F0BC38(char a1)
{
  v2 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 697) = a1;

  return MEMORY[0x2822009F8](sub_226F0BD38, 0, 0);
}

uint64_t sub_226F0BD38()
{
  v1 = *(v0 + 408);
  v2 = sub_2276694D0();
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v12 = v2;
    sub_227006010(*(v0 + 408));

    v3 = v12;
  }

  else
  {
    v3 = sub_227006D08(*(v0 + 408), v2);
  }

  *(v0 + 424) = v3;
  v4 = *(v0 + 697);
  v5 = *(v0 + 264);
  v6 = swift_allocObject();
  *(v0 + 432) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D4FA10] + 4);

  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  v9 = sub_2276694E0();
  v10 = sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  *v8 = v0;
  v8[1] = sub_226F0BED0;

  return MEMORY[0x2821AFAF0](&unk_227670980, v6, v3, v9, v10);
}

uint64_t sub_226F0BED0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = sub_226F0D894;
  }

  else
  {
    v9 = v4[53];
    v8 = v4[54];

    v4[57] = a1;
    v7 = sub_226F0C008;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226F0C008()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 264);

  *(v0 + 464) = sub_226F17C84(v1, v3);

  v4 = v3[32];
  v5 = v3[33];
  __swift_project_boxed_opaque_existential_0(v3 + 29, v4);
  v6 = *__swift_project_boxed_opaque_existential_0(v3 + 22, v3[25]);
  *(v0 + 40) = type metadata accessor for SyncDataStore();
  *(v0 + 48) = &off_283AA0CC8;
  *(v0 + 16) = v6;
  sub_226E91B50(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  sub_226E92AB8((v0 + 56), v7 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = swift_allocObject();
  *(v0 + 472) = v8;
  *(v8 + 16) = sub_226F180EC;
  *(v8 + 24) = v7;
  v9 = *(v5 + 24);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 480) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8440, &qword_227670988);
  *v11 = v0;
  v11[1] = sub_226F0C238;

  return v14(v0 + 232, sub_226F18108, v8, v12, v4, v5);
}

uint64_t sub_226F0C238()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[58];

    v7 = sub_226F0D930;
  }

  else
  {

    v7 = sub_226F0C37C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226F0C37C()
{
  v1 = *(v0 + 697);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  *(v0 + 496) = v3;
  v4 = swift_allocObject();
  *(v0 + 504) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D4FA10] + 4);

  v6 = swift_task_alloc();
  *(v0 + 512) = v6;
  v7 = type metadata accessor for DirtySyncZone();
  v8 = sub_226F1950C(&qword_28139B080, type metadata accessor for DirtySyncZone);
  *v6 = v0;
  v6[1] = sub_226F0C4BC;

  return MEMORY[0x2821AFAF0](&unk_227670998, v4, v3, v7, v8);
}

uint64_t sub_226F0C4BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v13 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = v4[62];
    v6 = v4[63];
    v8 = v4[58];

    v9 = sub_226F0D9BC;
  }

  else
  {
    v11 = v4[62];
    v10 = v4[63];

    v4[66] = a1;
    v9 = sub_226F0C60C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226F0C60C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[58];
  v4 = v0[33];

  v5 = sub_226F184E8(v1, v4);
  v0[67] = v5;

  v6 = sub_226F0E778(v5, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone);
  v7 = sub_22742F5B4(v6, v3);
  v0[68] = v7;

  if (*(v7 + 16))
  {
    v9 = v0[43];
    v8 = v0[44];
    v10 = v0[42];
    v11 = v0[39];
    v12 = v0[33];
    sub_22766A6B0();
    sub_22766B370();
    v9(v10, v11);
    v13 = v12[32];
    v14 = v12[33];
    __swift_project_boxed_opaque_existential_0(v12 + 29, v13);
    v15 = swift_allocObject();
    v0[69] = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v7;
    v16 = *(v14 + 24);

    v27 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[70] = v18;
    *v18 = v0;
    v18[1] = sub_226F0C92C;
    v19 = v0[49];

    return (v27)(v0 + 30, sub_226F18920, v15, v19, v13, v14);
  }

  else
  {

    sub_226F1893C();
    swift_allocError();
    *v21 = 12;
    swift_willThrow();
    v23 = v0[41];
    v22 = v0[42];
    v24 = v0[38];
    v25 = v0[35];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_226F0C92C()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  v2[71] = v0;

  v5 = v2[69];
  if (v0)
  {
    v6 = v2[68];
    v7 = v2[67];

    v8 = sub_226F0DD60;
  }

  else
  {

    v8 = sub_226F0CA7C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226F0CA7C()
{
  v1 = v0[33];
  v2 = v0[30];
  v0[72] = v2;
  v3 = *__swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  v4 = swift_task_alloc();
  v0[73] = v4;
  *v4 = v0;
  v4[1] = sub_226F0CB2C;
  v5 = v0[68];

  return sub_2270674E8(v2, v5);
}

uint64_t sub_226F0CB2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  v4[74] = a1;
  v4[75] = v1;

  v7 = v3[72];
  v8 = v3[68];
  if (v1)
  {
    v9 = v4[67];

    v10 = sub_226F0D1B8;
  }

  else
  {

    v10 = sub_226F0CCB0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226F0CCB0()
{
  v59 = v0;
  v1 = *(v0 + 592);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 296);
    v54 = *(v0 + 288);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v58 = MEMORY[0x277D84F90];
    sub_226F1EFB0(0, v2, 0);
    v6 = v58;
    v55 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v56 = v4;
    v7 = v5;
    v8 = swift_beginAccess();
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v1 + 16))
      {
        __break(1u);
        return MEMORY[0x2821AFB10](v8, v9, v10, v11, v12);
      }

      sub_226F19570(v55 + *(v56 + 72) * v13, *(v0 + 280), type metadata accessor for SyncZoneChangeset);
      v14 = *(v7 + 352);
      if (!*(v14 + 16))
      {
        break;
      }

      v15 = *(v0 + 280);
      v16 = *(v7 + 352);

      v17 = sub_226F39E30(v15);
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      v19 = *(v0 + 304);
      v20 = *(v0 + 280);
      sub_226E91B50(*(v14 + 56) + 40 * v17, v0 + 136);

      sub_226E92AB8((v0 + 136), v0 + 96);
      v21 = *(v54 + 48);
      sub_226E92AB8((v0 + 96), v19);
      sub_226F195D8(v20, v19 + v21, type metadata accessor for SyncZoneChangeset);
      v58 = v6;
      v23 = *(v6 + 16);
      v22 = *(v6 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1EFB0(v22 > 1, v23 + 1, 1);
        v6 = v58;
      }

      ++v13;
      v24 = *(v0 + 304);
      *(v6 + 16) = v23 + 1;
      v8 = sub_226F18990(v24, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23);
      if (v2 == v13)
      {
        v50 = *(v0 + 592);

        goto LABEL_18;
      }
    }

    v26 = *(v7 + 352);

LABEL_12:
    v27 = *(v0 + 592);
    v28 = *(v0 + 536);
    v29 = *(v0 + 280);

    sub_226F1893C();
    v30 = swift_allocError();
    *v31 = 11;
    swift_willThrow();
    sub_226F19640(v29, type metadata accessor for SyncZoneChangeset);

    *(v0 + 656) = v30;
    v32 = *(v0 + 328);
    sub_22766A6B0();
    v33 = v30;
    v34 = sub_22766B380();
    v35 = sub_22766C890();

    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 344);
    v37 = *(v0 + 352);
    v39 = *(v0 + 328);
    v40 = *(v0 + 312);
    if (v36)
    {
      v57 = *(v0 + 344);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = *(v0 + 176);
      v44 = MEMORY[0x22AA995D0](*(v0 + 184), *(v0 + 192));
      v46 = sub_226E97AE8(v44, v45, &v58);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_226E8E000, v34, v35, "Failed to save, due to error: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v41, -1, -1);

      v57(v39, v40);
    }

    else
    {

      v38(v39, v40);
    }

    v47 = swift_task_alloc();
    *(v0 + 664) = v47;
    *v47 = v0;
    v47[1] = sub_226F0DA48;
    v48 = *(v0 + 264);

    return sub_226F10AC8(v30);
  }

  else
  {
    v25 = *(v0 + 592);

    v6 = MEMORY[0x277D84F90];
LABEL_18:
    *(v0 + 608) = v6;
    *(v0 + 256) = v6;
    v51 = *(MEMORY[0x277D4FA30] + 4);
    v52 = swift_task_alloc();
    *(v0 + 616) = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8448, &unk_2276709B0);
    v12 = sub_226E9CFD0(&qword_281398F78, &qword_27D7B8448, &unk_2276709B0);
    *v52 = v0;
    v52[1] = sub_226F0D3A8;
    v9 = &unk_2276709A8;
    v8 = 5;
    v10 = 0;
    v11 = v53;

    return MEMORY[0x2821AFB10](v8, v9, v10, v11, v12);
  }
}

uint64_t sub_226F0D1B8()
{
  v24 = v0;
  v1 = v0[75];
  v0[82] = v1;
  v2 = v0[41];
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[43];
    v22 = v0[44];
    v6 = v0[41];
    v7 = v0[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[22];
    v11 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v13 = sub_226E97AE8(v11, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to save, due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v21(v6, v7);
  }

  else
  {
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[41];
    v17 = v0[39];

    v15(v16, v17);
  }

  v18 = swift_task_alloc();
  v0[83] = v18;
  *v18 = v0;
  v18[1] = sub_226F0DA48;
  v19 = v0[33];

  return sub_226F10AC8(v1);
}

uint64_t sub_226F0D3A8()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v8 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);

    v5 = sub_226F0DF50;
  }

  else
  {
    v6 = *(v2 + 608);

    v5 = sub_226F0D4CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F0D4CC()
{
  v1 = v0[67];
  v2 = v0[33];
  v3 = v2[33];
  __swift_project_boxed_opaque_existential_0(v2 + 29, v2[32]);
  v4 = swift_allocObject();
  v0[79] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[80] = v7;
  *v7 = v0;
  v7[1] = sub_226F0D658;

  return v9();
}

uint64_t sub_226F0D658()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v7 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v4 = sub_226F0E148;
  }

  else
  {
    v5 = *(v2 + 632);

    v4 = sub_226F0D774;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F0D774()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v4 = v0[35];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226F0D800()
{
  v1 = v0[33];

  v2 = v0[50];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  v6 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226F0D894()
{
  v2 = v0[53];
  v1 = v0[54];

  v3 = v0[56];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[38];
  v7 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_226F0D930()
{
  v1 = v0[61];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v5 = v0[35];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226F0D9BC()
{
  v1 = v0[65];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v5 = v0[35];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226F0DA48()
{
  v2 = *(*v1 + 664);
  v3 = *v1;
  v3[84] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F0E340, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[85] = v4;
    *v4 = v3;
    v4[1] = sub_226F0DBB8;
    v5 = v3[33];

    return sub_226F0B0C8(0);
  }
}

uint64_t sub_226F0DBB8()
{
  v2 = *(*v1 + 680);
  v5 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = sub_226F0E3D4;
  }

  else
  {
    v3 = sub_226F0DCCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F0DCCC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F0DD60()
{
  v24 = v0;
  v1 = v0[71];
  v0[82] = v1;
  v2 = v0[41];
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[43];
    v22 = v0[44];
    v6 = v0[41];
    v7 = v0[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[22];
    v11 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v13 = sub_226E97AE8(v11, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to save, due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v21(v6, v7);
  }

  else
  {
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[41];
    v17 = v0[39];

    v15(v16, v17);
  }

  v18 = swift_task_alloc();
  v0[83] = v18;
  *v18 = v0;
  v18[1] = sub_226F0DA48;
  v19 = v0[33];

  return sub_226F10AC8(v1);
}

uint64_t sub_226F0DF50()
{
  v25 = v0;
  v1 = v0[76];

  v2 = v0[78];
  v0[82] = v2;
  v3 = v0[41];
  sub_22766A6B0();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[43];
    v23 = v0[44];
    v7 = v0[41];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[22];
    v12 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v14 = sub_226E97AE8(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to save, due to error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v22(v7, v8);
  }

  else
  {
    v16 = v0[43];
    v15 = v0[44];
    v17 = v0[41];
    v18 = v0[39];

    v16(v17, v18);
  }

  v19 = swift_task_alloc();
  v0[83] = v19;
  *v19 = v0;
  v19[1] = sub_226F0DA48;
  v20 = v0[33];

  return sub_226F10AC8(v2);
}

uint64_t sub_226F0E148()
{
  v25 = v0;
  v1 = v0[79];

  v2 = v0[81];
  v0[82] = v2;
  v3 = v0[41];
  sub_22766A6B0();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[43];
    v23 = v0[44];
    v7 = v0[41];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[22];
    v12 = MEMORY[0x22AA995D0](v0[23], v0[24]);
    v14 = sub_226E97AE8(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to save, due to error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v22(v7, v8);
  }

  else
  {
    v16 = v0[43];
    v15 = v0[44];
    v17 = v0[41];
    v18 = v0[39];

    v16(v17, v18);
  }

  v19 = swift_task_alloc();
  v0[83] = v19;
  *v19 = v0;
  v19[1] = sub_226F0DA48;
  v20 = v0[33];

  return sub_226F10AC8(v2);
}

uint64_t sub_226F0E340()
{
  v1 = *(v0 + 672);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226F0E3D4()
{
  v1 = *(v0 + 688);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226F0E468()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v6 = off_283AB4FA0;
  type metadata accessor for AccountSyncStatusObserver();
  v7 = v6();
  v8 = sub_227664EE0();
  v10 = v9;
  if (v8 == sub_227664EE0() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_22766D190();

    if ((v13 & 1) == 0)
    {
      sub_22766A6B0();
      v15 = sub_22766B380();
      v16 = sub_22766C890();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v17 = 136446210;
        v24 = v7;
        v18 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
        v20 = sub_226E97AE8(v18, v19, &v25);

        *(v17 + 4) = v20;
        _os_log_impl(&dword_226E8E000, v15, v16, "Couldn't sync with CloudKit, %{public}s != available", v17, 0xCu);
        v21 = v23;
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AA9A450](v21, -1, -1);
        MEMORY[0x22AA9A450](v17, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      sub_226F1893C();
      swift_allocError();
      *v22 = v7;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226F0E6FC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_2276694D0();
  v6 = sub_22712E580(v5, a1);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_226F0E778(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v47 = a3;
  v5 = a2(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = v37 - v7;
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v43 = v12;
  v37[1] = v3;
  v50 = MEMORY[0x277D84F90];
  sub_226F1EF50(0, v13, 0);
  v14 = v50;
  v15 = a1 + 56;
  v16 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v18 = result;
  v19 = 0;
  v44 = v9;
  v41 = v9 + 32;
  v42 = (v9 + 16);
  v38 = a1 + 64;
  v39 = v13;
  v40 = a1 + 56;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v21 = v18 >> 6;
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v48 = v19;
    v49 = v22;
    v23 = v47;
    v24 = v8;
    v25 = v45;
    sub_226F19570(*(a1 + 48) + *(v46 + 72) * v18, v45, v47);
    v26 = a1;
    v27 = v43;
    (*v42)(v43, v25, v24);
    sub_226F19640(v25, v23);
    v50 = v14;
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_226F1EF50(v28 > 1, v29 + 1, 1);
      v14 = v50;
    }

    *(v14 + 16) = v29 + 1;
    result = (*(v44 + 32))(v14 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29, v27, v24);
    v20 = 1 << *(v26 + 32);
    if (v18 >= v20)
    {
      goto LABEL_22;
    }

    a1 = v26;
    v15 = v40;
    v30 = *(v40 + 8 * v21);
    if ((v30 & (1 << v18)) == 0)
    {
      goto LABEL_23;
    }

    if (v49 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v8 = v24;
    v31 = v30 & (-2 << (v18 & 0x3F));
    if (v31)
    {
      v20 = __clz(__rbit64(v31)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v21 << 6;
      v33 = v21 + 1;
      v34 = (v38 + 8 * v21);
      while (v33 < (v20 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_226EB526C(v18, v49, 0);
          v20 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v18, v49, 0);
    }

LABEL_4:
    v19 = v48 + 1;
    v18 = v20;
    if (v48 + 1 == v39)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_226F0EB24(uint64_t a1)
{
  v3 = type metadata accessor for SyncEncryptionKey();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v30 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v8 = v38;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v31 = a1 + 64;
    v32 = v6;
    v33 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v16 = v34;
      sub_226F19570(*(a1 + 48) + *(v35 + 72) * v11, v34, type metadata accessor for SyncEncryptionKey);
      v37 = sub_2276694C0();
      v18 = v17;
      result = sub_226F19640(v16, type metadata accessor for SyncEncryptionKey);
      v19 = v8;
      v38 = v8;
      v20 = *(v8 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        result = sub_226F1EF90(v21 > 1, v20 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v20 + 1;
      v22 = v19 + 16 * v20;
      *(v22 + 32) = v37;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v33;
      v23 = *(v33 + 8 * v15);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v8 = v19;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v32;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v14 = v32;
        v27 = (v31 + 8 * v15);
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v11, v36, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v36, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F0EE04(uint64_t a1)
{
  v37 = sub_2276694E0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_2276694C0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F0F10C()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v1[40] = *(v6 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[43] = v7;
  v8 = *(v7 - 8);
  v1[44] = v8;
  v9 = *(v8 + 64) + 15;
  v1[45] = swift_task_alloc();
  v10 = sub_227665AD0();
  v1[46] = v10;
  v11 = *(v10 - 8);
  v1[47] = v11;
  v12 = *(v11 + 64) + 15;
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F0F318, 0, 0);
}

uint64_t sub_226F0F318()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 264) + 272), *(*(v0 + 264) + 296));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  v3 = *(v0 + 336);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v4 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v5 = swift_allocError();
    *v6 = 0;
    *(swift_allocObject() + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v13 = *(v0 + 304);
  (*(v12 + 16))(v10, v9, v13);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v14, v10, v13);
  v17 = (v16 + v15);
  *v17 = sub_226F17554;
  v17[1] = 0;
  sub_227669270();
  (*(v12 + 8))(v9, v13);
  v18 = swift_task_alloc();
  *(v0 + 392) = v18;
  *(v18 + 16) = "SeymourServices/ServerSyncCoordinator.swift";
  *(v18 + 24) = 43;
  *(v18 + 32) = 2;
  *(v18 + 40) = 398;
  *(v18 + 48) = v8;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_226F0F658;
  v21 = *(v0 + 384);
  v22 = *(v0 + 368);

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226F194FC, v18, v22);
}

uint64_t sub_226F0F658()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v14 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v5 = sub_226F0F86C;
  }

  else
  {
    v7 = v2[47];
    v6 = v2[48];
    v9 = v2[45];
    v8 = v2[46];
    v12 = v2 + 43;
    v10 = v2[43];
    v11 = v12[1];
    (*(v7 + 8))(v6, v8);
    (*(v11 + 8))(v9, v10);
    v5 = sub_226F0F7C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226F0F7C4()
{
  v1 = v0[48];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[36];
  v5 = v0[37];

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_226F0F86C()
{
  v44 = v0;
  v1 = v0[51];
  (*(v0[44] + 8))(v0[45], v0[43]);
  swift_getErrorValue();
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[27];
  v0[20] = MEMORY[0x277D52C78];
  v5 = sub_226F09B58();
  *(v0 + 136) = 4;
  v0[21] = v5;
  LOBYTE(v3) = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v3)
  {
    v6 = v0[37];
    sub_22766A6B0();
    v7 = sub_22766B380();
    v8 = sub_22766C8B0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[51];
    v11 = v0[37];
    v12 = v0[34];
    v13 = v0[35];
    if (v9)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v7, v8, "No subscription entitlements found", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v11, v12);
    v33 = 0;
  }

  else
  {
    v15 = v0[51];
    v16 = v0[36];
    sub_22766A6B0();
    v17 = v15;
    v18 = sub_22766B380();
    v19 = sub_22766C890();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[51];
    v23 = v0[35];
    v22 = v0[36];
    v24 = v0[34];
    if (v20)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v42 = v22;
      v28 = v0[28];
      v27 = v0[29];
      v29 = v0[30];
      v30 = sub_22766D250();
      v32 = sub_226E97AE8(v30, v31, &v43);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_226E8E000, v18, v19, "Caught error %s fetching subscription status", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      (*(v23 + 8))(v42, v24);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v33 = 2;
  }

  v34 = v0[48];
  v35 = v0[45];
  v37 = v0[41];
  v36 = v0[42];
  v39 = v0[36];
  v38 = v0[37];

  v40 = v0[1];

  return v40(v33);
}

uint64_t sub_226F0FB98(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_226F0FC38;

  return sub_226F0FDAC(a1);
}

uint64_t sub_226F0FC38(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 41) = a1;

  return MEMORY[0x2822009F8](sub_226F0FD38, 0, 0);
}

uint64_t sub_226F0FD38()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 24);
  v3 = sub_226F1013C(*(v0 + 16), *(v0 + 40));
  v4 = *(v0 + 8);
  v5 = v1 & v3 & 1;

  return v4(v5);
}

uint64_t sub_226F0FDAC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_226F0FDCC, 0, 0);
}

uint64_t sub_226F0FDCC()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 352);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 120);

  v4 = sub_226F39E30(v3);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  sub_226E91B50(*(v2 + 56) + 40 * v4, v0 + 16);

  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &qword_27D7B8450, &qword_227682050);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), v6);
    v8 = *(v7 + 8);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_226F0FFD8;

    return v13(v6, v7);
  }

LABEL_9:
  sub_226E97D1C(v0 + 16, &qword_27D7B8450, &qword_227682050);
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_226F0FFD8(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_226F100D8, 0, 0);
}

uint64_t sub_226F100D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226F1013C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 352);
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = sub_226F39E30(a1);
  if ((v7 & 1) == 0)
  {

LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_7;
  }

  sub_226E91B50(*(v5 + 56) + 40 * v6, &v15);

  if (!*(&v16 + 1))
  {
LABEL_7:
    sub_226E97D1C(&v15, &qword_27D7B8450, &qword_227682050);
    v10 = 0;
    return v10 & 1;
  }

  sub_226E91B50(&v15, v12);
  sub_226E97D1C(&v15, &qword_27D7B8450, &qword_227682050);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v10 = (*(v9 + 24))(a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10 & 1;
}

char *sub_226F10264(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  v12 = sub_2272313B8(100);
  swift_setDeallocating();

  v13 = *(v9 + 40);

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = *(*v9 + 48);
  v17 = *(*v9 + 52);
  swift_deallocClassInstance();
  return v12;
}

uint64_t sub_226F103D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_226F10474;

  return sub_226F0FDAC(a1);
}

uint64_t sub_226F10474(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 41) = a1;

  return MEMORY[0x2822009F8](sub_226F1976C, 0, 0);
}

uint64_t sub_226F10574@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_226F18AA0(a2, a1);
  if (!v3)
  {
    result = sub_22712E580(a2, a1);
    *a3 = result;
  }

  return result;
}

uint64_t sub_226F105C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 32) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960) + 48);

  return MEMORY[0x2822009F8](sub_226F10648, 0, 0);
}

uint64_t sub_226F10648()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = *(v4 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_226F10788;

  return v9(&v2[v1], v3, v4);
}

uint64_t sub_226F10788()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226F1087C(void *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();

  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    type metadata accessor for DirtySyncZone();
    v24 = v2;
    sub_226F1950C(&qword_28139B080, type metadata accessor for DirtySyncZone);
    v15 = sub_22766C610();
    v17 = sub_226E97AE8(v15, v16, &v25);
    v22 = v5;
    v18 = a1;
    v19 = v17;

    *(v13 + 4) = v19;
    a1 = v18;
    _os_log_impl(&dword_226E8E000, v10, v11, "Deleting Dirty Zones: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    (*(v23 + 8))(v9, v22);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return sub_22712E9A4(a2, a1);
}

uint64_t sub_226F10AC8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766AF20();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F10B94, 0, 0);
}

uint64_t sub_226F10B94()
{
  v1 = *(v0 + 56);
  type metadata accessor for Code(0);
  *(v0 + 16) = 26;
  sub_226F1950C(&qword_281398B78, type metadata accessor for Code);
  if (sub_227662200())
  {
    v2 = __swift_project_boxed_opaque_existential_0((*(v0 + 64) + 136), *(*(v0 + 64) + 160));
    v3 = sub_2276694D0();
    *(v0 + 104) = v3;
    v4 = *v2;
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v6 = sub_226F11290;
LABEL_3:
    v5[1] = v6;

    return sub_2274FF638(v3);
  }

  *(v0 + 24) = 28;
  v8 = *(v0 + 56);
  if (sub_227662200())
  {
    v9 = *(v0 + 64);
    v10 = v9[10];
    v11 = v9[11];
    __swift_project_boxed_opaque_existential_0(v9 + 7, v10);
    v12 = *(MEMORY[0x277D4FAC0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_226F113DC;

    return MEMORY[0x2821AFC28](v10, v11);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  *(v0 + 32) = v16;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v18 = (*(*(v0 + 80) + 88))(*(v0 + 96), *(v0 + 72));
    if (v18 == *MEMORY[0x277D544B8])
    {
      v19 = *(v0 + 96);
      (*(*(v0 + 80) + 96))(v19, *(v0 + 72));
      v20 = *v19;
      *(v0 + 136) = *v19;
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      *v21 = v0;
      v21[1] = sub_226F115CC;
      v22 = *(v0 + 64);

      return sub_226F0A70C(v20);
    }

    if (v18 == *MEMORY[0x277D544C0])
    {
      v23 = *(v0 + 96);
      v24 = *(v0 + 64);
      (*(*(v0 + 80) + 96))(v23, *(v0 + 72));
      v3 = *v23;
      *(v0 + 184) = *v23;
      v25 = *__swift_project_boxed_opaque_existential_0((v24 + 136), *(v24 + 160));
      v5 = swift_task_alloc();
      *(v0 + 192) = v5;
      *v5 = v0;
      v6 = sub_226F118EC;
      goto LABEL_3;
    }

    if (v18 == *MEMORY[0x277D544C8])
    {
      v26 = *(v0 + 96);
      v27 = *(v0 + 64);
      (*(*(v0 + 80) + 96))(v26, *(v0 + 72));
      v28 = *v26;
      *(v0 + 224) = *v26;
      v29 = *__swift_project_boxed_opaque_existential_0((v27 + 136), *(v27 + 160));
      v30 = swift_task_alloc();
      *(v0 + 232) = v30;
      *v30 = v0;
      v30[1] = sub_226F11C6C;

      return sub_2274FF1C0(v28);
    }

    v31 = *(v0 + 96);
    v32 = *(v0 + 72);
    v33 = *(v0 + 80);
    if (v18 == *MEMORY[0x277D544B0])
    {
      (*(v33 + 96))(*(v0 + 96), v32);
      v34 = *v31;
      *(v0 + 160) = *v31;
      v35 = swift_task_alloc();
      *(v0 + 168) = v35;
      *v35 = v0;
      v36 = sub_226F1175C;
LABEL_27:
      v35[1] = v36;
      v39 = *(v0 + 64);

      return sub_226F15F60(v34);
    }

    (*(v33 + 8))(*(v0 + 96), v32);
  }

  v37 = *(v0 + 56);

  *(v0 + 40) = v37;
  v38 = v37;
  if (swift_dynamicCast() && *(v0 + 328) == 8)
  {
    v34 = sub_2276694D0();
    *(v0 + 264) = v34;
    v35 = swift_task_alloc();
    *(v0 + 272) = v35;
    *v35 = v0;
    v36 = sub_226F11FEC;
    goto LABEL_27;
  }

  v40 = *(v0 + 88);
  v41 = *(v0 + 72);
  v42 = *(v0 + 56);

  *(v0 + 48) = v42;
  v43 = v42;
  if (swift_dynamicCast())
  {
    v44 = (*(*(v0 + 80) + 88))(*(v0 + 88), *(v0 + 72));
    v45 = *(v0 + 80);
    v46 = *(v0 + 88);
    v47 = *(v0 + 72);
    if (v44 == *MEMORY[0x277D544A8])
    {
      (*(v45 + 96))(*(v0 + 88), v47);
      v48 = *v46;
      *(v0 + 288) = *v46;
      v49 = swift_task_alloc();
      *(v0 + 296) = v49;
      *v49 = v0;
      v49[1] = sub_226F1217C;
      v50 = *(v0 + 64);

      return sub_226F16950(v48);
    }

    (*(v45 + 8))(*(v0 + 88), v47);
  }

  v51 = *(v0 + 56);

  swift_willThrow();
  v52 = v51;
  v53 = *(v0 + 56);
  v55 = *(v0 + 88);
  v54 = *(v0 + 96);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_226F11290()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v8 = *v0;

  v3 = v1[13];

  v4 = v1[12];
  v5 = v1[11];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_226F113DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[11];
    v7 = v4[12];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[16] = a1;

    return MEMORY[0x2822009F8](sub_226F11538, 0, 0);
  }
}

uint64_t sub_226F11538()
{
  v1 = v0[16];
  [v1 setEnabled:0 forDataclass:*MEMORY[0x277CB8990]];

  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F115CC()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_226F12480;
  }

  else
  {
    v3 = sub_226F116E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F116E0()
{
  v1 = *(v0 + 136);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F1175C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_226F124FC;
  }

  else
  {
    v3 = sub_226F11870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F11870()
{
  v1 = *(v0 + 160);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F118EC()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[23];

    return MEMORY[0x2822009F8](sub_226F11B7C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[26] = v5;
    *v5 = v3;
    v5[1] = sub_226F11A68;
    v6 = v3[8];
    v7 = v3[23];

    return sub_226F0A70C(v7);
  }
}

uint64_t sub_226F11A68()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_226F12578;
  }

  else
  {
    v3 = sub_226F11BF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F11B7C()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F11BF0()
{
  v1 = *(v0 + 184);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F11C6C()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[28];

    return MEMORY[0x2822009F8](sub_226F11EFC, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[31] = v5;
    *v5 = v3;
    v5[1] = sub_226F11DE8;
    v6 = v3[8];
    v7 = v3[28];

    return sub_226F0A70C(v7);
  }
}

uint64_t sub_226F11DE8()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_226F125F4;
  }

  else
  {
    v3 = sub_226F11F70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F11EFC()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F11F70()
{
  v1 = *(v0 + 224);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F11FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_226F12670;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_226F12108;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F12108()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226F1217C()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F126EC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[39] = v4;
    *v4 = v3;
    v4[1] = sub_226F122F0;
    v5 = v3[8];
    v6 = v3[36];

    return sub_226F0A70C(v6);
  }
}

uint64_t sub_226F122F0()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_226F12768;
  }

  else
  {
    v3 = sub_226F12404;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F12404()
{
  v1 = *(v0 + 288);

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226F12480()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F124FC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F12578()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 216);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F125F4()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 256);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F12670()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F126EC()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 304);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F12768()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 320);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226F127E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B390();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F128A8, 0, 0);
}

uint64_t sub_226F128A8()
{
  v1 = v0[4];
  sub_226F0E468();
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_22766A6B0();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = *__swift_project_boxed_opaque_existential_0((v5 + 96), *(v5 + 120));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_226F12A10;
  v8 = v0[2];
  v9 = v0[3];

  return sub_227068234(v8, v9);
}

uint64_t sub_226F12A10()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v4;
    v5[1] = sub_226F12B94;
    v6 = v0;
    v7 = v2[4];

    return sub_226F10AC8(v6);
  }

  else
  {
    v9 = v2[7];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_226F12B94()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F12E88, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[12] = v4;
    *v4 = v3;
    v4[1] = sub_226F12D08;
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[2];

    return sub_226F127E4(v7, v5);
  }
}

uint64_t sub_226F12D08()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F12EF4;
  }

  else
  {
    v3 = sub_226F12E1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F12E1C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226F12E88()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226F12EF4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226F12F60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_226F12F80, 0, 0);
}

uint64_t sub_226F12F80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[32];
  v4 = v1[33];
  __swift_project_boxed_opaque_existential_0(v1 + 29, v3);
  v5 = swift_allocObject();
  v0[5] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v4 + 24);

  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8438, &qword_227670968);
  *v8 = v0;
  v8[1] = sub_226F13124;

  return (v11)(v0 + 2, sub_226F19718, v5, v9, v3, v4);
}

uint64_t sub_226F13124()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_226F13354;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_226F13240;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F13240()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_226F0E778(v0[2], type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow);

  v4 = sub_226F3E1C0(v3);

  LOBYTE(v2) = sub_227035184(v4, v2);

  if ((v2 & 1) == 0)
  {
    sub_226F1893C();
    swift_allocError();
    *v6 = 17;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_226F13354()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F133B8()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8488, &qword_227670A60);
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for SyncSubmissionChangeset();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v8 = sub_2276694E0();
  v1[46] = v8;
  v9 = *(v8 - 8);
  v1[47] = v9;
  v10 = *(v9 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v11 = sub_22766B390();
  v1[51] = v11;
  v12 = *(v11 - 8);
  v1[52] = v12;
  v13 = *(v12 + 64) + 15;
  v1[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F135C8, 0, 0);
}

uint64_t sub_226F135C8()
{
  v1 = *(v0 + 296);
  sub_226F0E468();
  v2 = swift_task_alloc();
  *(v0 + 432) = v2;
  *v2 = v0;
  v2[1] = sub_226F136E4;
  v3 = *(v0 + 296);

  return sub_226F0F10C();
}

uint64_t sub_226F136E4(char a1)
{
  v2 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 608) = a1;

  return MEMORY[0x2822009F8](sub_226F137E4, 0, 0);
}

uint64_t sub_226F137E4()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[37];
  sub_22766A6B0();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v5 = *(v4 + 352);
  v0[55] = v5;
  v0[35] = v5;
  v6 = *(MEMORY[0x277D4FA20] + 4);

  v7 = swift_task_alloc();
  v0[56] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8490, &qword_227670A70);
  v9 = sub_226E9CFD0(&qword_281399160, &qword_27D7B8490, &qword_227670A70);
  *v7 = v0;
  v7[1] = sub_226F1397C;

  return MEMORY[0x2821AFB00](5, &unk_227670A68, 0, v8, v9);
}

uint64_t sub_226F1397C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v8 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  v5 = v3[55];

  if (v1)
  {
    v6 = sub_226F154C0;
  }

  else
  {
    v6 = sub_226F13AA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_226F13AA0()
{
  v1 = *(v0 + 456);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = v5;
      v7 = *(v0 + 608);
      sub_226E91B50(v4, v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v8);
      if ((*(v9 + 24))(v7, v8, v9))
      {
        sub_226E92AB8((v0 + 16), v0 + 56);
        v5 = v6;
        v58 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F0D0(0, *(v6 + 16) + 1, 1);
          v5 = v6;
        }

        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_226F1F0D0((v10 > 1), v11 + 1, 1);
          v5 = v58;
        }

        *(v5 + 16) = v11 + 1;
        sub_226E92AB8((v0 + 56), v5 + 40 * v11 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v5 = v6;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        v12 = *(v0 + 456);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_14:

  v52 = *(v5 + 16);
  if (v52)
  {
    v13 = 0;
    v50 = v5 + 32;
    v48 = *(v0 + 376);
    v55 = (v48 + 8);
    v49 = MEMORY[0x277D84F90];
    v51 = v5;
    while (v13 < *(v5 + 16))
    {
      v16 = *(v0 + 400);
      v53 = v13;
      sub_226E91B50(v50 + 40 * v13, v0 + 96);
      v17 = sub_2276694D0();
      v18 = *(v0 + 120);
      v19 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_0((v0 + 96), v18);
      (*(v19 + 32))(v18, v19);
      v57 = v17;
      if (!*(v17 + 16))
      {
        goto LABEL_16;
      }

      v20 = *(v0 + 400);
      v21 = *(v0 + 368);
      v22 = *(v17 + 40);
      sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      v23 = sub_22766BF50();
      v24 = -1 << *(v17 + 32);
      v25 = v23 & ~v24;
      v54 = v17 + 56;
      if ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v27 = *(v48 + 72);
        v28 = *(v48 + 16);
        while (1)
        {
          v29 = *(v0 + 392);
          v30 = v0;
          v31 = *(v0 + 368);
          v28(v29, *(v57 + 48) + v25 * v27, v31);
          sub_226F1950C(&qword_2813A54C8, MEMORY[0x277D53DA0]);
          v32 = sub_22766BFB0();
          v33 = *v55;
          (*v55)(v29, v31);
          if (v32)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v54 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v34 = *(v0 + 400);
        v35 = *(v0 + 368);

        v33(v34, v35);
        sub_226E92AB8((v0 + 96), v0 + 136);
        v36 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1F0D0(0, *(v49 + 16) + 1, 1);
          v36 = v49;
        }

        v38 = *(v36 + 16);
        v37 = *(v36 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_226F1F0D0((v37 > 1), v38 + 1, 1);
          v36 = v49;
        }

        *(v36 + 16) = v38 + 1;
        v49 = v36;
        v39 = v36 + 40 * v38;
        v0 = v30;
        sub_226E92AB8((v30 + 136), v39 + 32);
      }

      else
      {
LABEL_16:
        v14 = *(v0 + 400);
        v15 = *(v0 + 368);

        (*v55)(v14, v15);
        __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      }

      v13 = v53 + 1;
      v5 = v51;
      if (v53 + 1 == v52)
      {
        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
    return;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_31:
  v40 = *(v0 + 296);

  v41 = v40[32];
  v42 = v40[33];
  __swift_project_boxed_opaque_existential_0(v40 + 29, v41);
  v43 = swift_allocObject();
  *(v0 + 472) = v43;
  *(v43 + 16) = v40;
  *(v43 + 24) = v49;
  v44 = *(v42 + 24);

  v56 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 480) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8498, &qword_227670A78);
  *v46 = v0;
  v46[1] = sub_226F140A8;

  v56(v0 + 288, sub_226F19554, v43, v47, v41, v42);
}

uint64_t sub_226F140A8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_226F1555C;
  }

  else
  {
    v5 = *(v2 + 472);

    v4 = sub_226F141C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_226F141C4()
{
  v1 = v0[36];
  v2 = MEMORY[0x277D84F90];
  v45 = *(v1 + 16);
  if (v45)
  {
    v3 = 0;
    v4 = v0[42];
    v44 = v0[41];
    v5 = MEMORY[0x277D84F90];
    v43 = v0[36];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      v6 = v0[45];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_226F19570(v1 + v7 + v8 * v3, v6, type metadata accessor for SyncSubmissionChangeset);
      v9 = (v6 + *(v44 + 24));
      v10 = *v9;
      v11 = v9[1];
      if ((*v9 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v12 = *v9;
        }

        if (sub_22766CD20())
        {
LABEL_16:
          sub_226F195D8(v0[45], v0[44], type metadata accessor for SyncSubmissionChangeset);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F1F0B0(0, *(v5 + 16) + 1, 1);
          }

          v14 = *(v5 + 16);
          v13 = *(v5 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_226F1F0B0(v13 > 1, v14 + 1, 1);
          }

          v15 = v0[44];
          *(v5 + 16) = v14 + 1;
          sub_226F195D8(v15, v5 + v7 + v14 * v8, type metadata accessor for SyncSubmissionChangeset);
          v1 = v43;
          goto LABEL_4;
        }
      }

      else if (*(v10 + 16))
      {
        goto LABEL_16;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        if (sub_22766CD20())
        {
          goto LABEL_16;
        }
      }

      else if (*(v11 + 16))
      {
        goto LABEL_16;
      }

      sub_226F19640(v0[45], type metadata accessor for SyncSubmissionChangeset);
LABEL_4:
      if (v45 == ++v3)
      {
        goto LABEL_22;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_22:
  v0[62] = v5;

  v16 = *(v5 + 16);
  if (v16)
  {
    v17 = v0[42];
    v46 = v0[41];
    sub_226F1F090(0, v16, 0);
    v18 = v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v19 = *(v17 + 72);
    while (1)
    {
      v20 = v0[43];
      sub_226F19570(v18, v20, type metadata accessor for SyncSubmissionChangeset);
      v21 = (v20 + *(v46 + 24));
      v22 = *v21;
      if ((*v21 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *v21;
        }

        v24 = sub_22766CD20();
      }

      else
      {
        v24 = *(v22 + 16);
      }

      v25 = v21[1];
      if ((v25 & 0xC000000000000001) != 0)
      {
        if (v25 < 0)
        {
          v26 = v21[1];
        }

        v27 = sub_22766CD20();
        v28 = v24 + v27;
        if (__OFADD__(v24, v27))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v29 = *(v25 + 16);
        v28 = v24 + v29;
        if (__OFADD__(v24, v29))
        {
          goto LABEL_55;
        }
      }

      sub_226F19640(v0[43], type metadata accessor for SyncSubmissionChangeset);
      v31 = *(v2 + 16);
      v30 = *(v2 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_226F1F090((v30 > 1), v31 + 1, 1);
      }

      *(v2 + 16) = v32;
      *(v2 + 8 * v31 + 32) = v28;
      v18 += v19;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = *(v2 + 16);
  if (v32)
  {
LABEL_41:
    v33 = 0;
    v34 = 32;
    do
    {
      v35 = *(v2 + v34);
      v36 = __OFADD__(v33, v35);
      v33 += v35;
      if (v36)
      {
        __break(1u);
        goto LABEL_54;
      }

      v34 += 8;
      --v32;
    }

    while (v32);

    if (v33 <= 0)
    {

      goto LABEL_50;
    }

    v37 = *__swift_project_boxed_opaque_existential_0((v0[37] + 96), *(v0[37] + 120));
    v38 = swift_task_alloc();
    v0[63] = v38;
    *v38 = v0;
    v38[1] = sub_226F1468C;

    sub_227068890(v5);
  }

  else
  {

LABEL_50:
    sub_226F1893C();
    v39 = swift_allocError();
    *v40 = 5;
    swift_willThrow();
    v0[71] = v39;
    v41 = swift_task_alloc();
    v0[72] = v41;
    *v41 = v0;
    v41[1] = sub_226F15170;
    v42 = v0[37];

    sub_226F10AC8(v39);
  }
}

uint64_t sub_226F1468C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v5 = *v2;
  *(*v2 + 512) = a1;

  if (v1)
  {
    v6 = v3[62];

    v3[71] = v1;
    v7 = swift_task_alloc();
    v3[72] = v7;
    *v7 = v5;
    v7[1] = sub_226F15170;
    v8 = v1;
    v9 = v3[37];

    return sub_226F10AC8(v8);
  }

  else
  {
    v11 = v3[62];

    return MEMORY[0x2822009F8](sub_226F14824, 0, 0);
  }
}

uint64_t sub_226F14824()
{
  result = *(v0 + 512);
  v2 = *(result + 16);
  *(v0 + 520) = v2;
  if (v2)
  {
    v3 = *(v0 + 376);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    *(v0 + 528) = 0;
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    sub_226E93170(result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v8, &qword_27D7B8488, &qword_227670A60);
    v10 = (v8 + *(v5 + 48));
    v11 = *v10;
    *(v0 + 536) = *v10;
    v12 = v10[1];
    *(v0 + 544) = v12;
    v13 = v10[2];
    (*(v3 + 32))(v6, v8, v7);
    v14 = *(v9 + 352);
    if (*(v14 + 16))
    {
      v15 = *(v0 + 384);
      v16 = *(v9 + 352);

      v17 = sub_226F39E30(v15);
      if (v18)
      {
        v20 = *(v0 + 376);
        v19 = *(v0 + 384);
        v21 = *(v0 + 368);
        sub_226E91B50(*(v14 + 56) + 40 * v17, v0 + 216);
        (*(v20 + 8))(v19, v21);

        sub_226E92AB8((v0 + 216), v0 + 176);
        v22 = *(v0 + 200);
        v23 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_0((v0 + 176), v22);
        v24 = *(v23 + 40);
        v45 = (v24 + *v24);
        v25 = v24[1];
        v26 = swift_task_alloc();
        *(v0 + 552) = v26;
        *v26 = v0;
        v26[1] = sub_226F14C00;
        v27.n128_u64[0] = v13;

        return v45(v11, v12, v22, v23, v27);
      }
    }

    v37 = *(v0 + 512);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v40 = *(v0 + 368);

    (*(v39 + 8))(v38, v40);
    sub_226F1893C();
    v41 = swift_allocError();
    *v42 = 11;
    swift_willThrow();
    *(v0 + 568) = v41;
    v43 = swift_task_alloc();
    *(v0 + 576) = v43;
    *v43 = v0;
    v43[1] = sub_226F15170;
    v44 = *(v0 + 296);

    return sub_226F10AC8(v41);
  }

  else
  {

    v28 = *(v0 + 424);
    v29 = *(v0 + 392);
    v30 = *(v0 + 400);
    v31 = *(v0 + 384);
    v33 = *(v0 + 352);
    v32 = *(v0 + 360);
    v34 = *(v0 + 344);
    v35 = *(v0 + 320);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_226F14C00()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  v2[70] = v0;

  v5 = v2[68];
  v6 = v2[67];
  if (v0)
  {
    v7 = v2[64];

    v8 = sub_226F15600;
  }

  else
  {

    v8 = sub_226F14D74;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226F14D74()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 528) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  if (v2 == v1)
  {
    v4 = *(v0 + 512);

    v5 = *(v0 + 424);
    v6 = *(v0 + 392);
    v7 = *(v0 + 400);
    v8 = *(v0 + 384);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 344);
    v12 = *(v0 + 320);

    v13 = *(v0 + 8);

    return v13();
  }

  v14 = *(v0 + 528) + 1;
  *(v0 + 528) = v14;
  v15 = *(v0 + 512);
  if (v14 >= *(v15 + 16))
  {
    __break(1u);
    return result;
  }

  v17 = *(v0 + 376);
  v16 = *(v0 + 384);
  v18 = *(v0 + 368);
  v19 = *(v0 + 320);
  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  sub_226E93170(v15 + ((*(*(v0 + 312) + 80) + 32) & ~*(*(v0 + 312) + 80)) + *(*(v0 + 312) + 72) * v14, v19, &qword_27D7B8488, &qword_227670A60);
  v22 = (v19 + *(v20 + 48));
  v23 = *v22;
  *(v0 + 536) = *v22;
  v24 = v22[1];
  *(v0 + 544) = v24;
  v25 = v22[2];
  (*(v17 + 32))(v16, v19, v18);
  v26 = *(v21 + 352);
  if (*(v26 + 16))
  {
    v27 = *(v0 + 384);
    v28 = *(v21 + 352);

    v29 = sub_226F39E30(v27);
    if (v30)
    {
      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v33 = *(v0 + 368);
      sub_226E91B50(*(v26 + 56) + 40 * v29, v0 + 216);
      (*(v32 + 8))(v31, v33);

      sub_226E92AB8((v0 + 216), v0 + 176);
      v34 = *(v0 + 200);
      v35 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v34);
      v36 = *(v35 + 40);
      v48 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      *(v0 + 552) = v38;
      *v38 = v0;
      v38[1] = sub_226F14C00;
      v39.n128_u64[0] = v25;

      return v48(v23, v24, v34, v35, v39);
    }
  }

  v40 = *(v0 + 512);
  v42 = *(v0 + 376);
  v41 = *(v0 + 384);
  v43 = *(v0 + 368);

  (*(v42 + 8))(v41, v43);
  sub_226F1893C();
  v44 = swift_allocError();
  *v45 = 11;
  swift_willThrow();
  *(v0 + 568) = v44;
  v46 = swift_task_alloc();
  *(v0 + 576) = v46;
  *v46 = v0;
  v46[1] = sub_226F15170;
  v47 = *(v0 + 296);

  return sub_226F10AC8(v44);
}

uint64_t sub_226F15170()
{
  v2 = *(*v1 + 576);
  v3 = *v1;
  v3[73] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F156A4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[74] = v4;
    *v4 = v3;
    v4[1] = sub_226F152DC;
    v5 = v3[37];

    return sub_226F133B8();
  }
}

uint64_t sub_226F152DC()
{
  v2 = *(*v1 + 592);
  v5 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = sub_226F15780;
  }

  else
  {
    v3 = sub_226F153F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F153F0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 320);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226F154C0()
{
  v1 = v0[58];
  v0[71] = v1;
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_226F15170;
  v3 = v0[37];

  return sub_226F10AC8(v1);
}

uint64_t sub_226F1555C()
{
  v1 = v0[59];

  v2 = v0[61];
  v0[71] = v2;
  v3 = swift_task_alloc();
  v0[72] = v3;
  *v3 = v0;
  v3[1] = sub_226F15170;
  v4 = v0[37];

  return sub_226F10AC8(v2);
}

uint64_t sub_226F15600()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[70];
  v0[71] = v1;
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_226F15170;
  v3 = v0[37];

  return sub_226F10AC8(v1);
}

uint64_t sub_226F156A4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 424);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 320);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226F15780()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 424);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 320);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226F1587C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_226F159A0;

  return v8(v2, v3);
}

uint64_t sub_226F159A0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226F15AA0@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v50 = a2;
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276694D0();
  sub_226F18AA0(v15, a1);

  if (!v3)
  {
    v47 = a1;
    v48 = 0;
    v51 = v5;
    v17 = v49;
    sub_22766A6B0();

    v18 = sub_22766B380();
    v19 = sub_22766C8B0();

    if (os_log_type_enabled(v18, v19))
    {
      v43 = v19;
      v44 = v18;
      v45 = v11;
      v46 = v10;
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      v42 = v20;
      *v20 = 136315138;
      v21 = *(v50 + 16);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v40 = v14;
        v55 = MEMORY[0x277D84F90];
        sub_226F1EF50(0, v21, 0);
        v22 = v55;
        v23 = v50 + 32;
        do
        {
          sub_226E91B50(v23, v52);
          v24 = v53;
          v25 = v54;
          __swift_project_boxed_opaque_existential_0(v52, v53);
          (*(v25 + 32))(v24, v25);
          __swift_destroy_boxed_opaque_existential_0(v52);
          v55 = v22;
          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_226F1EF50(v26 > 1, v27 + 1, 1);
            v22 = v55;
          }

          *(v22 + 16) = v27 + 1;
          (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v9, v51);
          v23 += 40;
          --v21;
        }

        while (v21);
        v17 = v49;
        v29 = v50;
        v30 = v47;
        v14 = v40;
        v31 = v51;
      }

      else
      {
        v29 = v50;
        v31 = v51;
        v30 = v47;
      }

      v32 = MEMORY[0x22AA98660](v22, v31);
      v34 = v33;

      v35 = sub_226E97AE8(v32, v34, &v56);

      v36 = v42;
      *(v42 + 1) = v35;
      v37 = v44;
      _os_log_impl(&dword_226E8E000, v44, v43, "Fetching %s changesets from local db.", v36, 0xCu);
      v38 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);

      v28 = (*(v45 + 8))(v14, v46);
    }

    else
    {

      v28 = (*(v11 + 8))(v14, v10);
      v29 = v50;
      v30 = v47;
    }

    MEMORY[0x28223BE20](v28);
    *(&v40 - 2) = v30;
    v39 = v48;
    result = sub_2275F1438(sub_226F196A0, (&v40 - 4), v29);
    if (!v39)
    {
      *v17 = result;
    }
  }

  return result;
}

uint64_t sub_226F15EDC(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  result = (*(v7 + 56))(a2, v6, v7);
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_226F15F60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F16020, 0, 0);
}

uint64_t sub_226F16020()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[3] + 96), *(v0[3] + 120));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_226F160C8;
  v3 = v0[2];

  return sub_22706A37C(v3);
}

uint64_t sub_226F160C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v3[13] = v1;
    v6 = swift_task_alloc();
    v3[14] = v6;
    *v6 = v5;
    v6[1] = sub_226F166BC;
    v7 = v1;
    v8 = v3[3];

    return sub_226F10AC8(v7);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226F16250, 0, 0);
  }
}

uint64_t sub_226F16250()
{
  v29 = v0;
  v1 = v0[8];
  v2 = v0[6];
  sub_22766A6B0();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[5];
    v27 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446210;
    sub_226F0EB24(v6);
    v11 = MEMORY[0x22AA98660]();
    v13 = v12;

    v14 = sub_226E97AE8(v11, v13, &v28);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Got keys for %{public}s. Saving.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v27, v8);
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[8];
  v19 = v0[3];
  v20 = v19[33];
  __swift_project_boxed_opaque_existential_0(v19 + 29, v19[32]);
  v21 = swift_allocObject();
  v0[10] = v21;
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  v22 = *(v20 + 24);

  v26 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[11] = v24;
  *v24 = v0;
  v24[1] = sub_226F1653C;

  return v26();
}

uint64_t sub_226F1653C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_226F1683C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_226F16658;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F16658()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226F166BC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226F168E0;
  }

  else
  {
    v3 = sub_226F167D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F167D0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226F1683C()
{
  v1 = v0[10];

  v2 = v0[12];
  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_226F166BC;
  v4 = v0[3];

  return sub_226F10AC8(v2);
}

uint64_t sub_226F168E0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_226F16950(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_2276694E0();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F16A6C, 0, 0);
}

uint64_t sub_226F16A6C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  sub_22766A6B0();
  sub_22766B370();
  (*(v1 + 8))(v2, v3);
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 56);
  v34 = v5;

  result = swift_beginAccess();
  v12 = 0;
  v13 = (63 - v8) >> 6;
  v14 = (v4 + 8);
  v35 = MEMORY[0x277D84F90];
  v33 = v6;
  if (!v10)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      (*(v4 + 16))(*(v0 + 152), *(v34 + 48) + *(v4 + 72) * (v16 | (v12 << 6)), *(v0 + 136));
      v17 = *(v6 + 352);
      if (!*(v17 + 16))
      {
        goto LABEL_7;
      }

      v18 = *(v0 + 152);
      v19 = *(v6 + 352);

      v20 = sub_226F39E30(v18);
      if (v21)
      {
        break;
      }

LABEL_7:
      result = (*v14)(*(v0 + 152), *(v0 + 136));
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 152);
    v23 = *(v0 + 136);
    sub_226E91B50(*(v17 + 56) + 40 * v20, v0 + 56);
    (*v14)(v22, v23);

    sub_226E92AB8((v0 + 56), v0 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_2273A4CC4(0, v35[2] + 1, 1, v35);
    }

    v25 = v35[2];
    v24 = v35[3];
    v6 = v33;
    if (v25 >= v24 >> 1)
    {
      v35 = sub_2273A4CC4((v24 > 1), v25 + 1, 1, v35);
    }

    v35[2] = v25 + 1;
    result = sub_226E92AB8((v0 + 16), &v35[5 * v25 + 4]);
  }

  while (v10);
  while (1)
  {
LABEL_8:
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v13)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 128);

  v28 = v27[33];
  __swift_project_boxed_opaque_existential_0(v27 + 29, v27[32]);
  v29 = swift_allocObject();
  *(v0 + 184) = v29;
  *(v29 + 16) = v35;
  v30 = *(v28 + 24);
  v36 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  *(v0 + 192) = v32;
  *v32 = v0;
  v32[1] = sub_226F16E58;

  return v36();
}

uint64_t sub_226F16E58()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_226F16FE4;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_226F16F74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F16F74()
{
  v1 = v0[22];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226F16FE4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_226F1705C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 32;
    do
    {
      sub_226E91B50(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 72))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      if (v2)
      {
        break;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_226F17110(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 32;
    do
    {
      sub_226E91B50(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 64))(v4, v6, v7);
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      if (v2)
      {
        break;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_226F171C4(void *a1, uint64_t a2)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a1;
    v16 = v15;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v16 = 136446210;
    sub_2276694E0();
    v33 = v4;
    sub_226F1950C(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v17 = sub_22766C610();
    v19 = sub_226E97AE8(v17, v18, &v36);
    v30 = a2;
    v20 = v8;
    v21 = v5;
    v22 = v19;
    v4 = v33;

    *(v16 + 4) = v22;
    v5 = v21;
    v8 = v20;
    _os_log_impl(&dword_226E8E000, v13, v14, "Marking %{public}s as dirty.", v16, 0xCu);
    v23 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v23, -1, -1);
    v24 = v16;
    a1 = v32;
    MEMORY[0x22AA9A450](v24, -1, -1);

    v25 = v12;
    v26 = v30;
    (*(v34 + 8))(v25, v35);
  }

  else
  {

    (*(v34 + 8))(v12, v35);
    v26 = a2;
  }

  sub_227662740();
  v27 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x28223BE20](v27);
  *(&v30 - 2) = v8;
  v28 = sub_2275F1924(sub_226F18A80, (&v30 - 4), v26);
  sub_227555420(v28, v27[1], *(v27 + 16), v27[3]);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_226F17554(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

unint64_t *sub_226F17670(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226F17950(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_226F1770C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226F181E8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_226F177A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226F17854;

  return sub_226F0FB98(a1, v4, v5);
}

uint64_t sub_226F17854(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226F17950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a1;
  v50 = sub_2276694E0();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v41 = a4;
  result = swift_beginAccess();
  v19 = 0;
  v20 = (v15 + 63) >> 6;
  v38 = 0;
  v39 = v8 + 16;
  v40 = v8;
  v42 = (v8 + 8);
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v24 = v21 | (v19 << 6);
    (*(v40 + 16))(v11, *(v43 + 48) + *(v40 + 72) * v24, v50);
    v25 = *(v41 + 352);
    if (!*(v25 + 16))
    {
      goto LABEL_19;
    }

    v26 = *(v41 + 352);

    v27 = sub_226F39E30(v11);
    if (v28)
    {
      sub_226E91B50(*(v25 + 56) + 40 * v27, &v47);

      if (!*(&v48 + 1))
      {
        goto LABEL_20;
      }

      sub_226E91B50(&v47, v44);
      sub_226E97D1C(&v47, &qword_27D7B8450, &qword_227682050);
      v35 = v5;
      v29 = v45;
      v30 = v46;
      __swift_project_boxed_opaque_existential_0(v44, v45);
      v31 = *(v30 + 16);
      v32 = v30;
      v5 = v35;
      LOBYTE(v29) = v31(v29, v32);
      __swift_destroy_boxed_opaque_existential_0(v44);
      result = (*v42)(v11, v50);
      if (v29)
      {
        *(v37 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {

LABEL_19:
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
LABEL_20:
      sub_226E97D1C(&v47, &qword_27D7B8450, &qword_227682050);
      result = (*v42)(v11, v50);
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      v34 = v43;

      return sub_227268FCC(v37, v36, v38, v34);
    }

    v23 = *(v13 + 8 * v19);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v17 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_226F17C84(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v42 = sub_2276694E0();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v43 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v35 = v8;
    v34[1] = v34;
    MEMORY[0x28223BE20](v10);
    v37 = v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & *(a1 + 56);
    swift_beginAccess();
    v13 = 0;
    v14 = (v9 + 63) >> 6;
    v40 = v4 + 16;
    v41 = v4;
    v38 = 0;
    v39 = (v4 + 8);
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = v15 | (v13 << 6);
      v4 = a1;
      (*(v41 + 16))(v43, *(a1 + 48) + *(v41 + 72) * v18, v42);
      v19 = *(a2 + 352);
      if (!*(v19 + 16))
      {
        goto LABEL_20;
      }

      v20 = *(a2 + 352);

      v21 = sub_226F39E30(v43);
      if (v22)
      {
        sub_226E91B50(*(v19 + 56) + 40 * v21, &v47);

        if (!*(&v48 + 1))
        {
          goto LABEL_21;
        }

        sub_226E91B50(&v47, v44);
        sub_226E97D1C(&v47, &qword_27D7B8450, &qword_227682050);
        v34[0] = a2;
        v23 = v45;
        v24 = v46;
        __swift_project_boxed_opaque_existential_0(v44, v45);
        v25 = *(v24 + 16);
        v26 = v24;
        a2 = v34[0];
        v9 = v25(v23, v26);
        __swift_destroy_boxed_opaque_existential_0(v44);
        (*v39)(v43, v42);
        a1 = v4;
        if (v9)
        {
          *&v37[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v38++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

LABEL_20:
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
LABEL_21:
        sub_226E97D1C(&v47, &qword_27D7B8450, &qword_227682050);
        (*v39)(v43, v42);
        a1 = v4;
      }
    }

    v16 = v13;
    while (1)
    {
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        v28 = sub_227268FCC(v37, v35, v38, a1);

        goto LABEL_23;
      }

      v17 = *(v8 + 8 * v13);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = a1;
  v32 = swift_slowAlloc();

  v33 = v36;
  v28 = sub_226F17670(v32, v8, v31, a2);

  MEMORY[0x22AA9A450](v32, -1, -1);

  v36 = v33;
LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_226F18108@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226F1813C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226F19768;

  return sub_226F103D4(a1, v4, v5);
}

uint64_t sub_226F181E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v38 = a1;
  v8 = type metadata accessor for DirtySyncZone();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v47 = a4;
  result = swift_beginAccess();
  v39 = 0;
  v17 = 0;
  v18 = (v13 + 63) >> 6;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v22 = v19 | (v17 << 6);
    sub_226F19570(*(a3 + 48) + *(v40 + 72) * v22, v11, type metadata accessor for DirtySyncZone);
    v23 = *(v47 + 352);
    if (!*(v23 + 16))
    {
      goto LABEL_19;
    }

    v24 = *(v47 + 352);

    v25 = sub_226F39E30(v11);
    if (v26)
    {
      sub_226E91B50(*(v23 + 56) + 40 * v25, &v44);

      if (!*(&v45 + 1))
      {
        goto LABEL_20;
      }

      sub_226E91B50(&v44, v41);
      sub_226E97D1C(&v44, &qword_27D7B8450, &qword_227682050);
      v35 = a3;
      v36 = v5;
      v27 = v42;
      v28 = v43;
      __swift_project_boxed_opaque_existential_0(v41, v42);
      v29 = *(v28 + 16);
      v30 = v27;
      v31 = v28;
      a3 = v35;
      v5 = v36;
      v32 = v29(v30, v31);
      __swift_destroy_boxed_opaque_existential_0(v41);
      result = sub_226F19640(v11, type metadata accessor for DirtySyncZone);
      if (v32)
      {
        *(v38 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v39++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {

LABEL_19:
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
LABEL_20:
      sub_226E97D1C(&v44, &qword_27D7B8450, &qword_227682050);
      result = sub_226F19640(v11, type metadata accessor for DirtySyncZone);
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= v18)
    {

      return sub_2272692F4(v38, v37, v39, a3);
    }

    v21 = *(v12 + 8 * v17);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v15 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_226F184E8(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DirtySyncZone();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v36 = &v34;
    v37 = v8;
    MEMORY[0x28223BE20](v10);
    v39 = &v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v9);
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & *(a1 + 56);
    swift_beginAccess();
    v40 = 0;
    v13 = 0;
    v14 = (v9 + 63) >> 6;
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = v15 | (v13 << 6);
      v19 = a1;
      sub_226F19570(*(a1 + 48) + *(v41 + 72) * v18, v42, type metadata accessor for DirtySyncZone);
      v20 = *(a2 + 352);
      if (!*(v20 + 16))
      {
        goto LABEL_20;
      }

      v21 = *(a2 + 352);

      v22 = sub_226F39E30(v42);
      if (v23)
      {
        sub_226E91B50(*(v20 + 56) + 40 * v22, &v46);

        if (!*(&v47 + 1))
        {
          goto LABEL_21;
        }

        sub_226E91B50(&v46, v43);
        sub_226E97D1C(&v46, &qword_27D7B8450, &qword_227682050);
        v35 = a2;
        v25 = v44;
        v24 = v45;
        __swift_project_boxed_opaque_existential_0(v43, v44);
        v26 = v25;
        a2 = v35;
        v9 = (*(v24 + 16))(v26, v24);
        __swift_destroy_boxed_opaque_existential_0(v43);
        sub_226F19640(v42, type metadata accessor for DirtySyncZone);
        a1 = v19;
        if (v9)
        {
          *&v39[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

LABEL_20:
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
LABEL_21:
        sub_226E97D1C(&v46, &qword_27D7B8450, &qword_227682050);
        sub_226F19640(v42, type metadata accessor for DirtySyncZone);
        a1 = v19;
      }
    }

    v16 = v13;
    while (1)
    {
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        v28 = sub_2272692F4(v39, v37, v40, a1);

        goto LABEL_23;
      }

      v17 = *(v8 + 8 * v13);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = a1;
  v32 = swift_slowAlloc();

  v33 = v38;
  v28 = sub_226F1770C(v32, v8, v31, a2);

  MEMORY[0x22AA9A450](v32, -1, -1);

  v38 = v33;
LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

unint64_t sub_226F1893C()
{
  result = qword_281399240[0];
  if (!qword_281399240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281399240);
  }

  return result;
}

uint64_t sub_226F18990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8430, &qword_227670960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226F18AA0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v75 - v7;
  v86 = sub_2276694E0();
  v80 = *(v86 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v86);
  v78 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6B0();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v17;

  sub_22766A070();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  swift_getKeyPath();
  v79 = a1;
  v26 = sub_226F0EE04(a1);
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v85[0] = v26;
  sub_226F06498();

  v27 = sub_22766C820();
  sub_226E93170(v85, v83, &unk_27D7BC990, &qword_227670A30);
  v28 = v84;
  v81 = v2;
  if (v84)
  {
    v29 = __swift_project_boxed_opaque_existential_0(v83, v84);
    v30 = *(v28 - 8);
    v31 = *(v30 + 64);
    MEMORY[0x28223BE20](v29);
    v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33);
    v34 = sub_22766D170();
    (*(v30 + 8))(v33, v28);
    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v85, &unk_27D7BC990, &qword_227670A30);
  v36 = &qword_2813B2078;
  swift_beginAccess();
  v37 = sub_22766A080();
  v39 = v38;
  MEMORY[0x22AA985C0]();
  v40 = v82;
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_26:
    sub_22766C360();
  }

  sub_22766C3A0();
  (v37)(v85, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v42 = v81;
  v43 = sub_2273FC6D0(KeyPath);
  if (v42)
  {

    swift_setDeallocating();

    v44 = *(v23 + 40);

    v45 = *v36;
    v46 = sub_22766A100();
    (*(*(v46 - 8) + 8))(v23 + v45, v46);
    v47 = *(*v23 + 48);
    v48 = *(*v23 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v37 = sub_226F3E6A8(v43);

    swift_setDeallocating();

    v50 = *(v23 + 40);

    v51 = *v36;
    v52 = sub_22766A100();
    (*(*(v52 - 8) + 8))(v23 + v51, v52);
    v53 = *(*v23 + 48);
    v54 = *(*v23 + 52);
    swift_deallocClassInstance();
    v36 = (v37 + 56);
    v55 = 1 << *(v37 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v37 + 56);
    v58 = (v55 + 63) >> 6;
    v59 = (v80 + 48);
    v77 = (v80 + 32);

    v60 = 0;
    v81 = MEMORY[0x277D84F90];
    while (v57)
    {
      v23 = v60;
LABEL_15:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = (*(v37 + 48) + ((v23 << 10) | (16 * v61)));
      v64 = *v62;
      v63 = v62[1];

      sub_2276694B0();
      if ((*v59)(v40, 1, v86) == 1)
      {
        sub_226E97D1C(v40, &qword_27D7B8460, qword_2276709E0);
        v60 = v23;
      }

      else
      {
        v76 = *v77;
        v76(v78, v40, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2273A4E0C(0, v81[2] + 1, 1, v81);
        }

        v66 = v81[2];
        v65 = v81[3];
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v75 = v66 + 1;
          v70 = sub_2273A4E0C(v65 > 1, v66 + 1, 1, v81);
          v67 = v75;
          v81 = v70;
        }

        v68 = v80;
        v69 = v81;
        v81[2] = v67;
        v76(&v69[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66], v78, v86);
        v60 = v23;
      }
    }

    while (1)
    {
      v23 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v23 >= v58)
      {
        break;
      }

      v57 = v36[v23];
      ++v60;
      if (v57)
      {
        goto LABEL_15;
      }
    }

    v71 = v79;

    v72 = sub_227006648(v81, v71);

    if (*(v72 + 16))
    {
      v73 = sub_22766AF20();
      sub_226F1950C(&unk_281399230, MEMORY[0x277D544D0]);
      swift_allocError();
      *v74 = v72;
      (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D544B0], v73);
      return swift_willThrow();
    }

    else
    {
    }
  }
}

uint64_t sub_226F193CC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_2275544A0(v2, v3[1], *(v3 + 16), v3[3]);
}

unint64_t sub_226F19410()
{
  result = qword_27D7B8458;
  if (!qword_27D7B8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8458);
  }

  return result;
}

unint64_t sub_226F19464()
{
  result = qword_27D7BB8E0;
  if (!qword_27D7BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB8E0);
  }

  return result;
}

uint64_t sub_226F1950C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F19570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F195D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F19640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_41Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

char *sub_226F19718@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22712E580(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226F19774(uint64_t a1)
{
  v72 = sub_2276658E0();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v63 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v70 = v62 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
    v43 = *(MEMORY[0x277D84F90] + 16);
    v45 = MEMORY[0x277D84F90];
    if (!v43)
    {
LABEL_51:

      return v45;
    }

LABEL_34:
    v46 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v46 >= *(v15 + 16))
      {
        goto LABEL_56;
      }

      v47 = v15;
      v48 = v15 + 8 * v46;
      v49 = *(v48 + 32);
      v50 = *(v49 + 16);
      v51 = v45[2];
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_57;
      }

      v53 = *(v48 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v52 <= v45[3] >> 1)
      {
        if (!*(v49 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v55 = v51 + v50;
        }

        else
        {
          v55 = v51;
        }

        v45 = sub_2273A4E34(isUniquelyReferenced_nonNull_native, v55, 1, v45);
        if (!*(v49 + 16))
        {
LABEL_35:

          if (v50)
          {
            goto LABEL_58;
          }

          goto LABEL_36;
        }
      }

      v56 = (v45[3] >> 1) - v45[2];
      result = sub_2276640B0();
      v57 = *(result - 8);
      if (v56 < v50)
      {
        goto LABEL_59;
      }

      v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v59 = *(v57 + 72);
      swift_arrayInitWithCopy();

      if (v50)
      {
        v60 = v45[2];
        v38 = __OFADD__(v60, v50);
        v61 = v60 + v50;
        if (v38)
        {
          goto LABEL_60;
        }

        v45[2] = v61;
      }

LABEL_36:
      ++v46;
      v15 = v47;
      if (v43 == v46)
      {
        goto LABEL_51;
      }
    }
  }

  v74 = MEMORY[0x277D84F90];
  v62[1] = result;
  sub_226F1F110(0, v13, 0);
  v14 = 0;
  v15 = v74;
  v68 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v71 = v2 + 16;
  v62[0] = v2;
  v16 = (v2 + 8);
  v17 = *(v7 + 72);
  v66 = v13;
  v67 = v17;
  v18 = v63;
  while (1)
  {
    v69 = v14;
    v19 = v70;
    sub_226F19D3C(v68 + v67 * v14, v70);
    sub_226F19D3C(v19, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v40 = sub_2276685C0();
        (*(*(v40 - 8) + 8))(v18, v40);
      }

      result = sub_226F19DA0(v70);
      v25 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    result = sub_226F19DA0(v70);
    v25 = *v18;
LABEL_29:
    v74 = v15;
    v42 = *(v15 + 16);
    v41 = *(v15 + 24);
    v43 = v42 + 1;
    v44 = v69;
    if (v42 >= v41 >> 1)
    {
      result = sub_226F1F110((v41 > 1), v42 + 1, 1);
      v44 = v69;
      v15 = v74;
    }

    v14 = v44 + 1;
    *(v15 + 16) = v43;
    *(v15 + 8 * v42 + 32) = v25;
    if (v14 == v66)
    {
      goto LABEL_34;
    }
  }

  v21 = *v18;
  v22 = *(*v18 + 16);
  if (!v22)
  {

    v25 = MEMORY[0x277D84F90];
LABEL_28:
    result = sub_226F19DA0(v70);
    goto LABEL_29;
  }

  v64 = *v18;
  v65 = v15;
  v23 = v21 + ((*(v62[0] + 80) + 32) & ~*(v62[0] + 80));
  v73 = *(v62[0] + 72);
  v24 = *(v62[0] + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v26 = v72;
    v24(v5, v23, v72);
    v27 = sub_2276658C0();
    result = (*v16)(v5, v26);
    v28 = *(v27 + 16);
    v29 = v25[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    if (v31 && v30 <= v25[3] >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v25 = sub_2273A4E34(v31, v32, 1, v25);
      if (*(v27 + 16))
      {
LABEL_18:
        v33 = (v25[3] >> 1) - v25[2];
        result = sub_2276640B0();
        v34 = *(result - 8);
        if (v33 < v28)
        {
          goto LABEL_54;
        }

        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v36 = *(v34 + 72);
        swift_arrayInitWithCopy();

        if (v28)
        {
          v37 = v25[2];
          v38 = __OFADD__(v37, v28);
          v39 = v37 + v28;
          if (v38)
          {
            goto LABEL_55;
          }

          v25[2] = v39;
        }

        goto LABEL_8;
      }
    }

    if (v28)
    {
      goto LABEL_53;
    }

LABEL_8:
    v23 += v73;
    if (!--v22)
    {

      v15 = v65;
      v18 = v63;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_226F19D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227665BB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F19DA0(uint64_t a1)
{
  v2 = sub_227665BB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_226F19E10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_226F19E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_226F19EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - v7;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276682D0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226F1B5DC(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = *v17;
        swift_getKeyPath();
        *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
        *&v56 = v19;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v20 = sub_22766C820();
        sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
        v21 = v55;
        if (!v55)
        {
          v31 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *v17;
        swift_getKeyPath();
        *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
        *&v56 = v25;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v20 = sub_22766C820();
        sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
        v21 = v55;
        if (!v55)
        {
          v31 = 0;
          goto LABEL_21;
        }
      }

      v26 = __swift_project_boxed_opaque_existential_0(v54, v55);
      v27 = *(v21 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20](v26);
      v30 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30);
      v31 = sub_22766D170();
      (*(v27 + 8))(v30, v21);
      __swift_destroy_boxed_opaque_existential_0(v54);
LABEL_21:
      v48 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v49 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];
LABEL_24:
      v50 = v49;

      goto LABEL_25;
    }

    v23 = *v17;
    swift_getKeyPath();
    *(&v57 + 1) = MEMORY[0x277D839F8];
    *&v56 = v23;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
    v24 = v55;
    if (!v55)
    {
      v38 = 0;
      goto LABEL_23;
    }

LABEL_14:
    v33 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v34 = *(v24 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v24);
    __swift_destroy_boxed_opaque_existential_0(v54);
LABEL_23:
    v48 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v49 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    v32 = *v17;
    swift_getKeyPath();
    *(&v57 + 1) = MEMORY[0x277D839F8];
    *&v56 = v32;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
    v24 = v55;
    if (!v55)
    {
      v38 = 0;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v22 = *(v10 + 32);
  v22(v13, v17, v9);
  swift_getKeyPath();
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_226E93170(v8, v6, &qword_27D7B9690, qword_227670B50);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
    v56 = 0u;
    v57 = 0u;
  }

  else
  {
    *(&v57 + 1) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
    v22(boxed_opaque_existential_0, v6, v9);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v40 = sub_22766C820();
  sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
  v41 = v55;
  if (v55)
  {
    v42 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v53[1] = v53;
    v43 = *(v41 - 8);
    v44 = *(v43 + 64);
    MEMORY[0x28223BE20](v42);
    v46 = v53 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v46);
    v47 = sub_22766D170();
    (*(v43 + 8))(v46, v41);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v47 = 0;
  }

  v52 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v50 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
  (*(v10 + 8))(v13, v9);
LABEL_25:
  sub_226E97D1C(&v56, &unk_27D7BC990, &qword_227670A30);
  return v50;
}

id sub_226F1A9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v59 - v7;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276682D0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226F1B5DC(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *(v10 + 32);
      v22(v13, v17, v9);
      swift_getKeyPath();
      (*(v10 + 16))(v8, v13, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_226E93170(v8, v6, &qword_27D7B9690, qword_227670B50);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
        v62 = 0u;
        v63 = 0u;
      }

      else
      {
        *(&v63 + 1) = v9;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
        v22(boxed_opaque_existential_0, v6, v9);
      }

      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v41 = sub_22766C820();
      sub_226E93170(&v62, v60, &unk_27D7BC990, &qword_227670A30);
      v42 = v61;
      if (v61)
      {
        v43 = __swift_project_boxed_opaque_existential_0(v60, v61);
        v59[1] = v59;
        v44 = *(v42 - 8);
        v45 = *(v44 + 64);
        MEMORY[0x28223BE20](v43);
        v47 = v59 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47);
        v48 = sub_22766D170();
        (*(v44 + 8))(v47, v42);
        __swift_destroy_boxed_opaque_existential_0(v60);
      }

      else
      {
        v48 = 0;
      }

      v57 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v55 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

      sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
      (*(v10 + 8))(v13, v9);
      goto LABEL_26;
    }

    v33 = *v17;
    swift_getKeyPath();
    *(&v63 + 1) = MEMORY[0x277D839F8];
    *&v62 = v33;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v24 = sub_22766C820();
    sub_226E93170(&v62, v60, &unk_27D7BC990, &qword_227670A30);
    v25 = v61;
    if (!v61)
    {
      v39 = 0;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = *v17;
    swift_getKeyPath();
    *(&v63 + 1) = MEMORY[0x277D839F8];
    *&v62 = v23;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v24 = sub_22766C820();
    sub_226E93170(&v62, v60, &unk_27D7BC990, &qword_227670A30);
    v25 = v61;
    if (!v61)
    {
      v39 = 0;
      goto LABEL_23;
    }

LABEL_14:
    v34 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v35 = *(v25 - 8);
    v36 = *(v35 + 64);
    MEMORY[0x28223BE20](v34);
    v38 = v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v25);
    __swift_destroy_boxed_opaque_existential_0(v60);
LABEL_23:
    v56 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v55 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

LABEL_26:
    sub_226E97D1C(&v62, &unk_27D7BC990, &qword_227670A30);
    return v55;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v19 = *v17;
    swift_getKeyPath();
    *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *&v62 = v19;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(&v62, v60, &unk_27D7BC990, &qword_227670A30);
    v21 = v61;
    if (!v61)
    {
      v32 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = *v17;
    swift_getKeyPath();
    *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *&v62 = v26;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v20 = sub_22766C820();
    sub_226E93170(&v62, v60, &unk_27D7BC990, &qword_227670A30);
    v21 = v61;
    if (!v61)
    {
      v32 = 0;
      goto LABEL_21;
    }
  }

  v27 = __swift_project_boxed_opaque_existential_0(v60, v61);
  v28 = *(v21 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31);
  v32 = sub_22766D170();
  (*(v28 + 8))(v31, v21);
  __swift_destroy_boxed_opaque_existential_0(v60);
LABEL_21:
  v49 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v50 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(&v62, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_227670B30;
  *(v51 + 32) = v50;
  v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A0, qword_227670BC0));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v53 = v50;
  v54 = sub_22766C2B0();

  v55 = [v52 initWithType:0 subpredicates:v54];

  return v55;
}

uint64_t sub_226F1B5DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276682D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F1B67C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v19[3] = a3;
  v19[1] = a2;
  v9 = sub_227669F90();
  v19[0] = *(v9 - 8);
  v10 = *(v19[0] + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
  v14 = *(a4 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_227670CD0;
  (*(v14 + 16))(v17 + v16, v7, a4);
  sub_227555E90(v17, v13[1], *(v13 + 16), v13[3]);

  if (!v5)
  {
    swift_getObjectType();
    sub_227669F80();
    sub_2276699D0();
    return (*(v19[0] + 8))(v12, v9);
  }

  return result;
}

unint64_t sub_226F1B878(uint64_t a1)
{
  result = sub_226F1B8A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_226F1B8A0()
{
  result = qword_2813A5790;
  if (!qword_2813A5790)
  {
    sub_227664AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5790);
  }

  return result;
}

uint64_t sub_226F1B8F8(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v98 = sub_227666F60();
  v3 = *(v98 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v98);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_227663DD0();
  v6 = *(v99 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v99);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v103 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - v13;
  v15 = sub_227663590();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2276640B0();
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v72 - v25;
  v27 = sub_227664990();
  v104 = *(v27 - 8);
  v105 = v27;
  v28 = *(v104 + 64);
  MEMORY[0x28223BE20](v27);
  v107 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_227665BB0();
  v106 = *(v74 - 8);
  v30 = *(v106 + 8);
  v31 = MEMORY[0x28223BE20](v74);
  v87 = (&v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v86 = &v72 - v33;
  v81 = sub_227666260();
  v80 = *(v81 - 8);
  v34 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a2 + 16);
  if (!v37)
  {
    return MEMORY[0x277D84F90];
  }

  v79 = v36;
  v109 = MEMORY[0x277D84F90];
  v101 = v3;
  v78 = v37;
  sub_226F1F170(0, v37, 0);
  v38 = 0;
  v100 = 0;
  v88 = v109;
  v77 = a2 + ((v106[80] + 32) & ~v106[80]);
  v97 = (v101 + 32);
  v91 = (v6 + 48);
  v92 = (v16 + 32);
  v82 = (v6 + 32);
  v90 = (v16 + 8);
  v76 = *(v106 + 9);
  v101 = v19;
  v106 = v26;
  v102 = v15;
  v93 = v24;
  v94 = v20;
  do
  {
    v85 = v38;
    v39 = v77 + v76 * v38;
    v40 = MEMORY[0x277D51C78];
    v41 = v86;
    sub_226F1C48C(v39, v86, MEMORY[0x277D51C78]);
    sub_226F1C48C(v41, v87, v40);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226F1C5EC(v86, MEMORY[0x277D51C78]);
        v44 = v79;
        *v79 = *v87;
      }

      else
      {
        sub_226F1C5EC(v86, MEMORY[0x277D51C78]);
        v64 = sub_2276685C0();
        v44 = v79;
        (*(*(v64 - 8) + 32))(v79, v87, v64);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v45 = *v87;
      v46 = *(*v87 + 16);
      if (v46)
      {
        v108 = MEMORY[0x277D84F90];
        v47 = v45;
        sub_226F1F150(0, v46, 0);
        v48 = v108;
        v49 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v75 = v47;
        v50 = v47 + v49;
        v51 = *(v73 + 72);
        v95 = v51;
        do
        {
          v52 = MEMORY[0x277D506B8];
          sub_226F1C48C(v50, v26, MEMORY[0x277D506B8]);
          sub_226F1C48C(v26, v24, v52);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v53 = (*v92)(v19, v24, v102);
            MEMORY[0x28223BE20](v53);
            *(&v72 - 2) = v19;
            v54 = v103;
            v55 = v100;
            sub_227543988(sub_226F1C4F4, v96, v14);
            v100 = v55;
            sub_226F1C514(v14, v54);
            if ((*v91)(v54, 1, v99) == 1)
            {
              sub_226F1C584(v103);
              sub_227663560();
              v89 = v56;
              sub_227663570();
              sub_227663580();
              v57 = v84;
              v58 = v98;
              sub_227666F30();
              sub_226F1C584(v14);
              sub_226F1C5EC(v106, MEMORY[0x277D506B8]);
              (*v97)(v107, v57, v58);
            }

            else
            {
              sub_226F1C584(v14);
              sub_226F1C5EC(v106, MEMORY[0x277D506B8]);
              v59 = *v82;
              v60 = v83;
              v61 = v99;
              (*v82)(v83, v103, v99);
              v59(v107, v60, v61);
            }

            swift_storeEnumTagMultiPayload();
            (*v90)(v19, v102);
            v24 = v93;
            v51 = v95;
          }

          else
          {
            sub_226F1C5EC(v26, MEMORY[0x277D506B8]);
            (*v97)(v107, v24, v98);
            swift_storeEnumTagMultiPayload();
          }

          v108 = v48;
          v63 = *(v48 + 16);
          v62 = *(v48 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_226F1F150(v62 > 1, v63 + 1, 1);
            v48 = v108;
          }

          *(v48 + 16) = v63 + 1;
          sub_226F1C64C(v107, v48 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v63, MEMORY[0x277D50C70]);
          v50 += v51;
          --v46;
          v19 = v101;
          v26 = v106;
        }

        while (v46);
        sub_226F1C5EC(v86, MEMORY[0x277D51C78]);
      }

      else
      {

        sub_226F1C5EC(v86, MEMORY[0x277D51C78]);
        v48 = MEMORY[0x277D84F90];
      }

      v44 = v79;
      *v79 = v48;
    }

    else
    {
      v43 = sub_227140CF0(v96, *v87);

      sub_226F1C5EC(v86, MEMORY[0x277D51C78]);
      v44 = v79;
      *v79 = v43;
    }

    swift_storeEnumTagMultiPayload();
    v65 = v88;
    v109 = v88;
    v67 = *(v88 + 16);
    v66 = *(v88 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_226F1F170(v66 > 1, v67 + 1, 1);
      v44 = v79;
      v65 = v109;
    }

    v68 = v85 + 1;
    *(v65 + 16) = v67 + 1;
    v69 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v88 = v65;
    v70 = v44;
    v38 = v68;
    sub_226F1C64C(v70, v65 + v69 + *(v80 + 72) * v67, MEMORY[0x277D52220]);
    v26 = v106;
  }

  while (v38 != v78);
  return v88;
}

uint64_t sub_226F1C48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F1C514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F1C584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F1C5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226F1C64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226F1C6B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227665C20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_227667400();
  v178 = *(v174 - 1);
  v8 = *(v178 + 64);
  v9 = MEMORY[0x28223BE20](v174);
  v166 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v167 = &v141 - v11;
  v170 = sub_227662190();
  v164 = *(v170 - 8);
  v12 = *(v164 + 8);
  MEMORY[0x28223BE20](v170);
  v171 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_227665440();
  v14 = *(v180 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v180);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v169 = &v141 - v20;
  MEMORY[0x28223BE20](v19);
  v168 = (&v141 - v21);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8518, &qword_227670D70);
  v172 = *(v179 - 8);
  v22 = *(v172 + 64);
  v23 = MEMORY[0x28223BE20](v179);
  v177 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v176 = &v141 - v26;
  MEMORY[0x28223BE20](v25);
  v175 = &v141 - v27;
  v28 = sub_2276622D0();
  v165 = *(v28 - 8);
  v29 = v165[8];
  MEMORY[0x28223BE20](v28);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2276627D0();
  v173 = *(v32 - 8);
  v33 = *(v173 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v162 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v141 - v36;
  v38 = [a1 identifier];
  if (!v38)
  {
    goto LABEL_9;
  }

  v161 = a2;
  v39 = v38;
  sub_2276627B0();

  v40 = [a1 name];
  if (!v40)
  {
    (*(v173 + 8))(v37, v32);
LABEL_9:
    v49 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D51028], v49);
    swift_willThrow();

    return;
  }

  v159 = v18;
  v41 = v40;
  v156 = sub_22766C000();
  v43 = v42;

  v44 = [a1 schedule];
  if (!v44)
  {
    (*(v173 + 8))(v37, v32);

    goto LABEL_9;
  }

  v160 = v43;
  v158 = v44;
  v45 = [a1 modalityPreferences];
  if (!v45)
  {
    v51 = v37;
    v52 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    v53 = *(*(v52 - 8) + 104);
    v54 = v52;
    v37 = v51;
    v53(v55, *MEMORY[0x277D51028], v54);
    swift_willThrow();
    goto LABEL_11;
  }

  v46 = v45;
  v155 = v14;
  v47 = MEMORY[0x22AA99A00]();
  v48 = sub_2271531E0(v46);
  v157 = v2;
  if (v2)
  {
    objc_autoreleasePoolPop(v47);

LABEL_11:
    (*(v173 + 8))(v37, v32);

    return;
  }

  v144 = v32;
  v56 = v48;
  objc_autoreleasePoolPop(v47);
  v57 = sub_226F3E90C(v56);

  v58 = MEMORY[0x277D84F90];
  v185 = MEMORY[0x277D84F90];
  sub_22766CA80();
  sub_226F208A8(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (v184)
  {
    v154 = MEMORY[0x277D84F90];
    do
    {
      sub_226F04970(&v183, &v181);
      type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
      if ((swift_dynamicCast() & 1) != 0 && v182)
      {
        MEMORY[0x22AA985C0]();
        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v154 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v154 = v185;
      }

      sub_22766CBB0();
    }

    while (v184);
  }

  else
  {
    v154 = v58;
  }

  (v165[1])(v31, v28);
  v59 = v154;
  v153 = v37;
  v143 = v57;
  if (!(v154 >> 62))
  {
    v60 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v155;
    v62 = v174;
    if (v60)
    {
      goto LABEL_17;
    }

LABEL_52:
    v145 = a1;

    v64 = MEMORY[0x277D84F90];
LABEL_53:
    v100 = v157;
    v101 = sub_226F20DF4(v64);
    v157 = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8520, &qword_227670D78);
    v102 = sub_22766CFF0();
    v103 = 0;
    v104 = *(v101 + 64);
    v147 = (v101 + 64);
    v105 = 1 << *(v101 + 32);
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    v107 = v106 & v104;
    v146 = (v105 + 63) >> 6;
    v151 = v61 + 16;
    v108 = (v178 + 32);
    v174 = (v61 + 8);
    v149 = v102 + 64;
    v148 = v101;
    v152 = v102;
    v150 = v61 + 32;
    if (v107)
    {
      while (1)
      {
        v165 = ((v107 - 1) & v107);
        v167 = v103;
        v109 = __clz(__rbit64(v107)) | (v103 << 6);
LABEL_62:
        v113 = *(v101 + 48);
        v114 = *(v61 + 16);
        v170 = *(v61 + 72) * v109;
        v115 = v169;
        v116 = v180;
        v114(v169, v113 + v170, v180);
        v117 = *(v101 + 56);
        v171 = v109;
        v118 = v61;
        v119 = *(v117 + 8 * v109);
        v168 = *(v118 + 32);
        v168(v159, v115, v116);
        *&v183 = v119;
        swift_getKeyPath();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8528, &qword_227670DA0);
        sub_226E9CFD0(&qword_27D7B8530, &qword_27D7B8528, &qword_227670DA0);
        v120 = sub_22766C220();

        v121 = *(v120 + 16);
        if (v121)
        {
          v164 = v119;
          *&v183 = MEMORY[0x277D84F90];
          sub_226F1F1D0(0, v121, 0);
          v122 = v183;
          v123 = (*(v172 + 80) + 32) & ~*(v172 + 80);
          v154 = v120;
          v124 = v120 + v123;
          v175 = *(v172 + 72);
          v125 = v166;
          do
          {
            v126 = v176;
            sub_226E93170(v124, v176, &qword_27D7B8518, &qword_227670D70);
            v127 = v177;
            sub_226F208F0(v126, v177);
            v128 = *v108;
            (*v108)(v125, v127 + *(v179 + 64), v62);
            (*v174)(v127, v180);
            *&v183 = v122;
            v129 = v62;
            v131 = *(v122 + 16);
            v130 = *(v122 + 24);
            if (v131 >= v130 >> 1)
            {
              sub_226F1F1D0(v130 > 1, v131 + 1, 1);
              v122 = v183;
            }

            *(v122 + 16) = v131 + 1;
            v128(v122 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v131, v125, v129);
            v124 += v175;
            --v121;
            v62 = v129;
          }

          while (v121);

          v37 = v153;
          v61 = v155;
        }

        else
        {

          v122 = MEMORY[0x277D84F90];
          v61 = v118;
        }

        v101 = v148;
        v132 = v171;
        *(v149 + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        v133 = v152;
        v168((*(v152 + 48) + v170), v159, v180);
        *(*(v133 + 56) + 8 * v132) = v122;
        v134 = *(v133 + 16);
        v135 = __OFADD__(v134, 1);
        v136 = v134 + 1;
        if (v135)
        {
          break;
        }

        *(v133 + 16) = v136;
        v103 = v167;
        v107 = v165;
        if (!v165)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_57:
      v110 = v103;
      while (1)
      {
        v111 = (v110 + 1);
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v111 >= v146)
        {

          v137 = v173;
          v138 = v144;
          (*(v173 + 16))(v162, v37, v144);
          sub_227665BC0();
          v139 = v37;
          v140 = v145;
          [v145 workoutPlanLength];
          sub_227665C50();

          (*(v137 + 8))(v139, v138);
          return;
        }

        v112 = v147[v111];
        ++v110;
        if (v112)
        {
          v165 = ((v112 - 1) & v112);
          v167 = v111;
          v109 = __clz(__rbit64(v112)) | (v111 << 6);
          goto LABEL_62;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_51:
  v60 = sub_22766CD20();
  v61 = v155;
  v62 = v174;
  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_17:
  *&v183 = MEMORY[0x277D84F90];
  sub_226F1F190(0, v60 & ~(v60 >> 63), 0);
  if (v60 < 0)
  {
LABEL_76:
    __break(1u);
    return;
  }

  v63 = 0;
  v149 = v59 & 0xC000000000000001;
  v64 = v183;
  v142 = v59 & 0xFFFFFFFFFFFFFF8;
  v148 = (v164 + 8);
  v147 = (v61 + 32);
  v145 = (v178 + 32);
  v146 = v60;
  while (1)
  {
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    v152 = v63;
    v151 = v63 + 1;
    if (v149)
    {
      v65 = MEMORY[0x22AA991A0]();
    }

    else
    {
      if (v63 >= *(v142 + 16))
      {
        goto LABEL_75;
      }

      v65 = *(v59 + 8 * v63 + 32);
    }

    v66 = v65;
    v67 = [v65 offset];
    v68 = v171;
    if (!v67)
    {
      goto LABEL_45;
    }

    v69 = v67;
    sub_22766C000();

    v164 = [v66 item];
    if (!v164)
    {

LABEL_45:

      v94 = sub_227664DD0();
      sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v94 - 8) + 104))(v95, *MEMORY[0x277D51028], v94);
      swift_willThrow();

LABEL_46:
      (*(v173 + 8))(v153, v144);

      return;
    }

    v165 = v66;
    v70 = v157;
    sub_2276620C0();
    if (v70)
    {
      (*(v173 + 8))(v153, v144);

      return;
    }

    sub_227662120();
    if (v71 & 1) != 0 || (sub_227662130(), (v72) || (sub_227662160(), (v73) || (sub_227662170(), (v74))
    {

      v92 = sub_227664470();
      sub_226F208A8(&qword_27D7BA250, MEMORY[0x277D50940]);
      swift_allocError();
      (*(*(v92 - 8) + 104))(v93, *MEMORY[0x277D50908], v92);
      swift_willThrow();

      (*v148)(v68, v170);
      goto LABEL_46;
    }

    v150 = v64;
    v75 = *(v179 + 48);
    v76 = v168;
    sub_2276653F0();
    (*v148)(v68, v170);
    v77 = v175;
    (*v147)(v175, v76, v180);
    *(v77 + v75) = [v165 index];
    v78 = v164;
    v79 = [v164 modalityIdentifier];
    if (!v79)
    {
      goto LABEL_49;
    }

    v80 = v79;
    sub_22766C000();

    v81 = [v78 filterProperties];
    if (!v81)
    {
      break;
    }

    v82 = v81;
    v83 = MEMORY[0x22AA99A00]();
    v84 = sub_22715454C(v82);
    v157 = 0;
    v64 = v150;
    v85 = v84;
    v86 = *(v179 + 64);
    objc_autoreleasePoolPop(v83);
    sub_226F3EAA8(v85);

    v87 = v164;
    [v164 duration];
    v88 = v167;
    sub_2276673D0();

    v62 = v174;
    v89 = v175;
    (*v145)(v175 + v86, v88, v174);
    *&v183 = v64;
    v91 = *(v64 + 16);
    v90 = *(v64 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_226F1F190(v90 > 1, v91 + 1, 1);
      v64 = v183;
    }

    *(v64 + 16) = v91 + 1;
    sub_226F208F0(v89, v64 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v91);
    v63 = v152 + 1;
    v37 = v153;
    v61 = v155;
    v59 = v154;
    if (v151 == v146)
    {
      v145 = a1;

      goto LABEL_53;
    }
  }

LABEL_49:

  v96 = sub_227664DD0();
  sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040]);
  v97 = swift_allocError();
  (*(*(v96 - 8) + 104))(v98, *MEMORY[0x277D51028], v96);
  v157 = v97;
  swift_willThrow();
  v99 = v165;

  (*(v173 + 8))(v153, v144);
  (*(v61 + 8))(v175, v180);
}

void sub_226F1DD6C(void *a1, uint64_t a2)
{
  v32 = a1;
  v4 = sub_2276627D0();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227665C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665C90();
  v13 = sub_227665BD0();
  v14 = v12;
  v15 = a2;
  (*(v9 + 8))(v14, v8);
  v31 = a2;
  v16 = sub_226F20960(v13, sub_226F212E0, v30);

  if (!v2)
  {
    sub_227665C40();
    v17 = sub_227662790();
    (*(v29 + 8))(v7, v4);
    v18 = v32;
    [v32 setIdentifier_];

    v19 = sub_227665C60();
    v20 = sub_2276477E0(v15, v19);

    [v18 setModalityPreferences_];

    sub_227665C70();
    v21 = sub_22766BFD0();

    [v18 setName_];

    v22 = sub_227665C30();
    v23 = 0x7FFFFFFFLL;
    if (v22 < 0x7FFFFFFF)
    {
      v23 = v22;
    }

    if (v23 <= 0xFFFFFFFF80000000)
    {
      v24 = 0xFFFFFFFF80000000;
    }

    else
    {
      v24 = v23;
    }

    [v18 setWorkoutPlanLength_];
    sub_227073C04(v16);

    v25 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v26 = sub_22766C2B0();

    v27 = [v25 initWithArray_];

    [v18 setSchedule_];
  }
}

uint64_t sub_226F1E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8558, &qword_227670DB0);
  v5 = *(*(v29 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v29);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v28 = &v22 - v9;
  v10 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v12 = 0;
    v27 = sub_227667400();
    v13 = *(v27 - 8);
    v14 = *(v13 + 16);
    v25 = v13 + 16;
    v26 = v14;
    v15 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v23 = *(v13 + 72);
    v24 = (v13 + 32);
    while (1)
    {
      v17 = v28;
      v16 = v29;
      v18 = *(v29 + 48);
      v19 = v27;
      v26(&v28[v18], v15, v27);
      *v8 = v12;
      v20 = *(v16 + 48);
      (*v24)(v8 + v20, &v17[v18], v19);
      sub_226F1E2B8(v12, v8 + v20, v31);
      sub_226E97D1C(v8, &qword_27D7B8558, &qword_227670DB0);
      if (v3)
      {
        break;
      }

      ++v12;
      sub_22766CF00();
      v21 = *(v32 + 16);
      sub_22766CF40();
      sub_22766CF50();
      sub_22766CF10();
      v15 += v23;
      if (v10 == v12)
      {
        return v32;
      }
    }
  }

  return result;
}

void sub_226F1E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedWorkoutPlanScheduledItemIndex();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a3];

  type metadata accessor for ManagedWorkoutPlanScheduledItem();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    v12 = sub_227664DD0();
    sub_226F208A8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
    goto LABEL_6;
  }

  v11 = v10;
  sub_227159074(v10, a3);
  if (v3)
  {

LABEL_6:
    return;
  }

  [v6 setItem_];

  sub_22730F2B4();
  v14 = sub_22766BFD0();

  [v6 setOffset_];

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    [v6 setIndex_];
    return;
  }

  __break(1u);
}

size_t static WorkoutPlanTemplate.representativeSamples()()
{
  v50 = sub_2276627D0();
  v35 = *(v50 - 8);
  v0 = *(v35 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B8, &qword_227670D10);
  v2 = *(v48 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v34 - v4;
  v47 = sub_227665CA0();
  v51 = *(v47 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227665C20();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = v8[8];
  MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_227662780();
  v39 = sub_22766C090();
  sub_227668480();
  v13 = MEMORY[0x277D534C8];
  sub_226F208A8(&qword_27D7B84C0, MEMORY[0x277D534C8]);
  sub_226F208A8(&qword_27D7B84C8, v13);
  v37 = sub_22766C590();
  sub_226F05E24();
  v36 = sub_22766CFA0();
  sub_227665C10();
  v14 = sub_22766C380();
  *(v14 + 16) = 3;
  v15 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v16 = v8[2];
  v16(v15, v12, v7);
  v17 = v8[9];
  v42 = v9 + 2;
  v41 = v16;
  v16(v15 + v17, v12, v7);
  v18 = v9[4];
  v43 = v12;
  v44 = v7;
  v18(v15 + 2 * v17, v12, v7);
  v66 = v37;
  v67[0] = v38;
  v67[1] = v67;
  v67[2] = &v66;
  v64 = v14;
  v65 = v39;
  v67[3] = &v65;
  v67[4] = &v64;
  v63 = v36;
  v67[5] = &v63;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D8, &qword_227670D18);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E8, &qword_227670D20);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v53 = sub_226E9CFD0(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v54 = sub_226E9CFD0(&qword_27D7B84F8, &qword_27D7B84D8, &qword_227670D18);
  v55 = sub_226E9CFD0(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v56 = sub_226E9CFD0(&qword_27D7B8508, &qword_27D7B84E8, &qword_227670D20);
  v57 = sub_226E9CFD0(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v19 = sub_2276638E0();

  v20 = *(v19 + 16);
  if (v20)
  {
    v52 = MEMORY[0x277D84F90];
    result = sub_226F1F210(0, v20, 0);
    v22 = 0;
    v23 = v52;
    v37 = v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v36 = (v35 + 16);
    v35 = v51 + 32;
    v40 = v2;
    v39 = v19;
    v38 = v20;
    v24 = v46;
    while (v22 < *(v19 + 16))
    {
      sub_226E93170(v37 + *(v2 + 72) * v22, v24, &qword_27D7B84B8, &qword_227670D10);
      v25 = *(v24 + v48[12]);
      v26 = (v24 + v48[16]);
      v28 = *v26;
      v27 = v26[1];
      v29 = v48[20];
      v30 = *(v24 + v48[24]);
      (*v36)(v49, v24, v50);
      v41(v43, v24 + v29, v44);

      v31 = v45;
      sub_227665C50();
      sub_226E97D1C(v24, &qword_27D7B84B8, &qword_227670D10);
      v52 = v23;
      v32 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v32 >= v33 >> 1)
      {
        sub_226F1F210(v33 > 1, v32 + 1, 1);
        v23 = v52;
      }

      ++v22;
      *(v23 + 16) = v32 + 1;
      result = (*(v51 + 32))(v23 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32, v31, v47);
      v2 = v40;
      v19 = v39;
      if (v38 == v22)
      {

        return v23;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_226F1ED50(char *a1, int64_t a2, char a3)
{
  result = sub_2271116E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1ED70(char *a1, int64_t a2, char a3)
{
  result = sub_2271117F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1ED90(char *a1, int64_t a2, char a3)
{
  result = sub_227111810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDB0(char *a1, int64_t a2, char a3)
{
  result = sub_22711182C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDD0(char *a1, int64_t a2, char a3)
{
  result = sub_227111848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EDF0(char *a1, int64_t a2, char a3)
{
  result = sub_227111864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE10(char *a1, int64_t a2, char a3)
{
  result = sub_227111880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE30(char *a1, int64_t a2, char a3)
{
  result = sub_22711189C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE50(char *a1, int64_t a2, char a3)
{
  result = sub_2271118B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE70(char *a1, int64_t a2, char a3)
{
  result = sub_2271118D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EE90(char *a1, int64_t a2, char a3)
{
  result = sub_2271118F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EEB0(char *a1, int64_t a2, char a3)
{
  result = sub_22711190C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EED0(char *a1, int64_t a2, char a3)
{
  result = sub_227111928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EEF0(char *a1, int64_t a2, char a3)
{
  result = sub_227111A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EF10(char *a1, int64_t a2, char a3)
{
  result = sub_227111A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1EF30(char *a1, int64_t a2, char a3)
{
  result = sub_227111A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1EF50(size_t a1, int64_t a2, char a3)
{
  result = sub_227111B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1EF70(size_t a1, int64_t a2, char a3)
{
  result = sub_227111BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226F1EF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_227117DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1EFB0(size_t a1, int64_t a2, char a3)
{
  result = sub_227111BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1EFD0(size_t a1, int64_t a2, char a3)
{
  result = sub_227111C00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1EFF0(void *a1, int64_t a2, char a3)
{
  result = sub_227111C28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F010(size_t a1, int64_t a2, char a3)
{
  result = sub_227111D5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F030(void *a1, int64_t a2, char a3)
{
  result = sub_227111D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F050(size_t a1, int64_t a2, char a3)
{
  result = sub_227111DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F070(size_t a1, int64_t a2, char a3)
{
  result = sub_227111DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F090(char *a1, int64_t a2, char a3)
{
  result = sub_227111DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F0B0(size_t a1, int64_t a2, char a3)
{
  result = sub_227111E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F0D0(void *a1, int64_t a2, char a3)
{
  result = sub_227111E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F0F0(size_t a1, int64_t a2, char a3)
{
  result = sub_227111F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F110(void *a1, int64_t a2, char a3)
{
  result = sub_227111F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F130(size_t a1, int64_t a2, char a3)
{
  result = sub_227111FC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F150(size_t a1, int64_t a2, char a3)
{
  result = sub_227111FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F170(size_t a1, int64_t a2, char a3)
{
  result = sub_227112010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F190(size_t a1, int64_t a2, char a3)
{
  result = sub_227112038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F1B0(size_t a1, int64_t a2, char a3)
{
  result = sub_22711205C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F1D0(size_t a1, int64_t a2, char a3)
{
  result = sub_227112084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F1F0(char *a1, int64_t a2, char a3)
{
  result = sub_2271120AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F210(size_t a1, int64_t a2, char a3)
{
  result = sub_2271120C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226F1F230(uint64_t a1)
{
  result = sub_226F208A8(&qword_2813A56D0, MEMORY[0x277D51CF0]);
  *(a1 + 8) = result;
  return result;
}

size_t sub_226F1F288(size_t a1, int64_t a2, char a3)
{
  result = sub_2271120F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F2A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F2C8(char *a1, int64_t a2, char a3)
{
  result = sub_22711213C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F2E8(void *a1, int64_t a2, char a3)
{
  result = sub_227112158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F308(size_t a1, int64_t a2, char a3)
{
  result = sub_22711217C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F328(size_t a1, int64_t a2, char a3)
{
  result = sub_2271121A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F348(size_t a1, int64_t a2, char a3)
{
  result = sub_2271121CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F368(size_t a1, int64_t a2, char a3)
{
  result = sub_2271121F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F388(size_t a1, int64_t a2, char a3)
{
  result = sub_22711221C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F3A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F3C8(size_t a1, int64_t a2, char a3)
{
  result = sub_22711226C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F3E8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F408(size_t a1, int64_t a2, char a3)
{
  result = sub_2271122BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F428(size_t a1, int64_t a2, char a3)
{
  result = sub_2271122E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F448(size_t a1, int64_t a2, char a3)
{
  result = sub_22711230C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F468(char *a1, int64_t a2, char a3)
{
  result = sub_227112334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F488(size_t a1, int64_t a2, char a3)
{
  result = sub_227112438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F4A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F4C8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F4E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2271124B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F508(size_t a1, int64_t a2, char a3)
{
  result = sub_2271124D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F528(size_t a1, int64_t a2, char a3)
{
  result = sub_2271124FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F548(size_t a1, int64_t a2, char a3)
{
  result = sub_227112524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F568(size_t a1, int64_t a2, char a3)
{
  result = sub_22711254C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F588(char *a1, int64_t a2, char a3)
{
  result = sub_227112574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F5A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F5C8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F5E8(char *a1, int64_t a2, char a3)
{
  result = sub_2271126B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F608(size_t a1, int64_t a2, char a3)
{
  result = sub_2271127B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F628(size_t a1, int64_t a2, char a3)
{
  result = sub_2271127DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F648(size_t a1, int64_t a2, char a3)
{
  result = sub_227112804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F668(size_t a1, int64_t a2, char a3)
{
  result = sub_22711282C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F688(size_t a1, int64_t a2, char a3)
{
  result = sub_227112854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F6A8(size_t a1, int64_t a2, char a3)
{
  result = sub_22711287C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F6C8(size_t a1, int64_t a2, char a3)
{
  result = sub_2271128A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F6E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2271128CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F708(size_t a1, int64_t a2, char a3)
{
  result = sub_2271128F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F728(size_t a1, int64_t a2, char a3)
{
  result = sub_227112918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F748(char *a1, int64_t a2, char a3)
{
  result = sub_227112940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F768(size_t a1, int64_t a2, char a3)
{
  result = sub_22711295C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F788(size_t a1, int64_t a2, char a3)
{
  result = sub_227112984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F7A8(void *a1, int64_t a2, char a3)
{
  result = sub_2271129AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F7C8(size_t a1, int64_t a2, char a3)
{
  result = sub_2271129D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F7E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2271129F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1F808(char *a1, int64_t a2, char a3)
{
  result = sub_227112A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F828(size_t a1, int64_t a2, char a3)
{
  result = sub_227112A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F848(size_t a1, int64_t a2, char a3)
{
  result = sub_227112A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F868(size_t a1, int64_t a2, char a3)
{
  result = sub_227112A84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F888(size_t a1, int64_t a2, char a3)
{
  result = sub_227112AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F8A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F8C8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F8E8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F908(size_t a1, int64_t a2, char a3)
{
  result = sub_227112B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F928(size_t a1, int64_t a2, char a3)
{
  result = sub_227112B74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F948(size_t a1, int64_t a2, char a3)
{
  result = sub_227112B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F968(void *a1, int64_t a2, char a3)
{
  result = sub_227112BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1F988(void *a1, int64_t a2, char a3)
{
  result = sub_227112BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F9A8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112C0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F9C8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1F9E8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112C5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FA08(size_t a1, int64_t a2, char a3)
{
  result = sub_227112C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FA28(size_t a1, int64_t a2, char a3)
{
  result = sub_227112CAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FA48(size_t a1, int64_t a2, char a3)
{
  result = sub_227112CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FA68(size_t a1, int64_t a2, char a3)
{
  result = sub_227112CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FA88(size_t a1, int64_t a2, char a3)
{
  result = sub_227112D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FAA8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112D4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FAC8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112D74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FAE8(char *a1, int64_t a2, char a3)
{
  result = sub_227112D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FB08(size_t a1, int64_t a2, char a3)
{
  result = sub_227112EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FB28(size_t a1, int64_t a2, char a3)
{
  result = sub_227112ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226F1FB48(char *a1, int64_t a2, char a3)
{
  result = sub_227112EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226F1FB68(void *a1, int64_t a2, char a3)
{
  result = sub_227112F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FB88(size_t a1, int64_t a2, char a3)
{
  result = sub_227112F30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_226F1FBA8(size_t a1, int64_t a2, char a3)
{
  result = sub_227112F58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}