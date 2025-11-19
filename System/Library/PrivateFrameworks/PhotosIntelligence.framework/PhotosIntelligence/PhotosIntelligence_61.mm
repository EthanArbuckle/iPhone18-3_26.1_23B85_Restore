uint64_t sub_1C73E6820(char a1)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x636961736F4DLL;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x686372616553;
      break;
    case 3:
      v2 = 0xE90000000000006CLL;
      v3 = 0x616369736D696857;
      break;
    case 4:
      v2 = 0xEA00000000006C61;
      v3 = 0x75747865746E6F43;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E68E8(char a1)
{
  v2 = 0xEB00000000726574;
  v3 = 0x706168432079654BLL;
  switch(a1)
  {
    case 1:
      v2 = 0xEC0000006E6F6974;
      v3 = 0x6375646F72746E49;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x656C616E6946;
      break;
    case 3:
      v2 = 0xEE00726574706168;
      v3 = 0x432061207473754ALL;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E69B8(unsigned __int8 a1)
{
  v2 = a1 >> 5;
  v3 = 0xE600000000000000;
  v4 = 0x79636167656CLL;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_88_15();
      v4 = OUTLINED_FUNCTION_87_20(v8);
      if (v11)
      {
        v3 = v10;
      }

      else
      {
        v3 = v9;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_116_15();
      OUTLINED_FUNCTION_542();
      OUTLINED_FUNCTION_62_23();
      if (v11)
      {
        v4 = v12 + 1;
      }

      else
      {
        v4 = v15;
      }

      if (v11)
      {
        v3 = v13;
      }

      else
      {
        v3 = v14;
      }

      break;
    case 3:
      if (a1 == 96)
      {
        v4 = 0x6F7365527473616CLL;
      }

      else
      {
        v4 = 0xD000000000000013;
      }

      if (a1 == 96)
      {
        v3 = 0xEA00000000007472;
      }

      else
      {
        v3 = 0x80000001C759C380;
      }

      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_119_14();
      OUTLINED_FUNCTION_542();
      if (v7)
      {
        v3 = v5;
      }

      else
      {
        v3 = v6;
      }

      break;
  }

  MEMORY[0x1CCA5CD70](v4, v3);
}

uint64_t sub_1C73E6AE4(char a1)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F73726570;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 7628144;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6D75626C61;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1885958772;
      break;
    case 4:
      v3 = 0x79726F6D656DLL;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x746E657665;
      break;
    case 6:
      v2 = 0xEB0000000070756FLL;
      v3 = 0x72476C6169636F73;
      break;
    case 7:
      v2 = 0xE900000000000065;
      v3 = 0x707954616964656DLL;
      break;
    case 8:
      v2 = 0xED00006F746F6850;
      goto LABEL_11;
    case 9:
      v2 = 0xEE0079726F6D654DLL;
LABEL_11:
      v3 = 0x6465727574616566;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E6C1C(unint64_t a1)
{
  v1 = a1 >> 62;
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  switch(v1)
  {
    case 1uLL:
      v2 = 0xE800000000000000;
      v3 = 0x6465646E65747865;
      break;
    case 2uLL:
      v2 = 0xEC000000676E696CLL;
      v3 = 0x6C657479726F7473;
      break;
    case 3uLL:
      break;
    default:
      v2 = 0xE900000000000064;
      v3 = 0x6576656972746572;
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

void sub_1C73E6CD4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v6;
  LOBYTE(__dst[2]) = v5;
  sub_1C724D82C();
  if (v3)
  {
    return;
  }

  v102 = v127[1];
  if (!v127[1])
  {
    sub_1C75504FC();
    return;
  }

  v8 = a2;
  v9 = *(a2 + 16);
  if (!v9)
  {

    return;
  }

  v95 = v7;
  v87 = 0;
  v100 = v2;
  v101 = v127[0];
  v132 = MEMORY[0x1E69E7CC0];
  v10 = v8;
  sub_1C716D668();
  v11 = 0;
  v99 = v10 + 32;
  v92 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v93 = xmmword_1C755BAB0;
  v133 = v132;
  v98 = v9;
  while (1)
  {
    v103 = v11;
    memcpy(__dst, (v99 + (v11 << 7)), sizeof(__dst));
    v13 = *(&__dst[0] + 1);
    v12 = *&__dst[0];
    v14 = *&__dst[0] == v101 && v102 == *(&__dst[0] + 1);
    if (!v14 && (sub_1C7551DBC() & 1) == 0)
    {
      v96 = *(&__dst[6] + 1);
      v97 = *(&__dst[7] + 1);
      v60 = __dst[7];
      v89 = *(&__dst[3] + 8);
      v90 = *(&__dst[5] + 8);
      v88 = *(&__dst[4] + 8);
      v56 = *(&__dst[2] + 1);
      v61 = *&__dst[3];
      v57 = __dst[2];
      v59 = *(&__dst[1] + 1);
      v58 = *&__dst[1];
      sub_1C6FB7BB8(__dst, v127);
      v55 = v61;
      v51 = v60;
      v54 = v88;
      v53 = v89;
      v52 = v90;
      v50 = v96;
      v49 = v97;
      goto LABEL_31;
    }

    memcpy(__src, __dst, sizeof(__src));
    v15 = *(&__dst[6] + 1);
    v125 = __dst[7];
    v124[0] = *(&__dst[7] + 1);
    *(v124 + 7) = *(&__dst[7] + 1);
    if (__dst[7])
    {
      sub_1C6FBC6B8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v76 = 2;
      swift_willThrow();
      sub_1C6FB7BB8(__dst, v127);

      v77 = memcpy(v127, __src, sizeof(v127));
      v128 = v15;
      v129 = v125;
      OUTLINED_FUNCTION_234_4(v77, v78, v79, v80, v81, v82, v83, v84, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93, *(&v93 + 1), v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120[0], v120[1], v120[2], v120[3], v120[4], v120[5], v120[6], v120[7], v120[8], v120[9], v120[10], v120[11], v120[12], v121, v122, *(&v122 + 1), v123);
      v130 = v85;
      sub_1C6FBC664(v127);

      return;
    }

    sub_1C6FB7BB8(__dst, v127);
    v16 = [v15 fetchedObjects];
    if (v16)
    {
      break;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    *(inited + 16) = v93;
    v36 = sub_1C70CAC04(v95);
    if (!v37)
    {
      goto LABEL_41;
    }

    *(inited + 32) = v36;
    *(inited + 40) = v37;
    v104 = v21;
    sub_1C6FD2568(inited);
    type metadata accessor for FreeformStoryChapterCurator();
    v38 = sub_1C71A2CA8();

    sub_1C6FBC718(v15);
    v125 = 0;
    memcpy(v120, __src, sizeof(v120));
    LOBYTE(v122) = 0;
    *(&v122 + 1) = v124[0];
    v39 = memcpy(v127, __src, sizeof(v127));
    v128 = v38;
    v129 = 0;
    OUTLINED_FUNCTION_234_4(v39, v40, v41, v42, v43, v44, v45, v46, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93, *(&v93 + 1), v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120[0], v120[1], v120[2], v120[3], v120[4], v120[5], v120[6], v120[7], v120[8], v120[9], v120[10], v120[11], v120[12], v38, v122, *(v124 + 7), v123);
    *(v48 + 120) = v47;
    sub_1C6FB7BB8(v120, &v104);
    sub_1C6FBC664(v127);
    v49 = *(&v122 + 1);
    v50 = v121;
    v51 = v122;
    v52 = *&v120[11];
    v53 = *&v120[7];
    v54 = *&v120[9];
    v56 = v120[5];
    v55 = v120[6];
    v57 = v120[4];
    v58 = v120[2];
    v59 = v120[3];
    v12 = v120[0];
    v13 = v120[1];
LABEL_31:
    v62 = v133;
    v132 = v133;
    v64 = *(v133 + 16);
    v63 = *(v133 + 24);
    v65 = v103;
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_15(v63);
      v96 = v70;
      v97 = v69;
      v89 = v72;
      v90 = v71;
      v88 = v73;
      LODWORD(v133) = v74;
      v86 = v75;
      sub_1C716D668();
      v55 = v86;
      v51 = v133;
      v54 = v88;
      v53 = v89;
      v52 = v90;
      v50 = v96;
      v49 = v97;
      v65 = v103;
      v62 = v132;
    }

    v11 = v65 + 1;
    LOBYTE(v104) = v51;
    *(v62 + 16) = v64 + 1;
    v66 = v62 + (v64 << 7);
    *(v66 + 32) = v12;
    *(v66 + 40) = v13;
    *(v66 + 48) = v58;
    *(v66 + 56) = v59;
    *(v66 + 64) = v57;
    v67 = *(v127 + 3);
    *(v66 + 65) = v127[0];
    *(v66 + 68) = v67;
    *(v66 + 72) = v56;
    *(v66 + 80) = v55;
    *(v66 + 88) = v53;
    *(v66 + 104) = v54;
    *(v66 + 120) = v52;
    *(v66 + 136) = v50;
    *(v66 + 144) = v104;
    v68 = v120[0];
    *(v66 + 148) = *(v120 + 3);
    *(v66 + 145) = v68;
    *(v66 + 152) = v49;
    if (v11 == v98)
    {

      return;
    }

    v133 = v62;
  }

  v17 = v16;
  v97 = v15;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v18 = sub_1C7550B5C();

  v19 = sub_1C6FB6304();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v19 == v20)
    {

      v15 = v97;
      goto LABEL_28;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v32 = OUTLINED_FUNCTION_66_4();
      v22 = MEMORY[0x1CCA5DDD0](v32);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v22 = *(v18 + 8 * v20 + 32);
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v24 = v22;
    v25 = [v24 uuid];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1C755068C();
      v96 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v21 = v33;
      }

      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_15(v29);
        sub_1C6FB1814();
        v21 = v34;
      }

      *(v21 + 16) = v30 + 1;
      v31 = v21 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v96;
      v20 = v23;
    }

    else
    {

      ++v20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1C73E72EC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  OUTLINED_FUNCTION_76(v6);
  *(v1 + 80) = OUTLINED_FUNCTION_77();
  *(v1 + 88) = *v3;
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E7380()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 64);
  if (v1)
  {
    *(v0 + 104) = *(*(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56);
    type metadata accessor for StoryMusicCurator();

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 112) = v2;
    *v2 = v3;
    v2[1] = sub_1C73E74B8;

    return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
  }

  else
  {
    *(v0 + 40) = *(v0 + 88);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 120) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_79_17(v5);

    return FreeformStoryGenerator.musicCurationResults(from:)();
  }
}

uint64_t sub_1C73E74B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73E759C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  type metadata accessor for AppleMusicSubscriptionState();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  swift_beginAccess();
  sub_1C73FED14(v2, v1 + v7);
  swift_endAccess();

  *(v0 + 40) = *(v0 + 88);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 120) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_79_17(v8);

  return FreeformStoryGenerator.musicCurationResults(from:)();
}

uint64_t sub_1C73E767C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73E7760()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  isCancelled = swift_task_isCancelled();
  if (v1)
  {
    if (isCancelled)
    {
      v3 = *(*(*(v0 + 64) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56);
      if ((*(v3 + 34) & 1) == 0)
      {
        *(v3 + 16) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 224) = v3;
  *(v1 + 232) = v4;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v1 + 256) = *v5;
  *(v1 + 264) = v6;
  *(v1 + 272) = v7;
  LOBYTE(v5) = *(v5 + 32);
  *(v1 + 280) = v5;
  sub_1C70CE970(v6, v7, v5);
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73E786C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t __dst, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t __src, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_160_6();
  a47 = v50;
  a48 = v51;
  OUTLINED_FUNCTION_207_2();
  a46 = v48;
  if (!*(v48 + 280))
  {
    v52 = 0;
    goto LABEL_5;
  }

  if (*(v48 + 280) == 1)
  {
    v52 = 1;
LABEL_5:
    v53 = *(v48 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1C7565670;
    *(v54 + 32) = v53;
    v55 = *(v48 + 272);
    v111 = *(v48 + 264);
    v56 = v53;
    goto LABEL_7;
  }

  v111 = 0;
  v55 = 0;
  v52 = 1;
  v54 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v57 = *(v48 + 224);
  v58 = *(v57 + 16);
  v112 = v48;
  v59 = *(v48 + 256);
  if (v58)
  {
    LODWORD(a10) = v52;
    v113 = MEMORY[0x1E69E7CC0];
    v60 = v59;
    sub_1C716D9B8(0, v58, 0);
    v49 = (v57 + 32);
    v61 = v58 - 1;
    v62 = v48;
    v63 = v113;
    for (i = v55; ; v55 = i)
    {
      memcpy((v62 + 16), v49, 0x68uLL);
      memcpy(&__dst, v49, 0x58uLL);
      if (v55 && (*(v62 + 16) == v111 ? (v65 = v55 == *(v62 + 24)) : (v65 = 0), v65 || (sub_1C7551DBC() & 1) != 0))
      {
        v66 = v54;
        v67 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
        v67 = v54;
      }

      sub_1C6FC061C(v62 + 16, v62 + 120);
      sub_1C75504FC();

      memcpy(&__src, &__dst, 0x58uLL);
      v68 = v63;
      a13 = v63;
      v70 = *(v63 + 16);
      v69 = *(v63 + 24);
      if (v70 >= v69 >> 1)
      {
        v72 = OUTLINED_FUNCTION_15(v69);
        sub_1C716D9B8(v72, v70 + 1, 1);
        v68 = v63;
      }

      *(v68 + 16) = v70 + 1;
      v63 = v68;
      v71 = (v68 + 104 * v70);
      memcpy(v71 + 4, &__src, 0x58uLL);
      v71[15] = v66;
      v71[16] = v67;
      if (!v61)
      {
        break;
      }

      --v61;
      v49 += 26;
      v62 = v112;
    }

    v73 = v63;
    v74 = v112;
    if ((a10 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v75 = v59;

    v73 = MEMORY[0x1E69E7CC0];
    v74 = v48;
    if ((v52 & 1) == 0)
    {
LABEL_37:

      goto LABEL_38;
    }
  }

  LOBYTE(__src) = **(v74 + 232);
  sub_1C73F6D18(&__src, &__dst);
  v76 = __dst;
  v77 = **(v74 + 232);
  v78 = __dst >> 5;
  switch(__dst >> 5)
  {
    case 1:
      if ((v77 & 0xE0) != 0x20)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    case 2:
      if (__dst == 64)
      {
        if (v77 == 64)
        {
          goto LABEL_37;
        }
      }

      else if (v77 == 65)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    case 3:
      if (__dst == 96)
      {
        if (v77 == 96)
        {
          goto LABEL_37;
        }
      }

      else if (v77 == 97)
      {
        goto LABEL_37;
      }

LABEL_42:
      v111 = v73;
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v88 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v88, qword_1EDD28B68);
      v89 = sub_1C754FEEC();
      v90 = sub_1C75511BC();
      v91 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = 0x79636167656CLL;
        OUTLINED_FUNCTION_11_3();
        swift_slowAlloc();
        a10 = OUTLINED_FUNCTION_177_3();
        __src = a10;
        *v49 = 136315394;
        v94 = 0xE600000000000000;
        v95 = 0x79636167656CLL;
        switch(v77 >> 5)
        {
          case 1u:
            if (v77)
            {
              v94 = 0x80000001C759A5F0;
              v95 = 0xD00000000000001BLL;
            }

            else
            {
              v94 = 0x80000001C759A8B0;
              v95 = 0xD00000000000001ALL;
            }

            break;
          case 2u:
            if (v77 == 64)
            {
              v94 = 0x80000001C759C3C0;
              v95 = 0xD000000000000012;
            }

            else
            {
              v94 = 0x80000001C759C3A0;
              v95 = 0xD00000000000001FLL;
            }

            break;
          case 3u:
            if (v77 == 96)
            {
              v95 = OUTLINED_FUNCTION_241_2();
              v94 = 0xEA00000000007472;
            }

            else
            {
              v94 = 0x80000001C759C380;
              v95 = 0xD000000000000013;
            }

            break;
          case 4u:
            break;
          default:
            if (v77)
            {
              v96 = "montage(implicit)";
            }

            else
            {
              v96 = "visualClusterBased";
            }

            v94 = v96 | 0x8000000000000000;
            v95 = 0xD000000000000011;
            break;
        }

        v97 = sub_1C6F765A4(v95, v94, &__src);

        *(v49 + 1) = v97;
        *(v49 + 6) = 2080;
        v98 = 0xE600000000000000;
        switch(v78)
        {
          case 1:
            OUTLINED_FUNCTION_542();
            if (v76)
            {
              v93 = v105;
            }

            else
            {
              v93 = 0xD00000000000001ALL;
            }

            if (v76)
            {
              v98 = v104;
            }

            else
            {
              v98 = v106;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_119_14();
            if (v76 == 64)
            {
              v93 = 0xD000000000000012;
            }

            else
            {
              v93 = 0xD00000000000001FLL;
            }

            if (v76 == 64)
            {
              v98 = v107;
            }

            else
            {
              v98 = v108;
            }

            break;
          case 3:
            OUTLINED_FUNCTION_240_4();
            OUTLINED_FUNCTION_542();
            if (v76 == 96)
            {
              v93 = v101;
            }

            else
            {
              v93 = 0xD000000000000013;
            }

            if (v76 == 96)
            {
              v98 = v102;
            }

            else
            {
              v98 = v103;
            }

            break;
          case 4:
            break;
          default:
            OUTLINED_FUNCTION_119_14();
            if (v76)
            {
              v98 = v99;
            }

            else
            {
              v98 = v100;
            }

            v93 = 0xD000000000000011;
            break;
        }

        v109 = sub_1C6F765A4(v93, v98, &__src);

        *(v49 + 14) = v109;
        _os_log_impl(&dword_1C6F5C000, v89, v90, "Elected a key asset from a non-key chapter, switching story type from %s to %s", v49, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (*(v112 + 240))
      {
        __src = 0;
        a26 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759A5C0);
        sub_1C73E69B8(v77);
        MEMORY[0x1CCA5CD70](544175136, 0xE400000000000000);
        sub_1C73E69B8(v76);
        MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AEEC0);
        sub_1C7161CDC(__src, a26);
      }

      v110 = *(v112 + 232);

      *v110 = v76;
      break;
    case 4:
      if (v77 == 128)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    default:
      if (v77 > 0x1F)
      {
        goto LABEL_42;
      }

LABEL_36:
      if (((v77 ^ __dst) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
  }

LABEL_38:
  OUTLINED_FUNCTION_188_1();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, v111, v112, a13, __dst, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, __src, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void *sub_1C73E7FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(__dst, (*v1 + 80 * v3 + 32), sizeof(__dst));
  v1[1] = v3 + 1;
  v6 = v1[2];
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  *a1 = v6;
  memcpy((a1 + 8), __dst, 0x50uLL);
  return sub_1C7033044(__dst, &v7);
}

void sub_1C73E8080(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (*v1 + 40 * v2);
  v6 = v4[4];
  v5 = v4[5];
  v8 = v4[6];
  v7 = v4[7];
  v9 = v4[8];
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  sub_1C75504FC();
  v11 = v8;
  sub_1C75504FC();

  sub_1C75504FC();
}

uint64_t static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[71] = a4;
  v4[70] = a3;
  v4[69] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = 0;
  v22 = *(v20 + 552);
  v23 = (v22 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = &selRef_clsSceneClassifications;
  v79 = *(v22 + 16);
  *&v26 = 136643075;
  v78 = v26;
  *&v26 = 134217984;
  v77 = v26;
  while (v79 != v21)
  {
    memcpy((v20 + 16), v23, 0x80uLL);
    memcpy((v20 + 144), v23, 0x80uLL);
    swift_beginAccess();
    if (*(v20 + 256))
    {
      v66 = *(v20 + 568);
      sub_1C6FBC6B8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v67 = 2;
      swift_willThrow();
      sub_1C6FB7BB8(v20 + 16, v20 + 400);

      memcpy((v20 + 272), (v20 + 144), 0x80uLL);
      sub_1C6FBC664(v20 + 272);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v68 + 8))(v66);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_20_4();

      return v70(v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), a13, a14, v79, a16, a17, a18, a19, a20);
    }

    v27 = *(v20 + 248);
    sub_1C6FB7BB8(v20 + 16, v20 + 272);
    sub_1C6FBC70C(v27);
    v28 = [v27 v25[230]];
    if (v28)
    {
      v29 = v28;
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v30 = sub_1C7550B5C();
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    if (v30 >> 62)
    {
      v31 = sub_1C75516BC();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v31 < 1)
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v46 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v46, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v47 = sub_1C755119C();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
        OUTLINED_FUNCTION_13_3();
        v50 = swift_slowAlloc();
        *v50 = v77;
        *(v50 + 4) = v21;
        _os_log_impl(&dword_1C6F5C000, v33, v47, "No curated assets for chapter %ld.", v50, 0xCu);
        goto LABEL_18;
      }
    }

    else
    {
      *(v20 + 264) = StoryGenerationCache.cachedHighlightInformation()();

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v32 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v32, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v34 = sub_1C755117C();
      v35 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v35, v36))
      {
        a14 = v21;
        v37 = *(v20 + 32);
        OUTLINED_FUNCTION_11_3();
        v38 = swift_slowAlloc();
        a13 = v23;
        a16 = OUTLINED_FUNCTION_49_1();
        *v38 = v78;
        sub_1C75504FC();
        v39 = OUTLINED_FUNCTION_154();
        sub_1C6F765A4(v39, v40, v41);
        OUTLINED_FUNCTION_259_1();
        *(v38 + 4) = v37;
        *(v38 + 12) = 2085;
        sub_1C75504FC();
        sub_1C75504BC();

        v42 = OUTLINED_FUNCTION_49_3();
        v45 = sub_1C6F765A4(v42, v43, v44);
        v21 = a14;

        *(v38 + 14) = v45;
        _os_log_impl(&dword_1C6F5C000, v33, v34, "Chapter %{sensitive}s has curated asset highlight information %{sensitive}s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v25 = &selRef_clsSceneClassifications;
LABEL_18:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    memcpy((v20 + 272), (v20 + 144), 0x80uLL);
    sub_1C6FB7BB8(v20 + 272, v20 + 400);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04();
      v24 = v53;
    }

    v52 = *(v24 + 16);
    v51 = *(v24 + 24);
    if (v52 >= v51 >> 1)
    {
      OUTLINED_FUNCTION_15(v51);
      sub_1C6FB1B04();
      v24 = v54;
    }

    sub_1C6FBC718(v27);
    *(v24 + 16) = v52 + 1;
    memcpy((v24 + (v52 << 7) + 32), (v20 + 272), 0x80uLL);
    memcpy((v20 + 400), (v20 + 144), 0x80uLL);
    sub_1C6FBC664(v20 + 400);
    v23 += 128;
    ++v21;
  }

  v55 = *(v20 + 568);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v56 + 8))(v55);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_4();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, v77, *(&v77 + 1), v78, *(&v78 + 1), a13, a14, v79, a16, a17, a18, a19, a20);
}

id static FreeformStoryGenerator.usingFallbackTitle(for:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    return [objc_opt_self() useFallbackTitleForMiniMC];
  }

  else
  {
    return 0;
  }
}

uint64_t FreeformStoryGenerator.Error.errorCode.getter()
{
  v1 = *v0;
  result = 101;
  switch(*(v0 + 24))
  {
    case 1:
      result = 103;
      break;
    case 2:
      result = 104;
      break;
    case 3:
      result = 105;
      break;
    case 4:
      result = 106;
      break;
    case 5:
      result = 107;
      break;
    case 6:
      result = 108;
      break;
    case 7:
      result = 109;
      break;
    case 8:
      result = 117;
      break;
    case 9:
      result = 113;
      break;
    case 0xA:
      result = 119;
      break;
    case 0xB:
      result = 121;
      break;
    case 0xC:
      if (v0[1] | v0[2] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          result = 102;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          result = 110;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          result = 111;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          result = 114;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          result = 122;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          result = 116;
        }

        else if (*(v0 + 1) == 0 && v1 == 7)
        {
          result = 120;
        }

        else
        {
          result = 123;
        }
      }

      else
      {
        result = 100;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t FreeformStoryGenerator.Error.errorDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 24))
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      goto LABEL_23;
    case 4:
    case 5:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_10_2();
      v8 = 0xD00000000000002CLL;
LABEL_23:
      MEMORY[0x1CCA5CD70](v8);
      OUTLINED_FUNCTION_138_6();
      v9 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v9);

      MEMORY[0x1CCA5CD70](0x726975716552202CLL, 0xEC000000203A6465);
      OUTLINED_FUNCTION_138_6();
      goto LABEL_24;
    case 6:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      OUTLINED_FUNCTION_138_6();
      v11 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v11);

      MEMORY[0x1CCA5CD70](0x73412078614D202CLL, 0xEE00203A73746573);
      OUTLINED_FUNCTION_138_6();
      v12 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v12);

      MEMORY[0x1CCA5CD70](0x61522078614D202CLL, 0xED0000203A6F6974);
      goto LABEL_26;
    case 7:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD00000000000002CLL);
      OUTLINED_FUNCTION_16_6();
      sub_1C7550F5C();
      MEMORY[0x1CCA5CD70](0x756D6978614D202CLL, 0xEB00000000203A6DLL);
      OUTLINED_FUNCTION_16_6();
LABEL_26:
      sub_1C7550F5C();
      return v19;
    case 8:
    case 9:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      sub_1C73E69B8(v1);
      return v19;
    case 0xA:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
LABEL_24:
      v10 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v10);

      return v19;
    case 0xB:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      sub_1C75519EC();
      return v19;
    case 0xC:
      if (v0[2] | v0[1] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v14 - 19;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          return 0x412079654B206F4ELL;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v15 - 27;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v6 - 25;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          return 0x79726F7453206F4ELL;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_10_2();
          return v16 - 28;
        }

        else if (v1 == 7 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_10_2();
          return v17 - 2;
        }

        else
        {
          OUTLINED_FUNCTION_10_2();
          return v18 + 39;
        }
      }

      else
      {
        OUTLINED_FUNCTION_60_23();
        return v13 - 2;
      }

    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      v19 = 0xD000000000000014;
      v2 = OUTLINED_FUNCTION_0_11();
      MEMORY[0x1CCA5CD70](v2);
      return v19;
  }
}

void *sub_1C73E8D6C(uint64_t a1, int a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    v6 = a3;
    v7 = OUTLINED_FUNCTION_63();

    return sub_1C6FF5694(v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformStoryGenerator.generateStory(from:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[318] = v0;
  v1[317] = v2;
  v1[316] = v3;
  v1[315] = v4;
  v1[314] = v5;
  v1[313] = v6;
  v7 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_76(v7);
  v1[319] = swift_task_alloc();
  v1[320] = swift_task_alloc();
  v1[321] = swift_task_alloc();
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[324] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[325] = v9;
  v1[326] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E8F20()
{
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v0 + 2528), *(*(v0 + 2528) + 24));
  sub_1C754F1CC();
  *(v0 + 2616) = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v10 = *(v0 + 2520);

  v11 = *(v10 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 2624) = v11;
  if (v11)
  {
    type metadata accessor for FreeformStoryDiagnosticsGenerator();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 2632) = v12;
  v13 = qword_1EDD0A988;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_30_0();
  }

  if (!byte_1EC218F88)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v28 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v28, v29);
    }

    v30 = sub_1C754FEEC();
    sub_1C75511BC();
    v31 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v33);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v39 = *(v0 + 2512);

    memcpy((v0 + 1232), v39, 0x130uLL);
    *(v0 + 1602) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2640) = v40;
    *v40 = v41;
    v40[1] = sub_1C73E94C4;
    OUTLINED_FUNCTION_243_3();
    goto LABEL_20;
  }

  if (byte_1EC218F88 == 1)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v14 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v14, v15);
    }

    v16 = sub_1C754FEEC();
    sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v19);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v25 = *(v0 + 2512);

    memcpy((v0 + 928), v25, 0x130uLL);
    *(v0 + 1601) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2656) = v26;
    *v26 = v27;
    v26[1] = sub_1C73E9B58;
    OUTLINED_FUNCTION_243_3();
LABEL_20:
    OUTLINED_FUNCTION_88_0();

    return FreeformStoryGenerator.generateMultiStory(from:pipelineType:storySession:diagnosticsGenerator:eventRecorder:progressReporter:)();
  }

  v44 = *(v0 + 2544) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  if (*(v44 + 73) == 96 || *(*(v0 + 208) + 16) < *v44)
  {
    sub_1C75504FC();

    v45 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    v47 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_11_3();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_29_34(v49, 3.8521e-34);
      *(v49 + 12) = 2048;
      *(v49 + 14) = *v44;

      _os_log_impl(&dword_1C6F5C000, v45, v46, "Not enough storytelling assets to use the storyteller (%ld < %ld), falling back to LastResort", v49, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    memcpy((v0 + 624), *(v0 + 2512), 0x130uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2672) = v50;
    *v50 = v51;
    v50[1] = sub_1C73EA1EC;
    OUTLINED_FUNCTION_88_0();

    return sub_1C73ED760(v52, v53, v54, v55, v56);
  }

  else
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v58 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v58, v59);
    }

    v60 = sub_1C754FEEC();
    sub_1C75511BC();
    v61 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v63);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v69 = *(v0 + 2512);

    memcpy((v0 + 320), v69, 0x130uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2688) = v70;
    *v70 = v71;
    v70[1] = sub_1C73EA398;
    OUTLINED_FUNCTION_88_0();

    return sub_1C73EDC64();
  }
}

uint64_t sub_1C73E94C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2648) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E9B58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2664) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EA1EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2680) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EA2E4()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_32_37();
  v0 = OUTLINED_FUNCTION_8_83();
  v1(v0);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C73EA398()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2696) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EB474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t (*a10)(uint64_t))
{
  a9();
  v11 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  sub_1C75504FC();
  v12 = a2;
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = OUTLINED_FUNCTION_66_4();
  return a10(v13);
}

uint64_t sub_1C73EB534()
{
  OUTLINED_FUNCTION_42();
  v1[197] = v0;
  v1[196] = v2;
  v1[195] = v3;
  v1[194] = v4;
  v1[193] = v5;
  v1[192] = v6;
  v7 = sub_1C754DFFC();
  v1[198] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[199] = v8;
  v1[200] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_76(v9);
  v1[201] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73EB968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1680) = v0;

  if (v0)
  {

    sub_1C6FB5454(v3 + 1264);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EBA84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t __dst, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_160_6();
  a47 = v49;
  a48 = v50;
  OUTLINED_FUNCTION_207_2();
  a46 = v48;
  v51 = v48[202];
  v52 = v48[190];
  v53 = v48[191];
  v54 = *(v51 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    __dst = MEMORY[0x1E69E7CC0];
    sub_1C716D9B8(0, v54, 0);
    v55 = __dst;
    v56 = (v51 + 32);
    do
    {
      memcpy(v48 + 114, v56, 0x68uLL);
      sub_1C6FC061C((v48 + 114), (v48 + 127));
      __dst = v55;
      v58 = *(v55 + 16);
      v57 = *(v55 + 24);
      if (v58 >= v57 >> 1)
      {
        v59 = OUTLINED_FUNCTION_15(v57);
        sub_1C716D9B8(v59, v58 + 1, 1);
        v55 = __dst;
      }

      *(v55 + 16) = v58 + 1;
      memcpy((v55 + 104 * v58 + 32), v48 + 114, 0x68uLL);
      v56 += 128;
      --v54;
    }

    while (v54);
  }

  v60 = v48 + 158;
  v61 = v48[210];
  static FreeformStoryChapterGenerator.storyAssets(from:photoLibrary:)(v55, v48[204]);
  v48[211] = v61;
  v63 = v48[202];
  v64 = v48[201];
  if (v61)
  {
    v65 = v48[206];
    v66 = v48[196];

    sub_1C6FB5454((v48 + 158));

    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v64, v67);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v68 + 8))(v66);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_188_1();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, __dst, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  else
  {
    v111 = v52;
    v112 = v48[207];
    v78 = v48[200];
    v79 = v48[199];
    v108 = v48[198];
    v109 = v62;
    v80 = v48[193];
    v110 = v53;
    v81 = v48[192];

    v82 = *(v80 + 41);
    v107 = *(v80 + 40);
    v83 = *(v48 + 80);
    *(v48 + 87) = *v60;
    *(v48 + 88) = v83;
    v84 = *(v48 + 82);
    *(v48 + 89) = *(v48 + 81);
    *(v48 + 90) = v84;
    v106 = type metadata accessor for FreeformStory();
    OUTLINED_FUNCTION_5_90();
    sub_1C73FE764(v64, v81 + v85, v86);
    v105 = *v80;
    sub_1C6FDE928((v48 + 158), (v48 + 182));
    sub_1C75504FC();
    sub_1C754DFEC();
    v87 = sub_1C754DF8C();
    v89 = v88;
    (*(v79 + 8))(v78, v108);
    *v81 = v107;
    *(v81 + 8) = v82;
    *(v81 + 16) = v63;
    v90 = *(v48 + 87);
    v91 = *(v48 + 88);
    v92 = *(v48 + 89);
    *(v81 + 72) = *(v48 + 90);
    *(v81 + 56) = v92;
    *(v81 + 40) = v91;
    *(v81 + 24) = v90;
    *(v81 + 88) = v111;
    *(v81 + 96) = v110;
    *(v81 + 104) = v109;
    *(v81 + 112) = v87;
    *(v81 + 120) = v89;
    *(v81 + *(v106 + 44)) = v105;
    if (v112)
    {
      v93 = v48[207];
      OUTLINED_FUNCTION_183_3(v48 + 140);
      v94 = v48[140];
      v95 = *(v48 + 80);
      *(v48 + 97) = *v60;
      *(v48 + 99) = v95;
      v96 = *(v48 + 82);
      *(v48 + 101) = *(v48 + 81);
      *(v48 + 103) = v96;
      v48[96] = v94;
      sub_1C73FEBA4((v48 + 96));
      memcpy(&__dst, v48 + 96, 0x90uLL);

      sub_1C6FB52D4((v48 + 140), (v48 + 149));
      sub_1C739F768(&__dst, v93);

      memcpy(v48 + 78, &__dst, 0x90uLL);
      sub_1C73A1F3C((v48 + 78));
    }

    else
    {
      sub_1C6FB5454((v48 + 158));
    }

    OUTLINED_FUNCTION_148_8();
    v97 = swift_task_alloc();
    v48[212] = v97;
    *v97 = v48;
    v97[1] = sub_1C73EBE48;
    OUTLINED_FUNCTION_61_3(v48[192]);
    OUTLINED_FUNCTION_188_1();

    return sub_1C73F5A88(v98, v99, v100, v101, v102, v103);
  }
}

uint64_t sub_1C73EBE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73EBF2C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[211];
  sub_1C754F2EC();
  v2 = v0[206];
  v3 = v0[201];
  if (v1)
  {
    v4 = v0[192];

    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v4, v5);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v3, v6);

    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v3, v8);

    OUTLINED_FUNCTION_25();
  }

  return v7();
}

uint64_t sub_1C73EBFFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1568);

  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2);

  OUTLINED_FUNCTION_43();

  return v5();
}

BOOL static FreeformStoryGenerator.Error.~= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = 101;
  switch(*(a1 + 24))
  {
    case 1:
      v6 = 103;
      break;
    case 2:
      v6 = 104;
      break;
    case 3:
      v6 = 105;
      break;
    case 4:
      v6 = 106;
      break;
    case 5:
      v6 = 107;
      break;
    case 6:
      v6 = 108;
      break;
    case 7:
      v6 = 109;
      break;
    case 8:
      v6 = 117;
      break;
    case 9:
      v6 = 113;
      break;
    case 0xA:
      v6 = 119;
      break;
    case 0xB:
      v6 = 121;
      break;
    case 0xC:
      if (a1[1] | a1[2] | v2)
      {
        if (v2 == 1 && *(a1 + 1) == 0)
        {
          v6 = 102;
        }

        else if (v2 == 2 && *(a1 + 1) == 0)
        {
          v6 = 110;
        }

        else if (v2 == 3 && *(a1 + 1) == 0)
        {
          v6 = 111;
        }

        else if (v2 == 4 && *(a1 + 1) == 0)
        {
          v6 = 114;
        }

        else if (v2 == 5 && *(a1 + 1) == 0)
        {
          v6 = 122;
        }

        else if (v2 == 6 && *(a1 + 1) == 0)
        {
          v6 = 116;
        }

        else
        {
          v14 = *(a1 + 1) == 0 && v2 == 7;
          v6 = 123;
          if (v14)
          {
            v6 = 120;
          }
        }
      }

      else
      {
        v6 = 100;
      }

      break;
    default:
      break;
  }

  v9 = 101;
  switch(*(a2 + 24))
  {
    case 1:
      v9 = 103;
      break;
    case 2:
      v9 = 104;
      break;
    case 3:
      v9 = 105;
      break;
    case 4:
      v9 = 106;
      break;
    case 5:
      v9 = 107;
      break;
    case 6:
      v9 = 108;
      break;
    case 7:
      v9 = 109;
      break;
    case 8:
      v9 = 117;
      break;
    case 9:
      v9 = 113;
      break;
    case 0xA:
      v9 = 119;
      break;
    case 0xB:
      v9 = 121;
      break;
    case 0xC:
      v10 = v5 | v4;
      if (v5 | v4 | v3)
      {
        if (v3 == 1 && v10 == 0)
        {
          v9 = 102;
        }

        else if (v3 == 2 && v10 == 0)
        {
          v9 = 110;
        }

        else if (v3 != 3 || v10)
        {
          if (v3 != 4 || v10)
          {
            if (v3 != 5 || v10)
            {
              if (v3 != 6 || v10)
              {
                if (v10)
                {
                  v15 = 0;
                }

                else
                {
                  v15 = v3 == 7;
                }

                if (v15)
                {
                  v9 = 120;
                }

                else
                {
                  v9 = 123;
                }
              }

              else
              {
                v9 = 116;
              }
            }

            else
            {
              v9 = 122;
            }
          }

          else
          {
            v9 = 114;
          }
        }

        else
        {
          v9 = 111;
        }
      }

      else
      {
        v9 = 100;
      }

      break;
    default:
      return v6 == v9;
  }

  return v6 == v9;
}

uint64_t FreeformStoryGenerator.title(from:storyElements:curatedChapters:keyAssetUUID:diagnosticContext:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[118] = v4;
  v1[117] = v5;
  v1[116] = v6;
  v1[115] = v7;
  v1[114] = v8;
  v1[122] = *v0;
  OUTLINED_FUNCTION_266_3(v8, v9);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73EC3AC()
{
  v73 = v0;
  v1 = 0;
  v2 = *(v0 + 920);
  v3 = v2 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_clsSceneClassifications;
  v6 = *(v2 + 16);
  v7 = &unk_1C756AD90;
  while (2)
  {
    *(v0 + 984) = v4;
    v8 = v3;
    v9 = (v3 + (v1 << 7));
    for (i = v1; ; ++i)
    {
      if (v6 == i)
      {
        if (qword_1EDD0A988 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_69;
      }

      if (i >= v6)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        OUTLINED_FUNCTION_30_0();
LABEL_41:
        LOBYTE(v72[0]) = byte_1EC218F88;
        if (static FreeformStoryGenerator.usingFallbackTitle(for:)(v72))
        {
          if (*(v0 + 944))
          {
            OUTLINED_FUNCTION_10_2();
            sub_1C7161CDC(0xD00000000000002ALL, v36);
          }

          OUTLINED_FUNCTION_139_1(v72);
          static FreeformStoryGenerator.generateLastResortTitleForMiniMC(from:storyElements:)(v4);

          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          if (os_log_type_enabled(v37, v38))
          {
            OUTLINED_FUNCTION_13_3();
            v39 = swift_slowAlloc();
            v40 = OUTLINED_FUNCTION_20_1();
            v72[0] = v40;
            *v39 = 136380675;
            v41 = OUTLINED_FUNCTION_49_3();
            *(v39 + 4) = sub_1C6F765A4(v41, v42, v43);
            _os_log_impl(&dword_1C6F5C000, v37, v38, "Last resort title for MiniMC: %{private}s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v44 = *(v0 + 960);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v45 + 8))(v44);
          OUTLINED_FUNCTION_82_0();
          OUTLINED_FUNCTION_49_3();
          OUTLINED_FUNCTION_91_14();

          __asm { BRAA            X3, X16 }
        }

        if (![objc_opt_self() generateOnDeviceTitle])
        {
          OUTLINED_FUNCTION_10_3(*(v0 + 912));
          OUTLINED_FUNCTION_15_3();
          v61 = swift_task_alloc();
          *(v0 + 1016) = v61;
          *v61 = v0;
          v61[1] = sub_1C73ECCA8;
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_91_14();

          __asm { BRAA            X2, X16 }
        }

        v48 = sub_1C6FB6304();
        v49 = 0;
        v50 = MEMORY[0x1E69E7CC0];
LABEL_51:
        v51 = v49;
        while (v48 != v51)
        {
          if (v51 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v49 = v51 + 1;
          v52 = sub_1C70CAC04(*(v4 + 8 * v51 + 32));
          v51 = v49;
          if (v53)
          {
            v54 = v52;
            v55 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v50 = v59;
            }

            v57 = *(v50 + 16);
            v56 = *(v50 + 24);
            if (v57 >= v56 >> 1)
            {
              OUTLINED_FUNCTION_15(v56);
              sub_1C6FB1814();
              v50 = v60;
            }

            *(v50 + 16) = v57 + 1;
            v58 = v50 + 16 * v57;
            *(v58 + 32) = v54;
            *(v58 + 40) = v55;
            goto LABEL_51;
          }
        }

        *(v0 + 992) = sub_1C706D154(v50);
        OUTLINED_FUNCTION_148_8();
        v64 = swift_task_alloc();
        *(v0 + 1000) = v64;
        *v64 = v0;
        v64[1] = sub_1C73ECB64;
        OUTLINED_FUNCTION_61_3(*(v0 + 912));
        OUTLINED_FUNCTION_91_14();

        return sub_1C73FC114();
      }

      memcpy((v0 + 624), v9, 0x80uLL);
      v1 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_67;
      }

      if ((*(v0 + 736) & 1) == 0)
      {
        break;
      }

LABEL_9:
      v9 += 128;
    }

    v11 = *(v0 + 728);
    sub_1C6FB7BB8(v0 + 624, v0 + 752);
    v12 = [v11 v5[230]];
    if (!v12)
    {
      sub_1C6FBC664(v0 + 624);
      goto LABEL_9;
    }

    v13 = v12;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    OUTLINED_FUNCTION_455();
    v14 = sub_1C7550B5C();

    v15 = v14 >> 62;
    v70 = v14;
    if (v14 >> 62)
    {
      v16 = sub_1C75516BC();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v4 >> 62;
    if (v4 >> 62)
    {
      result = sub_1C75516BC();
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = result + v16;
    if (__OFADD__(result, v16))
    {
      __break(1u);
      goto LABEL_71;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v69 = v16;
    if (!result)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v17)
    {
LABEL_20:
      sub_1C75516BC();
      goto LABEL_21;
    }

    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v21 < v19)
    {
LABEL_21:
      result = sub_1C75518CC();
      v4 = result;
      v20 = result & 0xFFFFFFFFFFFFFF8;
      v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v22 = v7;
    v23 = *(v20 + 16);
    v24 = v21 - v23;
    v25 = v20 + 8 * v23;
    v68 = v20;
    if (v15)
    {
      v71 = sub_1C75516BC();
      if (!v71)
      {
LABEL_36:

        v5 = &selRef_clsSceneClassifications;
        v3 = v8;
        if (v69 <= 0)
        {
          goto LABEL_37;
        }

        goto LABEL_71;
      }

      result = sub_1C75516BC();
      if (v24 < result)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v66 = result;
      v67 = v4;
      if (v71 < 1)
      {
        goto LABEL_75;
      }

      sub_1C705575C(&qword_1EDD06A58, &unk_1EC215150);
      for (j = 0; j != v71; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150);
        v28 = OUTLINED_FUNCTION_179_4();
        v30 = sub_1C6FDD09C(v28, v29, v70);
        v32 = *v31;
        v30(v0 + 880, 0);
        *(v25 + 32 + 8 * j) = v32;
      }

      v3 = v8;
      v4 = v67;
      v5 = &selRef_clsSceneClassifications;
      v7 = v22;
      v26 = v66;
LABEL_32:

      if (v26 >= v69)
      {
        if (v26 > 0)
        {
          v33 = *(v68 + 16);
          v34 = __OFADD__(v33, v26);
          v35 = v33 + v26;
          if (v34)
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          *(v68 + 16) = v35;
        }

LABEL_37:
        sub_1C6FBC664(v0 + 624);
        continue;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    break;
  }

  v26 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_36;
  }

  if (v24 >= v26)
  {
    swift_arrayInitWithCopy();
    v5 = &selRef_clsSceneClassifications;
    v3 = v8;
    goto LABEL_32;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1C73ECB64()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1008) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_82_0();
    v10 = OUTLINED_FUNCTION_57_0();

    return v11(v10);
  }
}

uint64_t sub_1C73ECCA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[128] = v4;
  v2[129] = v5;
  v2[130] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73ECDB0()
{
  v36 = v0;
  v1 = v0[129];
  v2 = v0[128] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {

    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v4 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v6);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v12 = v0[118];

    if (v12)
    {
      OUTLINED_FUNCTION_10_2();
      sub_1C7161CDC(0xD000000000000031, v13);
    }

    v14 = v0[120];
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v15 + 8))(v14);
  }

  else
  {

    v16 = sub_1C754FEEC();
    sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v19);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v25 = v0[118];

    if (v25)
    {
      sub_1C7161CDC(0xD00000000000003ALL, 0x80000001C75AF300);
    }

    v26 = v0[123];
    v27 = v0[121];
    OUTLINED_FUNCTION_139_1(v35);
    static FreeformStoryGenerator.generateLastResortTitle(from:storyElements:photoLibrary:)(v26, v35, *(v27 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext));
    v29 = v28;

    if (!v29)
    {
      if (qword_1EC213FB8 != -1)
      {
        OUTLINED_FUNCTION_139_6();
      }

      sub_1C75504FC();
    }

    v30 = v0[120];
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v31 + 8))(v30);
  }

  OUTLINED_FUNCTION_82_0();
  v32 = OUTLINED_FUNCTION_66_2();

  return v33(v32);
}

uint64_t sub_1C73ED034()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 960);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

double static FreeformStoryGenerator.Error.assetFetchFailed.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C75895F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void static FreeformStoryGenerator.Error.notEnoughStorytellingAssets.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughChaptersInStory.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughAssetsPerChapter.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughStoryAssetsForMontage.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughCuratedAssetsForStory.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.unbalancedChapters.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.tooMuchOverlapBetweenChapters.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.unexpectedStoryType.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 33;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.deprecatedStoryType.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 33;
  OUTLINED_FUNCTION_96_16(a1);
}

void sub_1C73ED348()
{
  qword_1EC21B908 = 0;
  unk_1EC21B910 = 0;
  qword_1EC21B900 = MEMORY[0x1E69E7CC0];
  byte_1EC21B918 = 10;
}

id static FreeformStoryGenerator.Error.tooManyChapterCurationFailures.getter()
{
  if (qword_1EC2140C0 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_180_4(&qword_1EC21B900);

  return sub_1C7055188(v0, v1, v2, v3);
}

uint64_t sub_1C73ED3D8()
{
  sub_1C6FE0D14();
  result = swift_allocError();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 2;
  *(v1 + 24) = 12;
  qword_1EC21B928 = 0;
  unk_1EC21B930 = 0;
  qword_1EC21B920 = result;
  byte_1EC21B938 = 11;
  return result;
}

id static FreeformStoryGenerator.Error.failedChapterCurationForImplicitMontage.getter()
{
  if (qword_1EC2140C8 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_180_4(&qword_1EC21B920);

  return sub_1C7055188(v0, v1, v2, v3);
}

uint64_t sub_1C73ED4A0(uint64_t a1)
{
  v2 = sub_1C714F460();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C73ED4DC(uint64_t a1)
{
  v2 = sub_1C714F460();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C73ED520()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28B68);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C73ED5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  (*(v11 + 16))(v10 - v9);
  v12 = OUTLINED_FUNCTION_179_4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  (*(v17 + 16))(v16 - v15);
  v18 = OUTLINED_FUNCTION_66_4();
  v19 = a6(v18);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v19;
}

uint64_t sub_1C73ED760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[50] = a5;
  v6[51] = v5;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73ED77C()
{
  OUTLINED_FUNCTION_75_1();
  v17 = v0;
  v1 = *(v0 + 384);
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v3 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  *(v0 + 416) = v2;
  *(v0 + 424) = v3;
  v4 = sub_1C754FEEC();
  sub_1C75511BC();
  v5 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_20_1();
    v16[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C6F765A4(0x6F7365527473616CLL, 0xEA00000000007472, v16);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v9, v10, "Not enough storytelling assets, falling back to %s, curating non-agressively");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (v2)
  {
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AF740);
    MEMORY[0x1CCA5CD70](0x6F7365527473616CLL, 0xEA00000000007472);
    MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AF760);
    sub_1C7161CDC(v16[0], v16[1]);

    v12 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    v11 = swift_beginAccess();
    *(*(v12 + 40) + 18) = 0;
  }

  OUTLINED_FUNCTION_266_3(v11, *(v0 + 376));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 432) = v13;
  *v13 = v14;
  v13[1] = sub_1C73ED9B0;

  return sub_1C73F2FD0();
}

uint64_t sub_1C73ED9B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73EDAA8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[52];
  if (v1)
  {
    v2 = v0[55];
    v3 = v0[46];
    type metadata accessor for FreeformStoryDiagnosticsGenerator();
    *(swift_initStackObject() + 16) = v1;
    swift_retain_n();
    FreeformStoryDiagnosticsGenerator.save(_:)(v3);
    if (v2)
    {
      v4 = v2;
      v5 = sub_1C754FEEC();
      sub_1C755119C();

      if (OUTLINED_FUNCTION_78_9())
      {
        OUTLINED_FUNCTION_13_3();
        v6 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = v2;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        OUTLINED_FUNCTION_102_11();
        _os_log_impl(v10, v11, v12, v13, v6, 0xCu);
        sub_1C6FB5FC8(v7, &qword_1EC215190);
        v14 = OUTLINED_FUNCTION_18_60();
        MEMORY[0x1CCA5F8E0](v14);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
    }

    swift_setDeallocating();
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73EDC64()
{
  OUTLINED_FUNCTION_42();
  v1[103] = v0;
  v1[102] = v2;
  v1[101] = v3;
  v1[100] = v4;
  v1[99] = v5;
  v1[98] = v6;
  v1[97] = v7;
  v8 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_76(v8);
  v1[104] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754F2FC();
  v1[105] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[106] = v10;
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v11 = sub_1C754F38C();
  v1[111] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[112] = v12;
  v1[113] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73EDDC0()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = v0[101];
  v2 = OUTLINED_FUNCTION_131_3();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_134_10();
  sub_1C754F2CC();
  v4 = v0[110];
  v5 = v0[106];
  v13 = v0[105];
  v14 = v0[108];
  v6 = v0[99];
  v7 = v0[98];
  OUTLINED_FUNCTION_70(v0[101], *(v1 + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v0 + 78, (v7 + 32), 0x41uLL);
  v0[114] = *(v6 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v8 = *(v5 + 32);
  v0[115] = v8;
  v0[116] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v14, v4, v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[117] = v9;
  *v9 = v10;
  v9[1] = sub_1C73EE034;
  OUTLINED_FUNCTION_17_1();

  return sub_1C73EE834();
}

uint64_t sub_1C73EE034()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 944) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 912);
  if (v27)
  {
    HIBYTE(a12) = 10;

    StoryGenerationDiagnosticContext.generationStage.setter(&a12 + 7);
    if (sub_1C71656D8())
    {
      v28 = (v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock((v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
      sub_1C73EEEF8(&v28[2]);
      os_unfair_lock_unlock(v28);
    }
  }

  v29 = *(v24 + 944);
  sub_1C754F2DC();
  if (v29)
  {
    v30 = *(v24 + 904);
    v31 = *(v24 + 896);
    v52 = *(v24 + 888);
    v53 = v29;
    v32 = *(v24 + 872);
    v33 = *(v24 + 848);
    v34 = *(v24 + 840);
    v51 = *(v24 + 816);
    v35 = *(v24 + 808);
    OUTLINED_FUNCTION_238_3();
    v36 = *(v33 + 8);
    v36(v32, v34);
    OUTLINED_FUNCTION_70(v35, v35[3]);
    OUTLINED_FUNCTION_275_0();
    sub_1C754F1AC();
    (*(v31 + 8))(v30, v52);
    v36(v51, v34);
    OUTLINED_FUNCTION_98_16();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, v51, v52, v53, a12, a13, a14, a15, a16);
  }

  else
  {
    v46 = *(v24 + 920);
    sub_1C73EF02C(v24 + 16, *(v24 + 808), *(v24 + 912), (v24 + 689));
    OUTLINED_FUNCTION_148_8();
    v47 = OUTLINED_FUNCTION_0_11();
    v46(v47);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v24 + 952) = v48;
    *v48 = v49;
    v48[1] = sub_1C73EE370;
    OUTLINED_FUNCTION_129();

    return FreeformStoryGenerator.generateStory(from:storyElements:initialStoryType:storySession:storyDiagnosticsGenerator:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C73EE370()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 960) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EE468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[120];
  sub_1C754F2EC();
  if (v15)
  {
    v16 = v14[101];
    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v17, v18);
    OUTLINED_FUNCTION_238_3();
    OUTLINED_FUNCTION_70(v16, v16[3]);
    sub_1C754F1AC();
    v19 = OUTLINED_FUNCTION_457();
    v20(v19);
    OUTLINED_FUNCTION_98_16();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    a9 = v14[108];
    a10 = v14[107];
    v21 = v14[104];
    v22 = v14[97];
    OUTLINED_FUNCTION_238_3();
    sub_1C73A9410(v21, v22);
    v23 = OUTLINED_FUNCTION_179_4();
    OUTLINED_FUNCTION_70(v23, v24);
    sub_1C754F1AC();
    v25 = OUTLINED_FUNCTION_457();
    v26(v25);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_17_1();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C73EE5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[113];
  v16 = v14[112];
  v17 = v14[109];
  v18 = v14[106];
  v19 = v14[105];
  v31 = v14[102];
  v32 = v14[111];
  v20 = v14[101];
  __swift_destroy_boxed_opaque_existential_1((v14 + 87));
  v21 = *(v18 + 8);
  v21(v17, v19);
  OUTLINED_FUNCTION_70(v20, v20[3]);
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v32);
  v21(v31, v19);
  OUTLINED_FUNCTION_198_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_1C73EE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 808);
  OUTLINED_FUNCTION_238_3();
  OUTLINED_FUNCTION_70(v13, v13[3]);
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_117_0();
  v17(v16);
  OUTLINED_FUNCTION_198_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C73EE7F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  sub_1C75504FC();

  *(a1 + 208) = v4;
  *(a1 + 216) = v3;
  return result;
}

uint64_t sub_1C73EE834()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[44] = v4;
  v1[45] = v0;
  v1[42] = v5;
  v1[43] = v6;
  v1[41] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v8);
  v1[46] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754F38C();
  v1[47] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[48] = v10;
  v1[49] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F61C();
  v1[50] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[51] = v12;
  v1[52] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 18, v3, 0x41uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73EE96C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0A988 != -1)
  {
    OUTLINED_FUNCTION_30_0();
  }

  sub_1C754F60C();
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1(*(v0 + 344), *(*(v0 + 344) + 24));
  (*(v2 + 16))(v4, v1, v3);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  sub_1C754F16C();
  sub_1C6FB5FC8(v4, &qword_1EC214BF0);
  type metadata accessor for FreeformStoryCompletionGenerator.Diagnostics();
  *(v0 + 424) = swift_initStackObject();
  sub_1C6FB03C4();
  *(v0 + 432) = v8;
  memcpy((v0 + 216), (v0 + 144), 0x41uLL);
  *(v0 + 312) = type metadata accessor for FreeformStoryCompletionAsync();
  *(v0 + 320) = sub_1C73FEE48(&qword_1EDD08AF8, type metadata accessor for FreeformStoryCompletionAsync);
  __swift_allocate_boxed_opaque_existential_0((v0 + 288));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 440) = v9;
  *v9 = v10;
  v9[1] = sub_1C73EEB98;
  OUTLINED_FUNCTION_44();

  return sub_1C6FAE48C();
}

uint64_t sub_1C73EEB98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EEC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = sub_1C754FEEC();
  sub_1C75511BC();
  v14 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v16);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v22 = *(v12 + 328);
  v23 = *(v12 + 336);

  sub_1C6F699F8((v12 + 288), v22);
  if (v23)
  {

    sub_1C6FAFAAC(v24);
  }

  v38 = *(v12 + 368);
  OUTLINED_FUNCTION_70(*(v12 + 344), *(*(v12 + 344) + 24));
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_15_1();
  v26(v25);
  v27 = OUTLINED_FUNCTION_57_0();
  v28(v27);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_1C73EEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 336);
  __swift_deallocate_boxed_opaque_existential_1(v12 + 288);
  if (v13)
  {

    sub_1C6FAFAAC(v14);
  }

  v28 = *(v12 + 368);
  OUTLINED_FUNCTION_70(*(v12 + 344), *(*(v12 + 344) + 24));
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

void sub_1C73EEEF8(uint64_t a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(a1 + 56);
  v3 = sub_1C6F78124(0x6C657479726F7453, 0xEB0000000072656CLL);
  if (__OFADD__(*(v2 + 16), (v4 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_5:
    *(a1 + 56) = v2;
    if ((v6 & 1) == 0)
    {
      sub_1C6FC6D3C(v5, 0x6C657479726F7453, 0xEB0000000072656CLL, 0, v2);
    }

    v9 = *(v2 + 56);
    v10 = *(v9 + 8 * v5);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(v9 + 8 * v5) = v12;
      return;
    }

    goto LABEL_10;
  }

  v7 = sub_1C6F78124(0x6C657479726F7453, 0xEB0000000072656CLL);
  if ((v6 & 1) == (v8 & 1))
  {
    v5 = v7;
    goto LABEL_5;
  }

LABEL_11:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C73EF02C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 73);
  if (v7 <= 0xFD)
  {
    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_13_3();
      v12 = swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_20_1();
      v25[0] = v13;
      *v12 = 136315138;
      v14 = 0xE600000000000000;
      v15 = 0x79636167656CLL;
      switch(v7 >> 5)
      {
        case 1u:
          if (v7)
          {
            v15 = OUTLINED_FUNCTION_178_3();
            v14 = 0x80000001C759A5F0;
          }

          else
          {
            OUTLINED_FUNCTION_132_9();
            v15 = v17 - 1;
          }

          break;
        case 2u:
          if (v7 == 64)
          {
            v14 = 0x80000001C759C3C0;
            v15 = 0xD000000000000012;
          }

          else
          {
            v14 = 0x80000001C759C3A0;
            v15 = 0xD00000000000001FLL;
          }

          break;
        case 3u:
          if (v7 == 96)
          {
            v14 = 0xEA00000000007472;
            v15 = OUTLINED_FUNCTION_241_2();
          }

          else
          {
            OUTLINED_FUNCTION_132_9();
            v15 = v16 - 8;
          }

          break;
        case 4u:
          break;
        default:
          OUTLINED_FUNCTION_132_9();
          v15 = v18 - 10;
          break;
      }

      v19 = sub_1C6F765A4(v15, v14, v25);

      *(v12 + 4) = v19;
      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v20, v21, v22, v23, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    if (a3)
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_10_2();
      v24 = OUTLINED_FUNCTION_178_3();
      MEMORY[0x1CCA5CD70](v24);
      sub_1C73E69B8(v7);
      MEMORY[0x1CCA5CD70](0x646563726F662820, 0xE900000000000029);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C73FAC84(a1, *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16), a2, v25);
    LOBYTE(v7) = v25[0];
    if (a3)
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_10_2();
      v8 = OUTLINED_FUNCTION_178_3();
      MEMORY[0x1CCA5CD70](v8);
      sub_1C73E69B8(v7);
LABEL_19:
      sub_1C7161CDC(v25[0], v25[1]);
    }
  }

  *a4 = v7;
}

uint64_t FreeformStoryGenerator.generateStory(from:storyElements:initialStoryType:storySession:storyDiagnosticsGenerator:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  *(v1 + 2296) = v2;
  *(v1 + 2288) = v5;
  *(v1 + 2280) = v6;
  *(v1 + 2272) = v7;
  *(v1 + 2264) = v8;
  *(v1 + 2256) = v9;
  *(v1 + 2304) = *v2;
  v10 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 2312) = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for CuratedStory();
  *(v1 + 2320) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 2328) = OUTLINED_FUNCTION_77();
  v12 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 2336) = OUTLINED_FUNCTION_77();
  v13 = sub_1C754F2FC();
  *(v1 + 2344) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 2352) = v14;
  *(v1 + 2360) = swift_task_alloc();
  *(v1 + 2368) = swift_task_alloc();
  *(v1 + 2376) = swift_task_alloc();
  *(v1 + 2384) = swift_task_alloc();
  *(v1 + 2392) = swift_task_alloc();
  *(v1 + 2400) = swift_task_alloc();
  *(v1 + 2408) = swift_task_alloc();
  *(v1 + 2416) = swift_task_alloc();
  *(v1 + 2424) = swift_task_alloc();
  *(v1 + 2432) = swift_task_alloc();
  *(v1 + 2440) = swift_task_alloc();
  *(v1 + 2448) = swift_task_alloc();
  *(v1 + 2456) = swift_task_alloc();
  v15 = sub_1C754F38C();
  *(v1 + 2464) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 2472) = v16;
  *(v1 + 2480) = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  *(v1 + 2138) = *v4;
  v17 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C73EF548()
{
  OUTLINED_FUNCTION_31();
  v15 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 2280), *(*(v0 + 2280) + 24));
  OUTLINED_FUNCTION_134_10();
  sub_1C754F2CC();
  v9 = *(v0 + 2138);
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2352);
  v10 = *(v0 + 2408);
  v11 = *(v0 + 2344);
  v12 = *(v0 + 2272);
  v8 = *(v0 + 2264);
  OUTLINED_FUNCTION_58_16(*(v0 + 2280));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2137) = v9;
  OUTLINED_FUNCTION_139_1(v14);
  sub_1C6FB5E28(v8, v0 + 2064);
  v3 = *(v2 + 32);
  *(v0 + 2488) = v3;
  *(v0 + 2496) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v3(v10, v1, v11);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FB5FC8(v0 + 2064, &qword_1EC215748);
  *(v0 + 2504) = v13;
  v4 = *(v12 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 2520) = v4;
  if (v4)
  {
    v14[0] = 12;
    StoryGenerationDiagnosticContext.generationStage.setter(v14);
  }

  OUTLINED_FUNCTION_148_8();
  v5 = OUTLINED_FUNCTION_67_18();
  (v3)(v5);
  v6 = swift_task_alloc();
  *(v0 + 2528) = v6;
  *v6 = v0;
  v6[1] = sub_1C73EF9A4;
  OUTLINED_FUNCTION_61_3(*(v0 + 2264));

  return sub_1C704B440();
}

uint64_t sub_1C73EF9A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2536) = v4;
  *(v2 + 2544) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73EFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v64 = *(v12 + 2536);
  v67 = *(v12 + 2544);
  v13 = *(v12 + 2488);
  v14 = *(v12 + 2392);
  v15 = *(v12 + 2296);
  v16 = *(v12 + 2272);
  *(v12 + 1968) = 5;
  *(v12 + 1976) = 0x3F9EB851EB851EB8;
  *(v12 + 1984) = 0x3F847AE147AE147BLL;
  *(v12 + 1992) = 0x3F9EB851EB851EB8;
  *(v12 + 2000) = xmmword_1C755EB70;
  *(v12 + 2016) = 0x3F847AE147AE147BLL;
  v17 = v15 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  *(v12 + 2144) = *v17;
  *(v12 + 2152) = v19;
  *(v12 + 2160) = v20;
  type metadata accessor for FreeformStoryKeyAssetElector();
  swift_allocObject();
  v21 = v18;

  *(v12 + 2552) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v12 + 1968), (v12 + 2144));
  OUTLINED_FUNCTION_139_1(v72);
  v22 = OUTLINED_FUNCTION_455();
  v13(v22);
  sub_1C7246CB8(v64, v72, v16, (v12 + 2024), v14, v68);
  if (v67)
  {
    OUTLINED_FUNCTION_192_2();
    v65 = v23;
    OUTLINED_FUNCTION_242_2();
    v24 = *(v12 + 2416);
    v25 = *(v12 + 2352);
    v26 = *(v12 + 2344);
    v62 = *(v12 + 2288);
    __swift_destroy_boxed_opaque_existential_1(v12 + 2024);

    v27 = *(v25 + 8);
    v27(v24, v26);
    v27(v59, v26);
    v27(v60, v26);
    v28 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v28, v29);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    v30 = OUTLINED_FUNCTION_144_8();
    v31(v30, v65);
    v27(v62, v26);
LABEL_3:
    OUTLINED_FUNCTION_36_33();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  v41 = v68[0];
  v42 = v68[1];
  *(v12 + 2560) = v68[0];
  *(v12 + 2568) = v42;
  v43 = v69;
  v44 = v70;
  *(v12 + 2576) = v69;
  *(v12 + 2584) = v44;
  v45 = v71;
  *(v12 + 2139) = v71;
  if (!v41)
  {
    v51 = *(v12 + 2472);
    OUTLINED_FUNCTION_242_2();
    v52 = *(v12 + 2416);
    v53 = *(v12 + 2352);
    v54 = *(v12 + 2344);
    v63 = *(v12 + 2288);
    v66 = v55;
    v56 = *(v12 + 2280);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v57, 2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v12 + 2024);
    v58 = *(v53 + 8);
    v58(v52, v54);
    v58(v59, v54);
    v58(v60, v54);
    OUTLINED_FUNCTION_58_16(v56);
    sub_1C754F1AC();
    (*(v51 + 8))(v61, v66);
    v58(v63, v54);
    goto LABEL_3;
  }

  *(v12 + 2104) = v41;
  *(v12 + 2112) = v42;
  *(v12 + 2120) = v43;
  *(v12 + 2128) = v44;
  *(v12 + 2136) = v45;
  v46 = v41;
  sub_1C75504FC();
  v47 = OUTLINED_FUNCTION_457();
  sub_1C70CE970(v47, v48, v45);
  v49 = swift_task_alloc();
  *(v12 + 2592) = v49;
  *v49 = v12;
  v49[1] = sub_1C73EFF78;
  OUTLINED_FUNCTION_61_3(*(v12 + 2536));
  OUTLINED_FUNCTION_44();

  return static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)();
}

uint64_t sub_1C73EFF78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2600) = v5;
  *(v3 + 2608) = v0;

  if (v0)
  {
    sub_1C6FE0E14(*(v3 + 2560), *(v3 + 2568), *(v3 + 2576), *(v3 + 2584), *(v3 + 2139));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73F00A0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_3(*(v0 + 2264));
  OUTLINED_FUNCTION_15_3();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 2616) = v2;
  *v2 = v0;
  v2[1] = sub_1C73F01B0;
  v3 = OUTLINED_FUNCTION_57_0();

  return v5(v3);
}

uint64_t sub_1C73F01B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_75_1();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_47();
  v16 = v15;
  OUTLINED_FUNCTION_6_4();
  *v17 = v16;
  v18 = *v10;
  OUTLINED_FUNCTION_14();
  *v19 = v18;
  v16[328] = v20;
  v16[329] = v9;

  if (v9)
  {

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {
    v24 = v16[311];
    v25 = v16[304];
    v26 = v16[298];
    v27 = v16[293];
    memcpy(v16 + 116, v16 + 2, 0x130uLL);
    v24(v26, v25, v27);
    v28 = swift_task_alloc();
    v16[330] = v28;
    *v28 = v18;
    v28[1] = sub_1C73F03A8;
    v29 = OUTLINED_FUNCTION_61_3(v16[325]);

    return sub_1C7047DD0(v29, v30, v31, v32, v14, v12, v33, v34, a9);
  }
}

uint64_t sub_1C73F03A8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 2648) = v7;
  *(v5 + 2656) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 2140) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73F0A20()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2680) = v5;
  *(v3 + 2688) = v6;
  *(v3 + 2696) = v0;

  if (v0)
  {
    v7 = *(v3 + 2648);

    sub_1C6F9ED74(v7, 0);
    v8 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v14 = *(v3 + 2504);

    *(v3 + 2240) = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v3 + 2704) = v11;
    *v11 = v12;
    v11[1] = sub_1C73F0BC8;

    return sub_1C73E72EC();
  }
}

uint64_t sub_1C73F0BC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F0CAC()
{
  v35 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2648);
  v3 = *(v0 + 2139);
  v4 = *(v0 + 2576);
  v33[0] = *(v0 + 2560);
  v33[1] = v4;
  v34 = v3;
  sub_1C73E6CD4(v33, v2);
  *(v0 + 2712) = v5;
  *(v0 + 2720) = v6;
  if (v1)
  {
    v7 = *(v0 + 2648);
    OUTLINED_FUNCTION_151_6();
    v27 = v8;
    v28 = v9;
    v10 = *(v0 + 2472);
    v31 = *(v0 + 2464);
    v25 = *(v0 + 2568);
    v26 = *(v0 + 2416);
    v11 = *(v0 + 2352);
    v23 = *(v0 + 2560);
    v24 = *(v0 + 2344);
    v12 = *(v0 + 2336);
    v29 = *(v0 + 2480);
    v30 = *(v0 + 2288);
    v13 = *(v0 + 2280);
    v14 = *(v0 + 2139);

    sub_1C6F9ED74(v7, 0);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v12, v15);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2024);
    sub_1C6FE0E14(v23, v25, v27, v28, v14);
    v16 = *(v11 + 8);
    v16(v26, v24);
    OUTLINED_FUNCTION_58_16(v13);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    (*(v10 + 8))(v29, v31);
    v16(v30, v24);
    OUTLINED_FUNCTION_6_101();
    OUTLINED_FUNCTION_12_73();

    OUTLINED_FUNCTION_43();

    return v17();
  }

  else
  {
    v19 = *(v0 + 2264);
    sub_1C6F9ED74(*(v0 + 2648), 0);
    OUTLINED_FUNCTION_10_3(v19);
    OUTLINED_FUNCTION_15_3();
    v32 = (v20 + *v20);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2728) = v21;
    *v21 = v22;
    v21[1] = sub_1C73F1004;
    OUTLINED_FUNCTION_16_6();

    return v32();
  }
}

uint64_t sub_1C73F1004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2736) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1110()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2688);
  v4 = *(v0 + 2680);
  v18 = *(v0 + 2488);
  v5 = *(v0 + 2328);
  *(v0 + 1904) = *(v0 + 1840);
  *(v0 + 1920) = *(v0 + 1856);
  *(v0 + 1936) = *(v0 + 1872);
  *(v0 + 1952) = *(v0 + 1888);
  v6 = *(v0 + 2137);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v8, v5 + v7, v9);
  *v5 = v6;
  OUTLINED_FUNCTION_139_1((v5 + 8));
  *(v5 + 312) = v1;
  *(v5 + 320) = v4;
  *(v5 + 328) = v3;
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1904);
  *(v5 + 368) = *(v0 + 1936);
  *(v5 + 384) = v11;
  *(v5 + 336) = v12;
  *(v5 + 352) = v10;
  *(v5 + 400) = v2;
  v13 = OUTLINED_FUNCTION_67_18();
  v18(v13);
  sub_1C6FDE884(v0 + 16, v0 + 1536);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 2744) = v14;
  *v14 = v15;
  v14[1] = sub_1C73F1268;
  OUTLINED_FUNCTION_17_1();

  return sub_1C73EB534();
}

uint64_t sub_1C73F1268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2752) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[309];
  v38 = v20[305];
  v39 = v20[310];
  v22 = v20[303];
  v23 = v20[302];
  v24 = v20[294];
  v25 = v20[293];
  OUTLINED_FUNCTION_203_4();
  v26 = v20[285];

  __swift_destroy_boxed_opaque_existential_1((v20 + 253));
  v27 = *(v24 + 8);
  v27(v23, v25);
  v27(v22, v25);
  v28 = OUTLINED_FUNCTION_94_3();
  (v27)(v28);
  v27(v38, v25);
  OUTLINED_FUNCTION_70(v26, v26[3]);
  sub_1C754F1AC();
  (*(v21 + 8))(v39, a17);
  v27(a16, v25);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, v38, v39, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F1854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_145_6();
  v40 = *(v20 + 2432);
  v41 = *(v20 + 2480);
  v39 = *(v20 + 2424);
  v22 = *(v20 + 2352);
  v23 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v24 = *(v20 + 2280);
  v25 = *(v20 + 2139);

  __swift_destroy_boxed_opaque_existential_1(v20 + 2024);
  sub_1C6FE0E14(v21, a10, a11, a12, v25);
  v26 = *(v22 + 8);
  v27 = OUTLINED_FUNCTION_117_0();
  v26(v27);
  (v26)(v39, v23);
  (v26)(v40, v23);
  OUTLINED_FUNCTION_58_16(v24);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v28 = OUTLINED_FUNCTION_144_8();
  v29(v28, a17);
  (v26)(a16, v23);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v39, v40, v41, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F1A20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2776) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 2760);
  OUTLINED_FUNCTION_151_6();
  v40 = v20;
  v41 = v21;
  v46 = *(v18 + 2464);
  v42 = *(v18 + 2552);
  v43 = *(v18 + 2424);
  v22 = *(v18 + 2352);
  v23 = *(v18 + 2344);
  v44 = *(v18 + 2480);
  v45 = *(v18 + 2288);
  v24 = *(v18 + 2280);
  v25 = *(v18 + 2139);

  v26 = OUTLINED_FUNCTION_2_56();
  sub_1C6FE0E14(v26, v27, v40, v41, v25);

  __swift_destroy_boxed_opaque_existential_1(v18 + 2024);
  v28 = *(v22 + 8);
  v28(v43, v23);
  OUTLINED_FUNCTION_58_16(v24);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_144_8();
  v30(v29, v46);
  v28(v45, v23);
  OUTLINED_FUNCTION_6_101();
  OUTLINED_FUNCTION_36_33();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_94_1();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, a16, a17, a18);
}

uint64_t sub_1C73F24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = *(v20 + 2760);
  OUTLINED_FUNCTION_151_6();
  v41 = v22;
  v42 = v23;
  v40 = *(v20 + 2568);
  v24 = *(v20 + 2560);
  v25 = *(v20 + 2472);
  v43 = *(v20 + 2424);
  v44 = *(v20 + 2480);
  v26 = *(v20 + 2352);
  v27 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v28 = *(v20 + 2280);
  v29 = *(v20 + 2139);

  sub_1C6FE0E14(v24, v40, v41, v42, v29);
  __swift_destroy_boxed_opaque_existential_1(v20 + 2024);
  v30 = *(v26 + 8);
  v30(v43, v27);
  OUTLINED_FUNCTION_70(v28, v28[3]);
  sub_1C754F1AC();
  (*(v25 + 8))(v44, a17);
  v30(a16, v27);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v40, v41, v42, v43, v44, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F2678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_151_6();
  v40 = v21;
  v41 = v22;
  v23 = *(v20 + 2472);
  v42 = *(v20 + 2416);
  v43 = *(v20 + 2480);
  v24 = *(v20 + 2352);
  v25 = *(v20 + 2344);
  OUTLINED_FUNCTION_203_4();
  v26 = *(v20 + 2280);
  v27 = *(v20 + 2139);

  v28 = OUTLINED_FUNCTION_117_0();
  sub_1C6FE0E14(v28, v29, v40, v41, v27);
  __swift_destroy_boxed_opaque_existential_1(v20 + 2024);
  v30 = *(v24 + 8);
  v30(v42, v25);
  OUTLINED_FUNCTION_58_16(v26);
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  (*(v23 + 8))(v43, a17);
  v30(a16, v25);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, v40, v41, v42, v43, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F282C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v22 = *(v20 + 2712);
  OUTLINED_FUNCTION_145_6();
  v41 = *(v20 + 2416);
  v42 = *(v20 + 2480);
  v23 = *(v20 + 2352);
  v40 = *(v20 + 2344);
  v24 = *(v20 + 2336);
  OUTLINED_FUNCTION_203_4();
  v25 = *(v20 + 2280);
  v26 = *(v20 + 2139);

  sub_1C6FE0E14(v21, a10, a11, a12, v26);
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v24, v27);
  __swift_destroy_boxed_opaque_existential_1(v20 + 2024);
  v28 = *(v23 + 8);
  v28(v41, v40);
  OUTLINED_FUNCTION_58_16(v25);
  OUTLINED_FUNCTION_57_0();
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_144_8();
  v30(v29, a17);
  v28(a16, v40);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, v40, v41, v42, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73F29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_151_6();
  v43 = v22;
  v44 = v23;
  v24 = *(v20 + 2568);
  v25 = *(v20 + 2560);
  OUTLINED_FUNCTION_192_2();
  v46 = v27;
  v47 = v26;
  v28 = *(v20 + 2352);
  v45 = *(v20 + 2336);
  v29 = *(v20 + 2328);
  v48 = *(v20 + 2288);
  v49 = *(v20 + 2344);
  v30 = *(v20 + 2280);
  v31 = *(v20 + 2139);

  sub_1C6FE0E14(v25, v24, v43, v44, v31);
  OUTLINED_FUNCTION_23_48();
  sub_1C73FED84(v29, v32);
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v45, v33);
  __swift_destroy_boxed_opaque_existential_1(v20 + 2024);
  OUTLINED_FUNCTION_10_3(v30);
  OUTLINED_FUNCTION_0_11();
  sub_1C754F1AC();
  (*(v21 + 8))(v46, v47);
  (*(v28 + 8))(v48, v49);
  OUTLINED_FUNCTION_3_110();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

void sub_1C73F2B9C(void *a1, uint64_t a2)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  switch(v74)
  {
    case 5:
      v46 = sub_1C754FEEC();
      v47 = sub_1C75511BC();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
        OUTLINED_FUNCTION_11_3();
        v50 = swift_slowAlloc();
        *v50 = 134218240;
        *(v50 + 4) = v72;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v73;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "Not enough curated assets in story (%ld < %ld), falling back to LastResort", v50, 0x16u);
        v51 = OUTLINED_FUNCTION_18_60();
        MEMORY[0x1CCA5F8E0](v51);
      }

      if (!a2)
      {
        goto LABEL_22;
      }

      sub_1C755180C();
      OUTLINED_FUNCTION_191_3();
      MEMORY[0x1CCA5CD70](v52 + 7, v53 | 0x8000000000000000);
      v54 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v54);

      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD00000000000001DLL);
      sub_1C7161CDC(0, 0xE000000000000000);

      v55 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v44 = *(v55 + 40);
      v45 = 1;
      break;
    case 11:
      v22 = v72;
      v23 = sub_1C754FEEC();
      v24 = sub_1C755119C();
      v25 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v25, v26, v27, 11);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_13_3();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_23();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = v72;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        OUTLINED_FUNCTION_130_7();
        _os_log_impl(v32, v33, v34, v35, v36, v37);
        sub_1C6FB5FC8(v29, &qword_1EC215190);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (!a2)
      {
        v69 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v69, v70, v71, 11);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_191_3();
      sub_1C7161CDC(v38 + 43, v39 | 0x8000000000000000);
      v40 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v40, v41, v42, 11);
      v43 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v44 = *(v43 + 40);
      v45 = 2;
      break;
    case 10:
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      sub_1C755119C();
      v6 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_13_3();
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        v9 = v72[2];
        v10 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v10, v11, v12, 10);
        *(v8 + 4) = v9;
        v13 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v13, v14, v15, 10);
        OUTLINED_FUNCTION_130_7();
        _os_log_impl(v16, v17, v18, v19, v20, v21);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        v61 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v61, v62, v63, 10);
        v64 = OUTLINED_FUNCTION_35_27();
        sub_1C70551BC(v64, v65, v66, 10);
      }

      if (a2)
      {
        OUTLINED_FUNCTION_191_3();
        sub_1C7161CDC(v67 + 33, v68 | 0x8000000000000000);
      }

      goto LABEL_22;
    default:
      v56 = OUTLINED_FUNCTION_35_27();
      sub_1C70551BC(v56, v57, v58, v59);
LABEL_17:

      swift_willThrow();
      v60 = a1;
      return;
  }

  *(v44 + 18) = v45;
LABEL_22:
}

uint64_t sub_1C73F2FD0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  *(v1 + 1696) = v2;
  *(v1 + 1688) = v5;
  *(v1 + 1680) = v6;
  *(v1 + 1672) = v7;
  *(v1 + 831) = v8;
  *(v1 + 1664) = v3;
  *(v1 + 1656) = v9;
  *(v1 + 1704) = *v2;
  v10 = type metadata accessor for FreeformStory();
  *(v1 + 1712) = v10;
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 1720) = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 1728) = swift_task_alloc();
  *(v1 + 1736) = swift_task_alloc();
  v12 = sub_1C754DFFC();
  *(v1 + 1744) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v1 + 1752) = v13;
  *(v1 + 1760) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F2FC();
  *(v1 + 1768) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 1776) = v15;
  *(v1 + 1784) = swift_task_alloc();
  *(v1 + 1792) = swift_task_alloc();
  *(v1 + 1800) = swift_task_alloc();
  *(v1 + 1808) = swift_task_alloc();
  v16 = sub_1C754F38C();
  *(v1 + 1816) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v1 + 1824) = v17;
  *(v1 + 1832) = OUTLINED_FUNCTION_77();
  v18 = *v4;
  *(v1 + 2089) = *v4;
  *(v1 + 2088) = v18;
  memcpy((v1 + 624), v4 + 1, 0xCFuLL);
  *(v1 + 1840) = *(v4 + 26);
  memcpy((v1 + 1424), v4 + 216, 0x58uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C73F3240()
{
  v20 = v0;
  v19 = *MEMORY[0x1E69E9840];
  v1 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v3 = *(v0 + 1672);
  sub_1C754F2BC();
  sub_1C754F2BC();
  v4 = *(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 1848) = v4;
  if (v4)
  {
    v15 = 16;
    StoryGenerationDiagnosticContext.generationStage.setter(&v15);
  }

  v5 = *(v0 + 1840);
  v7 = *(v0 + 1776);
  v8 = *(v0 + 1664);
  v15 = *(v0 + 2089);
  v6 = v15;
  memcpy(v16, (v8 + 1), sizeof(v16));
  v17 = v5;
  memcpy(v18, (v8 + 216), sizeof(v18));
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1600) = 0;
  *(v0 + 1856) = *(v7 + 32);
  *(v0 + 1864) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9 = OUTLINED_FUNCTION_457();
  v10(v9);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FB5FC8(v0 + 1568, &qword_1EC215748);
  *(v0 + 1872) = v14;
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_262_3((v0 + 17));
  *(v0 + 224) = v5;
  OUTLINED_FUNCTION_260_3((v0 + 232));
  v11 = swift_task_alloc();
  *(v0 + 1888) = v11;
  *v11 = v0;
  v11[1] = sub_1C73F35EC;
  v12 = *(v0 + 831);

  return sub_1C73FA584(v0 + 16, v12);
}

uint64_t sub_1C73F35EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[237] = v4;
  v2[238] = v5;
  v2[239] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73F3724()
{
  v94 = v0;
  v93[11] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1848);
  if (v1)
  {
    v2 = (v0 + 2088);
    v3 = *(v0 + 1904);
    sub_1C716409C(28, 0xC75AF620, v1, v3, v4, v5, v6, v7, v58, v59, v61, v63, v65, v67, v70, v73, v75, v76[0], v76[1], v76[2], v76[3], v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  }

  else
  {
    v2 = (v0 + 2089);
  }

  v8 = *v2;
  v9 = *(v0 + 1896);
  v10 = *(v0 + 1840);
  v11 = *(v0 + 1696);
  v12 = *(v0 + 1672);
  *(v0 + 1512) = 5;
  *(v0 + 1520) = xmmword_1C7589600;
  *(v0 + 1536) = xmmword_1C7589600;
  *(v0 + 1552) = xmmword_1C7589600;
  v13 = v11 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  *(v0 + 1608) = *v13;
  *(v0 + 1616) = v15;
  *(v0 + 1624) = v16;
  type metadata accessor for FreeformStoryKeyAssetElector();
  swift_allocObject();
  v17 = v14;

  *(v0 + 1920) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 1512), (v0 + 1608));
  LOBYTE(v76[0]) = v8;
  OUTLINED_FUNCTION_262_3(v76 + 1);
  v92 = v10;
  OUTLINED_FUNCTION_260_3(v93);
  v18 = FreeformStoryKeyAssetElector.keyAssetForLastResort(from:storyElements:storySession:)(v9, v76, v12);
  *(v0 + 1928) = v18;

  v19 = *(v0 + 1904);
  if (!v18)
  {
    v49 = *(v0 + 1832);
    v50 = *(v0 + 1824);
    v69 = *(v0 + 1800);
    v51 = *(v0 + 1776);
    v52 = *(v0 + 1768);
    v72 = *(v0 + 1688);
    v74 = *(v0 + 1816);
    v53 = *(v0 + 1680);
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v54, 2);
    swift_willThrow();

    v55 = *(v51 + 8);
    v55(v69, v52);
    OUTLINED_FUNCTION_58_16(v53);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v74);
    v55(v72, v52);
    OUTLINED_FUNCTION_45_35();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_91_14();

    __asm { BRAA            X1, X16 }
  }

  v20 = [*(v0 + 1904) fetchedObjects];
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v20;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    OUTLINED_FUNCTION_63();
    v21 = sub_1C7550B5C();
  }

  v23 = *(v0 + 1840);
  LOBYTE(v76[0]) = *(v0 + 2088);
  OUTLINED_FUNCTION_262_3(v76 + 1);
  v92 = v23;
  OUTLINED_FUNCTION_260_3(v93);
  static FreeformStoryGenerator.generateLastResortTitle(from:storyElements:photoLibrary:)(v21, v76, v17);
  v25 = v24;
  v27 = v26;

  if (!v27)
  {
    if (qword_1EC213FB8 != -1)
    {
      OUTLINED_FUNCTION_139_6();
    }

    v25 = qword_1EC21A150;
    v27 = *algn_1EC21A158;
    sub_1C75504FC();
  }

  *(v0 + 1944) = v27;
  *(v0 + 1936) = v25;
  v28 = *(v0 + 1904);
  v71 = *(v0 + 1856);
  v62 = v25;
  v64 = *(v0 + 1784);
  v66 = *(v0 + 1768);
  v68 = *(v0 + 1800);
  v29 = *(v0 + 1760);
  v30 = *(v0 + 1752);
  v60 = *(v0 + 1744);
  v31 = MEMORY[0x1E69E7CC0];
  v32 = OUTLINED_FUNCTION_254_0();
  *(v0 + 1952) = v32;
  v33 = OUTLINED_FUNCTION_254_0();
  *(v0 + 1960) = v33;
  v34 = v28;
  sub_1C75504FC();
  OUTLINED_FUNCTION_150_8();
  sub_1C75504FC();
  v35 = v34;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754DFEC();
  v36 = sub_1C754DF8C();
  v38 = v37;
  v39 = *(v30 + 8);
  *(v0 + 1968) = v39;
  *(v0 + 1976) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v29, v60);
  *(v0 + 1216) = v36;
  *(v0 + 1224) = v38;
  *(v0 + 1232) = v62;
  *(v0 + 1240) = v27;
  *(v0 + 1248) = 3;
  *(v0 + 1256) = v31;
  OUTLINED_FUNCTION_240_4();
  *(v0 + 1264) = v40;
  *(v0 + 1272) = 0xEA00000000007472;
  *(v0 + 1280) = v35;
  *(v0 + 1288) = v32;
  *(v0 + 1296) = v33;
  *(v0 + 1304) = 0u;
  memcpy((v0 + 832), (v0 + 1216), 0x68uLL);
  LOBYTE(v76[0]) = 0;
  *(v0 + 936) = v35;
  *(v0 + 944) = 0;
  *(v0 + 952) = MEMORY[0x1E69E7CC8];
  *(v0 + 1984) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8);
  v41 = swift_allocObject();
  *(v0 + 1992) = v41;
  OUTLINED_FUNCTION_251_3(v41, xmmword_1C755BAB0);
  v71(v64, v68, v66);
  v42 = v35;
  sub_1C6FC061C(v0 + 1216, v0 + 1320);
  sub_1C6FB7BB8(v0 + 832, v0 + 960);
  v43 = swift_task_alloc();
  *(v0 + 2000) = v43;
  *v43 = v0;
  v43[1] = sub_1C73F3D00;
  OUTLINED_FUNCTION_91_14();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v44, v45, v46, v47);
}

uint64_t sub_1C73F3D00()
{
  OUTLINED_FUNCTION_75_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 2008) = v0;

  if (v0)
  {
    swift_setDeallocating();
    sub_1C6FDCAA8();

    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    *(v4 + 2016) = v3;
    v13 = *(v4 + 1872);
    swift_setDeallocating();
    sub_1C6FDCAA8();
    *(v4 + 1632) = v13;
    v11 = swift_task_alloc();
    *(v4 + 2024) = v11;
    *v11 = v6;
    v11[1] = sub_1C73F3F08;

    return sub_1C73E72EC();
  }
}

uint64_t sub_1C73F3F08()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F4020()
{
  OUTLINED_FUNCTION_197_2();
  v1 = *(v0 + 2008);
  v2 = *(v0 + 1728);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v3, v2, v4);
  v5 = objc_allocWithZone(type metadata accessor for GenerativeMemoryPhotosGraphData());
  v6 = OUTLINED_FUNCTION_66_2();
  v9 = GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(v6, v7, v8);
  sub_1C734E8EC();
  if (v1)
  {
    v10 = *(v0 + 1928);
    v11 = *(v0 + 1904);
    v12 = *(v0 + 1832);
    v13 = *(v0 + 1824);
    v14 = *(v0 + 1776);
    v50 = *(v0 + 1768);
    v46 = *(v0 + 1816);
    v48 = *(v0 + 1688);
    v15 = *(v0 + 1680);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v16, v17);

    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0(v0 + 1216);
    sub_1C6FBC664(v0 + 832);

    OUTLINED_FUNCTION_10_3(v15);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v13 + 8))(v12, v46);
    (*(v14 + 8))(v48, v50);
LABEL_3:
    OUTLINED_FUNCTION_45_35();

    OUTLINED_FUNCTION_43();

    return v18();
  }

  v20 = objc_opt_self();
  v21 = sub_1C755048C();

  *(v0 + 1648) = 0;
  v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:v0 + 1648];

  v23 = *(v0 + 1648);
  if (!v22)
  {
    v37 = v23;
    v38 = *(v0 + 1928);
    v39 = *(v0 + 1904);
    v45 = *(v0 + 1832);
    v40 = *(v0 + 1824);
    v41 = *(v0 + 1776);
    v51 = *(v0 + 1768);
    v44 = *(v0 + 1736);
    v47 = *(v0 + 1816);
    v49 = *(v0 + 1688);
    v42 = *(v0 + 1680);

    sub_1C754DBEC();

    swift_willThrow();

    sub_1C6FBC664(v0 + 832);

    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0(v0 + 1216);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v44, v43);
    OUTLINED_FUNCTION_10_3(v42);
    OUTLINED_FUNCTION_84_13();
    sub_1C754F1AC();
    (*(v40 + 8))(v45, v47);
    (*(v41 + 8))(v49, v51);
    goto LABEL_3;
  }

  v24 = sub_1C754DDEC();
  v26 = v25;

  *(v0 + 2032) = v24;
  *(v0 + 2040) = v26;
  v27 = swift_task_alloc();
  *(v0 + 2048) = v27;
  *v27 = v0;
  v27[1] = sub_1C73F44B4;
  OUTLINED_FUNCTION_329();

  return FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_1C73F44B4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  v6[257] = v0;

  if (v0)
  {
  }

  else
  {
    v6[258] = v3;
    v6[259] = v5;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F4604()
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v24 = *(v0 + 2064);
  v25 = *(v0 + 2072);
  v2 = *(v0 + 1968);
  v23 = *(v0 + 1944);
  v22 = *(v0 + 1936);
  v3 = *(v0 + 1904);
  v26 = *(v0 + 1840);
  v4 = *(v0 + 1760);
  v5 = *(v0 + 1744);
  v6 = *(v0 + 1736);
  v7 = *(v0 + 1720);
  v8 = *(v0 + 1712);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_251_3(v9, xmmword_1C755BAB0);
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v6, v7 + v10, v11);
  v12 = v3;
  sub_1C6FB7BB8(v0 + 832, v0 + 1088);
  sub_1C754DFEC();
  sub_1C754DF8C();
  OUTLINED_FUNCTION_59();
  v2(v4, v5);
  *v7 = v22;
  *(v7 + 8) = v23;
  *(v7 + 16) = v9;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = v25;
  *(v7 + 96) = v24;
  *(v7 + 104) = v12;
  *(v7 + 112) = v3;
  *(v7 + 120) = v1;
  *(v7 + *(v8 + 44)) = 96;
  *(v0 + 320) = *(v0 + 2088);
  OUTLINED_FUNCTION_262_3((v0 + 321));
  *(v0 + 528) = v26;
  OUTLINED_FUNCTION_260_3((v0 + 536));
  v13 = swift_task_alloc();
  *(v0 + 2080) = v13;
  *v13 = v0;
  v13[1] = sub_1C73F47EC;
  OUTLINED_FUNCTION_61_3(*(v0 + 1720));
  OUTLINED_FUNCTION_20_4();

  return sub_1C73F5A88(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C73F47EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 1904);
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F491C()
{
  v1 = v0[257];
  sub_1C754F2EC();
  v2 = v0[241];
  v3 = v0[238];
  v25 = v0[227];
  if (v1)
  {
    v4 = v0[217];
    v24 = v0[215];
    v5 = v0[210];
    v6 = OUTLINED_FUNCTION_455();
    sub_1C6FC1640(v6, v7);

    sub_1C6FBC664((v0 + 104));
    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0((v0 + 152));
    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v24, v8);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v4, v9);
    OUTLINED_FUNCTION_58_16(v5);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    v10 = OUTLINED_FUNCTION_144_8();
    v11(v10, v25);
    OUTLINED_FUNCTION_45_35();
  }

  else
  {
    v13 = v0[215];
    v23 = v0[207];
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v14, v15);
    OUTLINED_FUNCTION_150_8();

    sub_1C70552E0((v0 + 152));
    sub_1C6FBC664((v0 + 104));
    v16 = OUTLINED_FUNCTION_455();
    sub_1C6FC1640(v16, v17);

    sub_1C73A9410(v13, v23);
    v18 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v18, v19);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    v20 = OUTLINED_FUNCTION_144_8();
    v21(v20, v25);
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C73F4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v34 = *MEMORY[0x1E69E9840];
  v15 = v14[229];
  v16 = v14[228];
  v17 = v14[222];
  v18 = v14[221];
  v32 = v14[211];
  v33 = v14[227];

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_15_1();
  v19(v20);
  v21 = OUTLINED_FUNCTION_94_3();
  OUTLINED_FUNCTION_70(v21, v22);
  OUTLINED_FUNCTION_457();
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v33);
  (v19)(v32, v18);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_1C73F4D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v39 = *MEMORY[0x1E69E9840];
  v19 = v18[241];
  v20 = v18[238];
  v34 = v18[234];
  v35 = v18[235];
  v21 = v18[229];
  v22 = v18[228];
  v23 = v18[222];
  v38 = v18[221];
  v36 = v18[227];
  v37 = v18[211];
  v24 = v18[210];

  OUTLINED_FUNCTION_150_8();

  sub_1C70552E0((v18 + 152));
  sub_1C6FBC664((v18 + 104));

  OUTLINED_FUNCTION_70(v24, v24[3]);
  OUTLINED_FUNCTION_455();
  sub_1C754F1AC();
  (*(v22 + 8))(v21, v36);
  (*(v23 + 8))(v37, v38);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_1C73F4F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v41 = *MEMORY[0x1E69E9840];
  v19 = v18[241];
  v20 = v18[238];
  v21 = v18[229];
  v22 = v18[228];
  v37 = v18[245];
  v38 = v18[227];
  v23 = v18[222];
  v35 = v18[244];
  v36 = v18[217];
  v39 = v18[211];
  v40 = v18[221];
  v24 = v18[210];
  sub_1C6FC1640(v18[254], v18[255]);

  sub_1C6FBC664((v18 + 104));

  OUTLINED_FUNCTION_150_8();

  sub_1C70552E0((v18 + 152));
  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v36, v25);
  OUTLINED_FUNCTION_10_3(v24);
  OUTLINED_FUNCTION_84_13();
  sub_1C754F1AC();
  (*(v22 + 8))(v21, v38);
  (*(v23 + 8))(v39, v40);
  OUTLINED_FUNCTION_46_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_1C73F50F0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 56) = *a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C73F51B0;

  return FreeformStoryGenerator.persistStoryAsMemory(_:curatedAssets:promptInformation:)();
}

uint64_t sub_1C73F51B0()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_6_4();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[4] = v0;

  if (!v0)
  {
    v7[5] = v3;
    v7[6] = v5;
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73F52C4()
{
  v1 = v0[5];
  v2 = v0[2];
  *v2 = v0[6];
  v2[1] = v1;
  OUTLINED_FUNCTION_25();
  return v3();
}

uint64_t FreeformStoryGenerator.persistStoryAsMemory(_:curatedAssets:promptInformation:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v2;
  *(v1 + 24) = v6;
  *(v1 + 48) = *v2;
  v7 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_77();
  *(v1 + 120) = *v4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73F53F4()
{
  OUTLINED_FUNCTION_31();
  v44 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  type metadata accessor for CuratedStory();
  OUTLINED_FUNCTION_5_90();
  sub_1C73FE764(v3 + v4, v2, v5);
  v42 = v1;
  v6 = objc_allocWithZone(type metadata accessor for GenerativeMemoryPhotosGraphData());
  v7 = sub_1C75504FC();
  v8 = GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(v7, v2, &v42);
  sub_1C734E8EC();

  v11 = objc_opt_self();
  v12 = sub_1C755048C();

  *(v0 + 16) = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v0 + 16];

  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = *(v0 + 24);
    v16 = sub_1C754DDEC();
    v18 = v17;

    *(v0 + 64) = v16;
    *(v0 + 72) = v18;
    v19 = v15[42];
    v20 = v15[43];
    v21 = *(v15[36] + 16);
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    v42 = byte_1EC218F88;
    if (static FreeformStoryGenerator.usingFallbackTitle(for:)(&v42))
    {
      goto LABEL_9;
    }

    if ([objc_opt_self() generateOnDeviceTitle])
    {
      goto LABEL_15;
    }

    v24 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v24 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
LABEL_15:
      v25 = [*(v0 + 32) fetchedObjects];
      v26 = v25;
      if (v21 == 1)
      {
        if (v25)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          OUTLINED_FUNCTION_63();
          v27 = sub_1C7550B5C();
        }

        else
        {
          v27 = MEMORY[0x1E69E7CC0];
        }

        v28 = v27;
        v29 = 1;
        v30 = 0;
      }

      else
      {
        if (v25)
        {
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          OUTLINED_FUNCTION_63();
          sub_1C7550B5C();
        }

        OUTLINED_FUNCTION_25_8();
      }

      sub_1C74140CC(v28, v29, v30);
      v22 = v31;
    }

    else
    {
LABEL_9:
      v22 = 0;
    }

    *(v0 + 80) = v22;
    v42 = **(v0 + 24);
    sub_1C73F6DC4(&v42);
    v32 = swift_task_alloc();
    *(v0 + 88) = v32;
    *v32 = v0;
    v32[1] = sub_1C73F5800;
    v46 = v18;
    OUTLINED_FUNCTION_66_4();
    OUTLINED_FUNCTION_17_1();

    return FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    v23 = v14;
    sub_1C754DBEC();

    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v9();
  }
}

uint64_t sub_1C73F5800()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  v6[12] = v0;

  if (!v0)
  {
    v6[13] = v3;
    v6[14] = v5;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F594C()
{
  OUTLINED_FUNCTION_42();
  sub_1C6FC1640(v0[8], v0[9]);

  OUTLINED_FUNCTION_82_0();
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_1C73F59E4()
{
  OUTLINED_FUNCTION_49_0();

  v0 = OUTLINED_FUNCTION_90();
  sub_1C6FC1640(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73F5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73F5AC0, 0, 0);
}

uint64_t sub_1C73F5AC0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 728);
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 752) = v2;
  if (v2)
  {
    v3 = *(v0 + 696);
    v4 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v5 = *(v4 + 40);
    LOBYTE(v3) = *(v3 + *(type metadata accessor for FreeformStory() + 44));
    swift_beginAccess();
    *(v5 + 17) = v3;
  }

  v6 = [objc_opt_self() isUserFCS];
  if (v6)
  {
    v7 = *(v0 + 752);
    if (v7)
    {

      if (!PFOSVariantHasInternalDiagnostics() || *(v7 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
      {
        OUTLINED_FUNCTION_253_3();
        OUTLINED_FUNCTION_152_6(OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
        v9 = v8;

        v10 = swift_task_alloc();
        *(v0 + 768) = v10;
        *v10 = v0;
        v11 = OUTLINED_FUNCTION_67_22(v10);

        return sub_1C7429844(v11, v12, v13, v14, v15, v16);
      }
    }

    OUTLINED_FUNCTION_43();

    return v23();
  }

  else
  {
    OUTLINED_FUNCTION_266_3(v6, *(v0 + 720));
    v18 = swift_task_alloc();
    *(v0 + 760) = v18;
    *v18 = v0;
    v18[1] = sub_1C73F5CD0;
    v19 = OUTLINED_FUNCTION_0_11();

    return sub_1C73F602C(v19, v20, v21, v22);
  }
}

uint64_t sub_1C73F5CD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F5DB4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 752);
  if (v1)
  {

    if (!PFOSVariantHasInternalDiagnostics() || *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
    {
      OUTLINED_FUNCTION_253_3();
      OUTLINED_FUNCTION_152_6(OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      v3 = v2;

      v4 = swift_task_alloc();
      *(v0 + 768) = v4;
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_67_22(v4);

      return sub_1C7429844(v5, v6, v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C73F5EB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F5FD4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73F602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  v5[7] = swift_task_alloc();
  v7 = sub_1C754DFFC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_1C754DF6C();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v5[13] = v9;
  v5[14] = v10;
  v5[15] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C73F6190, 0, 0);
}

uint64_t sub_1C73F6190()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];
  if (!v1)
  {
    v26 = sub_1C754FEEC();
    sub_1C75511BC();
    v27 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v29);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_22;
  }

  v2 = v0[3];
  v3 = v0[6] + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v4 = *v3;
  v0[16] = *v3;
  v5 = *(v3 + 8);
  v6 = v4;

  v7 = [v6 librarySpecificFetchOptions];
  v0[17] = v7;
  [v7 setSharingFilter_];

  [v7 setIncludeStoryMemories_];
  [v7 setIncludePendingMemories_];
  sub_1C6F65BE8(0, &qword_1EDD0CCF8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v9 = OUTLINED_FUNCTION_13_1();
  *(v9 + 16) = xmmword_1C755BAB0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  sub_1C75504FC();
  v10 = sub_1C7550B3C();

  v11 = [ObjCClassFromMetadata fetchAssetCollectionsWithLocalIdentifiers:v10 options:v7];
  v0[18] = v11;

  v12 = [v11 firstObject];
  v0[19] = v12;
  if (!v12)
  {
    v26 = sub_1C754FEEC();
    sub_1C75511BC();
    v35 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v37);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_21;
  }

  v13 = v12;
  v0[20] = type metadata accessor for GenerativeMemoryPhotosGraphData();
  if (sub_1C71B2634(v13))
  {

    OUTLINED_FUNCTION_10_2();
    v14 = sub_1C755065C();
    v15 = NSClassFromString(v14);

    if (v15)
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      if (dynamic_cast_existential_1_conditional(ObjCClassMetadata))
      {
        OUTLINED_FUNCTION_59();
        sub_1C754DF5C();
        sub_1C754DEAC();
        v18 = v17;
        v19 = v17;
        v20 = OUTLINED_FUNCTION_66_2();
        result = v21(v20);
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v18 > -9.22337204e18)
        {
          if (v18 < 9.22337204e18)
          {
            v23 = v0[5];
            v24 = *(v23 + *(type metadata accessor for StoryGenerationSession(0) + 24));
            if (v24)
            {
              v25 = *(v24 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
            }

            else
            {
              v25 = 0;
            }

            v0[21] = v25;
            OUTLINED_FUNCTION_15_3();
            v56 = v53 + *v53;
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            v0[22] = v54;
            *v54 = v55;
            v54[1] = sub_1C73F672C;

            __asm { BRAA            X8, X16 }
          }

          goto LABEL_31;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }
    }

    v26 = sub_1C754FEEC();
    sub_1C755119C();
    v43 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v26 = sub_1C754FEEC();
  sub_1C75511BC();
  v45 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v45, v46))
  {
LABEL_19:
    v47 = OUTLINED_FUNCTION_127();
    *v47 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v48, v49, v50, v51, v47, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

LABEL_20:

LABEL_21:
LABEL_22:

  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();

  return v52();
}

uint64_t sub_1C73F672C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73F682C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);

    sub_1C6FB5FC8(v2, &unk_1EC217A30);
    OUTLINED_FUNCTION_174_4();

    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), v2, v1);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1C73F6970;
    v8 = OUTLINED_FUNCTION_61_3(*(v0 + 80));

    return sub_1C71B3524(v8, v9, v10);
  }
}

uint64_t sub_1C73F6970()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73F6A68()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);

  v3 = OUTLINED_FUNCTION_66_2();
  v4(v3);
  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73F6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = *(v24 + 192);
  sub_1C75504FC();
  v29 = v28;
  v30 = sub_1C754FEEC();
  sub_1C755119C();
  OUTLINED_FUNCTION_173_5();

  if (OUTLINED_FUNCTION_78_9())
  {
    v31 = *(v24 + 192);
    v32 = *(v24 + 152);
    a9 = *(v24 + 144);
    a10 = *(v24 + 136);
    v33 = *(v24 + 72);
    a11 = *(v24 + 64);
    a12 = *(v24 + 80);
    OUTLINED_FUNCTION_11_3();
    swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_177_3();
    *v25 = 136315394;
    v34 = OUTLINED_FUNCTION_2_56();
    v37 = sub_1C6F765A4(v34, v35, v36);
    OUTLINED_FUNCTION_193_3(v37);
    *(v24 + 16) = v31;
    v38 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    v39 = sub_1C75506EC();
    v41 = sub_1C6F765A4(v39, v40, &a13);

    *(v25 + 14) = v41;
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v42, v43, v44, v45, v25, 0x16u);
    OUTLINED_FUNCTION_21_25();
    v46 = OUTLINED_FUNCTION_18_60();
    MEMORY[0x1CCA5F8E0](v46);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    (*(v33 + 8))(a12, a11);
  }

  else
  {
    v47 = *(v24 + 192);
    v49 = *(v24 + 144);
    v48 = *(v24 + 152);

    v50 = OUTLINED_FUNCTION_49_3();
    v51(v50);
  }

  OUTLINED_FUNCTION_174_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

char *sub_1C73F6D18@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  v3 = 32;
  switch(v2 >> 5)
  {
    case 1u:
      v3 = *result;
      goto LABEL_3;
    case 2u:
    case 4u:
      goto LABEL_6;
    case 3u:
      if (v2 == 96)
      {
        v4 = 8;
        v2 = 96;
      }

      else
      {
LABEL_6:
        v4 = 9;
      }

      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = v2;
      *(v5 + 24) = v4;
      result = swift_willThrow();
      break;
    default:
LABEL_3:
      *a2 = v3;
      break;
  }

  return result;
}

uint64_t sub_1C73F6DC4(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 1000;
  switch(v1 >> 5)
  {
    case 1u:
      result = 1001;
      break;
    case 2u:
    case 4u:
      goto LABEL_5;
    case 3u:
      if (v1 == 96)
      {
        result = 1100;
      }

      else
      {
LABEL_5:
        sub_1C6FE0D14();
        OUTLINED_FUNCTION_9_10();
        swift_allocError();
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *v3 = v1;
        *(v3 + 24) = 9;
        result = swift_willThrow();
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t FreeformStoryGenerator.persistStoryAsMemory(subcategory:title:subtitle:keyAsset:curatedAssets:photosGraphData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = v14;
  v9[27] = v8;
  v9[24] = a7;
  v9[25] = a8;
  v9[22] = a5;
  v9[23] = a6;
  v9[20] = a3;
  v9[21] = a4;
  v9[18] = a1;
  v9[19] = a2;
  v10 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F6EA0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  aBlock = v0 + 10;
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v20 = v3;
  v6 = v0[22];
  v7 = v0[20];
  v18 = v0[21];
  v19 = v0[23];
  v21 = v0 + 2;
  v8 = v0[19];
  v9 = v1[18];
  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  v1[28] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v22 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v18;
  v11[5] = v6;
  v11[6] = v9;
  v11[7] = v4;
  v11[8] = v19;
  v11[9] = v2;
  v11[10] = v5;
  v11[11] = v3;
  v11[12] = v10;
  v1[14] = sub_1C73FE7C0;
  v1[15] = v11;
  v12 = MEMORY[0x1E69E9820];
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C6FD8F68;
  v1[13] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  v1[29] = v13;
  sub_1C75504FC();
  v14 = v4;
  v15 = v19;

  sub_1C75504FC();
  sub_1C6FEB1B0(v5, v20);

  v1[2] = v1;
  v1[3] = sub_1C73F70D8;
  v16 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  v1[10] = v12;
  v1[11] = 1107296256;
  v1[12] = sub_1C73E8D6C;
  v1[13] = &block_descriptor_31_1;
  v1[14] = v16;
  [v22 performChanges:v13 completionHandler:aBlock];

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_1C73F70D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73F71D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v26 = *(v22 + 224);
  _Block_release(*(v22 + 232));
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v27 = *(v26 + 24);
  if (v27)
  {
    v28 = *(v26 + 16);
    v29 = *(v22 + 192);
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v30 = v29;
    v31 = sub_1C754FEEC();
    sub_1C755117C();

    v32 = OUTLINED_FUNCTION_78_9();
    v33 = *(v22 + 192);
    if (v32)
    {
      v34 = v28;
      a9 = *(v22 + 224);
      v35 = *(v22 + 152);
      v36 = *(v22 + 160);
      OUTLINED_FUNCTION_20_1();
      a10 = OUTLINED_FUNCTION_177_3();
      *v23 = 136643331;
      v37 = sub_1C6F765A4(v35, v36, &a10);
      OUTLINED_FUNCTION_193_3(v37);
      *(v23 + 14) = sub_1C6F765A4(v34, v27, &a10);
      *(v23 + 22) = 2048;
      *(v23 + 24) = [v33 count];

      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v38, v39, v40, v41, v23, 0x20u);
      OUTLINED_FUNCTION_21_25();
      v42 = OUTLINED_FUNCTION_18_60();
      MEMORY[0x1CCA5F8E0](v42);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 0;
    *(v43 + 24) = 12;
    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73F73F4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 232);
  swift_willThrow();
  _Block_release(v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73F7468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a9;
  v32 = a10;
  v16 = sub_1C754DF6C();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF5C();
  v19 = sub_1C755065C();
  if (a4)
  {
    a4 = sub_1C755065C();
  }

  v20 = objc_opt_self();
  v21 = sub_1C754DECC();
  v22 = [v20 creationRequestForMemoryWithTitle:v19 subtitle:a4 creationDate:v21 category:0 subcategory:a5 representativeAssets:a6 curatedAssets:a6 extendedCuratedAssets:a6 keyAsset:a7];

  [v22 setCustomUserAssets_];
  v23 = sub_1C754DECC();
  [v22 setLastEnrichmentDate_];

  [v22 setCreationType_];
  [v22 setPendingState_];
  sub_1C73FE318(v31, v32, v22);
  [v22 setPhotosGraphVersion_];
  v24 = [v22 placeholderForCreatedMemory];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 localIdentifier];

    v25 = sub_1C755068C();
    v28 = v27;

    (*(v33 + 8))(v18, v34);
  }

  else
  {
    (*(v33 + 8))(v18, v34);

    v28 = 0;
  }

  swift_beginAccess();
  *(a11 + 16) = v25;
  *(a11 + 24) = v28;
}

uint64_t static FreeformStoryGenerator.findAssetsMissingHighlightInformation(curatedAssets:highlightInformationByAssetUUID:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  v9[4] = sub_1C73FE82C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C7067B48;
  v9[3] = &block_descriptor_41;
  v6 = _Block_copy(v9);
  sub_1C75504FC();

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v6);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v7 = *(v4 + 16);
  sub_1C75504FC();

  return v7;
}

id sub_1C73F7860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 isVideo];
  if (result)
  {
    result = sub_1C70CAC04(a1);
    if (!v9)
    {
      __break(1u);
      return result;
    }

    if (*(a4 + 16))
    {
      sub_1C6F78124(result, v9);
      v11 = v10;

      if (v11)
      {
        return result;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v12 = a1;
    MEMORY[0x1CCA5D040]();
    sub_1C6FB6328(*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C7550BEC();
    return swift_endAccess();
  }

  return result;
}

uint64_t static FreeformStoryGenerator.combineHighlightInformationByAssetUUID(fallbackHighlightInformationByAssetUUID:shotsHighlightInformationByAssetUUID:)(uint64_t a1)
{
  v3 = a1 + 64;
  OUTLINED_FUNCTION_181_2();
  v5 = v4 >> 6;
  v55 = v6;
  sub_1C75504FC();
  v54 = a1;
  sub_1C75504FC();
  v7 = 0;
  v53 = v5;
LABEL_2:
  v8 = v7;
  if (!v1)
  {
    goto LABEL_4;
  }

  do
  {
    v7 = v8;
LABEL_7:
    v9 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v54 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v54 + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 4);
    v18 = *(v14 + 8);
    v17 = *(v14 + 16);
    v19 = *(v14 + 24);
    v20 = *(v14 + 32);
    v21 = v55[2];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (!v21 || (sub_1C6F78124(v12, v13), (v22 & 1) == 0))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v56 = v55;
      v52 = v12;
      sub_1C6F78124(v12, v13);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v31, v32))
      {
        goto LABEL_32;
      }

      v33 = v29;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250);
      if (sub_1C7551A2C())
      {
        v35 = sub_1C6F78124(v52, v13);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_34;
        }

        v33 = v35;
      }

      v55 = v56;
      if (v34)
      {
        OUTLINED_FUNCTION_185_3(v56[7] + 40 * v33);
        v37[1] = v18;
        v37[2] = v17;
        v37[3] = v19;
        v37[4] = v20;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v56[v33 >> 6]);
        v38 = (v55[6] + 16 * v33);
        *v38 = v39;
        v38[1] = v13;
        v40 = v55[7] + 40 * v33;
        *v40 = v16;
        *(v40 + 4) = v15;
        *(v40 + 8) = v18;
        *(v40 + 16) = v17;
        *(v40 + 24) = v19;
        *(v40 + 32) = v20;
        v41 = v55[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_33;
        }

        v55[2] = v43;
        sub_1C75504FC();
      }

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v44 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v44, qword_1EDD28B68);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C755117C();

      if (os_log_type_enabled(v45, v46))
      {
        v51 = v46;
        v47 = OUTLINED_FUNCTION_20_1();
        v48 = OUTLINED_FUNCTION_20_1();
        v56 = v48;
        *v47 = 136315650;
        v49 = sub_1C6F765A4(v52, v13, &v56);

        *(v47 + 4) = v49;
        OUTLINED_FUNCTION_202_3();

        *(v47 + 24) = v15;
        _os_log_impl(&dword_1C6F5C000, v45, v51, "Asset '%s' has highlight range: start at %f, end at %f, for fallback shot.", v47, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v48);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v5 = v53;
      goto LABEL_2;
    }

    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v23 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v23, qword_1EDD28B68);
    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C755118C();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_20_1();
      v56 = v27;
      *v26 = 136315138;
      v28 = sub_1C6F765A4(v12, v13, &v56);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "Asset %s already in highlight dictionary. No need to use fallback shot.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v8 = v7;
    v5 = v53;
  }

  while (v1);
LABEL_4:
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v55;
    }

    v1 = *(v3 + 8 * v7);
    ++v8;
    if (v1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t static FreeformStoryGenerator.findBestHighlightsForChapter(chapter:curatedAssets:characterUUIDs:storyGenerationCache:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 208) = v4;
  *(v1 + 216) = v0;
  *(v1 + 192) = v5;
  *(v1 + 200) = v6;
  *(v1 + 184) = v7;
  v8 = sub_1C754F2FC();
  *(v1 + 224) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v1 + 232) = v9;
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *(v3 + 8);
  *(v1 + 256) = v10;
  *(v1 + 264) = v11;
  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  *(v1 + 272) = *(v3 + 24);
  *(v1 + 280) = v12;
  *(v1 + 288) = v13;
  v14 = *(v3 + 72);
  *(v1 + 296) = *(v3 + 56);
  *(v1 + 312) = v14;
  *(v1 + 328) = *(v3 + 88);
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C73F84F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C73F85F8(__n128 a1)
{
  v233 = v1;
  v2 = 0;
  v3 = v1[56];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v229 = v1[56];
  v8 = -1 << *(v229 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v11 = v1[47];
  v221 = v1[46];
  a1.n128_u64[0] = 136315907;
  v219 = a1;
  a1.n128_u64[0] = 136315650;
  v218 = a1;
  v226 = v10;
  v227 = v5;
LABEL_4:
  v12 = v2;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v2 = v12;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v2 << 6);
    v15 = (*(v229 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v229 + 56) + 40 * v14;
    v20 = *v18;
    v19 = *(v18 + 4);
    v21 = *(v18 + 16);
    v222 = *(v18 + 8);
    v22 = *(v18 + 24);
    v23 = v11[2];
    v24 = *(v18 + 32);
    sub_1C75504FC();
    sub_1C75504FC();
    v25 = v21;
    sub_1C75504FC();
    v223 = v17;
    if (!v23 || (v26 = OUTLINED_FUNCTION_2_56(), v28 = sub_1C6F78124(v26, v27), (v29 & 1) == 0))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v1[21] = v221;
      v32 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v32, v33);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v36, v37))
      {
        __break(1u);
      }

      else
      {
        v38 = v34;
        v39 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250);
        if (sub_1C7551A2C())
        {
          v40 = v223;
          v41 = OUTLINED_FUNCTION_275_0();
          v43 = sub_1C6F78124(v41, v42);
          if ((v39 & 1) != (v44 & 1))
          {
            goto LABEL_62;
          }

          v38 = v43;
        }

        else
        {
          v40 = v223;
        }

        v45 = v1[21];
        v221 = v45;
        if (v39)
        {
          OUTLINED_FUNCTION_185_3(*(v45 + 56) + 40 * v38);
          OUTLINED_FUNCTION_186_4(v46);

LABEL_23:
          v212 = v1[51];
          log = v1[52];
          v208 = v1[49];
          v210 = v1[50];
          v55 = v1[48];
          sub_1C73FE894(v55, v208, v210, v212);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v56 = sub_1C754FEEC();
          v57 = sub_1C755117C();

          v222 = v25;

          v217 = v24;

          v58 = v56;
          sub_1C73FE834(v55, v208, v210, v212);
          if (!os_log_type_enabled(v56, v57))
          {

LABEL_40:
            v11 = v221;
LABEL_41:
            v10 = v226;
            v5 = v227;
            goto LABEL_4;
          }

          v59 = v1[50];
          v213 = v1[49];
          v60 = v57;
          v61 = swift_slowAlloc();
          v62 = OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_232_3(v62, v63, v64, v65, v66, v67, v68, v69, v202, v204, v206, v208, v210, v213, v62, v24, v218.n128_i64[0], v218.n128_i64[1], v70);
          v72 = sub_1C6F765A4(v223, v16, v71);

          *(v61 + 4) = v72;
          OUTLINED_FUNCTION_202_3();

          *(v61 + 24) = v19;
          *(v61 + 32) = 2085;
          sub_1C75504FC();
          v73 = sub_1C6F765A4(v212, v59, v232);

          *(v61 + 34) = v73;
          _os_log_impl(&dword_1C6F5C000, v58, v60, "Asset '%s' has highlight range: start at %f, end at %f, for shot: %{sensitive}s.", v61, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
LABEL_39:
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          goto LABEL_40;
        }

        OUTLINED_FUNCTION_1_3(v45 + 8 * (v38 >> 6));
        v48 = (*(v47 + 48) + 16 * v38);
        *v48 = v40;
        v48[1] = v16;
        v50 = *(v47 + 56) + v38 * v49;
        *v50 = v20;
        *(v50 + 4) = v19;
        OUTLINED_FUNCTION_186_4(v50);
        v52 = *(v51 + 16);
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (!v53)
        {
          *(v51 + 16) = v54;
          sub_1C75504FC();
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    v30 = v11[7] + 40 * v28;
    v31 = *(v30 + 24);
    if (v31 < v22)
    {
      log = v1[52];
      v217 = v1[53];
      v210 = v1[50];
      v212 = v1[51];
      v206 = v1[48];
      v208 = v1[49];
      v202 = *(v30 + 16);
      v204 = *(v30 + 32);
      sub_1C73FE894(v206, v208, v210, v212);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v74 = sub_1C754FEEC();
      v75 = sub_1C755117C();

      sub_1C73FE834(v206, v208, v210, v212);
      LODWORD(v217) = v75;
      if (OUTLINED_FUNCTION_226_3())
      {
        v77 = v1[49];
        v76 = v1[50];
        loga = v74;
        v78 = swift_slowAlloc();
        v79 = OUTLINED_FUNCTION_49_1();
        OUTLINED_FUNCTION_232_3(v79, v80, v81, v82, v83, v84, v85, v86, v202, v204, v206, v208, v210, v79, loga, v217, v218.n128_i64[0], v218.n128_i64[1], v87);
        v88 = OUTLINED_FUNCTION_2_56();
        *(v78 + 4) = sub_1C6F765A4(v88, v89, v90);
        *(v78 + 12) = 2048;
        *(v78 + 14) = v31;
        *(v78 + 22) = 2048;
        *(v78 + 24) = v22;
        *(v78 + 32) = 2085;
        sub_1C75504FC();
        v91 = sub_1C6F765A4(v77, v76, v232);

        *(v78 + 34) = v91;
        _os_log_impl(&dword_1C6F5C000, log, v217, "For asset '%s': current highlight score is %f, new highlight score is %f. Updating highlight to new highlight, for shot: %{sensitive}s.", v78, 0x2Au);
        OUTLINED_FUNCTION_233_4(v92, v93, MEMORY[0x1E69E7CA0] + 8, v94, v95, v96, v97, v98, v203, v205, v207, v209, v211, v214);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v1[22] = v221;
      v99 = OUTLINED_FUNCTION_275_0();
      sub_1C6F78124(v99, v100);
      OUTLINED_FUNCTION_31_1();
      if (!__OFADD__(v103, v104))
      {
        v105 = v101;
        v106 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215250);
        if ((sub_1C7551A2C() & 1) == 0)
        {
LABEL_33:
          v11 = v1[22];
          if (v106)
          {
            OUTLINED_FUNCTION_185_3(v11[7] + 40 * v105);
            *(v109 + 8) = v222;
            *(v109 + 16) = v25;
            *(v109 + 24) = v22;
            *(v109 + 32) = v24;

LABEL_37:
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            v58 = sub_1C754FEEC();
            v115 = sub_1C755117C();

            v221 = v11;
            if (!os_log_type_enabled(v58, v115))
            {

              goto LABEL_41;
            }

            v116 = OUTLINED_FUNCTION_20_1();
            v117 = OUTLINED_FUNCTION_20_1();
            v232[0] = v117;
            *v116 = v218.n128_u32[0];
            v118 = sub_1C6F765A4(v223, v16, v232);
            v224 = v115;
            v119 = v118;

            *(v116 + 4) = v119;
            *(v116 + 12) = 2048;
            *(v116 + 14) = v20;
            *(v116 + 22) = 2048;

            *(v116 + 24) = v19;
            _os_log_impl(&dword_1C6F5C000, v58, v224, "Updated asset highlight '%s' with new range: start at %f, end at %f.", v116, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v117);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_1_3(&v11[v105 >> 6]);
          v110 = (v11[6] + 16 * v105);
          *v110 = v223;
          v110[1] = v16;
          v112 = v11[7] + v105 * v111;
          *v112 = v20;
          *(v112 + 4) = v19;
          OUTLINED_FUNCTION_186_4(v112);
          v113 = v11[2];
          v53 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (!v53)
          {
            v11[2] = v114;
            sub_1C75504FC();
            goto LABEL_37;
          }

LABEL_68:
          __break(1u);
          return;
        }

        v107 = sub_1C6F78124(v223, v16);
        if ((v106 & 1) == (v108 & 1))
        {
          v105 = v107;
          goto LABEL_33;
        }

LABEL_62:
        OUTLINED_FUNCTION_267_2();

        sub_1C7551E4C();
        return;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v12 = v2;
    v10 = v226;
    v5 = v227;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v2 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v2);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_245_3();
  sub_1C73FE894(v120, v121, v122, v123);
  v124 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_245_3();
  sub_1C73FE834(v125, v126, v127, v128);
  v129 = OUTLINED_FUNCTION_78_9();
  v130 = v1[50];
  v230 = v1[51];
  v131 = v1[49];
  if (v129)
  {
    OUTLINED_FUNCTION_13_3();
    v132 = swift_slowAlloc();
    v133 = OUTLINED_FUNCTION_20_1();
    v232[0] = v133;
    *v132 = 136642819;
    sub_1C75504FC();
    v134 = sub_1C6F765A4(v131, v130, v232);

    *(v132 + 4) = v134;
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v133);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v140 = OUTLINED_FUNCTION_2_56();
    sub_1C73FE834(v140, v141, v130, v230);
  }

  else
  {

    v142 = OUTLINED_FUNCTION_2_56();
    sub_1C73FE834(v142, v143, v130, v230);
  }

  v1[46] = v221;
  v1[47] = v11;
  sub_1C73E8080((v1 + 2));
  v144 = v1[3];
  v1[48] = v1[2];
  v1[49] = v144;
  v145 = v1[4];
  v146 = v1[5];
  v1[50] = v145;
  v1[51] = v146;
  v147 = v1[6];
  v148 = v1[7];
  v1[52] = v147;
  v1[53] = v148;
  if (v145)
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v149 = sub_1C754FF1C();
    v1[54] = OUTLINED_FUNCTION_23_2(v149, qword_1EDD28B68);
    sub_1C75504FC();
    v228 = v146;
    sub_1C75504FC();
    sub_1C75504FC();
    v150 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_75();
    sub_1C73FE834(v151, v152, v153, v146);
    if (OUTLINED_FUNCTION_226_3())
    {
      OUTLINED_FUNCTION_13_3();
      v154 = swift_slowAlloc();
      v155 = OUTLINED_FUNCTION_20_1();
      v232[0] = v155;
      *v154 = 136642819;
      sub_1C75504FC();
      v156 = OUTLINED_FUNCTION_49_3();
      v159 = sub_1C6F765A4(v156, v157, v158);

      *(v154 + 4) = v159;
      OUTLINED_FUNCTION_130_7();
      _os_log_impl(v160, v161, v162, v163, v164, v165);
      __swift_destroy_boxed_opaque_existential_1(v155);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v167 = v1[31];
    v166 = v1[32];
    v168 = v1[28];
    v169 = v1[29];
    sub_1C754F2AC();
    v1[13] = v144;
    v1[14] = v145;
    v1[15] = v228;
    v1[16] = v147;
    v1[17] = v148;
    (*(v169 + 32))(v167, v166, v168);
    v170 = swift_task_alloc();
    v1[55] = v170;
    *v170 = v1;
    OUTLINED_FUNCTION_76_20();
  }

  else
  {

    v171 = OUTLINED_FUNCTION_66_2();
    v231 = static FreeformStoryGenerator.findAssetsMissingHighlightInformation(curatedAssets:highlightInformationByAssetUUID:)(v171, v172);
    sub_1C75504DC();

    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v173 = v1[39];
    v174 = v1[38];
    v225 = v1[35];
    v175 = sub_1C754FF1C();
    v1[58] = OUTLINED_FUNCTION_23_2(v175, qword_1EDD28B68);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v176 = v174;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v177 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_226_3())
    {
      v178 = v1[36];
      OUTLINED_FUNCTION_11_3();
      v179 = swift_slowAlloc();
      v180 = OUTLINED_FUNCTION_20_1();
      v232[0] = v180;
      *v179 = 134218243;
      v181 = v231;
      *(v179 + 4) = sub_1C6FB6304();

      *(v179 + 12) = 2085;
      sub_1C75504FC();
      v182 = OUTLINED_FUNCTION_154();
      sub_1C6F765A4(v182, v183, v184);
      OUTLINED_FUNCTION_259_1();
      *(v179 + 14) = v178;
      OUTLINED_FUNCTION_252_2(&dword_1C6F5C000, v185, v186, "Start updating highlight information for %ld videos, with fallback shot: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v180);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      v181 = v231;
    }

    OUTLINED_FUNCTION_129_8();
    v187 = v173;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C71BA830(v181, v195, v188, v189, v190, v191, v192, v193, v194, v202, v204, v206, v208, v210, v212, log, v217, v218.n128_i64[0], v218.n128_i64[1], v219.n128_i64[0], v219.n128_i64[1], v220, v221, v222, v225);

    v196 = sub_1C6FBB0C8();
    OUTLINED_FUNCTION_197_5(v196);
    v197 = swift_task_alloc();
    v198 = OUTLINED_FUNCTION_248_4(v197);
    *v198 = v199;
    OUTLINED_FUNCTION_75_17(v198);
  }

  OUTLINED_FUNCTION_267_2();

  static FreeformStoryGenerator.getHighlightInformation(for:curatedAssetsSet:characterUUIDs:progressReporter:)();
}

uint64_t sub_1C73F93CC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[61] = v0;

  v9 = v5[59];
  if (!v0)
  {
    v5[62] = v3;
  }

  v10 = v5[10];

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73F9528(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, Swift::OpaquePointer highlightInformation, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  v25 = *(v24 + 488);
  v26 = static FreeformStoryGenerator.combineHighlightInformationByAssetUUID(fallbackHighlightInformationByAssetUUID:shotsHighlightInformationByAssetUUID:)(*(v24 + 496));

  sub_1C754F2EC();
  if (v25)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_129();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, highlightInformation._rawValue, a12, a13, a14, a15, a16);
  }

  else
  {
    v36 = *(v24 + 304);
    v53 = *(v24 + 328);
    v54 = *(v24 + 264);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v37 = v36;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511BC();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_13_3();
      v40 = swift_slowAlloc();
      a12 = OUTLINED_FUNCTION_20_1();
      *v40 = 136642819;
      v41 = OUTLINED_FUNCTION_0_11();
      *(v40 + 4) = sub_1C6F765A4(v41, v42, v43);
      _os_log_impl(&dword_1C6F5C000, v38, v39, "Finished updating highlight information for fallback shot: %{sensitive}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a12);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v44 = *(v24 + 352);
    StoryGenerationCache.cacheHighlightInformation(highlightInformation:)(v26);

    OUTLINED_FUNCTION_129();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v26, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C73F97AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 400);
  v13 = *(v12 + 408);
  v16 = *(v12 + 384);
  v15 = *(v12 + 392);
  v17 = *(v12 + 232);
  v28 = *(v12 + 224);
  v18 = *(v12 + 208);

  sub_1C73FE834(v16, v15, v14, v13);

  (*(v17 + 8))(v18, v28);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_1C73F9884()
{
  OUTLINED_FUNCTION_49_0();

  v1 = OUTLINED_FUNCTION_0_11();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t static FreeformStoryGenerator.getHighlightInformation(for:curatedAssetsSet:characterUUIDs:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 56) = v5;
  v6 = sub_1C7550CBC();
  *(v0 + 80) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v2;
  *(v0 + 104) = v8;
  *(v0 + 112) = v9;
  *(v0 + 120) = *(v2 + 1);
  *(v0 + 136) = *(v2 + 3);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73F9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_111_0();
  a24 = v26;
  v29 = [*(v26 + 128) fetchedObjects];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v29;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    OUTLINED_FUNCTION_63();
    v32 = sub_1C7550B5C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  a11 = v30;
  v33 = sub_1C6FB6304();
  v34 = 0;
  v35 = &selRef_clsSceneClassifications;
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1CCA5DDD0](v34, v32);
    }

    else
    {
      if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v36 = *(v32 + 8 * v34 + 32);
    }

    v37 = v36;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      OUTLINED_FUNCTION_0_23();
      swift_once();
LABEL_18:
      v38 = v26;
      v39 = *(v26 + 128);
      v40 = sub_1C754FF1C();
      v38[20] = OUTLINED_FUNCTION_23_2(v40, qword_1EDD28B68);
      OUTLINED_FUNCTION_29_20();
      swift_retain_n();
      sub_1C75504FC();
      v41 = v39;
      sub_1C75504FC();
      sub_1C75504FC();
      v42 = sub_1C754FEEC();
      v43 = sub_1C755117C();

      if (os_log_type_enabled(v42, v43))
      {
        v78 = v43;
        v45 = v38[17];
        v44 = v38[18];
        v47 = v38[15];
        v46 = v38[16];
        v48 = v38[14];
        OUTLINED_FUNCTION_11_3();
        v49 = swift_slowAlloc();
        v50 = OUTLINED_FUNCTION_20_1();
        a10 = v50;
        a11 = v48;
        *v49 = 136643075;
        a12 = v47;
        a13 = v46;
        a14 = v45;
        a15 = v44;
        sub_1C75504FC();
        v51 = v46;
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = FreeformStoryShot.description.getter();
        v54 = v53;
        v55 = a13;

        v56 = sub_1C6F765A4(v52, v54, &a10);

        *(v49 + 4) = v56;
        *(v49 + 12) = 2048;
        v57 = sub_1C6FB6304();

        *(v49 + 14) = v57;

        _os_log_impl(&dword_1C6F5C000, v42, v78, "getHighlightInformation called with shot %{sensitive}s with %ld video assets", v49, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        OUTLINED_FUNCTION_29_20();
      }

      v70 = v38[14];
      v69 = v38[15];
      type metadata accessor for AssetMediaAnalyzer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v71 = OUTLINED_FUNCTION_13_1();
      v38[21] = v71;
      *(v71 + 16) = xmmword_1C755BAB0;
      *(v71 + 32) = v70;
      *(v71 + 40) = v69;
      sub_1C75504FC();
      v72 = swift_task_alloc();
      v38[22] = v72;
      *v72 = v38;
      v72[1] = sub_1C73F9EB8;
      OUTLINED_FUNCTION_457();
      OUTLINED_FUNCTION_94_1();

      return static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(v73, v74, v75, v76);
    }

    if ([v36 isVideo] && (objc_msgSend(*(v26 + 56), v35[26], v37) & 1) != 0)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v35 = &selRef_clsSceneClassifications;
    }

    else
    {
    }

    ++v34;
  }

  *(v26 + 152) = a11;
  if (sub_1C6FB6304() > 0)
  {
    if (qword_1EDD09CF0 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v58 = *(v26 + 72);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v59 + 8))(v58);

  OUTLINED_FUNCTION_94_1();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C73F9EB8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73F9FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_20_20();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_27_2();
  a26 = v28;
  v31 = v28[16];

  sub_1C75504FC();
  v32 = v31;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();

  if (os_log_type_enabled(v33, v34))
  {
    a10 = v28[23];
    v35 = v28[18];
    v36 = v28[16];
    v37 = v28[17];
    v38 = v28[14];
    v39 = v28[15];
    v40 = OUTLINED_FUNCTION_20_1();
    a11 = OUTLINED_FUNCTION_49_1();
    a12 = a11;
    *v40 = 136643331;
    a13 = v38;
    a14 = v39;
    a15 = v36;
    a16 = v37;
    a17 = v35;
    sub_1C75504FC();
    v41 = v36;
    sub_1C75504FC();
    sub_1C75504FC();
    v42 = FreeformStoryShot.description.getter();
    v44 = v43;
    v45 = a15;

    v46 = sub_1C6F765A4(v42, v44, &a12);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2048;
    v47 = sub_1C6FB6304();

    *(v40 + 14) = v47;

    *(v40 + 22) = 2085;
    v48 = sub_1C75504BC();
    v50 = sub_1C6F765A4(v48, v49, &a12);

    *(v40 + 24) = v50;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "getHighlightInformation received captions for shot %{sensitive}s with %ld video assets: %{sensitive}s", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_20_4();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C73FA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = *(v22 + 192);
  *(v22 + 40) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 192);
  if (v27)
  {
    v29 = *(v22 + 96);
    v30 = *(v22 + 80);
    v31 = *(v22 + 88);

    v32 = OUTLINED_FUNCTION_66_2();
    v33(v32);
    sub_1C73FEE48(&qword_1EC217180, MEMORY[0x1E69E8550]);
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    (*(v31 + 16))(v34, v29, v30);
    swift_willThrow();
    (*(v31 + 8))(v29, v30);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v44 = *(v22 + 144);
    v45 = *(v22 + 128);

    sub_1C75504FC();
    v46 = v45;
    sub_1C75504FC();
    sub_1C75504FC();
    v47 = v28;
    v48 = sub_1C754FEEC();
    v49 = sub_1C755119C();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v22 + 192);
    if (v50)
    {
      OUTLINED_FUNCTION_11_3();
      swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_177_3();
      *v44 = 136643075;
      v52 = OUTLINED_FUNCTION_2_56();
      v55 = sub_1C6F765A4(v52, v53, v54);
      OUTLINED_FUNCTION_193_3(v55);
      swift_getErrorValue();
      v56 = sub_1C7551EAC();
      v58 = sub_1C6F765A4(v56, v57, &a10);

      *(v44 + 14) = v58;
      OUTLINED_FUNCTION_123_11();
      _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
      OUTLINED_FUNCTION_21_25();
      v64 = OUTLINED_FUNCTION_18_60();
      MEMORY[0x1CCA5F8E0](v64);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C75504DC();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_17_1();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73FA584(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  v4 = *(a1 + 168);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = *(a1 + 192);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73FA5A8()
{
  OUTLINED_FUNCTION_123();
  v1 = sub_1C73FCBC4(*(v0 + 24), *(v0 + 72));
  if (*(v1 + 16))
  {
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();
    v3 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v3, v4))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 72);

  v1 = sub_1C73FCBC4(v5, v6);
  if (*(v1 + 16))
  {
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();
    v7 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v7, v8))
    {
LABEL_6:
      OUTLINED_FUNCTION_13_3();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v9, 3.852e-34);

      OUTLINED_FUNCTION_39();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
LABEL_8:

      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_8;
  }

  v18 = *(v0 + 72);

  if (v18 != 1)
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v27, 3);
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_244_0();

    __asm { BRAA            X1, X16 }
  }

  if (*(*(v0 + 24) + 16))
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRetain_n();
    v19 = sub_1C754FEEC();
    sub_1C75511BC();
    v20 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_3();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v22, 3.852e-34);

      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v23, v24, v25, v26, v22, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v1 = *(v0 + 24);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    v32 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_13_3();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_29_34(v34, 3.852e-34);
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Found %ld safe storytelling assets ignoring utilityForMemory", v34, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v1 = *(v0 + 32);
  }

LABEL_9:
  *(v0 + 40) = sub_1C71CD85C(v1);
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_1C73FA934;
  OUTLINED_FUNCTION_244_0();

  return sub_1C73FCC74();
}

uint64_t sub_1C73FA934()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FAA3C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v4 = [v3 librarySpecificFetchOptions];
  [v4 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v5 = OUTLINED_FUNCTION_13_1();
  *(v5 + 16) = xmmword_1C7564A90;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  v8 = OUTLINED_FUNCTION_154();
  sub_1C71F8834(v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 64);
  v11 = objc_opt_self();
  v12 = v4;
  v13 = OUTLINED_FUNCTION_57_0();
  v15 = sub_1C6FCA158(v13, v14, v11);

  if (!v15)
  {
LABEL_4:
    v16 = *(*(v0 + 56) + 16);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = v10;
    *(v17 + 16) = 0;
    *(v17 + 24) = 5;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v18();
  }

  if ([v15 count] < v10)
  {

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_82_0();
  v21 = *(v0 + 56);

  return v20(v21, v15);
}

uint64_t sub_1C73FAC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v86 = a2;
  v91 = a4;
  v87 = sub_1C754D8BC();
  OUTLINED_FUNCTION_29();
  v84 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v82 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_140_1();
  v83 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  v88 = v16;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v21 = v20 - v19;
  sub_1C754F38C();
  OUTLINED_FUNCTION_29();
  v89 = v23;
  v90 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v85 = *(a1 + 192);
  v27 = *(a1 + 208);
  v28 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1C754F1CC();
  swift_storeEnumTagMultiPayload();
  v93 = v21;
  sub_1C75504FC();
  v30 = sub_1C706CC1C(sub_1C7055510, v92, v27);
  OUTLINED_FUNCTION_120_10();
  v31 = *(v30 + 2);

  if (v31 < 2)
  {
    v41 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v41);
    *(&v82 - 2) = v21;
    v42 = sub_1C707351C();
    OUTLINED_FUNCTION_120_10();
    if (v42)
    {
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v44 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v44, v45))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v46);
    *(&v82 - 2) = v47;
    if (sub_1C707351C())
    {
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
LABEL_12:
        v50 = OUTLINED_FUNCTION_127();
        *v50 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v51, v52, v53, v54, v50, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_13:

LABEL_14:
      v40 = 32;
      goto LABEL_15;
    }

    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    sub_1C706D87C(v56);
    v57 = v88;
    sub_1C73FB3F4(v88);
    v58 = OUTLINED_FUNCTION_94_3();
    sub_1C712A774(v58, v59, v60);
    v61 = v87;
    if (__swift_getEnumTagSinglePayload(v14, 1, v87) == 1)
    {
      sub_1C6FB5FC8(v14, &qword_1EC216FF8);
    }

    else
    {
      v63 = v83;
      v62 = v84;
      (*(v84 + 32))(v83, v14, v61);
      sub_1C754D8AC();
      if (v64 < 86400.0)
      {

        v65 = v82;
        (*(v62 + 16))(v82, v63, v61);
        v66 = sub_1C754FEEC();
        v67 = sub_1C75511BC();
        if (os_log_type_enabled(v66, v67))
        {
          OUTLINED_FUNCTION_13_3();
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          LODWORD(v86) = v67;
          sub_1C754D8AC();
          v70 = v69;
          v71 = *(v62 + 8);
          v71(v65, v61);
          *(v68 + 4) = v70;
          _os_log_impl(&dword_1C6F5C000, v66, v86, "Moments fits within a day (%f seconds, forcing Chronological", v68, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          v71(v63, v61);
        }

        else
        {

          v81 = *(v62 + 8);
          v81(v65, v61);
          v81(v63, v61);
        }

LABEL_28:
        sub_1C6FB5FC8(v57, &qword_1EC216FF8);
        goto LABEL_14;
      }

      (*(v62 + 8))(v63, v61);
    }

    v72 = sub_1C73FBAA0();

    if ((v72 & 1) == 0)
    {
      sub_1C6FB5FC8(v57, &qword_1EC216FF8);
      v40 = 0;
      goto LABEL_15;
    }

    v73 = sub_1C754FEEC();
    sub_1C75511BC();
    v74 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_127();
      *v76 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v77, v78, v79, v80, v76, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_28;
  }

  v32 = sub_1C754FEEC();
  sub_1C75511BC();
  v33 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_13_3();
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v31;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v36, v37, v38, v39, v35, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v40 = 1;
LABEL_15:
  *v91 = v40;
  OUTLINED_FUNCTION_58_16(a3);
  OUTLINED_FUNCTION_131_3();
  sub_1C754F1AC();
  return (*(v89 + 8))(v26, v90);
}

uint64_t sub_1C73FB3F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v83 = sub_1C754DF6C();
  OUTLINED_FUNCTION_29();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  v82 = v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  v81 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v80 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  v79 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v78 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  v91 = v16;
  v17 = sub_1C754D8BC();
  OUTLINED_FUNCTION_29();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_2();
  v94 = v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_140_1();
  v95 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_2();
  v93 = v26;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_130();
  v89 = v28;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v70 - v33;
  v35 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v36 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v37 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
  v96 = v35;
  v97 = v36;
  v98 = v37;
  v38 = v35;

  static StoryGenerationUtilities.momentUniversalDateIntervalByMomentUUID(for:storyPhotoLibraryContext:)();
  v39 = v96;

  sub_1C706EA68();
  v41 = v40;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v17);
  v71 = v34;
  sub_1C712A774(v34, v31, &qword_1EC216FF8);
  v42 = v41 + 56;
  OUTLINED_FUNCTION_181_2();
  v44 = v43 >> 6;
  v87 = (v19 + 32);
  v88 = v19 + 16;
  v76 = (v4 + 8);
  v75 = (v4 + 32);
  v45 = v31;
  v90 = v19;
  v74 = (v19 + 8);
  v92 = v41;
  result = sub_1C75504FC();
  v47 = 0;
  v77 = v17;
  v73 = v45;
  while (1)
  {
    v48 = v45;
    if (!v34)
    {
      break;
    }

    v49 = v93;
LABEL_9:
    (*(v90 + 16))(v95, *(v92 + 48) + *(v90 + 72) * (__clz(__rbit64(v34)) | (v47 << 6)), v17);
    sub_1C712A774(v48, v49, &qword_1EC216FF8);
    if (__swift_getEnumTagSinglePayload(v49, 1, v17) == 1)
    {
      sub_1C6FB5FC8(v48, &qword_1EC216FF8);
      sub_1C6FB5FC8(v49, &qword_1EC216FF8);
      v51 = v89;
      (*v87)(v89, v95, v17);
      v45 = v48;
    }

    else
    {
      (*v87)(v94, v49, v17);
      v52 = v78;
      sub_1C754D89C();
      v53 = v79;
      sub_1C754D89C();
      v86 = sub_1C73FEE48(&qword_1EDD0F9E0, MEMORY[0x1E6969530]);
      v54 = v83;
      v55 = sub_1C755060C();
      v56 = *v76;
      v85 = *v76;
      v57 = (v55 & 1) == 0;
      if (v55)
      {
        v58 = v52;
      }

      else
      {
        v58 = v53;
      }

      if (v57)
      {
        v59 = v52;
      }

      else
      {
        v59 = v53;
      }

      v56(v58, v54);
      v84 = *v75;
      v84(v91, v59, v54);
      v60 = v81;
      sub_1C754D86C();
      v61 = v82;
      sub_1C754D86C();
      v62 = sub_1C755061C();
      v63 = (v62 & 1) == 0;
      if (v62)
      {
        v64 = v60;
      }

      else
      {
        v64 = v61;
      }

      if (v63)
      {
        v65 = v60;
      }

      else
      {
        v65 = v61;
      }

      v85(v64, v54);
      v84(v80, v65, v54);
      v51 = v89;
      v17 = v77;
      sub_1C754D87C();
      v66 = *v74;
      (*v74)(v94, v17);
      v66(v95, v17);
      v45 = v73;
      sub_1C6FB5FC8(v73, &qword_1EC216FF8);
    }

    v34 &= v34 - 1;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v17);
    result = sub_1C73FEDD8(v51, v45);
  }

  v49 = v93;
  while (1)
  {
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v50 >= v44)
    {
      sub_1C6FB5FC8(v71, &qword_1EC216FF8);

      sub_1C73FEDD8(v48, v72);
    }

    v34 = *(v42 + 8 * v50);
    ++v47;
    if (v34)
    {
      v47 = v50;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73FBAA0()
{
  v0 = objc_autoreleasePoolPush();
  v1 = OUTLINED_FUNCTION_66_2();
  sub_1C73FBAF4(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

void sub_1C73FBAF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v37 = a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v5 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v6 = [v5 librarySpecificFetchOptions];
  [v6 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755D200;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1684632949;
  *(v7 + 40) = 0xE400000000000000;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v7 + 96) = v35;
  v10 = sub_1C705575C(&qword_1EDD0CEE0, &unk_1EC215BF0);
  *(v7 + 72) = a2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 104) = v10;
  *(v7 + 112) = 0x6867696C68676968;
  *(v7 + 120) = 0xE900000000000074;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = 0xD00000000000001DLL;
  *(v7 + 160) = 0x80000001C75AF7F0;
  *(v7 + 216) = v8;
  *(v7 + 224) = v9;
  *(v7 + 192) = 1701869940;
  *(v7 + 200) = 0xE400000000000000;
  v11 = MEMORY[0x1E69E7660];
  *(v7 + 256) = MEMORY[0x1E69E75F8];
  *(v7 + 264) = v11;
  *(v7 + 232) = 2;
  sub_1C75504FC();
  v12 = sub_1C755112C();
  [v6 setInternalPredicate_];

  sub_1C6F65BE8(0, &qword_1EDD0CCF0);
  v38 = v6;
  v13 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
  if ([v13 count] != *(a2 + 16))
  {
    goto LABEL_7;
  }

  v34 = v13;
  v14 = *(v37 + 8);
  v15 = *v37;

  v16 = [v15 librarySpecificFetchOptions];
  [v16 setSharingFilter_];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAA0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v9;
  *(v17 + 32) = 0x73746E656D6F6DLL;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 96) = v18;
  *(v17 + 104) = v9;
  *(v17 + 72) = 1684632949;
  *(v17 + 80) = 0xE400000000000000;
  *(v17 + 136) = v35;
  *(v17 + 144) = v10;
  *(v17 + 112) = a2;
  sub_1C75504FC();
  v19 = sub_1C755112C();
  [v16 setInternalPredicate_];

  v20 = objc_opt_self();
  v36 = v16;
  v13 = [v20 fetchHighlightsWithOptions_];
  if ([v13 count] < 1 || (v21 = objc_msgSend(v13, sel_fetchedObjectIDs)) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v22 = v21;
  sub_1C6F65BE8(0, &qword_1EDD0FAB0);
  v33 = sub_1C7550B5C();

  v23 = *(v37 + 8);
  v24 = *v37;

  v25 = [v24 librarySpecificFetchOptions];
  [v25 setSharingFilter_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C755F060;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = v9;
  *(v26 + 32) = 1701869940;
  *(v26 + 40) = 0xE400000000000000;
  *(v26 + 96) = MEMORY[0x1E69E75F8];
  v28 = MEMORY[0x1E69E7660];
  *(v26 + 72) = 2;
  *(v26 + 136) = v27;
  *(v26 + 144) = v9;
  *(v26 + 104) = v28;
  *(v26 + 112) = 0xD00000000000001DLL;
  *(v26 + 120) = 0x80000001C75AC190;
  *(v26 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215608);
  *(v26 + 184) = sub_1C705575C(&qword_1EC21AE68, &qword_1EC215608);
  *(v26 + 152) = v33;
  v29 = sub_1C755112C();
  [v25 setInternalPredicate_];

  v30 = [v20 &selRef_resultLimit + 6];
  v31 = [v30 count];

  if (v31 != 1)
  {
LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  v32 = 1;
LABEL_9:
  *a3 = v32;
}

uint64_t sub_1C73FC114()
{
  OUTLINED_FUNCTION_42();
  v1[125] = v0;
  v1[124] = v2;
  v1[123] = v3;
  v1[122] = v4;
  v1[121] = v5;
  v1[120] = v6;
  v1[119] = v7;
  v1[118] = v8;
  OUTLINED_FUNCTION_266_3(v8, v9);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73FC18C()
{
  OUTLINED_FUNCTION_123();
  type metadata accessor for TitlingAdapterPromptGenerator();
  v1 = swift_allocObject();
  v0[126] = v1;
  v2 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    swift_once();
  }

  v3 = v0[118];
  v4 = sub_1C754FF1C();
  v0[127] = v4;
  v5 = __swift_project_value_buffer(v4, qword_1EC21C228);
  v6 = *(v4 - 8);
  v0[128] = v6;
  (*(v6 + 16))(v1 + v2, v5, v4);
  OUTLINED_FUNCTION_58_16(v3);
  OUTLINED_FUNCTION_15_3();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[129] = v8;
  *v8 = v0;
  v8[1] = sub_1C73FC360;
  v9 = OUTLINED_FUNCTION_49_3();

  return v11(v9);
}

uint64_t sub_1C73FC360()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1040) = v4;
  *(v2 + 1048) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73FC464()
{
  OUTLINED_FUNCTION_115_0();
  v24 = v0;
  v2 = v0[131];
  OUTLINED_FUNCTION_148_8();
  memcpy(v0 + 78, v0 + 29, 0x50uLL);
  sub_1C7027A20((v0 + 29), (v0 + 88));
  v0[132] = sub_1C74720EC((v0 + 40), v0 + 78);
  if (v2)
  {
    v3 = v0[128];
    v4 = v0[127];
    v5 = v0[126];
    v6 = v0[124];
    memcpy(v0 + 98, v0 + 78, 0x50uLL);
    sub_1C7027A58((v0 + 98));
    swift_setDeallocating();
    (*(v3 + 8))(v5 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v4);
    swift_deallocClassInstance();

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v6);
    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    v10 = v0[122];
    memcpy(v0 + 108, v0 + 78, 0x50uLL);
    sub_1C7027A58((v0 + 108));

    if (v10)
    {
      LOBYTE(v23[0]) = 11;
      StoryGenerationDiagnosticContext.generationStage.setter(v23);
      OUTLINED_FUNCTION_10_2();
      sub_1C7161CDC(0xD000000000000019, v11);
    }

    v0[133] = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
    sub_1C75504FC();
    v12 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_20_1();
      v23[0] = v14;
      *v13 = 136315138;
      v15 = sub_1C75504BC();
      sub_1C6F765A4(v15, v16, v23);
      OUTLINED_FUNCTION_86_14();
      *(v13 + 4) = v1;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    type metadata accessor for TitleCompletionGeneration();
    v22 = swift_task_alloc();
    v0[134] = v22;
    *v22 = v0;
    v22[1] = sub_1C73FC7AC;

    return static TitleCompletionGeneration.generateTitleCompletionsGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)();
  }
}

uint64_t sub_1C73FC7AC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  v7[135] = v6;
  v7[136] = v8;
  v7[137] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C73FC8D8()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C75504FC();
  v0 = sub_1C754FEEC();
  sub_1C75511BC();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_13_3();
    v1 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_20_1();
    *v1 = 136315138;
    v2 = OUTLINED_FUNCTION_117_0();
    *(v1 + 4) = sub_1C6F765A4(v2, v3, v4);
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v5, v6, v7, v8, v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = OUTLINED_FUNCTION_18_60();
    MEMORY[0x1CCA5F8E0](v9);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v10);
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C73FCA0C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[124];
  swift_setDeallocating();
  (*(v1 + 8))(v3 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v2);
  swift_deallocClassInstance();
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v4);
  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C73FCB00()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  swift_setDeallocating();
  (*(v1 + 8))(v3 + OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger, v2);
  swift_deallocClassInstance();
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73FCBC4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
    v5 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    v6 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
    v7 = *(v4 + 8);
    v8 = v5;

    v9 = objc_autoreleasePoolPush();
    sub_1C71C70B8(v8, v7, v6, a1, &v11);
    objc_autoreleasePoolPop(v9);

    return v11;
  }

  else
  {
    sub_1C75504FC();
  }

  return a1;
}

uint64_t sub_1C73FCC74()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 504) = v2;
  *(v1 + 304) = v3;
  *(v1 + 312) = v0;
  v4 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  OUTLINED_FUNCTION_76(v4);
  *(v1 + 320) = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73FCCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = [*(*(v14 + 312) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext) photoAnalysisClient];
  *(v14 + 328) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69BE630]);
    v18 = v16;
    v78 = [v17 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v20 = *(v14 + 312);
    v19 = *(v14 + 320);
    v21 = *(v14 + 304);
    v22 = sub_1C754FF1C();
    v23 = __swift_project_value_buffer(v22, qword_1EC219F58);
    (*(*(v22 - 8) + 16))(v19, v23, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
    v25 = (v19 + *(v24 + 28));
    v26 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v27 = [v26 processName];

    v28 = sub_1C755068C();
    v30 = v29;

    *v25 = v28;
    v25[1] = v30;
    *(v19 + *(v24 + 32)) = v78;
    v31 = *(v21 + 16);
    v32 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
    *(v14 + 336) = v31;
    *(v14 + 344) = v32;
    v33 = *(v20 + v32 + 48);
    *(v14 + 352) = v33;
    if (v31 >= v33)
    {
      v69 = *(v14 + 504);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C75604F0;
      *(inited + 32) = sub_1C755068C();
      *(inited + 40) = v71;
      v72 = sub_1C755068C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v72;
      *(inited + 56) = v73;
      *(inited + 80) = sub_1C755068C();
      *(inited + 88) = v74;
      *(inited + 120) = MEMORY[0x1E69E6370];
      *(inited + 96) = v69;
      *(v14 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
      OUTLINED_FUNCTION_66_2();
      *(v14 + 368) = sub_1C75504DC();
      v57 = swift_task_alloc();
      *(v14 + 376) = v57;
      *v57 = v14;
      v58 = sub_1C73FD1BC;
    }

    else
    {
      v34 = sub_1C754FEEC();
      sub_1C75511BC();
      v35 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v37);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v38, v39, v40, v41, v42, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      *(v14 + 400) = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
      v43 = sub_1C754FEEC();
      sub_1C75511BC();
      v44 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v46);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v47, v48, v49, v50, v51, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_1C755BAB0;
      *(v52 + 32) = sub_1C755068C();
      *(v52 + 40) = v53;
      v54 = sub_1C755068C();
      *(v52 + 72) = MEMORY[0x1E69E6158];
      *(v52 + 48) = v54;
      *(v52 + 56) = v55;
      *(v14 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
      OUTLINED_FUNCTION_66_2();
      *(v14 + 416) = sub_1C75504DC();
      v56 = swift_task_alloc();
      *(v14 + 424) = v56;
      *v56 = v14;
      OUTLINED_FUNCTION_107_11();
    }

    v57[1] = v58;
    OUTLINED_FUNCTION_61_3(*(v14 + 304));
    OUTLINED_FUNCTION_17_1();

    return PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(v75, v76);
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v59, 1);
    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_17_1();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C73FD1BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FD2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = &unk_1EC25B000;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v20[48];
  if (v27)
  {
    v29 = v20[45];
    v30 = v20[42];
    v31 = OUTLINED_FUNCTION_20_1();
    v21 = OUTLINED_FUNCTION_20_1();
    a9 = v21;
    *v31 = 134218498;
    *(v31 + 4) = v30;

    OUTLINED_FUNCTION_220_3();
    *(v31 + 22) = 2080;
    sub_1C75504BC();
    OUTLINED_FUNCTION_59();

    v32 = sub_1C6F765A4(v28, v29, &a9);
    v24 = &unk_1EC25B000;

    *(v31 + 24) = v32;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v38 = v20[48];
  if (*(v38 + 16) >= v20[44])
  {
    OUTLINED_FUNCTION_155_3();
    if (v59 != v60)
    {
      v20[57] = v24[266];
      sub_1C75504FC();
      v61 = sub_1C754FEEC();
      sub_1C75511BC();
      v62 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_11_3();
        v64 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_18(v64, 3.8521e-34);

        *(v64 + 12) = 2048;
        *(v64 + 14) = v21;
        OUTLINED_FUNCTION_39();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = sub_1C755068C();
      *(inited + 40) = v82;
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
      v83 = sub_1C75504DC();
      v20[58] = v83;
      v84 = swift_task_alloc();
      v20[59] = v84;
      *(v84 + 16) = v38;
      *(v84 + 24) = v83;
      v85 = swift_task_alloc();
      v86 = OUTLINED_FUNCTION_248_4(v85);
      *v86 = v87;
      OUTLINED_FUNCTION_59_26(v86);
      OUTLINED_FUNCTION_61_3(0x4164657461727563);
      OUTLINED_FUNCTION_44();

      return sub_1C729961C(v88, v89, v90, v91, v92, v93);
    }

    else
    {
      v70 = v20[41];
      OUTLINED_FUNCTION_4_97();
      sub_1C73FED84(v71, v72);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_44();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
    }
  }

  else
  {

    v20[50] = v24[266];
    v39 = sub_1C754FEEC();
    sub_1C75511BC();
    v40 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v42);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1C755BAB0;
    *(v48 + 32) = sub_1C755068C();
    *(v48 + 40) = v49;
    v50 = sub_1C755068C();
    *(v48 + 72) = MEMORY[0x1E69E6158];
    *(v48 + 48) = v50;
    *(v48 + 56) = v51;
    v20[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    OUTLINED_FUNCTION_66_2();
    v20[52] = sub_1C75504DC();
    v52 = swift_task_alloc();
    v20[53] = v52;
    *v52 = v20;
    OUTLINED_FUNCTION_107_11();
    *(v53 + 8) = v54;
    OUTLINED_FUNCTION_61_3(v20[38]);
    OUTLINED_FUNCTION_44();

    return PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(v55, v56);
  }
}

uint64_t sub_1C73FD7B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FD8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = sub_1C754FEEC();
  v25 = sub_1C75511BC();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v20[54];
  if (v26)
  {
    v28 = v20[51];
    v29 = v20[42];
    v30 = OUTLINED_FUNCTION_20_1();
    v21 = OUTLINED_FUNCTION_20_1();
    a9 = v21;
    *v30 = 134218498;
    *(v30 + 4) = v29;

    OUTLINED_FUNCTION_220_3();
    *(v30 + 22) = 2080;
    sub_1C75504BC();
    OUTLINED_FUNCTION_59();

    v31 = sub_1C6F765A4(v27, v28, &a9);

    *(v30 + 24) = v31;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v32, v33, v34, v35, v36, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v37 = v20[54];
  OUTLINED_FUNCTION_155_3();
  if (v38 != v39)
  {
    v20[57] = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    sub_1C75511BC();
    v41 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_11_3();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_18(v43, 3.8521e-34);

      *(v43 + 12) = 2048;
      *(v43 + 14) = v21;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v62;
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    v63 = sub_1C75504DC();
    v20[58] = v63;
    v64 = swift_task_alloc();
    v20[59] = v64;
    *(v64 + 16) = v37;
    *(v64 + 24) = v63;
    v65 = swift_task_alloc();
    v66 = OUTLINED_FUNCTION_248_4(v65);
    *v66 = v67;
    OUTLINED_FUNCTION_59_26(v66);
    OUTLINED_FUNCTION_61_3(0x4164657461727563);
    OUTLINED_FUNCTION_44();

    return sub_1C729961C(v68, v69, v70, v71, v72, v73);
  }

  else
  {
    v49 = v20[41];
    OUTLINED_FUNCTION_4_97();
    sub_1C73FED84(v50, v51);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_44();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1C73FDC40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 488) = v5;
  *(v3 + 496) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73FDD48()
{
  OUTLINED_FUNCTION_75_1();

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[40];
  v8 = v0[41];
  if (v4)
  {
    OUTLINED_FUNCTION_11_3();
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v6 + 16);

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v9 + 14) = v11;

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v12, v13, v14, v15, v9, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v16 = v1;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v16 = v8;
    v8 = v1;
  }

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v7, v17);

  v18 = OUTLINED_FUNCTION_0_89();

  return v19(v18);
}

uint64_t sub_1C73FDEC8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73FDF5C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 320);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C73FDFCC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 320);

  OUTLINED_FUNCTION_4_97();
  sub_1C73FED84(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C73FE03C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B958);
  v3[4] = sub_1C73FEBC8();
  result = [a1 fetchedObjects];
  if (!result)
  {
    v10 = 0;
LABEL_17:
    *v3 = v10;
    return result;
  }

  v5 = result;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  OUTLINED_FUNCTION_63();
  v6 = sub_1C7550B5C();

  v7 = sub_1C6FB6304();
  if (!v7)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v8 = v7;
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1C716C9F0(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v22 = v3;
    v9 = 0;
    v10 = v23;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = OUTLINED_FUNCTION_154();
        v12 = MEMORY[0x1CCA5DDD0](v11);
      }

      else
      {
        v12 = *(v6 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v13 uuid];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1C755068C();
        v18 = v17;
      }

      else
      {

        v16 = 0;
        v18 = 0;
      }

      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C716C9F0(v19 > 1, v20 + 1, 1);
      }

      ++v9;
      *(v23 + 16) = v20 + 1;
      v21 = v23 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v8 != v9);

    v3 = v22;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t FreeformStoryGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting);
  return v0;
}

uint64_t FreeformStoryGenerator.__deallocating_deinit()
{
  FreeformStoryGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C73FE318(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C754DDCC();
  [a3 setPhotosGraphData_];
}

uint64_t sub_1C73FE370(const void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v14 = *(a7 - 8);
  v25 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a4, a8);
  (*(v14 + 16))(v16, a5, a7);
  v23 = sub_1C73FE574(v26, v27, v28, v21, v16, v22, a7, a8, v25, a10);
  (*(v14 + 8))(a5, a7);
  (*(v18 + 8))(a4, a8);
  return v23;
}

uint64_t sub_1C73FE574(const void *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a8;
  v33 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a4, a8);
  v29 = a7;
  v30 = a9;
  v19 = __swift_allocate_boxed_opaque_existential_0(&v28);
  (*(*(a7 - 8) + 32))(v19, a5, a7);
  memcpy(__dst, a1, sizeof(__dst));
  v20 = *a2;
  v21 = *(a2 + 4);
  v22 = a2[2];
  v23 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  if (qword_1EDD09CF0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C754FF1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDD28B68);
  (*(*(v24 - 8) + 16))(a6 + v23, v25, v24);
  memcpy((a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration), __dst, 0x4CuLL);
  v26 = a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  *v26 = v20;
  *(v26 + 8) = v21;
  *(v26 + 16) = v22;
  sub_1C6F699F8(&v31, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController);
  sub_1C6F699F8(a3, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher);
  sub_1C6F699F8(&v28, a6 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting);
  return a6;
}

uint64_t sub_1C73FE764(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73FE834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C73FE894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1C75504FC();
    v5 = a4;
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryGenerator()
{
  result = qword_1EC21B948;
  if (!qword_1EC21B948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73FE948()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence22FreeformStoryGeneratorC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 0xB)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1C73FEA40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 25))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73FEA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C73FEAC8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 12;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C73FEAF4()
{
  OUTLINED_FUNCTION_123();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_244_0();

  return sub_1C73F50F0(v3, v4);
}

uint64_t sub_1C73FEBA4(uint64_t result)
{
  v1 = *(result + 128) & 1;
  *(result + 72) &= 0x30101uLL;
  *(result + 128) = v1;
  return result;
}

unint64_t sub_1C73FEBC8()
{
  result = qword_1EDD06A80;
  if (!qword_1EDD06A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B958);
    sub_1C73FEC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06A80);
  }

  return result;
}

unint64_t sub_1C73FEC4C()
{
  result = qword_1EDD06A88;
  if (!qword_1EDD06A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215170);
    sub_1C70950A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06A88);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C73FED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73FED84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73FEDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73FEE48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_40()
{
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2552);

  return sub_1C73FE764(v2, v3, type metadata accessor for FreeformStory);
}

uint64_t OUTLINED_FUNCTION_32_37()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_53_34()
{
  v3 = v0[1];
  *(v1 + 2376) = *v0;
  *(v1 + 2392) = v3;
  v4 = v0[3];
  *(v1 + 2408) = v0[2];
  *(v1 + 2424) = v4;

  return sub_1C6FDE928(v1 + 2376, v1 + 2440);
}

unint64_t OUTLINED_FUNCTION_56_28@<X0>(char a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t OUTLINED_FUNCTION_87_20@<X0>(char a1@<W8>)
{
  v3 = v1 + 9;
  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}