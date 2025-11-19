void sub_2273B2610(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_22766BFD0();
  v8 = [v6 initWithEntityName_];

  type metadata accessor for ManagedUpNextQueueItem();
  v9 = sub_22766C9E0();
  if (v3)
  {
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
    v14 = MEMORY[0x277D84FA0];
    if (MEMORY[0x277D84F90] >> 62)
    {
      v11 = v9;
      if (sub_22766CD20())
      {
        sub_226F50730(MEMORY[0x277D84F90]);
        v10 = v12;
      }

      else
      {
        v10 = MEMORY[0x277D84FA0];
      }

      v9 = v11;
    }

    v13 = v10;
    sub_2273AADB8(v9, &v14);

    sub_2273AC208(v13, a2, a3, type metadata accessor for ManagedUpNextQueueItem, &qword_27D7BD1B0, type metadata accessor for ManagedUpNextQueueItem);
  }
}

void sub_2273B27C4(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = sub_22766BFD0();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_226E97D1C(v15, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = sub_227664DD0();
    sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D50FE0], v9);
    swift_willThrow();
    return;
  }

  v6 = sub_22766BFD0();
  v7 = sub_22766BFD0();
  [v3 setValue:v6 forKey:v7];

  v8 = *a2;

  LOBYTE(v7) = sub_22718C70C(v11, v12, v8);

  if (v7)
  {

    sub_2270BF484(v15, v3);
  }

  else
  {
    sub_2270AE890(v15, v11, v12);
  }
}

uint64_t sub_2273B2A2C(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1A0, &qword_227684060);
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
  sub_2273AB7F8(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v12 = *(v9 + 40);

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = *(*v9 + 48);
  v16 = *(*v9 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2273B2BC0(void *a1, void *a2, void *a3)
{
  v158 = a3;
  v160 = a2;
  v155 = sub_22766B390();
  v152 = *(v155 - 8);
  v4 = *(v152 + 64);
  MEMORY[0x28223BE20](v155);
  v156 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v154 = &v144 - v8;
  v153 = sub_2276627D0();
  *&v151 = *(v153 - 8);
  v9 = *(v151 + 64);
  MEMORY[0x28223BE20](v153);
  v11 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v157 = a1;
  v13 = __swift_project_boxed_opaque_existential_0(a1, v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = v13[3];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = v14;
  v23 = v15;

  sub_22766A070();
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  v24 = v159;
  v25 = sub_22724AE18(0);
  if (v24)
  {

    swift_setDeallocating();
    v28 = qword_2813B2078;
    v29 = sub_22766A100();
    (*(*(v29 - 8) + 8))(v21 + v28, v29);
LABEL_4:
    v30 = *(*v21 + 48);
    v31 = *(*v21 + 52);
    return swift_deallocClassInstance();
  }

  v26 = v25;
  v159 = v11;
  v27 = type metadata accessor for ManagedWorkoutPlanTemplate();
  v33 = sub_22766C9E0();
  v146 = v27;

  swift_setDeallocating();
  v34 = qword_2813B2078;
  v148 = sub_22766A100();
  v35 = *(v148 - 1);
  *&v150 = *(v35 + 8);
  v149 = (v35 + 8);
  (v150)(v21 + v34, v148);
  v36 = *(*v21 + 48);
  v37 = *(*v21 + 52);
  swift_deallocClassInstance();
  if (v33 >> 62)
  {
    v38 = sub_22766CD20();
  }

  else
  {
    v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v147 = 0;
  v39 = v158;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    for (i = 0; i != v38; ++i)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x22AA991A0](i, v33);
      }

      else
      {
        v41 = *(v33 + 8 * i + 32);
      }

      v42 = v41;
      sub_2273B3E50(v41, 0x746E656449646C6FLL, 0xED00007265696669, 0x746E65644977656ELL, 0xED00007265696669, v160, v39);
    }
  }

  v43 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
  v44 = *v43;
  v45 = v43[1];
  v46 = *(v43 + 16);
  v47 = v43[3];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v21 = swift_allocObject();
  v51 = v44;
  v52 = v45;

  sub_22766A070();
  *(v21 + 16) = v51;
  *(v21 + 24) = v52;
  *(v21 + 32) = v46;
  *(v21 + 40) = v47;
  v53 = v147;
  sub_2273ABA48(sub_2273B439C, 0, j_j__objc_retain, 0);
  v39 = v53;
  if (v53)
  {
    swift_setDeallocating();

    v54 = *(v21 + 40);

    v55 = qword_2813B2078;
LABEL_17:
    (v150)(v21 + v55, v148);
    goto LABEL_4;
  }

  swift_setDeallocating();

  v56 = *(v21 + 40);

  (v150)(v21 + qword_2813B2078, v148);
  v57 = *(*v21 + 48);
  v58 = *(*v21 + 52);
  swift_deallocClassInstance();
  v59 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
  v60 = *v59;
  v61 = v59[1];
  v62 = *(v59 + 16);
  v22 = v59[3];
  v63 = *(v48 + 48);
  v64 = *(v48 + 52);
  v65 = swift_allocObject();
  v66 = v60;
  v67 = v61;

  sub_22766A070();
  *(v65 + 16) = v66;
  *(v65 + 24) = v67;
  *(v65 + 32) = v62;
  *(v65 + 40) = v22;
  v68 = sub_227284A54(0);
  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v33 = sub_22766C9E0();

  swift_setDeallocating();
  (v150)(v65 + qword_2813B2078, v148);
  v69 = *(*v65 + 48);
  v70 = *(*v65 + 52);
  swift_deallocClassInstance();
  if (v33 >> 62)
  {
LABEL_28:
    v71 = sub_22766CD20();
    v72 = v160;
    if (!v71)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v71 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = v160;
  if (!v71)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v71 < 1)
  {
    __break(1u);
    goto LABEL_73;
  }

  for (j = 0; j != v71; ++j)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x22AA991A0](j, v33);
    }

    else
    {
      v74 = *(v33 + 8 * j + 32);
    }

    v75 = v74;
    sub_2273B3E50(v74, 0xD000000000000011, 0x800000022769F6C0, 0xD000000000000011, 0x800000022769F6E0, v72, v158);
  }

LABEL_29:

  v76 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
  v77 = *v76;
  v78 = v76[1];
  v79 = *(v76 + 16);
  v80 = v76[3];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  v21 = swift_allocObject();
  v22 = v77;
  v84 = v78;

  sub_22766A070();
  *(v21 + 16) = v22;
  *(v21 + 24) = v84;
  *(v21 + 32) = v79;
  *(v21 + 40) = v80;
  v85 = sub_22724B330(0);
  if (v39)
  {

    swift_setDeallocating();
    v55 = qword_2813B2078;
    goto LABEL_17;
  }

  v86 = v85;
  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v33 = sub_22766C9E0();

  swift_setDeallocating();
  (v150)(v21 + qword_2813B2078, v148);
  v87 = *(*v21 + 48);
  v88 = *(*v21 + 52);
  swift_deallocClassInstance();
  if (!(v33 >> 62))
  {
    v89 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_33;
  }

LABEL_73:
  v89 = sub_22766CD20();
LABEL_33:
  v147 = v39;
  v90 = v158;
  if (v89)
  {
    if (v89 < 1)
    {
      __break(1u);
      goto LABEL_75;
    }

    for (k = 0; k != v89; ++k)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x22AA991A0](k, v33);
      }

      else
      {
        v92 = *(v33 + 8 * k + 32);
      }

      v93 = v92;
      sub_2273B3E50(v92, 0xD000000000000011, 0x800000022769F6C0, 0xD000000000000011, 0x800000022769F6E0, v160, v90);
    }
  }

  v94 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
  v95 = *v94;
  v96 = v94[1];
  v97 = *(v94 + 16);
  v98 = v94[3];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  v102 = swift_allocObject();
  v103 = v95;
  v104 = v96;

  v21 = v102;
  sub_22766A070();
  *(v102 + 16) = v103;
  *(v102 + 24) = v104;
  *(v102 + 32) = v97;
  *(v102 + 40) = v98;
  v105 = v147;
  v106 = sub_22723DB40(0);
  v90 = v105;
  if (v105)
  {

    swift_setDeallocating();
    (v150)(v102 + qword_2813B2078, v148);
    goto LABEL_4;
  }

  v107 = v106;
  type metadata accessor for ManagedWorkoutPlan();
  v108 = sub_22766C9E0();

  swift_setDeallocating();
  (v150)(v102 + qword_2813B2078, v148);
  v109 = *(*v102 + 48);
  v110 = *(*v102 + 52);
  result = swift_deallocClassInstance();
  v22 = v108;
  if (v108 >> 62)
  {
LABEL_75:
    result = sub_22766CD20();
    v112 = result;
    if (result)
    {
      goto LABEL_44;
    }
  }

  v112 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v112)
  {
  }

LABEL_44:
  if (v112 >= 1)
  {
    v113 = 0;
    v157 = (v22 & 0xC000000000000001);
    v149 = (v151 + 56);
    v148 = (v151 + 48);
    v145 = (v151 + 32);
    v144 = (v151 + 8);
    v152 += 8;
    *&v111 = 138412290;
    v150 = v111;
    v151 = xmmword_227670B30;
    v114 = v90;
    v115 = v155;
    v116 = v156;
    v147 = v112;
    while (1)
    {
      v117 = v114;
      v118 = v157 ? MEMORY[0x22AA991A0](v113, v22) : *(v22 + 8 * v113 + 32);
      v119 = v118;
      sub_2273B3E50(v118, 0x746E656449646C6FLL, 0xED00007265696669, 0x746E65644977656ELL, 0xED00007265696669, v160, v158);
      v120 = sub_22766BFD0();
      v121 = [v119 valueForKey_];

      if (v121)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v161 = 0u;
        v162 = 0u;
      }

      v163 = v161;
      v164 = v162;
      if (!*(&v162 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }

      v122 = v165;
      v123 = sub_22766BFD0();
      v124 = [v122 valueForKey_];

      if (v124)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v161 = 0u;
        v162 = 0u;
      }

      v125 = v154;
      v126 = v153;
      v163 = v161;
      v164 = v162;
      if (!*(&v162 + 1))
      {

        sub_226E97D1C(&v163, &unk_27D7BC990, &qword_227670A30);
        (*v149)(v125, 1, 1, v126);
LABEL_65:
        sub_226E97D1C(v125, &unk_27D7BB9D0, &qword_227671550);
        v116 = v156;
LABEL_66:
        sub_22766A770();
        v128 = v119;
        v129 = sub_22766B380();
        v130 = sub_22766C890();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *v131 = v150;
          *(v131 + 4) = v128;
          *v132 = v128;
          v133 = v128;
          _os_log_impl(&dword_226E8E000, v129, v130, "Couldn't find template.newIdentifier for %@. Deleting it.", v131, 0xCu);
          sub_226E97D1C(v132, &unk_27D7B9660, &qword_2276740C0);
          v134 = v132;
          v116 = v156;
          MEMORY[0x22AA9A450](v134, -1, -1);
          v135 = v131;
          v115 = v155;
          MEMORY[0x22AA9A450](v135, -1, -1);
        }

        (*v152)(v116, v115);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
        inited = swift_initStackObject();
        *(inited + 16) = v151;
        *(inited + 32) = v128;
        v137 = v128;
        v138 = sub_226F473C8(inited);
        swift_setDeallocating();
        v139 = *(inited + 16);
        swift_arrayDestroy();
        sub_2273AC208(v138, v160, v158, type metadata accessor for ManagedWorkoutPlan, &qword_27D7B8760, type metadata accessor for ManagedWorkoutPlan);
        v114 = v117;
        if (v117)
        {

          v114 = 0;
        }

        else
        {
        }

        v115 = v155;
        goto LABEL_48;
      }

      v127 = swift_dynamicCast();
      (*v149)(v125, v127 ^ 1u, 1, v126);
      if ((*v148)(v125, 1, v126) == 1)
      {

        goto LABEL_65;
      }

      v140 = v22;
      v141 = v159;
      (*v145)(v159, v125, v126);
      v142 = sub_227662790();
      [v119 setTemplateIdentifier_];

      v143 = v141;
      v22 = v140;
      v112 = v147;
      (*v144)(v143, v126);
      v114 = v117;
LABEL_48:
      v116 = v156;
      if (v112 == ++v113)
      {
      }
    }

    sub_226E97D1C(&v163, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_2273B3E50(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v47 = a6;
  v48 = a7;
  v44[2] = a4;
  v46 = sub_22766B390();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v44 - v17;
  v19 = sub_2276627D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v24 = sub_22766BFD0();
  v49 = a1;
  v25 = [a1 valueForKey_];

  if (v25)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (!*(&v53 + 1))
  {
    sub_226E97D1C(v54, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v27 = 0;
    v26 = 0;
    goto LABEL_10;
  }

  v44[1] = a5;
  v27 = v50;
  v26 = v51;

  sub_227662760();

  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {

    (*(v20 + 32))(v23, v18, v19);
    v42 = sub_227662790();
    v43 = sub_22766BFD0();
    [v49 setValue:v42 forKey:v43];

    return (*(v20 + 8))(v23, v19);
  }

  sub_226E97D1C(v18, &unk_27D7BB9D0, &qword_227671550);
LABEL_10:
  sub_22766A770();

  v28 = sub_22766B380();
  v29 = sub_22766C890();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v52 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_226E97AE8(v45, a3, &v52);
    *(v30 + 12) = 2080;
    *&v54[0] = v27;
    *(&v54[0] + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v32 = sub_22766CB80();
    v34 = v33;

    v35 = sub_226E97AE8(v32, v34, &v52);

    *(v30 + 14) = v35;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v14, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670B30;
  v37 = v49;
  *(inited + 32) = v49;
  v38 = v37;
  v39 = sub_226F47398(inited);
  swift_setDeallocating();
  v40 = *(inited + 16);
  swift_arrayDestroy();
  sub_2273ABE88(v39, v47, v48);
}

void sub_2273B43A8(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2273B4408()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_22766BFD0();
  v8 = [v6 initWithEntityName_];

  type metadata accessor for ManagedWorkoutPlan();
  v9 = sub_22766C9E0();
  if (v0)
  {
  }

  else
  {
    v10 = v9;
    v21 = v1;
    v18[1] = 0;
    v19 = v8;
    if (v9 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v12 = 0;
      v20 = v10 & 0xC000000000000001;
      v13 = v2 + 1;
      while (1)
      {
        if (v20)
        {
          v14 = MEMORY[0x22AA991A0](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v10 + 8 * v12 + 32);
        }

        v2 = v14;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_227662740();
        v16 = i;
        v17 = sub_2276626A0();
        (*v13)(v5, v21);
        [v2 setDateCreated_];

        i = v16;
        ++v12;
        if (v15 == v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }
}

uint64_t sub_2273B4648(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
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
  sub_2273ABC98(sub_2273B47DC, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v12 = *(v9 + 40);

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v15 = *(*v9 + 48);
  v16 = *(*v9 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2273B47DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 planIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_2276627B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2276627D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2273B487C(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  v36 = v11;
  v37 = v10;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  swift_getKeyPath();
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD188, &qword_227684048);
  v41[0] = 0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  sub_226E93170(v41, v39, &unk_27D7BC990, &qword_227670A30);
  v13 = v40;
  if (v40)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v38 = &v35;
    v15 = v5;
    v16 = v4;
    v17 = *(v13 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v14);
    v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v13);
    v4 = v16;
    v5 = v15;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8 qword_22767DC60))];

  sub_226E97D1C(v41, &unk_27D7BC990, &qword_227670A30);
  v24 = qword_2813B2078;
  swift_beginAccess();
  v25 = v23;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v41, 0);
  swift_endAccess();

  v29 = sub_2275438B0(v9 + v24, v4, v5);
  v30 = v41[5];
  if (v29)
  {
    if (v29 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v31 = sub_227284A54(0);
  if (v30)
  {
LABEL_10:

    return;
  }

  v32 = v31;
  [v31 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v33 = sub_22766C9E0();
  v34 = sub_226EDAB24(v33);

  sub_226EDAB78(v34, v36);
}

void sub_2273B4CD8(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22766BFD0();
  v9 = [v7 initWithEntityName_];

  type metadata accessor for ManagedArchivedSession();
  v10 = sub_22766C9E0();
  if (v3)
  {
  }

  else
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      v31 = v10;
      if (sub_22766CD20())
      {
        sub_226F50A4C(MEMORY[0x277D84F90]);
        v11 = v32;
      }

      else
      {
        v11 = MEMORY[0x277D84FA0];
      }

      v10 = v31;
    }

    else
    {
      v11 = MEMORY[0x277D84FA0];
    }

    v34 = v11;
    sub_2273AABE4(v10);

    sub_2273AC208(v34, a2, a3, type metadata accessor for ManagedArchivedSession, &qword_27D7BD180, type metadata accessor for ManagedArchivedSession);
    v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[3];
    v16 = *(v12 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = v13;
    v22 = v14;

    sub_22766A070();
    *(v20 + 16) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v16;
    *(v20 + 40) = v15;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = sub_2275438F8(v20 + v23, v16, v15);
    if (v24)
    {
      if (v24 != 1)
      {
        swift_willThrow();
      }
    }

    else
    {
      v25 = sub_2272847B4(0);
      [v25 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v26 = sub_22766C9E0();
      v33 = sub_226EDAB24(v26);

      sub_226EDAB78(v33, v22);
    }

    swift_setDeallocating();
    v27 = qword_2813B2078;
    v28 = sub_22766A100();
    (*(*(v28 - 8) + 8))(v20 + v27, v28);
    v29 = *(*v20 + 48);
    v30 = *(*v20 + 52);
    swift_deallocClassInstance();
  }
}

uint64_t sub_2273B50EC()
{
  if (qword_27D7B7F10 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {

    v1 = sub_2273B5B54(v0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD178, qword_227684008);
    v2 = sub_22766CFF0();
    v3 = v2;
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;
    if (v7)
    {
      break;
    }

LABEL_6:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        qword_27D7CE360 = v3;
        return result;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v1 + 56) + 8 * v13);
    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = *(v14 + 32);
    v17 = *(v14 + 33);
    v18 = *(v14 + 48);
    if (v15 != 1)
    {

      sub_22766CE20();

      v29 = sub_22709BF40();
      MEMORY[0x22AA98450](v29);

      break;
    }

    v19 = (*(v1 + 48) + 2 * v13);
    v20 = *v19;
    LOBYTE(v19) = v19[1];
    v21 = *(v14 + 40);
    v22 = *(v14 + 34);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v23 = (v3[6] + 2 * v13);
    *v23 = v20;
    v23[1] = v19;
    v24 = v3[7] + 24 * v13;
    *v24 = v16;
    *(v24 + 1) = v17;
    *(v24 + 2) = v22;
    *(v24 + 8) = v21;
    *(v24 + 16) = v18;
    v25 = v3[2];
    v26 = v25 + 1;
    v27 = __OFADD__(v25, 1);

    if (v27)
    {
      goto LABEL_21;
    }

    v3[2] = v26;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  result = sub_22766CFB0();
  __break(1u);
  return result;
}

void *sub_2273B53C8(uint64_t a1, void *(*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, void, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22766CD20();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v48 = MEMORY[0x277D84F90];
    a4(0, v9 & ~(v9 >> 63), 0);
    v11 = v48;
    if (v43)
    {
      result = sub_22766CCD0();
    }

    else
    {
      v13 = -1 << *(a1 + 32);
      result = sub_22766CC90();
      v12 = *(a1 + 36);
    }

    v45 = result;
    v46 = v12;
    v47 = v43 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v37 = a4;
      v14 = 0;
      v40 = v9;
      while (v14 < v9)
      {
        if (__OFADD__(v14++, 1))
        {
          goto LABEL_35;
        }

        v18 = v45;
        v17 = v46;
        v19 = v47;
        v20 = a5(v45, v46, v47, a1);
        result = a2(v44);
        v21 = v44[0];
        v22 = v11;
        v48 = v11;
        v23 = *(v11 + 16);
        v24 = *(v22 + 24);
        if (v23 >= v24 >> 1)
        {
          v36 = v44[0];
          result = v37(v24 > 1, v23 + 1, 1);
          v21 = v36;
          v22 = v48;
        }

        *(v22 + 16) = v23 + 1;
        v25 = v22 + 24 * v23;
        *(v25 + 32) = v21;
        *(v25 + 48) = v20;
        if (v43)
        {
          if (!v19)
          {
            goto LABEL_40;
          }

          v11 = v22;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v9 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
          v15 = sub_22766C6A0();
          sub_22766CD70();
          result = v15(v44, 0);
          if (v14 == v40)
          {
LABEL_32:
            sub_226EB526C(v45, v46, v47);
            return v11;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_41;
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v26 = 1 << *(a1 + 32);
          if (v18 >= v26)
          {
            goto LABEL_36;
          }

          v11 = v22;
          v27 = v18 >> 6;
          v28 = *(a1 + 56 + 8 * (v18 >> 6));
          if (((v28 >> v18) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v17)
          {
            goto LABEL_38;
          }

          v29 = v28 & (-2 << (v18 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (a1 + 64 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_226EB526C(v18, v17, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_31;
              }
            }

            result = sub_226EB526C(v18, v17, 0);
          }

LABEL_31:
          v35 = *(a1 + 36);
          v45 = v26;
          v46 = v35;
          v47 = 0;
          v9 = v40;
          if (v14 == v40)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_2273B5748(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADC0, &qword_227679828);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = v38 - v7;
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_22766CD20();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v54 = MEMORY[0x277D84F90];
    sub_226F20668(0, v8 & ~(v8 >> 63), 0);
    v49 = v54;
    if (v48)
    {
      result = sub_22766CCD0();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_22766CC90();
      v10 = *(a1 + 36);
    }

    v51 = result;
    v52 = v10;
    v53 = v48 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v40 = a1 + 56;
      v41 = v13;
      v38[1] = v3;
      v39 = a1 + 64;
      v42 = v8;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v51;
        v17 = v52;
        v18 = v53;
        v19 = a1;
        sub_2274DDCD4(v51, v52, v53, a1);
        v21 = v20;
        v22 = *(v44 + 48);
        v23 = v47;
        v45();
        *(v23 + v22) = v21;
        v24 = v49;
        v54 = v49;
        v26 = *(v49 + 16);
        v25 = *(v49 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226F20668(v25 > 1, v26 + 1, 1);
          v23 = v47;
          v24 = v54;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v49 = v24;
        result = sub_226E95D18(v23, v24 + v27 + *(v43 + 72) * v26, &qword_27D7BADC0, &qword_227679828);
        if (v48)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD190, &qword_227684050);
          v14 = sub_22766C6A0();
          sub_22766CD70();
          result = v14(v50, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_226EB526C(v51, v52, v53);
            return v49;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v28 = 1 << *(v19 + 32);
          if (v16 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v16 >> 6;
          v30 = *(v40 + 8 * (v16 >> 6));
          if (((v30 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v16 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                result = sub_226EB526C(v16, v17, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            result = sub_226EB526C(v16, v17, 0);
          }

LABEL_33:
          v37 = *(v19 + 36);
          v51 = v28;
          v52 = v37;
          v53 = 0;
          v8 = v42;
          if (v12 == v42)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_2273B5B54(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 24)
  {
    v5 = *i;
    v6 = i[1];
    v30 = i[2];
    v31 = i[3];
    v7 = *(i + 2);
    v32 = *(i + 1);

    v9 = sub_226F3B95C(v5 | (v6 << 8));
    v10 = v1[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v1[3] < v12)
    {
      sub_226FED92C(v12, 1);
      v1 = v33;
      v14 = sub_226F3B95C(v5 | (v6 << 8));
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {
      v16 = v1[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      v29 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_2273A6D3C(0, *(v17 + 2) + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_2273A6D3C((v19 > 1), v20 + 1, 1, v17);
        v21 = v20 + 1;
        v17 = v22;
        *(v29 + 8 * v9) = v22;
      }

      *(v17 + 2) = v21;
      v4 = &v17[24 * v20];
      v4[32] = v5;
      v4[33] = v6;
      v4[34] = v30;
      v4[35] = v31;
      *(v4 + 5) = v32;
      *(v4 + 6) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_227670CD0;
      *(v23 + 32) = v5;
      *(v23 + 33) = v6;
      *(v23 + 34) = v30;
      *(v23 + 35) = v31;
      *(v23 + 40) = v32;
      *(v23 + 48) = v7;
      v1[(v9 >> 6) + 8] |= 1 << v9;
      v24 = (v1[6] + 2 * v9);
      *v24 = v5;
      v24[1] = v6;
      *(v1[7] + 8 * v9) = v23;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v1[2] = v27;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2273B5DAC(uint64_t a1, char a2, void *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void), void (*a7)(void))
{
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_16:

    return;
  }

  v8 = 0;
  v9 = (a1 + 48);
  v37 = a1;
  while (1)
  {
    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_22766D220();
      __break(1u);
      goto LABEL_23;
    }

    v10 = *(v9 - 2);
    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = *a3;

    v14 = v12;
    v16 = sub_226F3B12C(v10, v11);
    v17 = v13[2];
    v18 = (v15 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = v15;
    if (v13[3] >= v17 + v18)
    {
      if ((a2 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v20 = *a3;
      v21 = sub_226F3B12C(v10, v11);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_22;
      }

      v16 = v21;
    }

    v23 = *a3;
    if (v19)
    {
      break;
    }

    v23[(v16 >> 6) + 8] |= 1 << v16;
    v29 = (v23[6] + 16 * v16);
    *v29 = v10;
    v29[1] = v11;
    *(v23[7] + 8 * v16) = v14;
    v30 = v23[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_21;
    }

    v23[2] = v32;
LABEL_3:
    a1 = v37;
    ++v8;
    v9 += 3;
    a2 = 1;
    if (v38 == v8)
    {
      goto LABEL_16;
    }
  }

  v24 = *(v23[7] + 8 * v16);
  v25 = a4();
  if (!v39)
  {
    v26 = v25;

    v27 = v23[7];
    v28 = *(v27 + 8 * v16);
    *(v27 + 8 * v16) = v26;

    goto LABEL_3;
  }

  v33 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_2273B60E4(uint64_t a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADC0, &qword_227679828);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v47 - v17;
  v55 = *(a1 + 16);
  if (!v55)
  {
LABEL_16:

    return;
  }

  v57 = v5;
  v18 = 0;
  v19 = *(v15 + 48);
  v53 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v54 = v19;
  v20 = &unk_27D7BB9D0;
  v51 = v16;
  v52 = a1;
  while (1)
  {
    if (v18 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22766D220();
      __break(1u);
      goto LABEL_24;
    }

    v21 = v56;
    sub_226E93170(v53 + *(v16 + 72) * v18, v56, &qword_27D7BADC0, &qword_227679828);
    v22 = v58;
    v23 = v20;
    sub_226E95D18(v21, v58, v20, &qword_227671550);
    v24 = *(v21 + v54);
    v25 = *a3;
    v27 = sub_226F3B74C(v22);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_21;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a2 & 1) == 0)
      {
        sub_226FF4E10();
      }
    }

    else
    {
      sub_226FED3C8(v30, a2 & 1);
      v32 = *a3;
      v33 = sub_226F3B74C(v58);
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_23;
      }

      v27 = v33;
    }

    v35 = a3;
    v36 = *a3;
    if (v31)
    {
      break;
    }

    v36[(v27 >> 6) + 8] |= 1 << v27;
    v20 = v23;
    sub_226E95D18(v58, v36[6] + *(v48 + 72) * v27, v23, &qword_227671550);
    *(v36[7] + 8 * v27) = v24;
    v43 = v36[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_22;
    }

    v36[2] = v45;
LABEL_3:
    ++v18;
    a2 = 1;
    v16 = v51;
    a1 = v52;
    a3 = v35;
    if (v55 == v18)
    {
      goto LABEL_16;
    }
  }

  v37 = *(v36[7] + 8 * v27);
  v38 = v57;
  v39 = v49(v37);
  v57 = v38;
  if (!v38)
  {
    v40 = v39;

    v20 = v23;
    sub_226E97D1C(v58, v23, &qword_227671550);
    v41 = v36[7];
    v42 = *(v41 + 8 * v27);
    *(v41 + 8 * v27) = v40;

    goto LABEL_3;
  }

  v61 = v57;
  v46 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_226E97D1C(v58, &unk_27D7BB9D0, &qword_227671550);
    return;
  }

LABEL_24:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2273B65DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2273B6624()
{
  result = qword_27D7B8778;
  if (!qword_27D7B8778)
  {
    sub_226E99364(255, &qword_27D7B8770, 0x277CBE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8778);
  }

  return result;
}

id sub_2273B6740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices37RemoteBrowsingConfirmationCoordinatorC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_2273B681C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2273B6864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2273B68AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_2273B68D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_22766A730();
  sub_22766B370();
  v12 = *(v5 + 8);
  v12(v11, v4);
  v13 = *(v2 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock);
  v28 = v2;
  sub_2276696A0();
  v14 = v29;
  v15 = v32;
  v16 = v33;
  if (v33 == 2 && !(v30 | v29 | v31 | v32))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_227667670();
    return sub_227669270();
  }

  else
  {
    v25 = v31;
    v26 = v30;
    v27 = a1;
    sub_22766A730();
    v17 = sub_22766B380();
    v18 = sub_22766C890();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "Already waiting on confirmation or building environment", v19, 2u);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    v12(v9, v4);
    v20 = sub_227665A60();
    sub_2273B8C74();
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51BE0], v20);
    *(swift_allocObject() + 16) = v21;
    sub_227667670();
    sub_227669280();
    return sub_2273B8D34(v14, v26, v25, v15, v16);
  }
}

uint64_t sub_2273B6C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock);
    v13 = Strong;

    MEMORY[0x28223BE20](v14);
    *&v20[-32] = a3;
    *&v20[-24] = a1;
    *&v20[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
    sub_2276696A0();
  }

  sub_22766A730();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, "Requesting remote browsing confirmation via UI...", v17, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_227666D80();
  v18 = sub_22766C0B0();

  notify_post((v18 + 32));
}

void sub_2273B6E50(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
    v9 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
    v10 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
    v11 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 16);
    v12 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 24);
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v13 = *(v8 + 32);
    *(v8 + 32) = 0;

    sub_2273B8D34(v9, v10, v11, v12, v13);
  }

  *a3 = v7 == 0;
}

void sub_2273B6F1C(void (*a1)(uint64_t *), uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = swift_allocObject();
  v54 = a2;
  v55 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = a3;

  sub_22766A730();
  sub_22766B370();
  v24 = *(v12 + 8);
  v56 = v11;
  v24(v21, v11);
  v25 = *&v23[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock];
  v59 = v23;
  v26 = sub_2276696A0();
  v57 = v63;
  v58 = v62;
  v27 = v64;
  if (v64)
  {
    v28 = v24;
    v29 = v60;
    v30 = v61;

    sub_22766A730();
    v31 = sub_22766B380();
    v32 = sub_22766C890();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_226E8E000, v31, v32, "Currently idle or building environment", v33, 2u);
      MEMORY[0x22AA9A450](v33, -1, -1);
    }

    v28(v19, v56);
    v34 = sub_227665A60();
    sub_2273B8C74();
    v35 = swift_allocError();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D51BB8], v34);
    v60 = v35;
    LOBYTE(v61) = 1;
    v55(&v60);
    sub_2273B8D34(v29, v30, v58, v57, v27);
  }

  else
  {
    v37 = v10;
    v38 = v52;
    MEMORY[0x28223BE20](v26);
    *(&v51 - 6) = v23;
    *(&v51 - 5) = v39;
    v54 = v40;
    v55 = v39;
    *(&v51 - 4) = v40;
    *(&v51 - 3) = sub_226EB496C;
    *(&v51 - 2) = v22;
    sub_2276696A0();

    sub_22766A730();
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "Begin remote browsing environment build..", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    v24(v16, v56);
    v44 = __swift_project_boxed_opaque_existential_0(&v23[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder], *&v23[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder + 24]);
    v45 = *(*v44 + 1000);
    MEMORY[0x28223BE20](v44);
    *(&v51 - 2) = v46;
    *(&v51 - 8) = 0;
    os_unfair_lock_lock((v45 + 20));
    sub_2273B8DFC((v45 + 16), v37);
    os_unfair_lock_unlock((v45 + 20));
    v47 = swift_allocObject();
    *(v47 + 16) = v23;
    v48 = v23;
    v49 = sub_227669290();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_2273B8E1C;
    *(v50 + 24) = v47;

    v49(sub_226E93814, v50);

    sub_2273B8D34(v55, v54, v58, v57, 0);

    (*(v53 + 8))(v37, v38);
  }
}

uint64_t sub_2273B74F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v6 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v7 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
  v8 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 16);
  v9 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 24);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  v10 = *(v5 + 32);
  *(v5 + 32) = 1;

  return sub_2273B8D34(v6, v7, v8, v9, v10);
}

uint64_t sub_2273B7580(char *a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_227667670();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v69 - v23);
  v25 = &a1[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state];
  if (a1[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 32] == 1)
  {
    v69 = v4;
    v26 = v3;
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 1);
    v70 = *v25;
    v71 = v27;
    v30 = v22;
    sub_2273B8F08(v73, &v69 - v23);
    v73 = v30;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v24;
      v74 = v29;

      sub_22766A730();
      v33 = v32;
      v34 = sub_22766B380();
      v35 = sub_22766C8B0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v79 = v69;
        *v36 = 136446210;
        swift_getErrorValue();
        v37 = MEMORY[0x22AA995D0](v77, v78);
        v39 = sub_226E97AE8(v37, v38, &v79);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_226E8E000, v34, v35, "Failed remote browsing confirmation: %{public}s", v36, 0xCu);
        v40 = v69;
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v75 + 8))(v16, v76);
      *v21 = v32;
      swift_storeEnumTagMultiPayload();
      v41 = v32;
      (v70)(v21);
      sub_2273B8CCC(v21);
      v42 = v32;
      v71(v32, 1);
    }

    else
    {
      v56 = v26;
      (v69[4])(v74, v24, v26);

      sub_22766A730();
      v57 = sub_22766B380();
      v58 = sub_22766C8B0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_226E8E000, v57, v58, "Completing remote browsing confirmation!", v59, 2u);
        MEMORY[0x22AA9A450](v59, -1, -1);
      }

      (*(v75 + 8))(v14, v76);
      v60 = v69;
      v61 = v74;
      (v69[2])(v21, v74, v56);
      swift_storeEnumTagMultiPayload();
      (v70)(v21);
      sub_2273B8CCC(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
      sub_22766D430();
      v62 = v79;
      v63 = v80;
      v71(v79, v80);

      sub_226EB4548(v62, v63);
      (v60[1])(v61, v56);
    }

    v64 = *v25;
    v65 = *(v25 + 1);
    v66 = *(v25 + 2);
    v67 = *(v25 + 3);
    *v25 = 0u;
    *(v25 + 1) = 0u;
    v68 = v25[32];
    v25[32] = 2;
    return sub_2273B8D34(v64, v65, v66, v67, v68);
  }

  else
  {
    sub_22766A730();
    v43 = a1;
    v44 = sub_22766B380();
    v45 = sub_22766C8B0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v84 = v47;
      *v46 = 136446210;
      v48 = *(v25 + 1);
      v49 = *(v25 + 2);
      v50 = *(v25 + 3);
      v51 = v25[32];
      v79 = *v25;
      v80 = v48;
      v81 = v49;
      v82 = v50;
      v83 = v51;
      sub_2273B8EA4(v79, v48, v49, v50, v51);
      v52 = sub_22766C060();
      v54 = sub_226E97AE8(v52, v53, &v84);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_226E8E000, v44, v45, "Remote browsing environment build complete, but we are in the wrong state %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA9A450](v47, -1, -1);
      MEMORY[0x22AA9A450](v46, -1, -1);
    }

    return (*(v75 + 8))(v11, v76);
  }
}

uint64_t sub_2273B7C44(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock);
  v10 = a1;
  return sub_2276696A0();
}

uint64_t sub_2273B7D8C(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v4 = (&v52 - v3);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v18 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v17 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
  v19 = *(v16 + 16);
  v58 = *(v16 + 24);
  v20 = *(v16 + 32);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  v57 = v20;
  if (v20)
  {
    if (v20 == 1)
    {
      v56 = v19;
      v53 = v17;
      v54 = v18;

      sub_22766A730();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_226E8E000, v21, v22, "Denying pending confirmation and request", v23, 2u);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
      v24 = sub_227665A60();
      sub_2273B8C74();
      v25 = swift_allocError();
      v26 = *MEMORY[0x277D51B90];
      v27 = *(*(v24 - 8) + 104);
      v27(v28, v26, v24);
      v56(v25, 1);

      v29 = swift_allocError();
      v27(v30, v26, v24);
      *v4 = v29;
      swift_storeEnumTagMultiPayload();
      v17 = v53;
      v18 = v54;
      v54(v4);
      sub_2273B8CCC(v4);
      swift_allocError();
      v31 = v24;
      v32 = v58;
      v27(v33, v26, v31);
      v19 = v56;
      swift_willThrow();
    }

    else
    {
      sub_22766A730();
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_226E8E000, v46, v47, "No pending confirmation", v48, 2u);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v6 + 8))(v15, v5);
      v49 = sub_227665A60();
      sub_2273B8C74();
      swift_allocError();
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D51BB8], v49);
      swift_willThrow();
      v32 = v58;
    }
  }

  else
  {
    v56 = v19;
    v54 = v18;

    sub_22766A730();
    v34 = sub_22766B380();
    v35 = sub_22766C8B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226E8E000, v34, v35, "Denying pending confirmation", v36, 2u);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
    v37 = sub_227665A60();
    sub_2273B8C74();
    v38 = swift_allocError();
    v39 = *MEMORY[0x277D51B90];
    v40 = *(*(v37 - 8) + 104);
    v40(v41, v39, v37);
    *v4 = v38;
    swift_storeEnumTagMultiPayload();
    v42 = v54;
    v54(v4);
    sub_2273B8CCC(v4);
    swift_allocError();
    v44 = v43;
    v45 = v39;
    v18 = v42;
    v40(v44, v45, v37);
    swift_willThrow();
    v19 = v56;
    v32 = v58;
    sub_2273B8D34(v42, v17, v56, v58, 0);
  }

  return sub_2273B8D34(v18, v17, v19, v32, v57);
}

uint64_t sub_2273B83B8(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_lock);
  v12 = a1;
  result = sub_2276696A0();
  if (!v1)
  {
    sub_227666D90();
    v10 = sub_22766C0B0();

    notify_post((v10 + 32));
  }

  return result;
}

uint64_t sub_2273B8538(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v56 = (&v51 - v3);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v16 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v20 = *(v15 + 32);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 2;
  v57 = v18;
  if (v20)
  {
    v54 = v20;
    if (v20 == 1)
    {
      v52 = v16;
      v53 = v17;

      sub_22766A730();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_226E8E000, v21, v22, "Cancel pending confirmation and request", v23, 2u);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      (*(v5 + 8))(v9, v4);
      v24 = sub_227665A60();
      v51 = sub_2273B8C74();
      v25 = swift_allocError();
      v26 = *MEMORY[0x277D51BA0];
      v27 = *(*(v24 - 8) + 104);
      v27(v28, v26, v24);
      v29 = v19;
      v30 = v57;
      v57(v25, 1);

      v31 = swift_allocError();
      v27(v32, v26, v24);
      v33 = v56;
      *v56 = v31;
      swift_storeEnumTagMultiPayload();
      v16 = v52;
      v34 = v53;
      v52(v33);
      sub_2273B8CCC(v33);
      swift_allocError();
      v27(v35, v26, v24);
      v17 = v34;
      swift_willThrow();
    }

    else
    {
      v56 = v19;
      sub_22766A730();
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_226E8E000, v46, v47, "No pending confirmation to cancel", v48, 2u);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
      v49 = sub_227665A60();
      sub_2273B8C74();
      swift_allocError();
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D51BB8], v49);
      swift_willThrow();
      v30 = v57;
      v29 = v56;
    }

    return sub_2273B8D34(v16, v17, v30, v29, v54);
  }

  else
  {
    sub_22766A730();
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v53 = v17;
      v39 = v38;
      *v38 = 0;
      _os_log_impl(&dword_226E8E000, v36, v37, "Cancelling request", v38, 2u);
      v40 = v39;
      v17 = v53;
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    v41 = sub_227665A60();
    sub_2273B8C74();
    v42 = swift_allocError();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51BA0], v41);
    v44 = v56;
    *v56 = v42;
    swift_storeEnumTagMultiPayload();
    v16(v44);
    sub_2273B8D34(v16, v17, v57, v19, 0);
    return sub_2273B8CCC(v44);
  }
}

uint64_t sub_2273B8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = v7;
  v10 = MEMORY[0x277D84F78] + 8;

  return a5(a4, v8, v10);
}

unint64_t sub_2273B8C74()
{
  result = qword_27D7BD250;
  if (!qword_27D7BD250)
  {
    sub_227665A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD250);
  }

  return result;
}

uint64_t sub_2273B8CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273B8D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2273B8EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2273B8F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273B8F90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_2273B8EA4(v3, v4, v5, v6, v7);
}

void sub_2273B9020(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227669500();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2273B94E4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static BodyFocus.representativeSamples()()
{
  v19 = sub_227669530();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v25 = sub_22766C090();
  v26[0] = v4;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v21 = sub_2272BFE28();
  v22 = v21;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226ED62C0(0, v6, 0);
    v8 = 0;
    v9 = v20;
    v17 = v0 + 32;
    v18 = v5;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_227669500();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226ED62C0(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v3, v19);
      v10 += 4;
      v5 = v18;
      if (v6 == v8)
      {

        return v9;
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

void sub_2273B93F0(void *a1)
{
  sub_227669510();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669520();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2273B948C(uint64_t a1)
{
  result = sub_2273B94E4(&qword_28139B228, MEMORY[0x277D53E10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273B94E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2273B952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v118 = a1;
  v111 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD270, &unk_227684350);
  v104 = *(v107 - 8);
  v103 = *(v104 + 64);
  v6 = MEMORY[0x28223BE20](v107);
  v102 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v89 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v99);
  v112 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v105 = *(v108 - 8);
  v106 = v108 - 8;
  v116 = v105;
  v109 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v108 - 8);
  v110 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v117 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v115 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v121 = &v89 - v21;
  MEMORY[0x28223BE20](v20);
  v120 = &v89 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v23;
  v25 = swift_allocObject();
  v114 = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD278, &unk_227684360);
  v119 = swift_allocBox();
  v27 = v26;
  v28 = sub_227665E60();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v97 = v3;
  v29 = v3[5];
  v30 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v29);
  v31 = *(v30 + 16);
  v91 = v13;
  v31(a1, a2, v29, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2273BC288;
  *(v32 + 24) = v24;
  v100 = v24;
  v33 = v9;
  v34 = *(v9 + 16);
  v96 = v9 + 16;
  v98 = v34;
  v35 = v112;
  v36 = v99;
  v34(v112, v13, v99);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v95 = v37;
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = v38;
  v39 = swift_allocObject();
  v94 = *(v33 + 32);
  v94(v39 + v37, v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_226FCBEE0;
  v40[1] = v32;

  sub_227669270();
  v41 = *(v33 + 8);
  v92 = v33 + 8;
  v93 = v41;
  v42 = v91;
  v41(v91, v36);
  v43 = v97;
  v44 = v97[5];
  v45 = v97[6];
  __swift_project_boxed_opaque_existential_0(v97 + 2, v44);
  (*(v45 + 32))(v118, v113, v44, v45);
  v46 = swift_allocObject();
  v47 = v114;
  *(v46 + 16) = sub_2273BC074;
  *(v46 + 24) = v47;
  v48 = v112;
  v98(v112, v42, v36);
  v49 = v90;
  v50 = swift_allocObject();
  v94(v50 + v95, v48, v36);
  v51 = (v50 + v49);
  *v51 = sub_226FCBFE8;
  v51[1] = v46;

  sub_227669270();
  v93(v42, v36);
  v52 = v43[5];
  v53 = v43[6];
  __swift_project_boxed_opaque_existential_0(v43 + 2, v52);
  v54 = v101;
  (*(v53 + 24))(v118, v113, v52, v53);
  v55 = swift_allocObject();
  v56 = v119;
  *(v55 + 16) = sub_2273BC090;
  *(v55 + 24) = v56;
  v57 = v104;
  v58 = v102;
  v59 = v107;
  (*(v104 + 16))(v102, v54, v107);
  v60 = v57;
  v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v62 = (v103 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  (*(v60 + 32))(v63 + v61, v58, v59);
  v64 = (v63 + v62);
  *v64 = sub_2273BC0D0;
  v64[1] = v55;

  v65 = v115;
  sub_227669270();
  (*(v60 + 8))(v54, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v66 = *(v105 + 72);
  v67 = v116;
  v68 = *(v116 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_227675BD0;
  v70 = v69 + ((v68 + 32) & ~v68);
  v71 = *(v67 + 16);
  v72 = v108;
  v71(v70, v120, v108);
  v71(v70 + v66, v121, v72);
  v73 = v72;
  v71(v70 + 2 * v66, v65, v72);
  sub_226EA1CF4();
  v74 = sub_22766C950();
  sub_227669A50();
  v75 = v117;
  sub_227669250();

  v76 = swift_allocObject();
  v77 = v114;
  *(v76 + 16) = v100;
  *(v76 + 24) = v77;
  *(v76 + 32) = v119;
  *(v76 + 40) = v118;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_2273BC100;
  *(v78 + 24) = v76;
  v79 = v110;
  v80 = v75;
  v81 = v73;
  v71(v110, v80, v73);
  v82 = (v68 + 16) & ~v68;
  v83 = (v109 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v116;
  (*(v116 + 32))(v84 + v82, v79, v81);
  v86 = (v84 + v83);
  *v86 = sub_226F09740;
  v86[1] = v78;
  sub_227666600();

  sub_227669270();
  v87 = *(v85 + 8);
  v87(v117, v81);
  v87(v115, v81);
  v87(v121, v81);
  v87(v120, v81);
}

uint64_t sub_2273B9F88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v5 = *(a2 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t sub_2273B9FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v35) = a3;
  v39 = a4;
  v6 = sub_227666600();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD278, &unk_227684360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = sub_227665E60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v34[3] = *(a1 + 16);
    swift_beginAccess();
    if (*(a2 + 24))
    {
      v20 = *(a2 + 16);
      swift_beginAccess();
      sub_226E93170(v19, v13, &qword_27D7BD278, &unk_227684360);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v18, v13, v14);

        v35 = sub_2276637A0();
        v34[2] = v25;
        v26 = sub_227665E50();
        v34[0] = v27;
        v34[1] = v26;
        v28 = v15;
        sub_227665E30();
        sub_227665E20();
        v29 = v36;
        sub_2276665F0();
        v31 = v37;
        v30 = v38;
        (*(v38 + 16))(v37, v29, v6);
        v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v33 = swift_allocObject();
        (*(v30 + 32))(v33 + v32, v31, v6);
        sub_227669280();
        (*(v30 + 8))(v29, v6);
        return (*(v28 + 8))(v18, v14);
      }

      sub_226E97D1C(v13, &qword_27D7BD278, &unk_227684360);
    }
  }

  v21 = sub_2276636A0();
  sub_226F09790();
  v22 = swift_allocError();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D500B0], v21);
  *(swift_allocObject() + 16) = v22;
  return sub_227669280();
}

uint64_t sub_2273BA478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD510, &unk_227684320);
  v3 = *(v120 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v120);
  v151 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v120 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v122 = *(v124 - 8);
  v123 = v124 - 8;
  v130 = v122;
  v125 = *(v122 + 64);
  v8 = MEMORY[0x28223BE20](v124 - 8);
  v126 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v120 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v129 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v120 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v120 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v120 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v144 = &v120 - v21;
  MEMORY[0x28223BE20](v20);
  v143 = &v120 - v22;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v24 + 8))(v27, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD258, &qword_227684330);
  v28 = swift_allocBox();
  v30 = v29;
  v31 = sub_227666600();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  v128 = swift_allocBox();
  v32(v33, 1, 1, v31);
  v140 = swift_allocBox();
  v32(v34, 1, 1, v31);
  v139 = swift_allocBox();
  v32(v35, 1, 1, v31);
  v138 = swift_allocBox();
  v32(v36, 1, 1, v31);
  v141 = swift_allocBox();
  v32(v37, 1, 1, v31);
  v38 = sub_227663760();
  v132 = v7;
  v148 = a1;
  sub_2273B952C(v38, a1, v7);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2273BC270;
  *(v39 + 24) = v28;
  v121 = v28;
  v40 = *(v3 + 16);
  v134 = v3 + 16;
  v147 = v40;
  v41 = v151;
  v42 = v120;
  v40(v151, v7, v120);
  v43 = v3;
  v44 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v152 = *(v3 + 80);
  v149 = v44;
  v45 = (v4 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v137 = *(v43 + 32);
  v150 = v43 + 32;
  v137(v46 + v44, v41, v42);
  v47 = (v46 + v45);
  *v47 = sub_2273BBFA4;
  v47[1] = v39;

  sub_227669270();
  v48 = *(v43 + 8);
  v135 = v43 + 8;
  v136 = v48;
  v49 = v132;
  v48(v132, v42);
  v50 = sub_227663730();
  sub_2273B952C(v50, v148, v49);
  v51 = swift_allocObject();
  v52 = v128;
  *(v51 + 16) = sub_2273BBFD4;
  *(v51 + 24) = v52;
  v53 = v151;
  v54 = v42;
  v55 = v42;
  v56 = v147;
  v147(v151, v49, v54);
  v133 = v45;
  v57 = swift_allocObject();
  v137(v57 + v149, v53, v55);
  v58 = (v57 + v45);
  *v58 = sub_2273BC26C;
  v58[1] = v51;

  sub_227669270();
  v59 = v49;
  v136(v49, v55);
  v60 = sub_227663750();
  v61 = v148;
  sub_2273B952C(v60, v148, v49);
  v62 = swift_allocObject();
  v63 = v140;
  *(v62 + 16) = sub_2273BC270;
  *(v62 + 24) = v63;
  v64 = v151;
  v65 = v55;
  v56(v151, v59, v55);
  v66 = v133;
  v67 = swift_allocObject();
  v68 = v149;
  v69 = v64;
  v137(v67 + v149, v64, v65);
  v70 = (v67 + v66);
  *v70 = sub_2273BC26C;
  v70[1] = v62;

  sub_227669270();
  v71 = v132;
  v136(v132, v65);
  v72 = sub_227663740();
  sub_2273B952C(v72, v61, v71);
  v73 = swift_allocObject();
  v74 = v139;
  *(v73 + 16) = sub_2273BC270;
  *(v73 + 24) = v74;
  v75 = v69;
  v76 = v69;
  v77 = v65;
  v147(v76, v71, v65);
  v78 = v133;
  v79 = swift_allocObject();
  v80 = v137;
  v137(v79 + v68, v75, v65);
  v81 = (v79 + v78);
  *v81 = sub_2273BC26C;
  v81[1] = v73;

  sub_227669270();
  v82 = v132;
  v83 = v136;
  v136(v132, v65);
  v84 = sub_227663780();
  sub_2273B952C(v84, v148, v82);
  v85 = swift_allocObject();
  v86 = v138;
  *(v85 + 16) = sub_2273BC270;
  *(v85 + 24) = v86;
  v87 = v151;
  v147(v151, v82, v65);
  v88 = v133;
  v89 = swift_allocObject();
  v80(v89 + v149, v87, v77);
  v90 = (v89 + v88);
  *v90 = sub_2273BC26C;
  v90[1] = v85;

  sub_227669270();
  v83(v82, v77);
  v91 = v83;
  v92 = sub_227663770();
  sub_2273B952C(v92, v148, v82);
  v93 = swift_allocObject();
  v94 = v141;
  *(v93 + 16) = sub_2273BC270;
  *(v93 + 24) = v94;
  v147(v87, v82, v77);
  v95 = swift_allocObject();
  v80(v95 + v149, v87, v77);
  v96 = (v95 + v88);
  *v96 = sub_2273BC26C;
  v96[1] = v93;

  v97 = v129;
  sub_227669270();
  v91(v82, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v98 = *(v122 + 72);
  v99 = v130;
  v100 = *(v130 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_2276770E0;
  v102 = v101 + ((v100 + 32) & ~v100);
  v103 = *(v99 + 16);
  v104 = v124;
  v103(v102, v143, v124);
  v103(v102 + v98, v144, v104);
  v103(v102 + 2 * v98, v145, v104);
  v103(v102 + 3 * v98, v146, v104);
  v103(v102 + 4 * v98, v142, v104);
  v103(v102 + 5 * v98, v97, v104);
  v153 = v101;
  sub_226EA1CF4();
  v105 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_22718622C();
  v106 = v131;
  sub_227669260();

  v107 = swift_allocObject();
  v108 = v128;
  v107[2] = v121;
  v107[3] = v108;
  v109 = v139;
  v107[4] = v140;
  v107[5] = v109;
  v110 = v141;
  v107[6] = v138;
  v107[7] = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_2273BC014;
  *(v111 + 24) = v107;
  v112 = v126;
  v103(v126, v106, v104);
  v113 = (v100 + 16) & ~v100;
  v114 = (v125 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  v116 = v130;
  (*(v130 + 32))(v115 + v113, v112, v104);
  v117 = (v115 + v114);
  *v117 = sub_2272B81D4;
  v117[1] = v111;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
  sub_227669270();
  v118 = *(v116 + 8);
  v118(v131, v104);
  v118(v129, v104);
  v118(v142, v104);
  v118(v146, v104);
  v118(v145, v104);
  v118(v144, v104);
  v118(v143, v104);
}

uint64_t sub_2273BB3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_2273BB50C@<X0>(char *a1@<X5>, uint64_t a2@<X8>)
{
  v99 = a1;
  v100 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD258, &qword_227684330);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v91 = &v86 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v95 = &v86 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v86 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v86 - v15;
  v17 = sub_227666600();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v89 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v86 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v93 = &v86 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v96 = &v86 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v86 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v86 - v30;
  v32 = swift_projectBox();
  v33 = swift_projectBox();
  v34 = swift_projectBox();
  v94 = swift_projectBox();
  v90 = swift_projectBox();
  v35 = swift_projectBox();
  swift_beginAccess();
  sub_226E93170(v32, v16, &qword_27D7BD258, &qword_227684330);
  v36 = *(v18 + 48);
  if (v36(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  v87 = v35;
  v99 = *(v18 + 32);
  (v99)(v31, v16, v17);
  swift_beginAccess();
  sub_226E93170(v33, v14, &qword_27D7BD258, &qword_227684330);
  if (v36(v14, 1, v17) == 1)
  {
    (*(v18 + 8))(v31, v17);
    goto LABEL_15;
  }

  v37 = v18;
  v38 = v98;
  (v99)(v98, v14, v17);
  swift_beginAccess();
  v16 = v97;
  sub_226E93170(v34, v97, &qword_27D7BD258, &qword_227684330);
  if (v36(v16, 1, v17) == 1)
  {
    v39 = *(v37 + 8);
    v39(v38, v17);
    v39(v31, v17);
LABEL_2:
    v14 = v16;
LABEL_15:
    sub_226E97D1C(v14, &qword_27D7BD258, &qword_227684330);
    v53 = sub_2276636A0();
    sub_226F09790();
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D500B0], v53);
    *(swift_allocObject() + 16) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
    return sub_227669280();
  }

  v40 = v96;
  (v99)(v96, v16, v17);
  v41 = v94;
  swift_beginAccess();
  v42 = v41;
  v43 = v95;
  sub_226E93170(v42, v95, &qword_27D7BD258, &qword_227684330);
  if (v36(v43, 1, v17) == 1)
  {
    v44 = v43;
    v45 = *(v37 + 8);
    v45(v40, v17);
LABEL_14:
    v45(v38, v17);
    v45(v31, v17);
    v14 = v44;
    goto LABEL_15;
  }

  v46 = v93;
  (v99)(v93, v43, v17);
  v47 = v90;
  swift_beginAccess();
  v48 = v47;
  v49 = v91;
  sub_226E93170(v48, v91, &qword_27D7BD258, &qword_227684330);
  if (v36(v49, 1, v17) == 1)
  {
    v44 = v49;
    v45 = *(v37 + 8);
    v45(v46, v17);
LABEL_13:
    v45(v40, v17);
    goto LABEL_14;
  }

  (v99)(v92, v49, v17);
  v50 = v87;
  swift_beginAccess();
  v51 = v50;
  v52 = v88;
  sub_226E93170(v51, v88, &qword_27D7BD258, &qword_227684330);
  if (v36(v52, 1, v17) == 1)
  {
    v44 = v52;
    v45 = *(v37 + 8);
    v45(v92, v17);
    v45(v46, v17);
    goto LABEL_13;
  }

  (v99)(v89, v52, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD268, &unk_227684340);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB748, &qword_22767ADE0);
  v58 = *(*(v57 - 8) + 72);
  v59 = (*(*(v57 - 8) + 80) + 32) & ~*(*(v57 - 8) + 80);
  v60 = swift_allocObject();
  v97 = v60;
  *(v60 + 16) = xmmword_2276770E0;
  v61 = (v60 + v59);
  v62 = *(v57 + 48);
  sub_227663760();
  *v61 = sub_2276637A0();
  v61[1] = v63;
  v64 = *(v37 + 16);
  v64(v61 + v62, v31, v17);
  v65 = (v61 + v58);
  v66 = *(v57 + 48);
  sub_227663730();
  *v65 = sub_2276637A0();
  v65[1] = v67;
  v64(v61 + v58 + v66, v98, v17);
  v68 = (v61 + 2 * v58);
  v99 = v31;
  v69 = *(v57 + 48);
  sub_227663750();
  *v68 = sub_2276637A0();
  v68[1] = v70;
  v64(v68 + v69, v96, v17);
  v71 = (v61 + 3 * v58);
  v72 = *(v57 + 48);
  sub_227663740();
  *v71 = sub_2276637A0();
  v71[1] = v73;
  v64(v71 + v72, v93, v17);
  v74 = (v61 + 4 * v58);
  v75 = *(v57 + 48);
  sub_227663780();
  *v74 = sub_2276637A0();
  v74[1] = v76;
  v77 = v74 + v75;
  v78 = v92;
  v64(v77, v92, v17);
  v79 = (v61 + 5 * v58);
  v80 = *(v57 + 48);
  sub_227663770();
  *v79 = sub_2276637A0();
  v79[1] = v81;
  v82 = v79 + v80;
  v83 = v89;
  v64(v82, v89, v17);
  v84 = sub_22714B6B8(v97);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(swift_allocObject() + 16) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
  sub_227669280();
  v85 = *(v37 + 8);
  v85(v83, v17);
  v85(v78, v17);
  v85(v93, v17);
  v85(v96, v17);
  v85(v98, v17);
  return (v85)(v99, v17);
}

uint64_t sub_2273BC014@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_2273BB50C(*(v1 + 56), a1);
}

uint64_t sub_2273BC138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2273BC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2276678F0();
  v8 = sub_2276678D0();
  v9 = *(a4 + 24);
  v10 = v8 & 1;

  sub_2276696A0();
  if (v12 == 1)
  {
    sub_2273BD9E0(v7 & 1 | (v10 << 8), a1, a2);
  }
}

uint64_t sub_2273BC378@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1;
  if ((a1 & 0x100) != 0)
  {
    swift_beginAccess();
    v15 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_2273A6E5C(0, *(v15 + 2) + 1, 1, v15);
      *(a4 + 48) = v15;
    }

    v13 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v13 >= v17 >> 1)
    {
      v15 = sub_2273A6E5C((v17 > 1), v13 + 1, 1, v15);
    }

    *(v15 + 2) = v13 + 1;
    v18 = &v15[24 * v13];
    v18[32] = v9 & 1;
    v18[33] = 1;
    *(v18 + 5) = a2;
    *(v18 + 6) = a3;
    *(a4 + 48) = v15;
  }

  else
  {
    swift_beginAccess();
    v10 = *(a4 + 56);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 56) = v10;
    if ((v11 & 1) == 0)
    {
      v10 = sub_2273A6E5C(0, *(v10 + 2) + 1, 1, v10);
      *(a4 + 56) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2273A6E5C((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[24 * v13];
    v14[32] = v9 & 1;
    v14[33] = 0;
    *(v14 + 5) = a2;
    *(v14 + 6) = a3;
    *(a4 + 56) = v10;
  }

  swift_endAccess();
  *a5 = v13 == 0;
}

void sub_2273BC538(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A640();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a3 & 1;
    _os_log_impl(&dword_226E8E000, v13, v14, "Calling for subscription entitlements with ignoreCaches: %{BOOL}d", v15, 8u);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v16 = *(a4 + 32);
  sub_2276693E0();
  v17 = *(a4 + 40);
  v18 = sub_22766BFD0();

  v19 = swift_allocObject();
  v20 = a3 & 1;
  *(v19 + 16) = v20;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  aBlock[4] = sub_2273BE58C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2273BD198;
  aBlock[3] = &block_descriptor_28;
  v21 = _Block_copy(aBlock);

  [v17 getSubscriptionEntitlementsForSegment:2 ignoreCaches:v20 requestingBundleId:v18 withCacheInfoResultHandler:v21];
  _Block_release(v21);
}

uint64_t sub_2273BC788(unint64_t a1, int a2, int a3, void *a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v116 = a7;
  v117 = a6;
  LODWORD(v113) = a5;
  LODWORD(v112) = a3;
  LODWORD(v111) = a2;
  v9 = sub_227665AD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v106 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v17 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = (&v106 - v18);
  v19 = sub_22766B390();
  v118 = *(v19 - 8);
  v119 = v19;
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v106 - v24;
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v106 - v29;
  v34.n128_f64[0] = MEMORY[0x28223BE20](v31);
  v36 = &v106 - v35;
  if (a4)
  {
    v37 = a4;
    sub_22766A640();
    v38 = a4;
    v39 = sub_22766B380();
    v40 = sub_22766C890();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122[0] = v42;
      *v41 = 136446210;
      swift_getErrorValue();
      v43 = MEMORY[0x22AA995D0](v120, v121);
      v45 = sub_226E97AE8(v43, v44, v122);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_226E8E000, v39, v40, "Failed to fetch subscription entitlements with error: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    v46 = *(v118 + 8);
    v47 = v36;
    v48 = v119;
    v46(v47, v119);
    swift_getErrorValue();
    if (!sub_22706DF60() || (v113 & 1) != 0)
    {
      sub_226F099DC();
      v52 = swift_allocError();
      v54 = 2;
    }

    else
    {
      sub_22766A640();
      v49 = sub_22766B380();
      v50 = sub_22766C890();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_226E8E000, v49, v50, "Interactive action required to fetch subscription entitlements", v51, 2u);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      v46(v30, v48);
      sub_226F099DC();
      v52 = swift_allocError();
      v54 = 3;
    }

    *v53 = v54;
    v87 = v114;
    *v114 = v52;
    swift_storeEnumTagMultiPayload();
    v117(v87);

    return sub_226E97D1C(v87, &qword_27D7B9B28, &unk_227684550);
  }

  v55 = v111;
  v108 = v13;
  v109 = v10;
  v110 = v16;
  v113 = v9;
  v56 = v112;
  if (!a1)
  {
    goto LABEL_25;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_25:
    if (v56)
    {
      sub_22766A640();
      v91 = sub_22766B380();
      v92 = sub_22766C890();
      v93 = os_log_type_enabled(v91, v92);
      v95 = v118;
      v94 = v119;
      if (v93)
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_226E8E000, v91, v92, "Subscription cache expired", v96, 2u);
        MEMORY[0x22AA9A450](v96, -1, -1);
      }

      (*(v95 + 8))(v25, v94);
      sub_226F099DC();
      v97 = swift_allocError();
      v99 = 1;
    }

    else
    {
      sub_22766A640();
      v100 = sub_22766B380();
      v101 = sub_22766C890();
      v102 = os_log_type_enabled(v100, v101);
      v104 = v118;
      v103 = v119;
      if (v102)
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_226E8E000, v100, v101, "No subscription entitlements returned", v105, 2u);
        MEMORY[0x22AA9A450](v105, -1, -1);
      }

      (*(v104 + 8))(v22, v103);
      sub_226F099DC();
      v97 = swift_allocError();
      v99 = 4;
    }

    *v98 = v99;
    v87 = v114;
    *v114 = v97;
    swift_storeEnumTagMultiPayload();
    v117(v87);
    return sub_226E97D1C(v87, &qword_27D7B9B28, &unk_227684550);
  }

  v89 = v32;
  v90 = v33;
  result = sub_22766CD20();
  v33 = v90;
  v32 = v89;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v58 = v33;
    v59 = v32;
    v60 = v55;
    v61 = *(a1 + 32);
    if ((v56 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v58 = v33;
  v59 = v32;
  v61 = MEMORY[0x22AA991A0](0, a1, v34);
  v60 = v55;
  if (v56)
  {
LABEL_15:
    sub_22766A640();
    v62 = v61;
    v63 = v58;
    v64 = sub_22766B380();
    v65 = sub_22766C8B0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138543362;
      *(v66 + 4) = v62;
      *v67 = v62;
      v68 = v62;
      _os_log_impl(&dword_226E8E000, v64, v65, "Creating subscription with expired cached entitlement: %{public}@", v66, 0xCu);
      sub_226E97D1C(v67, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v67, -1, -1);
      MEMORY[0x22AA9A450](v66, -1, -1);
    }

    (*(v118 + 8))(v63, v119);
  }

LABEL_18:
  v69 = v61;
  v70 = v110;
  sub_2272B9020(v69, v60 & 1, v110);
  v71 = v59;
  sub_22766A640();
  v73 = v108;
  v72 = v109;
  v74 = v113;
  v112 = *(v109 + 16);
  v112(v108, v70, v113);
  v111 = v71;
  v75 = sub_22766B380();
  v76 = sub_22766C8B0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = v73;
    v106 = swift_slowAlloc();
    v122[0] = v106;
    *v77 = 136446210;
    sub_2273BE5E4();
    v79 = sub_22766D140();
    v107 = v69;
    v81 = v80;
    v82 = *(v72 + 8);
    v82(v78, v113);
    v83 = sub_226E97AE8(v79, v81, v122);
    v69 = v107;

    *(v77 + 4) = v83;
    _os_log_impl(&dword_226E8E000, v75, v76, "Subscription entitlement received: %{public}s", v77, 0xCu);
    v84 = v106;
    __swift_destroy_boxed_opaque_existential_0(v106);
    MEMORY[0x22AA9A450](v84, -1, -1);
    v85 = v77;
    v70 = v110;
    v74 = v113;
    MEMORY[0x22AA9A450](v85, -1, -1);

    v86 = v82;
  }

  else
  {

    v86 = *(v72 + 8);
    v86(v73, v74);
  }

  (*(v118 + 8))(v111, v119);
  v88 = v114;
  v112(v114, v70, v74);
  swift_storeEnumTagMultiPayload();
  v117(v88);

  sub_226E97D1C(v88, &qword_27D7B9B28, &unk_227684550);
  return (v86)(v70, v74);
}

uint64_t sub_2273BD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_2273BE598();
    v8 = sub_22766C2C0();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t sub_2273BD248(void *a1, char a2, char a3, uint64_t a4)
{
  if (a2 & 1) != 0 || (a3)
  {
    goto LABEL_12;
  }

  swift_getErrorValue();
  v6 = sub_22766D280();
  v8 = v7;
  sub_226F099DC();
  if (v6 == sub_22766D280() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_22766D190();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  v12 = sub_22766D270();
  if (v12 == sub_22766D270())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    *(v13 + 24) = a4;
    sub_227665AD0();

    return sub_227669270();
  }

LABEL_12:
  *(swift_allocObject() + 16) = a1;
  v15 = a1;
  sub_227665AD0();
  return sub_227669280();
}

uint64_t sub_2273BD428(uint64_t a1)
{
  sub_227669010();
  sub_227669010();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD280, &qword_227684418);
  sub_2276696A0();
  v4 = *(v10 + 16);
  if (v4)
  {
    v5 = (v10 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v7(a1);

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD288, &unk_227684420);
  result = sub_2276696A0();
  if (v11)
  {
    (sub_2273BD9E0)(v10 & 0x101);
    return sub_2273BE69C(v10, v11);
  }

  return result;
}

uint64_t sub_2273BD5EC@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  if (a1)
  {
    v7 = (a2 + 56);
  }

  else
  {
    v7 = (a2 + 48);
  }

  swift_beginAccess();
  v8 = *v7;
  v9 = *(*v7 + 16);

  if (v9)
  {
    v43 = v5;
    v44 = v4;
    v45 = a4;
    v11 = 0;
    v12 = v8 + 32;
    v46 = v9 - 1;
    v48 = MEMORY[0x277D84F90];
    do
    {
      v13 = (v12 + 24 * v11);
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v15 = *v13;
        v16 = v13[1];
        v18 = *(v13 + 1);
        v17 = *(v13 + 2);
        if (a3)
        {
          break;
        }

        v19 = *(v13 + 2);

        v20 = sub_227669010();
        if (v20 == sub_227669010())
        {
          goto LABEL_13;
        }

        ++v14;

        v13 += 24;
        if (v9 == v14)
        {
          goto LABEL_18;
        }
      }

      v21 = *(v13 + 2);

LABEL_13:
      v22 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F20688(0, *(v48 + 16) + 1, 1);
        v22 = v48;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        result = sub_226F20688((v23 > 1), v24 + 1, 1);
        v25 = v24 + 1;
        v22 = v48;
      }

      *(v22 + 16) = v25;
      v48 = v22;
      v26 = v22 + 24 * v24;
      *(v26 + 32) = v15;
      v11 = v14 + 1;
      *(v26 + 33) = v16;
      *(v26 + 40) = v18;
      *(v26 + 48) = v17;
      v12 = v8 + 32;
    }

    while (v46 != v14);
LABEL_18:
    v27 = 0;
    v28 = v8 + 32;
    v47 = MEMORY[0x277D84F90];
LABEL_19:
    v29 = (v28 + 24 * v27);
    v30 = v27;
    while (v30 < *(v8 + 16))
    {
      if ((a3 & 1) == 0)
      {
        v32 = *(v29 + 1);
        v31 = *(v29 + 2);
        v33 = v29[1];
        v34 = *v29;

        v35 = sub_227669010();
        if (v35 != sub_227669010())
        {
          v36 = v47;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_226F20688(0, *(v47 + 16) + 1, 1);
            v36 = v47;
          }

          v38 = *(v36 + 16);
          v37 = *(v36 + 24);
          v39 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            result = sub_226F20688((v37 > 1), v38 + 1, 1);
            v39 = v38 + 1;
            v36 = v47;
          }

          *(v36 + 16) = v39;
          v47 = v36;
          v40 = v36 + 24 * v38;
          *(v40 + 32) = v34;
          v27 = v30 + 1;
          *(v40 + 33) = v33;
          *(v40 + 40) = v32;
          *(v40 + 48) = v31;
          v28 = v8 + 32;
          if (v46 == v30)
          {
LABEL_30:
            a4 = v45;
            v4 = v44;
            v5 = v43;
            goto LABEL_32;
          }

          goto LABEL_19;
        }
      }

      ++v30;
      v29 += 24;
      if (v9 == v30)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
LABEL_32:

    if (v5)
    {
      v41 = (v4 + 56);
    }

    else
    {
      v41 = (v4 + 48);
    }

    swift_beginAccess();
    v42 = *v41;
    *v41 = v47;

    *a4 = v48;
  }

  return result;
}

uint64_t sub_2273BD940@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v4 = (a2 + 48);
  }

  else
  {
    v4 = (a2 + 56);
  }

  swift_beginAccess();
  v5 = *v4;
  if (*(*v4 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 33);
    v9 = *(v5 + 40);
    v8 = *(v5 + 48);
    v10 = 256;
    if (!v7)
    {
      v10 = 0;
    }

    v11 = v10 | v6;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    result = 0;
  }

  *a3 = v11;
  a3[1] = v9;
  a3[2] = result;
  return result;
}

uint64_t sub_2273BD9E0(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v5 = a1;
  v34 = a1 & 0x100;
  v6 = v34 == 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v32 = &v32 - v15;
  v33 = v5 & 1;
  v16 = sub_227669010();
  v17 = v16 == sub_227669010();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  sub_227665AD0();

  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 17) = v6;
  *(v19 + 24) = v4;
  (*(v8 + 16))(v10, v13, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v20, v10, v7);
  v23 = (v22 + v21);
  *v23 = sub_2273BE49C;
  v23[1] = v19;

  v24 = v32;
  sub_227669270();
  v25 = *(v8 + 8);
  v25(v13, v7);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v28 = BYTE1(v34);
  *(v27 + 24) = v33;
  *(v27 + 25) = v28;
  *(v27 + 32) = v35;
  *(v27 + 40) = v36;

  v29 = sub_227669290();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2273BE568;
  *(v30 + 24) = v27;

  v29(sub_226E93814, v30);

  return (v25)(v24, v7);
}

uint64_t sub_2273BDD68(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2273BD428(a1);
  }

  return result;
}

uint64_t sub_2273BDDF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2273BDE84(uint64_t a1)
{
  v3 = sub_227667900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_227665AD0();

  return sub_227669270();
}

uint64_t sub_2273BDFE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 48);

  v6 = sub_2273BE408(v5);

  swift_beginAccess();
  v7 = *(a1 + 56);

  LOBYTE(v4) = sub_2273BE408(v8);

  *a2 = (v6 | v4) & 1;
  return result;
}

uint64_t sub_2273BE098()
{
  v1 = *(v0 + 24);
  sub_2276696A0();
  return v3;
}

uint64_t sub_2273BE0F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_227667900() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273BC2A8(a1, a2, v2 + v6, v7);
}

uint64_t sub_2273BE1A4@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2273BC378(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_2273BE1F8(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  *(v3 + 48) = MEMORY[0x277D84F90];
  *(v3 + 56) = v11;
  sub_22766A730();
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_226E8E000, v12, v13, "Allocated subscription provider", v14, 2u);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  *(v3 + 16) = [objc_allocWithZone(type metadata accessor for ServiceSubscriptionDialogObserver()) init];
  v15 = sub_2276696C0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v3 + 24) = sub_2276696B0();
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(*(v3 + 16) + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionDialogObserver_dataSource + 8) = &off_283AB6780;
  swift_unknownObjectWeakAssign();
  v18 = objc_opt_self();
  v19 = a2;
  v20 = [v18 defaultCenter];
  [v20 setDialogObserver_];

  return v3;
}

BOOL sub_2273BE408(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 3;
    v4 = *v1;
    v5 = *(v1 - 16);

    v6 = sub_227669010();
    v7 = sub_227669010();

    v1 = v3;
  }

  while (v6 != v7);
  return v2 != 0;
}

uint64_t sub_2273BE4AC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273BFC3C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2273BE568(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 25);
  return sub_2273BDD68(a1);
}

unint64_t sub_2273BE598()
{
  result = qword_281398A68;
  if (!qword_281398A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A68);
  }

  return result;
}

unint64_t sub_2273BE5E4()
{
  result = qword_28139B758;
  if (!qword_28139B758)
  {
    sub_227665AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B758);
  }

  return result;
}

uint64_t sub_2273BE63C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *(v1 + 41);
  return sub_2273BD5EC(*(v1 + 16), *(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_2273BE69C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2273BE718(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ScriptLinkState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = *a2;
  swift_beginAccess();
  sub_226EA81F8(a1 + v11, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    sub_226EA4FC0(v10);
  }

  else
  {
    if (!result)
    {
      return sub_226EA4FC0(v10);
    }

    v13 = sub_22766B5F0();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_226EA4F5C(v8, a1 + v11);
  return swift_endAccess();
}

uint64_t sub_2273BE8D4(void *a1, const char *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v10 = a1;
  v11 = sub_22766B380();
  v12 = sub_22766C890();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21[1] = v2;
    v16 = v15;
    v22 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v21[3], v21[4]);
    v19 = sub_226E97AE8(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v11, v12, v21[0], v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2273BEAB4(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 128) == 1)
  {
    v8 = *(a1 + 120);
    v9 = v8 != 0;
    v10 = v8 - 1;
    if (v10)
    {
      if (v9)
      {
        *(a1 + 120) = v10;
        *(a1 + 128) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_22766A730();
      v28 = "_linkDeactivationInterval";
      sub_22766B370();
      v11 = *(v3 + 8);
      v11(v7, v2);
      v12 = *(a1 + 120);
      *(a1 + 120) = 0;
      v13 = *(a1 + 128);
      *(a1 + 128) = 2;
      sub_226E972B0(v12, v13);
      v14 = *(a1 + 16);
      sub_22766A730();
      sub_22766B370();
      v15 = (v11)(v7, v2);
      v16 = *(v14 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock);
      MEMORY[0x28223BE20](v15);
      sub_2276696A0();
      v17 = *(a1 + 24);
      sub_22766A730();
      sub_22766B370();
      v11(v7, v2);
      v18 = *(v17 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock);
      sub_2276696A0();
      v19 = *(a1 + 104);
      __swift_project_boxed_opaque_existential_0((a1 + 72), *(a1 + 96));
      v29 = 24;
      sub_226F19410();
      sub_226F19464();
      return sub_22766A120();
    }
  }

  else
  {
    sub_22766A730();
    sub_22766B370();
    v20 = *(v3 + 8);
    v20(v7, v2);
    v21 = *(a1 + 120);
    *(a1 + 120) = 0;
    v22 = *(a1 + 128);
    *(a1 + 128) = 2;
    sub_226E972B0(v21, v22);
    v23 = *(a1 + 16);
    sub_22766A730();
    sub_22766B370();
    v24 = (v20)(v7, v2);
    v25 = *(v23 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock);
    MEMORY[0x28223BE20](v24);
    sub_2276696A0();
    v26 = *(a1 + 24);
    sub_22766A730();
    sub_22766B370();
    v20(v7, v2);
    v27 = *(v26 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock);
    return sub_2276696A0();
  }

  return result;
}

uint64_t sub_2273BEFCC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v2 = *(v0 + 112);

  sub_226E972B0(*(v0 + 120), *(v0 + 128));
  v3 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScriptConnection()
{
  result = qword_2813A2FF8;
  if (!qword_2813A2FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273BF0FC()
{
  sub_2273BF1C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2273BF1C0()
{
  if (!qword_2813A54A0)
  {
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54A0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices16ScriptConnectionC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2273BF23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2273BF284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2273BF2C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_2273BF354(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2273BF364(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2273C0E88;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_2273C0E94, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2273C0F20;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_2273C0F5C, v17);
}

uint64_t sub_2273BF554()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 112);
    sub_2276696A0();
  }

  return result;
}

uint64_t sub_2273BF65C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_227669270();
}

uint64_t sub_2273BF728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  v10 = a1;
  a5(0);

  return sub_227669270();
}

void sub_2273BF7CC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

void sub_2273BF860(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v7 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

uint64_t sub_2273BF8F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v22 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v22 - v19;
  a3(a5);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v15, v18, a6, a7);
  sub_226E95D18(v18, v20, a6, a7);
  (v22[0])(v20);
  return sub_226E97D1C(v20, a6, a7);
}

uint64_t sub_2273BFCD4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v23[1] = a5;
  v24 = a2;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD630, &unk_227684CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v24;
    *(v21 + 24) = v25;

    v20(sub_226E93814, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_2273C0D6C(v18, v16, type metadata accessor for MetricServiceSubscriptionState);
    swift_storeEnumTagMultiPayload();
    v24(v16);
    return sub_226E97D1C(v16, &unk_27D7BD630, &unk_227684CC0);
  }
}

uint64_t sub_2273BFF54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v24[1] = a5;
  v25 = a2;
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v24 - v17);
  sub_226E93170(a1, v24 - v17, &unk_27D7BD450, &qword_227684B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;

    v20(sub_226E93814, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v23 = sub_227667670();
    (*(*(v23 - 8) + 32))(v16, v18, v23);
    swift_storeEnumTagMultiPayload();
    v25(v16);
    return sub_226E97D1C(v16, &unk_27D7BD450, &qword_227684B70);
  }
}

uint64_t sub_2273C01F0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    a5(a1);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v20(a10, v21);

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = a1;
    v24 = 0;
    return a3(&v23);
  }
}

uint64_t sub_2273C0364(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v23[1] = a5;
  v24 = a2;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v24;
    *(v21 + 24) = v25;

    v20(sub_226E93814, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_2273C0D6C(v18, v16, type metadata accessor for AssetLoaderResponse);
    swift_storeEnumTagMultiPayload();
    v24(v16);
    return sub_226E97D1C(v16, &qword_27D7B9628, &unk_227674860);
  }
}

uint64_t sub_2273C05E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v24[1] = a5;
  v25 = a2;
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v24 - v17);
  sub_226E93170(a1, v24 - v17, &qword_27D7BD650, &qword_227684CF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;

    v20(sub_226E93814, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v23 = sub_227666130();
    (*(*(v23 - 8) + 32))(v16, v18, v23);
    swift_storeEnumTagMultiPayload();
    v25(v16);
    return sub_226E97D1C(v16, &qword_27D7BD650, &qword_227684CF0);
  }
}

uint64_t sub_2273C0880(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v24[1] = a5;
  v25 = a2;
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (v24 - v17);
  sub_226E93170(a1, v24 - v17, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;

    v20(sub_226E93814, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v23 = sub_227665AD0();
    (*(*(v23 - 8) + 32))(v15, v18, v23);
    swift_storeEnumTagMultiPayload();
    v25(v15);
    return sub_226E97D1C(v15, &qword_27D7B9B28, &unk_227684550);
  }
}

void sub_2273C0B1C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD500, &qword_227684C20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_2270A71F0, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;

    a3(&v17);
    sub_226F38F34(a1, 0);
  }
}

uint64_t sub_2273C0D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2273C0E88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63564(*(v1 + 16), a1);
}

uint64_t objectdestroy_68Tm_1(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

id sub_2273C0F60()
{
  v1 = sub_22766AF40();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E99364(0, &qword_281398B10, 0x277CBC5F8);
  v6 = v0;
  v36 = v0;
  sub_2276694C0();
  v7 = *MEMORY[0x277CBBF28];
  sub_22766C000();
  v8 = sub_22766C8F0();
  sub_226E99364(0, &qword_281398B90, 0x277CBC5D0);
  sub_22766AF90();
  v40 = v8;
  v9 = sub_22766C7E0();
  v38 = sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
  sub_22766AF90();
  v39 = v9;
  v10 = sub_22766CAF0();
  v35 = v10;
  v37 = type metadata accessor for SyncEncryptionKey();
  v11 = MEMORY[0x277CC9318];
  v12 = v6 + *(v37 + 20);
  sub_22766B470();
  v13 = v41;
  v14 = v42;
  v15 = [v10 encryptedValues];
  v30[1] = swift_getObjectType();
  v16 = *MEMORY[0x277D544E8];
  v34 = v2[13];
  v31 = v1;
  v34(v5, v16, v1);
  sub_22766AF30();
  v17 = v2[1];
  v32 = v2 + 1;
  v33 = v17;
  v17(v5, v1);
  v43 = v11;
  v44 = MEMORY[0x277CBBBE0];
  v41 = v13;
  v42 = v14;
  sub_226F5E0B4(v13, v14);
  sub_22766C9F0();
  sub_226EDC420(v13, v14);
  swift_unknownObjectRelease();
  v18 = v36;
  v19 = v37;
  v20 = (v36 + *(v37 + 24));
  v21 = *v20;
  v22 = v20[1];
  v23 = sub_22766BFD0();
  v24 = v35;
  [v35 setEtag_];

  v25 = v31;
  v34(v5, *MEMORY[0x277D544E0], v31);
  sub_22766AF30();
  v33(v5, v25);
  v26 = v18 + *(v19 + 28);
  v27 = sub_227662770();
  v43 = MEMORY[0x277D837D0];
  v44 = MEMORY[0x277CBBE08];
  v41 = v27;
  v42 = v28;
  sub_22766C9F0();

  return v24;
}

void sub_2273C12F4(void *a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v58 - v5;
  v6 = sub_2276627D0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22766AF40();
  v9 = *(v73 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v73);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - v17;
  v19 = sub_2276694E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v74 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = [a1 recordID];
  v25 = [v24 zoneID];

  v26 = [v25 zoneName];
  sub_22766C000();

  sub_2276694B0();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_226E97D1C(v18, &qword_27D7B8460, qword_2276709E0);
    sub_226F1893C();
    swift_allocError();
    *v27 = 9;
    swift_willThrow();

    return;
  }

  v60 = *(v20 + 32);
  v61 = v20 + 32;
  v60(v74, v18, v19);
  v28 = v23;
  v29 = [v23 encryptedValues];
  v72 = v19;
  ObjectType = swift_getObjectType();
  v30 = *MEMORY[0x277D544E8];
  v31 = v73;
  v63 = v9[13];
  v63(v14, v30, v73);
  sub_22766AF30();
  v32 = v9[1];
  v64 = v9 + 1;
  v62 = v32;
  v32(v14, v31);
  sub_22766CA00();
  v33 = v72;

  swift_unknownObjectRelease();
  v34 = v76;
  if (v76 >> 60 != 15)
  {
    v35 = v20;
    v36 = v75;
    v37 = [v28 etag];
    if (v37)
    {
      ObjectType = v36;
      v38 = v37;
      v59 = sub_22766C000();
      v40 = v39;

      v41 = v71;
      v63(v71, *MEMORY[0x277D544E0], v31);
      v42 = sub_22766AF30();
      v43 = v28;
      v45 = v44;
      v62(v41, v31);
      v46 = MEMORY[0x22AA98E20](v42, v45);

      if (v46 && (v77 = v46, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD298, &unk_2276845E0), (swift_dynamicCast() & 1) != 0))
      {
        v73 = v40;
        v47 = v68;
        sub_227662760();

        v49 = v69;
        v48 = v70;
        if ((*(v69 + 48))(v47, 1, v70) != 1)
        {
          v51 = *(v49 + 32);
          v52 = v66;
          v51(v66, v47, v48);
          v75 = ObjectType;
          v76 = v34;
          v53 = type metadata accessor for SyncEncryptionKey();
          v54 = v67;
          v55 = &v67[v53[5]];
          sub_22766B490();

          v60(v54, v74, v72);
          v51(&v54[v53[7]], v52, v48);
          v56 = &v54[v53[6]];
          v57 = v73;
          *v56 = v59;
          v56[1] = v57;
          return;
        }

        sub_226FB1424(ObjectType, v34);

        sub_226E97D1C(v47, &unk_27D7BB9D0, &qword_227671550);
      }

      else
      {

        sub_226FB1424(ObjectType, v34);
      }

      v28 = v43;
    }

    else
    {
      sub_226FB1424(v36, v34);
    }

    v33 = v72;
    v20 = v35;
  }

  sub_226F1893C();
  swift_allocError();
  *v50 = 7;
  swift_willThrow();

  (*(v20 + 8))(v74, v33);
}

uint64_t sub_2273C19F0()
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2273C1A48(uint64_t a1, int *a2)
{
  v4 = a2[5];
  sub_22766B470();
  sub_2276694E0();
  sub_2273C1DF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_22766C100();
  v8 = a2[7];
  sub_2276627D0();
  sub_2273C1DF8(&qword_28139BDA0, MEMORY[0x277CC95F0]);
  return sub_22766BF60();
}

uint64_t sub_2273C1B80()
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncEncryptionKey()
{
  result = qword_28139AA40;
  if (!qword_28139AA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273C1C98(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2273C1DF8(&qword_28139B260, MEMORY[0x277D53DA0]);
  sub_22766C290();
  sub_22766C290();
  if (v17 == v15 && v18 == v16)
  {
  }

  else
  {
    v5 = sub_22766D190();

    if ((v5 & 1) == 0)
    {
LABEL_15:
      v13 = 0;
      return v13 & 1;
    }
  }

  v6 = type metadata accessor for SyncEncryptionKey();
  if ((MEMORY[0x22AA977A0](a1 + v6[5], a2 + v6[5]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = v6[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = v6[7];
  v13 = sub_2276627A0();
  return v13 & 1;
}

uint64_t sub_2273C1DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2273C1E68()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    result = sub_22766B4C0();
    if (v2 <= 0x3F)
    {
      result = sub_2276627D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id MetricEnvironmentDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricEnvironmentDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricEnvironmentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2273C20F8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    sub_226F1FB68(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22766CD20();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x22AA991A0](0, a1);
LABEL_10:
  v6 = v5;
  sub_227662750();
  sub_22766BEA0();

  return 0;
}

uint64_t sub_2273C2290(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_226F1FC48(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226F1FC48((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2273C23F0(unint64_t a1, void (*a2)(void, uint64_t, void))
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v10 = MEMORY[0x277D84F90];
    a2(0, i & ~(i >> 63), 0);
    v6 = v10;
    if (v4)
    {
      if (!sub_22766CD20())
      {
        return v6;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v7 = MEMORY[0x22AA991A0](0, a1);
LABEL_10:
  v8 = v7;
  sub_22766BEA0();

  return 0;
}

uint64_t WorkoutPlanSchedule.metricScaffold.getter()
{
  v0 = sub_227665BE0();
  v1 = v0;
  v17 = MEMORY[0x277D84F98];
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = *(*(v1 + 48) + v10);
    v12 = *(*(v1 + 56) + 8 * v10);
    sub_227667400();

    v13 = sub_22766C310();
    v14 = sub_2273C2290(v13);

    if (v14)
    {
      v15 = sub_2276692E0();
      sub_2273C2874(v14, v15, v16);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v17;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_2273C272C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v25 = v11;
  v12 = sub_226E9BF6C(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_226FE5DE4(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_226E9BF6C(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_22766D220();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v12;
    sub_226FF1D00();
    v12 = v22;
    v19 = v25;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = v12;
    sub_226EA1E2C(a2, v24);
    result = sub_227366408(v23, v24, a1, v19);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v19 = v25;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v12;
  sub_226F04970((v19[7] + 32 * v12), a3);
  result = sub_226F04970(a1, (v19[7] + v20));
LABEL_11:
  *v5 = v19;
  return result;
}

uint64_t sub_2273C2874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_226E92000(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_226FE6DAC(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_226E92000(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_22766D220();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_226FF23EC();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_22736CCBC(v12, a2, a3, a1, v11);

    v20 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = v11[7];
  v20 = *(v19 + 8 * v12);
  *(v19 + 8 * v12) = a1;
LABEL_11:
  *v5 = v11;
  return v20;
}

uint64_t sub_2273C29B4()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2273C2A2C()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2273C2A70@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2273C2AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2273C2CC0();
  v5 = sub_22722E01C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(int a1)
{
  if ((a1 - 1) >= 0x1C)
  {
    return 28;
  }

  else
  {
    return (a1 - 1);
  }
}

unint64_t sub_2273C2B1C()
{
  result = qword_27D7BD2A8;
  if (!qword_27D7BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD2A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteDatabaseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2273C2CC0()
{
  result = qword_27D7BD2B0;
  if (!qword_27D7BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD2B0);
  }

  return result;
}

uint64_t sub_2273C2D14(uint64_t a1)
{
  v37 = sub_227663480();
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
    sub_226F1EF90(0, v6, 0);
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
      v39 = sub_227663410();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
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

uint64_t sub_2273C301C(uint64_t a1)
{
  v3 = sub_227663480();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v32[1] = v1;
    v45 = MEMORY[0x277D84F90];
    v39 = v7;
    sub_226F1F568(0, v10, 0);
    v12 = v39;
    v13 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v36 = v12 + 8;
    v37 = v12 + 16;
    v34 = v10;
    v35 = v12 + 32;
    v33 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      if ((*(v43 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v40 = v15;
      v41 = *(a1 + 36);
      v42 = v14 >> 6;
      v17 = *(v12 + 72);
      v18 = v38;
      (*(v12 + 16))(v38, *(a1 + 48) + v17 * v14, v3);
      sub_227663470();
      v12 = v39;
      (*(v39 + 8))(v18, v3);
      v19 = v44;
      v45 = v44;
      v20 = v9;
      v21 = a1;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F568(v22 > 1, v23 + 1, 1);
        v12 = v39;
        v19 = v45;
      }

      *(v19 + 16) = v23 + 1;
      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v44 = v19;
      result = (*(v12 + 32))(v19 + v24 + v23 * v17, v20, v3);
      v16 = 1 << *(v21 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v25 = *(v43 + 8 * v42);
      if ((v25 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v41 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v14 & 0x3F));
      if (v26)
      {
        v16 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v9 = v20;
      }

      else
      {
        v27 = v42 << 6;
        v28 = v42 + 1;
        v29 = (v33 + 8 * v42);
        v9 = v20;
        while (v28 < (v16 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v14, v41, 0);
            v16 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v41, 0);
LABEL_19:
        v12 = v39;
      }

      v15 = v40 + 1;
      v14 = v16;
      if (v40 + 1 == v34)
      {
        return v44;
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

  return result;
}

uint64_t sub_2273C33DC(uint64_t a1)
{
  v50 = sub_227663480();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_2276633E0();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_2276633E0();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_2273C37EC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return sub_2273C3E8C(a2);
    }
  }

  else if (!a1)
  {
    if ((sub_22711ABE8() & 1) == 0)
    {
      return sub_2273C3E8C(a2);
    }

    return sub_2276692A0();
  }

  if (sub_22711ABE8())
  {
    return sub_2276692A0();
  }

  return sub_2273C3E8C(a2);
}

uint64_t sub_2273C3980@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v39 - v10;
  v42 = sub_22766B390();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  if (v5 == 1)
  {
    sub_22766A6C0();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_226E97AE8(0x72656772616863, 0xE700000000000000, &v44);
      _os_log_impl(&dword_226E8E000, v18, v19, "Ignoring PowerSource change: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v11 + 8))(v17, v42);
    return sub_2276692A0();
  }

  else
  {
    v39 = v6;
    sub_22766A6C0();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136446210;
      if (a1)
      {
        v27 = 0x6E776F6E6B6E75;
      }

      else
      {
        v27 = 0x79726574746162;
      }

      v28 = sub_226E97AE8(v27, 0xE700000000000000, &v44);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v23, v24, "PowerSource change to %{public}s. Cancelling in-progress fetches", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    (*(v11 + 8))(v15, v42);
    v29 = v3[75];
    v30 = v3[76];
    __swift_project_boxed_opaque_existential_0(v3 + 72, v29);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    v32 = v41;
    sub_226ECF5D8(sub_2273CCE18, v3, v29, v31, v30, v41);

    v33 = swift_allocObject();
    *(v33 + 16) = sub_2273CCF3C;
    *(v33 + 24) = v3;
    v35 = v39;
    v34 = v40;
    (*(v7 + 16))(v40, v32, v39);
    v36 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v37 = swift_allocObject();
    (*(v7 + 32))(v37 + v36, v34, v35);
    v38 = (v37 + ((v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_227087D64;
    v38[1] = v33;

    sub_227669270();
    return (*(v7 + 8))(v32, v35);
  }
}

uint64_t sub_2273C3E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v96 = *(v98 - 1);
  v3 = *(v96 + 64);
  v4 = MEMORY[0x28223BE20](v98);
  v92 = v5;
  v93 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = *(v101 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v83 - v12;
  v95 = v13;
  MEMORY[0x28223BE20](v11);
  v104 = &v83 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v108 = *(v105 - 8);
  v15 = *(v108 + 64);
  v16 = MEMORY[0x28223BE20](v105);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v103 = &v83 - v18;
  MEMORY[0x28223BE20](v17);
  v100 = &v83 - v19;
  v20 = sub_22766A8A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22766B390();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v83 - v31;
  sub_22766A6C0();
  v89 = "AssetSystemPrefetching.swift";
  sub_22766B370();
  v90 = *(v26 + 8);
  v90(v32, v25);
  v106 = v2;
  v33 = *(v2 + 616);
  v34 = sub_2276693C0();
  (*(v21 + 104))(v24, *MEMORY[0x277D4F990], v20);
  LOBYTE(v2) = sub_226EC9A38(v24, v34);

  (*(v21 + 8))(v24, v20);
  if (v2)
  {
    v35 = v106;
    v36 = *(v106 + 98);
    __swift_project_boxed_opaque_existential_0(v106 + 94, *(v106 + 97));
    v109 = 3;
    sub_226F19410();
    sub_226F19464();
    sub_22766A130();
    v37 = v103;
    sub_2273C54D4(v103);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_2273CA938;
    *(v38 + 24) = v35;
    v39 = v108;
    v40 = *(v108 + 16);
    v89 = (v108 + 16);
    v90 = v40;
    v41 = v91;
    v42 = v105;
    (v40)(v91, v37, v105);
    v43 = *(v39 + 80);
    v88 = v43;
    v44 = (v43 + 16) & ~v43;
    v86 = v44;
    v45 = (v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = v45;
    v46 = swift_allocObject();
    v47 = *(v39 + 32);
    v85 = v39 + 32;
    v87 = v47;
    v47(v46 + v44, v41, v42);
    v48 = (v46 + v45);
    *v48 = sub_226F09740;
    v48[1] = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v49 = v94;
    sub_227669270();
    v50 = *(v39 + 8);
    v108 = v39 + 8;
    v91 = v50;
    (v50)(v37, v42);
    v51 = v96;
    v52 = v93;
    v53 = v98;
    (*(v96 + 16))(v93, v49, v98);
    v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v55 = (v92 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    (*(v51 + 32))(v56 + v54, v52, v53);
    v57 = (v56 + v55);
    *v57 = sub_2273CA964;
    v57[1] = v35;

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    v58 = v99;
    sub_227669270();
    (*(v51 + 8))(v49, v53);
    v94 = swift_allocObject();
    swift_weakInit();
    v60 = v101;
    v59 = v102;
    v98 = *(v101 + 16);
    v61 = v97;
    (v98)(v97, v58, v102);
    v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v96 = v62;
    v63 = (v95 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v95 = *(v60 + 32);
    v95(v64 + v62, v61, v59);
    v65 = (v64 + v63);
    v66 = v63;
    v67 = v94;
    *v65 = sub_2273CA994;
    v65[1] = v67;
    v68 = v104;
    sub_227669270();
    v101 = *(v60 + 8);
    (v101)(v58, v59);
    v69 = swift_allocObject();
    v70 = v106;
    *(v69 + 16) = sub_2273CAA68;
    *(v69 + 24) = v70;
    (v98)(v58, v68, v59);
    v71 = swift_allocObject();
    v95(v71 + v96, v58, v59);
    v72 = (v71 + v66);
    *v72 = sub_227086814;
    v72[1] = v69;

    v73 = v100;
    sub_227669270();
    (v101)(v104, v59);
    v74 = v103;
    v75 = v105;
    (v90)(v103, v73, v105);
    v76 = v84;
    v77 = swift_allocObject();
    v87(v77 + v86, v74, v75);
    v78 = (v77 + v76);
    *v78 = sub_2273C61CC;
    v78[1] = 0;
    sub_227669270();
    return (v91)(v73, v75);
  }

  else
  {
    sub_22766A6C0();
    v80 = sub_22766B380();
    v81 = sub_22766C8B0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_226E8E000, v80, v81, "Prefetch - Current platform doesn't support prefetching.", v82, 2u);
      MEMORY[0x22AA9A450](v82, -1, -1);
    }

    v90(v30, v25);
    return sub_2276692A0();
  }
}

uint64_t sub_2273C4944@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9E0, &qword_227684870);
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = v4;
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v60 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v74 = *(v63 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v63);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = v12;
  v67 = &v60 - v11;
  MEMORY[0x28223BE20](v13);
  v69 = &v60 - v14;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  sub_22766A6C0();
  sub_22766B370();
  v23 = *(v16 + 8);
  v23(v22, v15);
  if (sub_22711ABE8() & 1) != 0 || (sub_22711ABE8() & 1) != 0 || (sub_22711ABE8())
  {
    v62 = a1;
    v75 = MEMORY[0x277D84F90];

    sub_226F204C8(0, 3, 0);
    v24 = v74;
    v25 = v75;
    v26 = v74 + 32;
    sub_2273C672C(byte_283A94370);
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_226F204C8(v27 > 1, v28 + 1, 1);
      v25 = v75;
    }

    *(v25 + 16) = v28 + 1;
    v29 = *(v24 + 80);
    v72 = ((v29 + 32) & ~v29);
    v73 = v29;
    v30 = *(v24 + 72);
    v31 = *(v24 + 32);
    v32 = v9;
    v33 = v9;
    v34 = v63;
    v31(v72 + v25 + v30 * v28, v32, v63);
    sub_2273C672C(byte_283A94371);
    v75 = v25;
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_226F204C8(v35 > 1, v36 + 1, 1);
      v25 = v75;
    }

    v61 = ~v73;
    *(v25 + 16) = v36 + 1;
    v31(v72 + v25 + v30 * v36, v33, v34);
    sub_2273C672C(byte_283A94372);
    v75 = v25;
    v38 = *(v25 + 16);
    v37 = *(v25 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_226F204C8(v37 > 1, v38 + 1, 1);
      v25 = v75;
    }

    *(v25 + 16) = v38 + 1;
    v31(v72 + v25 + v30 * v38, v33, v34);

    v75 = v25;
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v39 = sub_22766C950();
    sub_227669A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v72 = v31;
    v60 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD2B8, &qword_227684878);
    sub_2273CCBB4(&unk_27D7BD2C0, &qword_27D7BD2B8, &qword_227684878);
    v40 = v68;
    sub_227669210();

    v41 = swift_allocObject();
    *(v41 + 16) = sub_2273C6B6C;
    *(v41 + 24) = 0;
    v43 = v70;
    v42 = v71;
    v44 = v65;
    (*(v70 + 16))(v65, v40, v71);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = (v64 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    (*(v43 + 32))(v47 + v45, v44, v42);
    v48 = (v47 + v46);
    *v48 = sub_2273CCC08;
    v48[1] = v41;
    v49 = v69;
    sub_227669270();
    (*(v43 + 8))(v40, v42);
    v50 = v74;
    v51 = v67;
    (*(v74 + 16))(v67, v49, v34);
    v52 = (v73 + 16) & v61;
    v53 = (v66 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v72(v54 + v52, v51, v34);
    v55 = (v54 + v53);
    *v55 = sub_2273C6C04;
    v55[1] = 0;
    sub_227669270();
    return (*(v50 + 8))(v49, v34);
  }

  else
  {
    sub_22766A6C0();
    v57 = sub_22766B380();
    v58 = sub_22766C8B0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_226E8E000, v57, v58, "Prefetch - All prefetch preferences are disabled", v59, 2u);
      MEMORY[0x22AA9A450](v59, -1, -1);
    }

    v23(v19, v15);
    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    return sub_227669280();
  }
}

uint64_t sub_2273C5160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v32 - v10;
  v11 = v2[75];
  v12 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v33 = v2;

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v35 = v9;
  sub_226ECF5D8(sub_2273CBB40, v13, v11, v41, v12, v9);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_2273CBB5C;
  *(v14 + 24) = v2;
  v36 = *(v4 + 16);
  v15 = v37;
  v16 = v39;
  v36(v37, v9, v39);
  v17 = *(v4 + 80);
  v32 = v4;
  v18 = (v17 + 16) & ~v17;
  v34 = v18;
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v4 + 32);
  v21(v20 + v18, v15, v16);
  v22 = (v20 + v19);
  *v22 = sub_2273CBB78;
  v22[1] = v14;

  v23 = v40;
  sub_227669270();
  v24 = *(v32 + 8);
  v25 = v35;
  v26 = v39;
  v24(v35, v39);
  v27 = v23;
  v28 = v26;
  v36(v25, v27, v26);
  v29 = swift_allocObject();
  v21(v29 + v34, v25, v28);
  v30 = (v29 + v19);
  *v30 = sub_2273CA5E0;
  v30[1] = 0;
  sub_227669270();
  return (v24)(v40, v28);
}

uint64_t sub_2273C54D4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v29);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((v1 + 664), *(v1 + 688));
  v15 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v14 + v15, &v33);
  if (v34)
  {
    sub_226E92AB8(&v33, v32);
    sub_226E91B50(v32, v31);
    v16 = swift_allocObject();
    sub_226E92AB8(v31, v16 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    sub_226F099DC();
    v17 = swift_allocError();
    *v18 = 0;
    *(swift_allocObject() + 16) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v3 + 16))(v6, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v6, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_2273C644C;
  v21[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v23 = v28;
  v22 = v29;
  (*(v9 + 16))(v28, v13, v29);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273C6568;
  v26[1] = 0;
  sub_227669270();
  return (*(v9 + 8))(v13, v22);
}

uint64_t sub_2273C5940@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v12 - 8);
  v55 = v12;
  v53 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = *a1;
  v15 = v50;
  v51 = &v46 - v16;
  v17 = a2[75];
  v18 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v17);
  v19 = swift_allocObject();
  v47 = a2;
  *(v19 + 16) = a2;
  *(v19 + 24) = v15;

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v20 = v10;
  sub_226ECF5D8(sub_2273CBA40, v19, v17, v62, v18, v10);

  v59 = *(v5 + 16);
  v21 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v49;
  v59(v21, v10, v49);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v48 = v23 + v6;
  v58 = v23;
  v24 = (v23 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v57 = *(v5 + 32);
  v57(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2273C9684;
  v26[1] = 0;
  v27 = v63;
  sub_227669270();
  v28 = *(v5 + 8);
  v60 = v5 + 8;
  v61 = v28;
  v29 = v20;
  v28(v20, v22);
  v30 = swift_allocObject();
  v31 = v47;
  *(v30 + 16) = sub_2273CBA5C;
  *(v30 + 24) = v31;
  v59(v20, v27, v22);
  v32 = swift_allocObject();
  v57(v32 + v58, v29, v22);
  v33 = (v32 + v24);
  *v33 = sub_227087D64;
  v33[1] = v30;

  v34 = v51;
  sub_227669270();
  v35 = v63;
  v61(v63, v22);
  sub_2273C5160(v50, v35);
  v59(v29, v35, v22);
  v36 = swift_allocObject();
  v57(v36 + v58, v29, v22);
  v37 = v54;
  v38 = v55;
  v39 = v52;
  (*(v54 + 16))(v52, v34, v55);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v39, v38);
  v44 = (v43 + v42);
  *v44 = sub_2273CBA8C;
  v44[1] = v36;
  sub_227669270();
  v61(v63, v22);
  return (*(v40 + 8))(v34, v38);
}

uint64_t sub_2273C5EC8()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 752, v11);

    __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v10[15] = 3;
    sub_226F19410();
    sub_226F19464();
    sub_22766A120();
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  sub_22766A710();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v6, v7, "Finished fetching asset bundles to prefetch", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_2273C60E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v6 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

uint64_t sub_2273C61CC(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    sub_22766A6C0();
    v11 = v10;
    v12 = sub_22766B380();
    v13 = sub_22766C8B0();
    sub_226EB4548(v10, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v23[2], v23[3]);
      v18 = sub_226E97AE8(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "Prefetch - Resolved with error %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_22766A6C0();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "Prefetch - Resolved successfully", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_2273C644C(void *a1)
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

uint64_t sub_2273C6568()
{
  v0 = sub_227662750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v5 = sub_227665AA0();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_2276692A0();
  }

  v7 = sub_227663190();
  sub_2273CCDD0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v8 = swift_allocError();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D4FD48], v7);
  *(swift_allocObject() + 16) = v8;
  return sub_227669280();
}

uint64_t sub_2273C672C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  sub_22766A6C0();
  sub_22766B370();
  v12 = *(v5 + 8);
  v12(v11, v4);
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    if (sub_22711ABE8())
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_22766A6C0();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v22 = sub_227664C10();
      v24 = sub_226E97AE8(v22, v23, &v31);
      v30 = v12;
      v25 = v24;

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v18, v19, "Prefetching not supported for media type %s, returning empty set", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      v30(v8, v4);
    }

    else
    {

      v12(v8, v4);
    }

    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    return sub_227669280();
  }

  if ((sub_22711ABE8() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = sub_227664C10();
  v15 = v14;
  if (v13 == sub_227664C10() && v15 == v16)
  {

    v17 = 7;
  }

  else
  {
    v27 = sub_22766D190();

    if (v27)
    {
      v17 = 7;
    }

    else
    {
      v17 = 2;
    }
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = a1;
  *(v28 + 32) = v17;
  v29 = swift_allocObject();
  *(v29 + 16) = "SeymourServices/AssetSystemPrefetching.swift";
  *(v29 + 24) = 44;
  *(v29 + 32) = 2;
  *(v29 + 40) = 151;
  *(v29 + 48) = &unk_227684888;
  *(v29 + 56) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  return sub_227669270();
}

uint64_t sub_2273C6B6C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84FA0];
    while (v5 < *(v3 + 16))
    {
      v7 = v5 + 1;
      v8 = *(v3 + 32 + 8 * v5);

      result = sub_2273FB844(v9, v6);
      v6 = result;
      v5 = v7;
      if (v4 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
LABEL_7:
    *a2 = v6;
  }

  return result;
}

uint64_t sub_2273C6C04(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v11 = v10;
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    sub_226F38F34(v10, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v27[2], v27[3]);
      v18 = sub_226E97AE8(v16, v17, &v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "Prefetch - Failed to query qualifying items with error: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_22766A6C0();

    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    sub_226F38F34(v10, 0);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      v24 = sub_22766C610();
      v26 = sub_226E97AE8(v24, v25, &v28);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v20, v21, "Prefetch - All qualifying items: %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_2273C6F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 184) = a3;
  *(v4 + 64) = a1;
  v5 = sub_22766B390();
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273C6FE4, 0, 0);
}

uint64_t sub_2273C6FE4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = v2[75];
  v5 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v4);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  *(v0 + 136) = v10;
  *v9 = v0;
  v9[1] = sub_2273C7184;

  return (v12)(v0 + 40, sub_2273CCD6C, v6, v10, v4, v5);
}

uint64_t sub_2273C7184()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_2273C77BC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2273C72A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273C72A0()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[19] = v2;
  v3 = v1[75];
  v4 = v1[76];
  __swift_project_boxed_opaque_existential_0(v1 + 72, v3);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = v2;
  v6 = *(v4 + 24);

  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_2273C7434;
  v9 = v0[17];

  return (v11)(v0 + 7, sub_2273CCD8C, v5, v9, v3, v4);
}

uint64_t sub_2273C7434()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    v6 = v2[19];

    v7 = sub_2273C79E0;
  }

  else
  {

    v7 = sub_2273C7578;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2273C7578()
{
  v26 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v25 = *(v0 + 152);
    sub_22700604C(v2);

    v3 = v25;
  }

  else
  {
    v3 = sub_22700776C(*(v0 + 56), v1);
  }

  v4 = *(v0 + 112);
  sub_22766A6C0();

  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  if (v7)
  {
    v11 = *(v0 + 184);
    v24 = *(v0 + 112);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446466;
    v14 = sub_227664C10();
    v16 = sub_226E97AE8(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_22766C610();
    v19 = sub_226E97AE8(v17, v18, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v5, v6, "Prefetch - Qualifying items for media type %{public}s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v9 + 8))(v24, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  **(v0 + 64) = v3;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2273C77BC()
{
  v28 = v0;
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);
  v3 = *(v0 + 104);
  sub_22766A6C0();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v26 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27[0] = v11;
    *v10 = 136446466;
    v12 = sub_227664C10();
    v14 = sub_226E97AE8(v12, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v16 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v18 = sub_226E97AE8(v16, v17, v27);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v5, v6, "Prefetch - Failed to query qualifying items for media type %{public}s with error: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v7 + 8))(v26, v8);
  }

  else
  {
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 104);
  v22 = *(v0 + 112);
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2273C79E0()
{
  v27 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  sub_22766A6C0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v25 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136446466;
    v11 = sub_227664C10();
    v13 = sub_226E97AE8(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 16);
    v15 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v17 = sub_226E97AE8(v15, v16, v26);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v4, v5, "Prefetch - Failed to query qualifying items for media type %{public}s with error: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v6 + 8))(v25, v7);
  }

  else
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    (*(v19 + 8))(v18, v20);
  }

  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2273C7BFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227664C10();
  v15 = v14;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v41[0] = v13;
  v41[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v41, v39);
  v17 = v40;
  if (v40)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v19 + 8))(v23, v17);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226EBC888(v41);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v41, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v32 = v41[5];
  v33 = sub_2273FC91C(KeyPath);
  if (v32)
  {
  }

  else
  {
    v35 = sub_226F3E6A8(v33);

    *v38 = v35;
  }

  return result;
}

uint64_t sub_2273C802C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v16 = sub_227230638(a2);
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v47[0] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226ED25F8(v47, v45);
  v18 = v46;
  if (v46)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v45, v46);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x28223BE20](v19);
    v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v20 + 8))(v24, v18);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226EBC888(v47);
  swift_beginAccess();
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44[1] = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v47, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v31 = sub_2273FC7CC(KeyPath);
  if (v3)
  {

    swift_setDeallocating();

    v32 = *(v13 + 40);

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v13 + v33, v34);
    v35 = *(*v13 + 48);
    v36 = *(*v13 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v38 = sub_226F3E6A8(v31);

    swift_setDeallocating();

    v39 = *(v13 + 40);

    v40 = qword_2813B2078;
    v41 = sub_22766A100();
    (*(*(v41 - 8) + 8))(v13 + v40, v41);
    v42 = *(*v13 + 48);
    v43 = *(*v13 + 52);
    result = swift_deallocClassInstance();
    *v48 = v38;
  }

  return result;
}

uint64_t sub_2273C84EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v91 = a3;
    v92 = 0;
    v8 = v96;
    v9 = v97;
    v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v11;
    v20 = v12;

    sub_22766A070();
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    swift_getKeyPath();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v96 = v8;
    v97 = v9;
    v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v22 = sub_22766C820();
    sub_226ED25F8(&v96, v94);
    v23 = v95;
    if (v95)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v94, v95);
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v24);
      v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      v29 = sub_22766D170();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_0(v94);
    }

    else
    {
      v29 = 0;
    }

    v93 = objc_opt_self();
    v30 = [v93 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v32 = &off_2785D6000;
    v33 = [objc_allocWithZone(v31) initWithLeftExpression:v22 rightExpression:v30 modifier:0 type:4 options:0];

    sub_226EBC888(&v96);
    v34 = qword_2813B2078;
    swift_beginAccess();
    v35 = v33;
    v99 = v34;
    v36 = sub_22766A080();
    v38 = v37;
    MEMORY[0x22AA985C0]();
    if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v87 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v36(&v96, 0);
    swift_endAccess();

    swift_getKeyPath();
    v39 = sub_227663450();
    v98 = MEMORY[0x277D83B88];
    v96 = v39;

    v40 = sub_22766C820();
    sub_226ED25F8(&v96, v94);
    v41 = v95;
    if (v95)
    {
      v42 = __swift_project_boxed_opaque_existential_0(v94, v95);
      v90 = v21;
      v43 = v31;
      v44 = *(v41 - 8);
      v45 = *(v44 + 64);
      MEMORY[0x28223BE20](v42);
      v47 = &v90 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v47);
      v48 = sub_22766D170();
      (*(v44 + 8))(v47, v41);
      v31 = v43;
      v32 = &off_2785D6000;
      __swift_destroy_boxed_opaque_existential_0(v94);
    }

    else
    {
      v48 = 0;
    }

    v49 = [v93 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v50 = [objc_allocWithZone(v31) v32[298]];

    sub_226EBC888(&v96);
    swift_beginAccess();
    v51 = v50;
    v52 = sub_22766A080();
    v54 = v53;
    MEMORY[0x22AA985C0]();
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v88 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v52(&v96, 0);
    swift_endAccess();

    swift_getKeyPath();
    v55 = sub_227664570();
    v98 = MEMORY[0x277D83B88];
    v96 = v55;

    v56 = sub_22766C820();
    sub_226ED25F8(&v96, v94);
    v57 = v95;
    if (v95)
    {
      v58 = __swift_project_boxed_opaque_existential_0(v94, v95);
      v90 = &v90;
      v59 = v32;
      v60 = v31;
      v61 = *(v57 - 8);
      v62 = *(v61 + 64);
      MEMORY[0x28223BE20](v58);
      v64 = &v90 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v61 + 16))(v64);
      v65 = sub_22766D170();
      (*(v61 + 8))(v64, v57);
      v31 = v60;
      v32 = v59;
      __swift_destroy_boxed_opaque_existential_0(v94);
    }

    else
    {
      v65 = 0;
    }

    v66 = [v93 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v67 = [objc_allocWithZone(v31) v32[298]];

    sub_226EBC888(&v96);
    swift_beginAccess();
    v68 = v67;
    v69 = sub_22766A080();
    v71 = v70;
    MEMORY[0x22AA985C0]();
    if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v69(&v96, 0);
    swift_endAccess();

    v72 = v92;
    v73 = sub_2272328B8(100);
    if (v72)
    {
      swift_setDeallocating();

      v74 = *(v18 + 40);

      v75 = qword_2813B2078;
      v76 = sub_22766A100();
      (*(*(v76 - 8) + 8))(v18 + v75, v76);
      v77 = *(*v18 + 48);
      v78 = *(*v18 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v79 = v73;
      swift_setDeallocating();

      v80 = *(v18 + 40);

      v81 = qword_2813B2078;
      v82 = sub_22766A100();
      (*(*(v82 - 8) + 8))(v18 + v81, v82);
      v83 = *(*v18 + 48);
      v84 = *(*v18 + 52);
      swift_deallocClassInstance();
      v85 = sub_2273C301C(v79);

      v86 = sub_226F40934(v85);

      *v91 = v86;
    }
  }

  return result;
}

uint64_t sub_2273C8EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v82 = a4;
  v7 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v4)
  {
    v73 = a3;
    v76 = 0;
    v10 = v79;
    v9 = v80;
    v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 16);
    v15 = v11[3];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = v12;
    v21 = v13;

    sub_22766A070();
    *(v19 + 16) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    swift_getKeyPath();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v72 = v10;
    v79 = v10;
    v80 = v9;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v75 = v9;

    v22 = sub_22766C820();
    sub_226ED25F8(&v79, v77);
    v23 = v78;
    if (v78)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v77, v78);
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v24);
      v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      v29 = sub_22766D170();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_0(v77);
    }

    else
    {
      v29 = 0;
    }

    v30 = objc_opt_self();
    v31 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v32 = [objc_allocWithZone(v74) initWithLeftExpression:v22 rightExpression:v31 modifier:0 type:4 options:0];

    sub_226EBC888(&v79);
    swift_beginAccess();
    v33 = v32;
    v34 = sub_22766A080();
    v36 = v35;
    MEMORY[0x22AA985C0]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v34(&v79, 0);
    swift_endAccess();

    swift_getKeyPath();
    v37 = sub_227663450();
    v81 = MEMORY[0x277D83B88];
    v79 = v37;

    v38 = sub_22766C820();
    sub_226ED25F8(&v79, v77);
    v39 = v78;
    if (v78)
    {
      v40 = __swift_project_boxed_opaque_existential_0(v77, v78);
      v71 = v30;
      v41 = *(v39 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x28223BE20](v40);
      v44 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44);
      v45 = sub_22766D170();
      (*(v41 + 8))(v44, v39);
      v30 = v71;
      __swift_destroy_boxed_opaque_existential_0(v77);
    }

    else
    {
      v45 = 0;
    }

    v46 = [v30 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(v74) initWithLeftExpression:v38 rightExpression:v46 modifier:0 type:4 options:0];

    sub_226EBC888(&v79);
    swift_beginAccess();
    v48 = v47;
    v49 = sub_22766A080();
    v51 = v50;
    MEMORY[0x22AA985C0]();
    if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v49(&v79, 0);
    swift_endAccess();

    v52 = v76;
    v53 = sub_2272328B8(100);
    if (v52)
    {

      swift_setDeallocating();

      v54 = *(v19 + 40);

      v55 = qword_2813B2078;
      v56 = sub_22766A100();
      (*(*(v56 - 8) + 8))(v19 + v55, v56);
      v57 = *(*v19 + 48);
      v58 = *(*v19 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v59 = v53;
      swift_setDeallocating();

      v60 = *(v19 + 40);

      v61 = qword_2813B2078;
      v62 = sub_22766A100();
      (*(*(v62 - 8) + 8))(v19 + v61, v62);
      v63 = *(*v19 + 48);
      v64 = *(*v19 + 52);
      swift_deallocClassInstance();
      v65 = v73;

      v66 = sub_2273CC2AC(v59, v65);

      v67 = v75;

      v68 = sub_2273CAAF0(v66, v72, v67);

      swift_bridgeObjectRelease_n();
      v69 = sub_226F40934(v68);

      *v82 = v69;
    }
  }

  return result;
}

uint64_t sub_2273C9698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v4)
  {
    v122 = v13;
    v123 = a3;
    v118 = v10;
    v119 = v9;
    v120 = a2;
    v121 = a1;
    v114 = a4;
    v125 = 0;
    v17 = v128;
    v16 = v129;
    v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 16);
    v22 = v18[3];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    v27 = v19;
    v28 = v20;

    sub_22766A070();
    *(v26 + 16) = v27;
    *(v26 + 24) = v28;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    swift_getKeyPath();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v117 = v17;
    v128 = v17;
    v129 = v16;
    v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
    v124 = v16;

    v30 = sub_22766C820();
    sub_226ED25F8(&v128, v126);
    v31 = v127;
    if (v127)
    {
      v32 = __swift_project_boxed_opaque_existential_0(v126, v127);
      v33 = *(v31 - 8);
      v34 = *(v33 + 64);
      MEMORY[0x28223BE20](v32);
      v36 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v36);
      v37 = sub_22766D170();
      (*(v33 + 8))(v36, v31);
      __swift_destroy_boxed_opaque_existential_0(v126);
    }

    else
    {
      v37 = 0;
    }

    v38 = objc_opt_self();
    v39 = [v38 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v40 = [objc_allocWithZone(v131) initWithLeftExpression:v30 rightExpression:v39 modifier:0 type:4 options:0];

    sub_226EBC888(&v128);
    v41 = qword_2813B2078;
    swift_beginAccess();
    v42 = v40;
    v43 = sub_22766A080();
    v45 = v44;
    MEMORY[0x22AA985C0]();
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v110 = *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v43(&v128, 0);
    swift_endAccess();

    swift_getKeyPath();
    v46 = sub_227663450();
    v130 = MEMORY[0x277D83B88];
    v128 = v46;

    v47 = sub_22766C820();
    sub_226ED25F8(&v128, v126);
    v48 = v127;
    if (v127)
    {
      v49 = __swift_project_boxed_opaque_existential_0(v126, v127);
      v115 = v29;
      v116 = v41;
      v50 = v38;
      v51 = *(v48 - 8);
      v52 = *(v51 + 64);
      MEMORY[0x28223BE20](v49);
      v54 = &v113 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v54);
      v55 = sub_22766D170();
      (*(v51 + 8))(v54, v48);
      v38 = v50;
      __swift_destroy_boxed_opaque_existential_0(v126);
    }

    else
    {
      v55 = 0;
    }

    v56 = [v38 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v57 = [objc_allocWithZone(v131) initWithLeftExpression:v47 rightExpression:v56 modifier:0 type:4 options:0];

    sub_226EBC888(&v128);
    swift_beginAccess();
    v58 = v57;
    v59 = sub_22766A080();
    v61 = v60;
    MEMORY[0x22AA985C0]();
    if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v111 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v59(&v128, 0);
    swift_endAccess();

    swift_getKeyPath();
    v62 = sub_227664570();
    v130 = MEMORY[0x277D83B88];
    v128 = v62;

    v63 = sub_22766C820();
    sub_226ED25F8(&v128, v126);
    v64 = v127;
    if (v127)
    {
      v65 = __swift_project_boxed_opaque_existential_0(v126, v127);
      v116 = v38;
      v66 = *(v64 - 8);
      v67 = *(v66 + 64);
      MEMORY[0x28223BE20](v65);
      v69 = &v113 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v66 + 16))(v69);
      v70 = sub_22766D170();
      (*(v66 + 8))(v69, v64);
      v38 = v116;
      __swift_destroy_boxed_opaque_existential_0(v126);
    }

    else
    {
      v70 = 0;
    }

    v71 = [v38 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v72 = [objc_allocWithZone(v131) initWithLeftExpression:v63 rightExpression:v71 modifier:0 type:4 options:0];

    sub_226EBC888(&v128);
    swift_beginAccess();
    v73 = v72;
    v74 = sub_22766A080();
    v76 = v75;
    MEMORY[0x22AA985C0]();
    if (*((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v112 = *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v74(&v128, 0);
    swift_endAccess();

    v77 = v125;
    v78 = sub_2272328B8(100);
    if (v77)
    {

      swift_setDeallocating();

      v79 = *(v26 + 40);

      v80 = qword_2813B2078;
      v81 = sub_22766A100();
      (*(*(v81 - 8) + 8))(v26 + v80, v81);
      v82 = *(*v26 + 48);
      v83 = *(*v26 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v84 = v78;
      swift_setDeallocating();

      v85 = *(v26 + 40);

      v86 = qword_2813B2078;
      v87 = sub_22766A100();
      (*(*(v87 - 8) + 8))(v26 + v86, v87);
      v88 = *(*v26 + 48);
      v89 = *(*v26 + 52);
      swift_deallocClassInstance();
      v90 = sub_2273C2D14(v84);

      v92 = sub_2273CC8BC(v91, v90);

      v93 = v122;
      sub_22766A6C0();

      v94 = sub_22766B380();
      v95 = sub_22766C8B0();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v128 = v97;
        *v96 = 141558274;
        *(v96 + 4) = 1752392040;
        *(v96 + 12) = 2080;
        sub_227663480();
        sub_2273CCDD0(&unk_2813A5800, MEMORY[0x277D4FF88]);
        v98 = sub_22766C610();
        v100 = v99;

        v101 = sub_226E97AE8(v98, v100, &v128);

        *(v96 + 14) = v101;
        _os_log_impl(&dword_226E8E000, v94, v95, "Prefetch - Existing bundles excluded from qualifying bundles: %{mask.hash}s", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x22AA9A450](v97, -1, -1);
        MEMORY[0x22AA9A450](v96, -1, -1);

        (*(v118 + 8))(v122, v119);
      }

      else
      {

        (*(v118 + 8))(v93, v119);
      }

      v102 = v121;
      v103 = v124;

      v104 = sub_2273CBBE8(v92, v117, v103);

      swift_bridgeObjectRelease_n();
      v105 = sub_226F40934(v104);

      MEMORY[0x28223BE20](v106);
      v107 = v120;
      *(&v113 - 2) = v120;
      *(&v113 - 1) = v102;
      sub_2275CE470(sub_2273CCB98, (&v113 - 4), v105);
      v108 = *__swift_project_boxed_opaque_existential_0((v107 + 712), *(v107 + 736));
      v109 = sub_2273C33DC(v105);
      sub_2272D752C(0, v109, v102);

      *v114 = v105;
    }
  }

  return result;
}

uint64_t sub_2273CA38C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
  v11 = sub_227663480();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v12 + 16))(v15 + v14, a1, v11);
  sub_227556A7C(v15, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_2273CA588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *__swift_project_boxed_opaque_existential_0((a2 + 712), *(a2 + 736));
  sub_2271D7EE8();
  *a3 = v4;
}

uint64_t sub_2273CA5F4(uint64_t a1, const char *a2, const char *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v14 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v15 = v14;
    v16 = sub_22766B380();
    v17 = sub_22766C890();
    sub_226F38F34(v14, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = MEMORY[0x22AA995D0](v31[2], v31[3]);
      v22 = sub_226E97AE8(v20, v21, &v32);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v16, v17, a3, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    sub_22766A6C0();

    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    sub_226F38F34(v14, 0);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 141558274;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2080;
      sub_227663480();
      sub_2273CCDD0(&unk_2813A5800, MEMORY[0x277D4FF88]);
      v28 = sub_22766C610();
      v30 = sub_226E97AE8(v28, v29, &v32);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_226E8E000, v24, v25, a2, v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

void *sub_2273CA99C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_2273CAAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v41 = v6 + 8;
    v42 = v6 + 16;
    v39 = v12;
    v40 = v6 + 32;
    v38 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v19 = *(a1 + 36);
      v46 = v16;
      v47 = v19;
      v20 = *(a1 + 48);
      v48 = *(v6 + 72);
      v21 = v43;
      (*(v6 + 16))(v43, v20 + v48 * v15, v5);
      sub_227663470();
      (*(v6 + 8))(v21, v5);
      v22 = v50;
      v51 = v50;
      v23 = a1;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v50 = v25 + 1;
        sub_226F1F568(v24 > 1, v25 + 1, 1);
        v26 = v50;
        v22 = v51;
      }

      *(v22 + 16) = v26;
      v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v50 = v22;
      result = (*(v6 + 32))(v22 + v27 + v25 * v48, v11, v5);
      v17 = 1 << *(v23 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v18);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v23;
      if (v47 != *(v23 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v17 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v11;
        v31 = v5;
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v38 + 8 * v18);
        while (v33 < (v17 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v5 = v31;
        v11 = v30;
      }

      v16 = v46 + 1;
      v15 = v17;
      if (v46 + 1 == v39)
      {
        return v50;
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

  return result;
}

unint64_t sub_2273CAE98(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v79 = sub_227663480();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v77 = &v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v55 - v14;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v66 = v13;
  v55 = v2;
  v80 = MEMORY[0x277D84F90];
  sub_226F1F4E8(0, v15, 0);
  v16 = v80;
  v17 = a1 + 56;
  v18 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v20 = 0;
  v64 = v4 + 16;
  v65 = 0x8000000227695BD0;
  v62 = v9 + 7;
  v63 = v8 + 16;
  v21 = v8 + 32;
  v76 = v4;
  v60 = v4 + 8;
  v61 = v8 + 8;
  v56 = a1 + 64;
  v57 = v15;
  v58 = a1 + 56;
  v59 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v17 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v72 = 1 << result;
    v73 = result >> 6;
    v24 = *(a1 + 36);
    v70 = v20;
    v71 = v24;
    v25 = *(a1 + 48) + *(v76 + 72) * result;
    v26 = *(v76 + 16);
    v27 = v78;
    v74 = result;
    v26(v78, v25, v79);
    v28 = *__swift_project_boxed_opaque_existential_0((v69 + 96), *(v69 + 120));
    v29 = v77;
    sub_226F25E48(v27, v77);
    v30 = swift_allocObject();
    v30[2] = 0xD00000000000002ALL;
    v30[3] = v65;
    v30[4] = 92;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_226F33024;
    *(v31 + 24) = v30;
    v32 = *(v8 + 16);
    v33 = v21;
    v34 = v68;
    v75 = v16;
    v35 = v8;
    v36 = v66;
    v32(v68, v29, v66);
    v37 = *(v35 + 80);
    v38 = (v37 + 16) & ~v37;
    v39 = (v62 + v38) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = v34;
    v21 = v33;
    v42 = *(v35 + 32);
    v42(v40 + v38, v41, v36);
    v43 = (v40 + v39);
    *v43 = sub_226F32FE8;
    v43[1] = v31;
    v44 = v67;
    v45 = v36;
    v8 = v35;
    v16 = v75;
    sub_227669270();
    (*(v8 + 8))(v77, v45);
    (*(v76 + 8))(v78, v79);
    v80 = v16;
    v47 = *(v16 + 16);
    v46 = *(v16 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_226F1F4E8(v46 > 1, v47 + 1, 1);
      v45 = v66;
      v16 = v80;
    }

    *(v16 + 16) = v47 + 1;
    v42(v16 + ((v37 + 32) & ~v37) + *(v8 + 72) * v47, v44, v45);
    a1 = v59;
    v22 = 1 << *(v59 + 32);
    result = v74;
    if (v74 >= v22)
    {
      goto LABEL_22;
    }

    v17 = v58;
    v48 = *(v58 + 8 * v73);
    if ((v48 & v72) == 0)
    {
      goto LABEL_23;
    }

    if (v71 != *(v59 + 36))
    {
      goto LABEL_24;
    }

    v49 = v48 & (-2 << (v74 & 0x3F));
    if (v49)
    {
      v22 = __clz(__rbit64(v49)) | v74 & 0x7FFFFFFFFFFFFFC0;
      v23 = v57;
    }

    else
    {
      v50 = v73 << 6;
      v51 = v73 + 1;
      v52 = (v56 + 8 * v73);
      v23 = v57;
      while (v51 < (v22 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          sub_226EB526C(v74, v71, 0);
          v22 = __clz(__rbit64(v53)) + v50;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v74, v71, 0);
    }

LABEL_4:
    v20 = v70 + 1;
    result = v22;
    if (v70 + 1 == v23)
    {
      return v16;
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

unint64_t sub_2273CB458(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v79 = sub_227663480();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v77 = &v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v55 - v14;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v66 = v13;
  v55 = v2;
  v80 = MEMORY[0x277D84F90];
  sub_226F1F4E8(0, v15, 0);
  v16 = v80;
  v17 = a1 + 56;
  v18 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v20 = 0;
  v64 = v4 + 16;
  v65 = 0x8000000227695C40;
  v62 = v9 + 7;
  v63 = v8 + 16;
  v21 = v8 + 32;
  v76 = v4;
  v60 = v4 + 8;
  v61 = v8 + 8;
  v56 = a1 + 64;
  v57 = v15;
  v58 = a1 + 56;
  v59 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v17 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v72 = 1 << result;
    v73 = result >> 6;
    v24 = *(a1 + 36);
    v70 = v20;
    v71 = v24;
    v25 = *(a1 + 48) + *(v76 + 72) * result;
    v26 = *(v76 + 16);
    v27 = v78;
    v74 = result;
    v26(v78, v25, v79);
    v28 = *__swift_project_boxed_opaque_existential_0((v69 + 56), *(v69 + 80));
    v29 = v77;
    sub_227496AB8(v27, v77);
    v30 = swift_allocObject();
    v30[2] = 0xD000000000000028;
    v30[3] = v65;
    v30[4] = 132;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_226F323BC;
    *(v31 + 24) = v30;
    v32 = *(v8 + 16);
    v33 = v21;
    v34 = v68;
    v75 = v16;
    v35 = v8;
    v36 = v66;
    v32(v68, v29, v66);
    v37 = *(v35 + 80);
    v38 = (v37 + 16) & ~v37;
    v39 = (v62 + v38) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = v34;
    v21 = v33;
    v42 = *(v35 + 32);
    v42(v40 + v38, v41, v36);
    v43 = (v40 + v39);
    *v43 = sub_226F323DC;
    v43[1] = v31;
    v44 = v67;
    v45 = v36;
    v8 = v35;
    v16 = v75;
    sub_227669270();
    (*(v8 + 8))(v77, v45);
    (*(v76 + 8))(v78, v79);
    v80 = v16;
    v47 = *(v16 + 16);
    v46 = *(v16 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_226F1F4E8(v46 > 1, v47 + 1, 1);
      v45 = v66;
      v16 = v80;
    }

    *(v16 + 16) = v47 + 1;
    v42(v16 + ((v37 + 32) & ~v37) + *(v8 + 72) * v47, v44, v45);
    a1 = v59;
    v22 = 1 << *(v59 + 32);
    result = v74;
    if (v74 >= v22)
    {
      goto LABEL_22;
    }

    v17 = v58;
    v48 = *(v58 + 8 * v73);
    if ((v48 & v72) == 0)
    {
      goto LABEL_23;
    }

    if (v71 != *(v59 + 36))
    {
      goto LABEL_24;
    }

    v49 = v48 & (-2 << (v74 & 0x3F));
    if (v49)
    {
      v22 = __clz(__rbit64(v49)) | v74 & 0x7FFFFFFFFFFFFFC0;
      v23 = v57;
    }

    else
    {
      v50 = v73 << 6;
      v51 = v73 + 1;
      v52 = (v56 + 8 * v73);
      v23 = v57;
      while (v51 < (v22 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          sub_226EB526C(v74, v71, 0);
          v22 = __clz(__rbit64(v53)) + v50;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v74, v71, 0);
    }

LABEL_4:
    v20 = v70 + 1;
    result = v22;
    if (v70 + 1 == v23)
    {
      return v16;
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

uint64_t sub_2273CBA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2272B3974(v4, a1);
}

uint64_t sub_2273CBBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = sub_227662750();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_227663480();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v33[1] = v3;
  v48 = MEMORY[0x277D84F90];
  sub_226F1F568(0, v12, 0);
  v13 = v48;
  v14 = a1 + 56;
  v15 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v17 = result;
  v18 = 0;
  v37 = v8 + 32;
  v38 = a1 + 56;
  v34 = a1 + 64;
  v35 = v12;
  v39 = v8;
  v36 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v44 = v18;
    v45 = v21;
    v22 = (*(a1 + 48) + 16 * v17);
    v23 = v22[1];
    v46 = *v22;

    sub_22766C0A0();
    v47 = v13;
    swift_bridgeObjectRetain_n();

    sub_227662740();
    v13 = v47;
    sub_2276633D0();

    v48 = v13;
    v25 = *(v13 + 16);
    v24 = *(v13 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_226F1F568(v24 > 1, v25 + 1, 1);
      v13 = v48;
    }

    *(v13 + 16) = v25 + 1;
    result = (*(v39 + 32))(v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v11, v40);
    a1 = v36;
    v19 = 1 << *(v36 + 32);
    v14 = v38;
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v26 = *(v38 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_226EB526C(v17, v45, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v17, v45, 0);
    }

LABEL_4:
    v18 = v44 + 1;
    v17 = v19;
    if (v44 + 1 == v35)
    {
      return v13;
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

uint64_t sub_2273CBFA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a1;
  v6 = sub_227663480();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v50 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v45 = v9 + 16;
  v46 = v11;
  v20 = a4 + 56;
  v47 = v9;
  v48 = result;
  v43 = 0;
  v44 = (v9 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v51 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v50 + 48);
    v26 = *(v47 + 72);
    v49 = v24;
    (*(v47 + 16))(v11, v25 + v26 * v24, v6);
    v27 = sub_227663410();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, v31 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v32 = sub_22766D3F0(), v33 = -1 << *(a4 + 32), v34 = v32 & ~v33, ((*(v20 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (1)
      {
        v36 = (*(a4 + 48) + 16 * v34);
        v37 = *v36 == v30 && v36[1] == v29;
        if (v37 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v20 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v46;
      v6 = v48;
      result = (*v44)(v46, v48);
      v18 = v51;
    }

    else
    {
LABEL_22:

      v11 = v46;
      v6 = v48;
      result = (*v44)(v46, v48);
      *(v42 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v38 = __OFADD__(v43++, 1);
      v18 = v51;
      if (v38)
      {
        __break(1u);
LABEL_25:
        v39 = v50;

        return sub_22726AD50(v42, v41, v43, v39);
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}