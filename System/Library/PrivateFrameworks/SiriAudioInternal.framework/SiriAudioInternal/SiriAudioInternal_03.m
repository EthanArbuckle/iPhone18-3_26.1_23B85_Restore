uint64_t sub_266262BE0()
{
  MEMORY[0x266780930](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266262C18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266262C84()
{
  result = qword_280069BE0;
  if (!qword_280069BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280069BD8, &qword_266268980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069BE0);
  }

  return result;
}

uint64_t sub_266262D04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266262D44()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266262DA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266262DB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266262DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266266958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280069538;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = logObject;
  sub_266266938();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "playMediaIntentHandlerResolveNowPlayingItem";
  *(v16 + 24) = 43;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_26626306C;
  v17[1] = v11;

  sub_266266F38();
  sub_266266928();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_266262CEC;
  *(v18 + 24) = v16;

  sub_266259E6C(sub_266242138, v18, v20[1]);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26626306C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2662630A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662630E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266263128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266263198()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = (v0 + v3);
  v7 = *v6;

  v8 = v1[14];
  v9 = sub_266266308();
  (*(*(v9 - 8) + 8))(&v6[v8], v9);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2662632B0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26625B754(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_266263360()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662633B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228640;

  return sub_26625CFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662634E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228320;

  return sub_26625CFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2662635AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_266266958() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + 32);

  return a2(a1, v6, v7, v11, v2 + v5, v9, v10);
}

uint64_t sub_266263670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662636A8(NSObject *a1, _DWORD *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v138 = a2;
  v149 = a1;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  isa = v15[8].isa;
  v17 = MEMORY[0x28223BE20](v14);
  v137 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v146 = &v135 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v141 = &v135 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v147 = (&v135 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v148 = &v135 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = (&v135 - v27);
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v143 = a5;
  v29[4] = a5;
  v29[5] = a6;
  v29[6] = a7;
  v29[7] = a8;
  v30 = qword_280069528;
  v144 = a3;
  v142 = a4;
  v145 = a6;

  v139 = a7;

  v140 = a8;

  if (v30 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v31 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v150 = v15[2].isa;
    v151 = &v15[2];
    v150(v28, v31, v14);
    v32 = sub_266266968();
    v33 = sub_266266D58();
    v34 = v15;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = v31;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266219000, v32, v33, "INPlayMediaIntentHandler#item looking in private audiosearch results...", v36, 2u);
      v37 = v36;
      v31 = v35;
      MEMORY[0x266780880](v37, -1, -1);
    }

    v40 = v34[1].isa;
    v38 = v34 + 1;
    v39 = v40;
    (v40)(v28, v14);
    v41 = v149;
    v42 = [v149 privatePlayMediaIntentData];
    if (!v42)
    {
      goto LABEL_38;
    }

    v43 = v42;
    v44 = [v42 audioSearchResults];

    if (!v44)
    {
      goto LABEL_38;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v45 = sub_266266BB8();

    if (!(v45 >> 62))
    {
      if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_8;
    }

    if (!sub_266267078())
    {
      break;
    }

LABEL_8:
    v46 = sub_266266CF8();

    v47 = v137;
    v150(v137, v31, v14);

    v15 = sub_266266968();
    LODWORD(v48) = sub_266266D78();

    v49 = os_log_type_enabled(v15, v48);
    v50 = (v46 >> 62);
    v136 = v29;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v152 = v135;
      v138 = v51;
      *v51 = 136315138;
      if (!v50)
      {
        v28 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_11;
      }

      goto LABEL_67;
    }

    (v39)(v47, v14);
    while (1)
    {
      if (v50)
      {
        if (!sub_266267078())
        {
          goto LABEL_62;
        }
      }

      else if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      if ((v46 & 0xC000000000000001) != 0)
      {

        v67 = MEMORY[0x266780220](0, v46);
        goto LABEL_32;
      }

      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v46 + 32);

        v67 = v66;
LABEL_32:
        v68 = v67;
        v69 = v46;
        v70 = v144;
        v71 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
        v151 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
        v72 = __swift_project_boxed_opaque_existential_1(&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v71);
        v149 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
        v150 = v72;
        v73 = swift_allocObject();
        v75 = v142;
        v74 = v143;
        v73[2] = v142;
        v73[3] = v68;
        v76 = v145;
        v73[4] = v74;
        v73[5] = v76;
        v73[6] = v69;
        v73[7] = v70;
        v77 = v140;
        v73[8] = v139;
        v73[9] = v77;
        v78 = v68;
        v79 = v70;
        v80 = v75;

        v81 = v78;
        sub_266266608();

        goto LABEL_59;
      }

      __break(1u);
LABEL_67:
      v28 = sub_266267078();
LABEL_11:
      LODWORD(v141) = v48;
      v146 = v50;
      v147 = v15;
      v148 = v39;
      v149 = v38;
      v150 = v14;
      if (v28)
      {
        break;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_26:
      v61 = MEMORY[0x26677FD90](v39, MEMORY[0x277D837D0]);
      v63 = v62;

      v64 = sub_26621EAF0(v61, v63, &v152);

      v65 = v138;
      *(v138 + 1) = v64;
      v38 = v147;
      _os_log_impl(&dword_266219000, v147, v141, "INPlayMediaIntentHandler#item using unique private server search results: %s", v65, 0xCu);
      v15 = v135;
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      MEMORY[0x266780880](v15, -1, -1);
      MEMORY[0x266780880](v65, -1, -1);

      (v148)(v137, v150);
      v29 = v136;
      v50 = v146;
    }

    v48 = 0;
    v151 = v46 & 0xC000000000000001;
    v14 = v46 & 0xFFFFFFFFFFFFFF8;
    v39 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v151)
      {
        v52 = MEMORY[0x266780220](v48, v46);
      }

      else
      {
        if (v48 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v52 = *(v46 + 8 * v48 + 32);
      }

      v53 = v52;
      v15 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v54 = v28;
      v29 = v46;
      v55 = sub_266266CD8();
      v57 = v56;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2662616F4(0, *(v39 + 2) + 1, 1, v39);
      }

      v59 = *(v39 + 2);
      v58 = *(v39 + 3);
      if (v59 >= v58 >> 1)
      {
        v39 = sub_2662616F4((v58 > 1), v59 + 1, 1, v39);
      }

      *(v39 + 2) = v59 + 1;
      v60 = &v39[16 * v59];
      *(v60 + 4) = v55;
      *(v60 + 5) = v57;
      ++v48;
      v28 = v54;
      v46 = v29;
      if (v15 == v54)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

LABEL_38:
  v82 = v148;
  v150(v148, v31, v14);
  v83 = sub_266266968();
  v84 = sub_266266D68();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v137 = v31;
    v87 = v86;
    v152 = v86;
    *v85 = 136446210;
    v88 = sub_2662666D8();
    v90 = v14;
    v91 = v29;
    v92 = sub_26621EAF0(v88, v89, &v152);
    v41 = v149;

    *(v85 + 4) = v92;
    v29 = v91;
    v14 = v90;
    _os_log_impl(&dword_266219000, v83, v84, "INPlayMediaIntentHandler#item %{public}s Intent has missing or invalid audioSearchResults (possibly expected for createRadio or wholeLibrary queries)", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    v93 = v87;
    v31 = v137;
    MEMORY[0x266780880](v93, -1, -1);
    MEMORY[0x266780880](v85, -1, -1);

    v94 = v148;
    v95 = v90;
  }

  else
  {

    v94 = v82;
    v95 = v14;
  }

  (v39)(v94, v95);
  v96 = v147;
  v150(v147, v31, v14);
  v97 = sub_266266968();
  v98 = sub_266266D58();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_266219000, v97, v98, "INPlayMediaIntentHandler#item evaluating if create radio...", v99, 2u);
    MEMORY[0x266780880](v99, -1, -1);
  }

  (v39)(v96, v14);
  v100 = sub_266266EC8();
  if ((sub_266266EE8() & 1) == 0)
  {
    if ((v100 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v101 = sub_266266E68();
  if (v100)
  {
LABEL_49:
    v102 = v141;
    v150(v141, v31, v14);
    v103 = sub_266266968();
    v104 = sub_266266D78();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v152 = v106;
      *v105 = 136446210;
      v107 = sub_2662666D8();
      v109 = sub_26621EAF0(v107, v108, &v152);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_266219000, v103, v104, "INPlayMediaIntentHandler#item %{public}s Creating radio station from currently playing item", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x266780880](v106, -1, -1);
      MEMORY[0x266780880](v105, -1, -1);

      (v39)(v141, v14);
    }

    else
    {

      (v39)(v102, v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v114 = sub_266266CB8();
    *(v113 + 32) = v114;
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v115 = v114;

      v136 = v29;
      if ((v113 & 0xC000000000000001) != 0)
      {
        v116 = MEMORY[0x266780220](0, v113);
      }

      else
      {
        v116 = v115;
      }

      v117 = v116;
      v118 = v144;
      v119 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
      v151 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      v120 = __swift_project_boxed_opaque_existential_1(&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v119);
      v149 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
      v150 = v120;
      v121 = swift_allocObject();
      v123 = v142;
      v122 = v143;
      v121[2] = v142;
      v121[3] = v117;
      v124 = v145;
      v121[4] = v122;
      v121[5] = v124;
      v121[6] = v113;
      v121[7] = v118;
      v125 = v140;
      v121[8] = v139;
      v121[9] = v125;
      v126 = v117;
      v127 = v118;
      v128 = v123;

      v81 = v126;
      sub_266266608();

LABEL_59:
    }

    else
    {
LABEL_62:
      v129 = *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&v144[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
      v130 = swift_allocObject();
      v132 = v142;
      v131 = v143;
      v130[2] = v142;
      v130[3] = v131;
      v130[4] = v145;
      v133 = v132;

      sub_266266618();
    }
  }

  if ((v101 & 1) != 0 && (sub_266266EA8() & 1) == 0)
  {
    sub_266262DC4(sub_266265B5C, v29);
  }

LABEL_51:
  v150(v146, v31, v14);
  v110 = sub_266266968();
  v111 = sub_266266D78();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_266219000, v110, v111, "INPlayMediaIntentHandler#item not create radio, trying local search as fallback", v112, 2u);
    MEMORY[0x266780880](v112, -1, -1);
  }

  (v39)(v146, v14);
  sub_266260BB0(v41, 0, 0, sub_266265B5C, v29);
}

uint64_t sub_26626453C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266266958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266266988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_266266968();
  v16 = sub_266266D58();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = v5;
    v19 = v4;
    v20 = a1;
    v21 = a2;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "INPlayMediaIntentHandler#logSpotlightResult", v17, 2u);
    v23 = v22;
    a2 = v21;
    a1 = v20;
    v4 = v19;
    v5 = v18;
    v8 = v28;
    MEMORY[0x266780880](v23, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_266266F48();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_266268250;
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v26;
  *(v24 + 32) = a1;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = a2;
  sub_266266948();
  sub_266266918();

  return (*(v5 + 8))(v8, v4);
}

void sub_2662648A0(NSObject *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v93 = a2;
  v99 = a1;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v91 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v90 = &v89 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v92 = a5;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a7;
  v26[7] = a8;
  v94 = v26;
  v27 = qword_280069528;
  v28 = a3;
  v29 = a4;
  v95 = a6;
  swift_retain_n();
  v98 = a7;
  swift_bridgeObjectRetain_n();
  v97 = a8;
  swift_retain_n();
  v100 = v28;
  v96 = v29;
  if (v27 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, static Logger.default);
  swift_beginAccess();
  v31 = v15[2];
  v31(v25, v30, v14);
  v32 = sub_266266968();
  v33 = sub_266266D58();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_266219000, v32, v33, "INPlayMediaIntentHandler#searchMediaItem working to resolve item to play...", v34, 2u);
    MEMORY[0x266780880](v34, -1, -1);
  }

  v37 = v15[1];
  v36 = (v15 + 1);
  v35 = v37;
  v37(v25, v14);
  v31(v23, v30, v14);
  v38 = sub_266266968();
  v39 = sub_266266D58();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v35;
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266219000, v38, v39, "INPlayMediaIntentHandler#searchMediaItem evaluating if create radio and server search was suppressed (we have to handle on client)...", v41, 2u);
    v42 = v41;
    v35 = v40;
    MEMORY[0x266780880](v42, -1, -1);
  }

  v35(v23, v14);
  v43 = v99;
  if (sub_266266EC8() & 1) != 0 && (sub_266266E68())
  {
    v44 = v90;
    v31(v90, v30, v14);
    v45 = sub_266266968();
    v46 = sub_266266D78();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v44;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v101 = v49;
      *v48 = 136446210;
      v50 = sub_2662666D8();
      v52 = sub_26621EAF0(v50, v51, &v101);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_266219000, v45, v46, "INPlayMediaIntentHandler#searchMediaItem %{public}s Creating radio station from currently playing item when server search was suppressed", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266780880](v49, -1, -1);
      MEMORY[0x266780880](v48, -1, -1);

      v35(v47, v14);
    }

    else
    {

      v35(v44, v14);
    }

    v71 = v95;
    v72 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v74 = sub_266266CB8();
    *(v73 + 32) = v74;
    v66 = v96;
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = v74;

      if ((v73 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x266780220](0, v73);
      }

      else
      {
        v76 = v75;
      }

      v77 = v76;
      v78 = *&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
      v99 = *&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      v95 = __swift_project_boxed_opaque_existential_1(&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v78);
      v79 = swift_allocObject();
      v79[2] = v66;
      v79[3] = v77;
      v79[4] = v92;
      v79[5] = v71;
      v79[6] = v73;
      v79[7] = v72;
      v80 = v97;
      v79[8] = v98;
      v79[9] = v80;
      v81 = v77;
      v82 = v100;
      v83 = v66;

      v84 = v81;
      v66 = v96;
      sub_266266608();

      v72 = v100;
    }

    else
    {
      v85 = *&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&v72[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
      v86 = swift_allocObject();
      v87 = v92;
      v86[2] = v66;
      v86[3] = v87;
      v86[4] = v71;
      v88 = v66;

      sub_266266618();
    }
  }

  else
  {
    v90 = v36;
    v53 = swift_allocObject();
    v54 = v93;
    *(v53 + 16) = v93;
    v55 = v54;
    if (sub_266266E88())
    {
      v56 = v91;
      v31(v91, v30, v14);
      v57 = sub_266266968();
      v58 = sub_266266D78();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = v35;
        v61 = swift_slowAlloc();
        v101 = v61;
        *v59 = 136446210;
        v62 = sub_2662666D8();
        v64 = sub_26621EAF0(v62, v63, &v101);

        *(v59 + 4) = v64;
        v43 = v99;
        _os_log_impl(&dword_266219000, v57, v58, "INPlayMediaIntentHandler#searchMediaItem %{public}s Executing local search as force spotlight search flag was present", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x266780880](v61, -1, -1);
        MEMORY[0x266780880](v59, -1, -1);

        v60(v91, v14);
      }

      else
      {

        v35(v56, v14);
      }

      sub_26626453C(1, 0);

      sub_266260BB0(v43, sub_266265944, v53, sub_266265940, v94);

      v66 = v96;
    }

    else
    {
      v65 = v100;
      v66 = v96;
      v67 = v96;
      v68 = v95;

      v69 = v98;

      v70 = v97;

      sub_2662636A8(v43, v55, v65, v67, v92, v68, v69, v70);
    }
  }
}

uint64_t sub_2662651E0(NSObject *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v75 = a5;
  v72 = a2;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = qword_280069528;
  v74 = a3;
  v73 = a4;
  v78 = a6;

  v77 = a7;

  v76 = a8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, static Logger.default);
  swift_beginAccess();
  v23 = v15[2];
  v23(v20, v22, v14);
  v24 = sub_266266968();
  v25 = sub_266266D58();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_266219000, v24, v25, "INPlayMediaIntentHandler#item working to resolve item to play...", v26, 2u);
    MEMORY[0x266780880](v26, -1, -1);
  }

  v27 = v15[1];
  v27(v20, v14);
  v28 = [a1 mediaItems];
  if (!v28)
  {
    goto LABEL_24;
  }

  v29 = v28;
  v70 = v27;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v30 = sub_266266BB8();

  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_266267078())
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x266780220](0, v30);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v31 = *(v30 + 32);
  }

  v29 = v31;

  v32 = [a1 mediaItems];
  if (!v32)
  {
LABEL_17:

LABEL_24:
    v63 = v74;
    v64 = v73;
    v65 = v78;

    v66 = v77;

    v67 = v76;

    sub_2662648A0(a1, v72, v63, v64, v75, v65, v66, v67);

    goto LABEL_25;
  }

  v33 = v32;
  v34 = sub_266266BB8();

  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_28:
  v35 = sub_266267078();
LABEL_14:

  if (v35 != 1)
  {
    goto LABEL_17;
  }

  v36 = v71;
  v23(v71, v22, v14);
  v37 = v29;
  v38 = sub_266266968();
  v39 = sub_266266D78();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v37;
    v42 = swift_slowAlloc();
    v79 = v42;
    *v40 = 136446210;
    v43 = sub_266266CD8();
    v45 = v36;
    v46 = sub_26621EAF0(v43, v44, &v79);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_266219000, v38, v39, "INPlayMediaIntentHandler#item Overriding results with disambiguation selected item: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v47 = v42;
    v37 = v41;
    MEMORY[0x266780880](v47, -1, -1);
    MEMORY[0x266780880](v40, -1, -1);

    v48 = v45;
  }

  else
  {

    v48 = v36;
  }

  v70(v48, v14);
  v49 = v75;
  v50 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_266267E70;
  *(v51 + 32) = v37;
  v52 = v37;
  v53 = v78;
  v75 = v52;
  if ((v51 & 0xC000000000000001) != 0)
  {

    v54 = MEMORY[0x266780220](0, v51);
  }

  else
  {
    v54 = v52;
  }

  v55 = v74;
  v56 = *&v74[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
  v73 = *&v74[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
  v57 = __swift_project_boxed_opaque_existential_1(&v74[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v56);
  v71 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
  v72 = v57;
  v58 = swift_allocObject();
  v58[2] = v50;
  v58[3] = v54;
  v58[4] = v49;
  v58[5] = v53;
  v58[6] = v51;
  v58[7] = v55;
  v59 = v76;
  v58[8] = v77;
  v58[9] = v59;
  v60 = v54;
  v70 = v55;
  v61 = v50;

  v62 = v60;
  sub_266266608();

LABEL_25:
}

uint64_t sub_266265878()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2662658EC()
{
  result = qword_280069CF8;
  if (!qword_280069CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069CF8);
  }

  return result;
}

uint64_t sub_266265944(void *a1, void (*a2)(unint64_t), uint64_t a3)
{
  v7 = *(v3 + 16);
  sub_26626453C(1, 1);
  return sub_26625D348(a1, a2, a3);
}

uint64_t objectdestroy_93Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_103Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}