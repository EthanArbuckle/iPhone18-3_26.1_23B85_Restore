void sub_26B68FCDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v133 = a6;
  v134 = a7;
  v137 = a5;
  LODWORD(v135) = a4;
  v131 = a3;
  v10 = sub_26B6E9104();
  v11 = OUTLINED_FUNCTION_4(v10);
  v125 = v12;
  v126 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v124 = v16 - v15;
  OUTLINED_FUNCTION_109_0();
  v138 = sub_26B6E9A64();
  v17 = OUTLINED_FUNCTION_4(v138);
  v123 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_0();
  v136 = v21 - v22;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v23);
  v132 = v117 - v24;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A478, &qword_26B6F3398) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_71();
  v127 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A480, &qword_26B6F33A0);
  v29 = OUTLINED_FUNCTION_4(v28);
  v129 = v30;
  v130 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_71();
  v128 = v34;
  OUTLINED_FUNCTION_109_0();
  v35 = sub_26B6E93B4();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30_0();
  v43 = v41 - v42;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = v117 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v117 - v48;
  v139 = a1;
  v140 = a2;
  OUTLINED_FUNCTION_15_5();
  v141 = v50;
  v142 = v51;
  sub_26B641414();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 == -1)
    {
LABEL_3:
      v52 = sub_26B6E95C4();
      __swift_project_value_buffer(v52, qword_2810D4308);
      v53 = sub_26B6E95A4();
      v54 = sub_26B6E9E74();
      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_28_5();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_33_5(&dword_26B630000, v55, v56, "canonicalId cannot contain parental traversal string patterns");
        OUTLINED_FUNCTION_14_8();
        MEMORY[0x26D67E950]();
      }

      return;
    }

LABEL_53:
    OUTLINED_FUNCTION_0_10();
    swift_once();
    goto LABEL_3;
  }

  v121 = v7;
  OUTLINED_FUNCTION_30_4();
  sub_26B6E9344();
  OUTLINED_FUNCTION_4_11();
  sub_26B6E9354();
  v119 = v38;
  v59 = *(v38 + 8);
  v57 = v38 + 8;
  v58 = v59;
  v59(v47, v35);
  v60 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v61 = sub_26B6E99F4();

  v62 = [v60 fileExistsAtPath_];

  if (!v62)
  {
    v133(MEMORY[0x277D84F90], 0);
    v58(v49, v35);
    return;
  }

  v117[1] = v58;
  v117[0] = v57;
  v120 = v49;
  v118 = v35;
  v63 = MEMORY[0x277D84F90];
  v64 = sub_26B6E9054();
  OUTLINED_FUNCTION_11_9(v64);
  swift_allocObject();
  v122 = sub_26B6E9044();
  if ((v135 & 1) == 0)
  {
    (*(v119 + 16))(v43, v120, v118);
    v65 = *(v121 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
    v66 = type metadata accessor for ReverseChronologicalStreamReader();
    OUTLINED_FUNCTION_11_9(v66);
    swift_allocObject();
    v82 = sub_26B644504(v43, 4096, v65);
    v83 = swift_allocObject();
    *(v83 + 16) = v63;
    v139 = sub_26B643F9C();
    sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
    v84 = sub_26B6E9EB4();
    v141 = v84;
    v85 = sub_26B6E9E94();
    v86 = v127;
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A488, &qword_26B6F33A8);
    OUTLINED_FUNCTION_6_10(&qword_28040A490);
    sub_26B6936A8();
    v87 = v128;
    sub_26B6E96C4();
    sub_26B650BBC(v86, &qword_28040A478, &qword_26B6F3398);

    v88 = swift_allocObject();
    v89 = v134;
    v88[2] = v133;
    v88[3] = v89;
    v90 = v137;
    v88[4] = v83;
    v88[5] = v90;
    OUTLINED_FUNCTION_20_5();
    v91 = swift_allocObject();
    v91[2] = v122;
    v91[3] = v90;
    v92 = v131;
    v91[4] = v83;
    v91[5] = v92;
    v91[6] = v82;
    OUTLINED_FUNCTION_9_7(&qword_28040A4A0, &qword_28040A480, &qword_26B6F33A0);
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v93 = v130;
    sub_26B6E96A4();

    (*(v129 + 8))(v87, v93);
    swift_beginAccess();
    sub_26B6E95D4();
    swift_endAccess();

    sub_26B64481C();

    v94 = OUTLINED_FUNCTION_10_9();
    v95(v94);

    return;
  }

  sub_26B6E9384();
  sub_26B6E9A54();
  v67 = sub_26B6E99E4();
  v69 = v68;

  v139 = v67;
  v140 = v69;
  v70 = v124;
  sub_26B6E90F4();
  v71 = sub_26B6EA014();
  (*(v125 + 8))(v70, v126);

  v72 = *(v71 + 16);
  if (!v72)
  {
    v126 = 0;

    v81 = MEMORY[0x277D84F90];
LABEL_17:
    v139 = v63;
    v96 = sub_26B6542CC(v81);
    v130 = v81 & 0xC000000000000001;
    v131 = v96;
    v127 = v81;
    v128 = v81 + 32;
    v129 = v81 & 0xFFFFFFFFFFFFFF8;
    v135 = v137 + 32;
    swift_bridgeObjectRetain_n();
    v97 = 0;
    while (1)
    {
      if (v97 == v131)
      {

        swift_bridgeObjectRelease_n();
        v133(v139, 0);

        v115 = OUTLINED_FUNCTION_10_9();
        v116(v115);
        return;
      }

      if (v130)
      {
        v98 = MEMORY[0x26D67DB30](v97, v127);
      }

      else
      {
        if (v97 >= *(v129 + 16))
        {
          goto LABEL_52;
        }

        v98 = *(v128 + 8 * v97);
      }

      if (__OFADD__(v97++, 1))
      {
        break;
      }

      v100 = OUTLINED_FUNCTION_13_8(v98, OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription);
      if (v101)
      {
        v132 = v100;
        v102 = *&v100[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
        v103 = *(v137 + 16);
        v138 = (v102 + 32);

        v104 = 0;
        v136 = v103;
LABEL_25:
        if (v104 == v103)
        {

          sub_26B6EA1F4();
          v114 = *(v139 + 16);
          sub_26B6EA224();
          sub_26B6EA234();
          sub_26B6EA204();
        }

        else
        {
          v105 = *(v135 + v104++);
          v106 = *(v102 + 16);
          v107 = v138;
          while (v106)
          {
            v108 = 0xE600000000000000;
            v109 = 0x737472656C41;
            switch(*v107)
            {
              case 1:
                v108 = 0xE300000000000000;
                v109 = 7105601;
                break;
              case 2:
                v109 = OUTLINED_FUNCTION_12_8();
                break;
              case 3:
                v109 = OUTLINED_FUNCTION_19_4();
                break;
              case 4:
                v109 = OUTLINED_FUNCTION_18_8();
                break;
              default:
                break;
            }

            v110 = 0xE600000000000000;
            v111 = 0x737472656C41;
            switch(v105)
            {
              case 1:
                v110 = 0xE300000000000000;
                v111 = 7105601;
                break;
              case 2:
                OUTLINED_FUNCTION_16_7();
                break;
              case 3:
                OUTLINED_FUNCTION_22_7();
                break;
              case 4:
                OUTLINED_FUNCTION_23_5();
                break;
              default:
                break;
            }

            if (v109 == v111 && v108 == v110)
            {

LABEL_45:
              v103 = v136;
              goto LABEL_25;
            }

            v113 = sub_26B6EA5D4();

            ++v107;
            --v106;
            if (v113)
            {
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v139 = v63;
  sub_26B6EA214();
  v135 = type metadata accessor for SportingEventPlay();
  v73 = 0;
  v74 = (v123 + 8);
  v75 = (v71 + 40);
  while (v73 < *(v71 + 16))
  {
    v76 = v72;
    v77 = *(v75 - 1);
    v78 = *v75;

    v79 = v136;
    sub_26B6E9A54();
    sub_26B6E9A34();
    (*v74)(v79, v138);
    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay);
    sub_26B6E9024();
    ++v73;
    OUTLINED_FUNCTION_35_5();

    sub_26B6EA1F4();
    v80 = *(v139 + 16);
    sub_26B6EA224();
    sub_26B6EA234();
    sub_26B6EA204();
    v75 += 2;
    v72 = v76;
    if (v76 == v73)
    {
      v126 = 0;

      v81 = v139;
      v63 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_26B6909DC(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  v14 = MEMORY[0x277D84F90];
  v8 = sub_26B6542CC(v7);
  swift_bridgeObjectRetain_n();

  while (1)
  {
    if (!v8)
    {

      swift_bridgeObjectRelease_n();
      a2(v14, 0);

      return;
    }

    if (__OFSUB__(v8--, 1))
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D67DB30](v8, v7);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v10 = *(v7 + 32 + 8 * v8);
    }

    v11 = v10;
    if (sub_26B6C2CD0(v10, a5))
    {
      sub_26B6EA1F4();
      v12 = *(v14 + 16);
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_26B690B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v10 = sub_26B6E9A64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  sub_26B6E9A54();
  v17 = sub_26B6E9A34();
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  if (v19 >> 60 != 15)
  {
    type metadata accessor for SportingEventPlay();
    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay);
    sub_26B6E9024();
    v35 = a4;
    v36 = v17;
    v37 = a6;
    v34 = v42;
    v20 = *&v42[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
    v21 = *(v41 + 16);
    v38 = (v20 + 32);
    v39 = v41 + 32;
    v41 = v20;

    v22 = 0;
    v40 = a5;
LABEL_3:
    if (v22 == v21)
    {

      a4 = v35;
      v33 = swift_beginAccess();
      MEMORY[0x26D67D5D0](v33);
      sub_26B6CB2CC(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_26B6E9CB4();
      swift_endAccess();
      sub_26B645C4C(v36, v19);
    }

    else
    {
      v23 = v38;
      v24 = *(v39 + v22++);
      v25 = *(v41 + 16);
      while (v25)
      {
        v26 = 0xE600000000000000;
        v27 = 0x737472656C41;
        switch(*v23)
        {
          case 1:
            v26 = 0xE300000000000000;
            v27 = 7105601;
            break;
          case 2:
            v27 = 0x6867696C68676948;
            v26 = 0xE900000000000074;
            break;
          case 3:
            v26 = 0xE700000000000000;
            v27 = 0x79616C5079654BLL;
            break;
          case 4:
            v26 = 0xE700000000000000;
            v27 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        v28 = 0xE600000000000000;
        v29 = 0x737472656C41;
        switch(v24)
        {
          case 1:
            v28 = 0xE300000000000000;
            v29 = 7105601;
            break;
          case 2:
            v29 = 0x6867696C68676948;
            v28 = 0xE900000000000074;
            break;
          case 3:
            v28 = 0xE700000000000000;
            v29 = 0x79616C5079654BLL;
            break;
          case 4:
            v28 = 0xE700000000000000;
            v29 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        if (v27 == v29 && v26 == v28)
        {

LABEL_23:
          a5 = v40;
          goto LABEL_3;
        }

        v31 = sub_26B6EA5D4();

        ++v23;
        --v25;
        if (v31)
        {
          goto LABEL_23;
        }
      }

      sub_26B645C4C(v36, v19);

      a5 = v40;
      a4 = v35;
    }
  }

  swift_beginAccess();
  if (sub_26B6B8B04(*(a4 + 16)) == a5)
  {
    return sub_26B6449D0();
  }

  else
  {
    return sub_26B64481C();
  }
}

void sub_26B690F78()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26B6E93B4();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  v31[2] = v5;
  v31[3] = v3;
  OUTLINED_FUNCTION_15_5();
  v31[0] = v18;
  v31[1] = v19;
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v20 = sub_26B6E95C4();
    __swift_project_value_buffer(v20, qword_2810D4308);
    v21 = sub_26B6E95A4();
    v22 = sub_26B6E9E74();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_34_3(&dword_26B630000, v23, v24, "canonicalId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v25 = *(v9 + 8);
    v25(v14, v6);
    v26 = [objc_opt_self() defaultManager];
    sub_26B6E9384();
    v27 = sub_26B6E99F4();

    v28 = [v26 fileExistsAtPath_];

    if (v28)
    {
      v30 = *(v1 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
      MEMORY[0x28223BE20](v29);
      v31[-2] = v26;
      v31[-1] = v17;
      sub_26B6E9EC4();
    }

    v25(v17, v6);
  }

  OUTLINED_FUNCTION_37();
}

id sub_26B691230(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B6E9324();
  v6[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v6];

  if (a1)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_26B6E92B4();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PlaysStore.deinit()
{
  v1 = OBJC_IVAR____TtC9SportsKit10PlaysStore_storeUrl;
  v2 = sub_26B6E93B4();
  OUTLINED_FUNCTION_16(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit10PlaysStore_cancellables);

  return v0;
}

uint64_t PlaysStore.__deallocating_deinit()
{
  PlaysStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B6913C4()
{
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  sub_26B6E9344();
  OUTLINED_FUNCTION_4_11();
  sub_26B6E9354();
  return (*(v4 + 8))(v0, v1);
}

void sub_26B6914AC()
{
  OUTLINED_FUNCTION_38();
  v2 = sub_26B6E9104();
  v3 = OUTLINED_FUNCTION_4(v2);
  v46 = v4;
  v47 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v50 = sub_26B6E9A64();
  v10 = OUTLINED_FUNCTION_4(v50);
  v45 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_0();
  v48 = v14 - v15;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v16);
  v17 = sub_26B6E93B4();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_15_5();
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    sub_26B693B54();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
LABEL_7:
    OUTLINED_FUNCTION_37();
    return;
  }

  sub_26B6913C4();
  v22 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v23 = sub_26B6E99F4();

  v24 = [v22 fileExistsAtPath_];

  if (!v24)
  {
    sub_26B693B54();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_54_0();
    v27(v1, v17);
    goto LABEL_7;
  }

  sub_26B6E9384();
  sub_26B6E9A54();
  sub_26B6E99E4();
  if (v0)
  {
    OUTLINED_FUNCTION_54_0();
    v25(v1, v17);

    goto LABEL_7;
  }

  v44 = v1;

  sub_26B6E90F4();
  v28 = sub_26B6EA014();
  (*(v46 + 8))(v9, v47);

  v29 = sub_26B6E9054();
  OUTLINED_FUNCTION_11_9(v29);
  swift_allocObject();
  sub_26B6E9044();
  v30 = *(v28 + 16);
  if (!v30)
  {

    OUTLINED_FUNCTION_54_0();
    v42(v1, v17);
    goto LABEL_7;
  }

  v43 = v17;
  v49 = MEMORY[0x277D84F90];
  sub_26B6EA214();
  v31 = 0;
  type metadata accessor for SportingEventPlay();
  v32 = (v28 + 40);
  while (v31 < *(v28 + 16))
  {
    v33 = v30;
    v34 = *(v32 - 1);
    v35 = *v32;

    sub_26B6E9A54();
    v36 = sub_26B6E9A34();
    v38 = v37;
    (*(v45 + 8))(v48, v50);
    if (v38 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    if (v38 >> 60 == 15)
    {
      v38 = 0xC000000000000000;
    }

    sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay);
    sub_26B6E9024();
    ++v31;
    sub_26B645A94(v39, v38);

    sub_26B6EA1F4();
    v40 = *(v49 + 16);
    sub_26B6EA224();
    sub_26B6EA234();
    sub_26B6EA204();
    v32 += 2;
    v30 = v33;
    if (v33 == v31)
    {
      OUTLINED_FUNCTION_54_0();
      v41(v44, v43);

      goto LABEL_7;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaysStore.refreshAllPlays(for:with:)(Swift::String a1, Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_38();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26B6E93B4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v49 = v9;
  v50 = v7;
  OUTLINED_FUNCTION_15_5();
  v48[0] = v16;
  v48[1] = v17;
  sub_26B641414();
  OUTLINED_FUNCTION_17_5();
  if (sub_26B6EA074())
  {
    goto LABEL_57;
  }

  v45 = v10;
  v47 = v3;
  v18 = sub_26B6542CC(v5);
  if (!v18)
  {
    goto LABEL_57;
  }

  v19 = v18;
  sub_26B6913C4();
  v20 = [objc_opt_self() defaultManager];
  sub_26B6E9384();
  v21 = sub_26B6E99F4();

  v22 = [v20 fileExistsAtPath_];

  if (!v22)
  {
    sub_26B68E00C();
    (*(v13 + 8))(v47, v45);
    goto LABEL_57;
  }

  v49 = v5;
  v48[0] = MEMORY[0x277D84F90];

  for (i = 0; v19 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D67DB30](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v24 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:

      __break(1u);
      return;
    }

    if (*(v24 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8) == 1)
    {
    }

    else
    {
      sub_26B6EA1F4();
      v25 = *(v48[0] + 16);
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }
  }

  v48[0] = sub_26B69373C(v26);
  sub_26B6929F4(v48);
  i = v2;
  if (v2)
  {
    goto LABEL_67;
  }

  v27 = sub_26B68DC8C(v48[0]);

  if (v27)
  {
    v46 = *&v27[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    v28 = v27[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8];
  }

  else
  {
    v46 = 0;
    v28 = 1;
  }

  v51 = v28;
  sub_26B692038(v27, 0xD000000000000028, 0x800000026B6FC330);
  sub_26B6914AC();
  i = v29;
  v44 = v27;
  v48[0] = MEMORY[0x277D84F90];
  v30 = sub_26B6542CC(v29);
  for (j = 0; v30 != j; ++j)
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D67DB30](j, i);
    }

    else
    {
      if (j >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v32 = *(i + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_60;
    }

    if (*(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8) == 1)
    {
    }

    else
    {
      sub_26B6EA1F4();
      v33 = *(v48[0] + 16);
      sub_26B6EA224();
      OUTLINED_FUNCTION_30_4();
      sub_26B6EA234();
      sub_26B6EA204();
    }
  }

  v34 = v48[0];
  v48[0] = MEMORY[0x277D84F90];
  v35 = sub_26B6542CC(v34);
  for (i = 0; v35 != i; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x26D67DB30](i, v34);
    }

    else
    {
      if (i >= *(v34 + 16))
      {
        goto LABEL_63;
      }

      v36 = *(v34 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_62;
    }

    if (v36[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
    {
      goto LABEL_66;
    }

    v37 = *&v36[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    if (v51)
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v46 < v37)
    {
LABEL_40:
      sub_26B6EA1F4();
      v38 = *(v48[0] + 16);
      sub_26B6EA224();
      OUTLINED_FUNCTION_30_4();
      sub_26B6EA234();
      sub_26B6EA204();
      continue;
    }
  }

  i = v48[0];
  v39 = sub_26B6542CC(v48[0]);
  if (v39)
  {
    v40 = v39;
    for (k = 0; v40 != k; ++k)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D67DB30](k, i);
      }

      else
      {
        if (k >= *(i + 16))
        {
          goto LABEL_65;
        }

        v42 = *(i + 8 * k + 32);
      }

      v43 = v42;
      if (__OFADD__(k, 1))
      {
        goto LABEL_64;
      }

      sub_26B692038(v42, 0x64656E616870724FuLL, 0xED000079616C5020);
    }

    sub_26B6927B0(i);
  }

  else
  {
  }

  sub_26B68E00C();
  (*(v13 + 8))(v47, v45);

LABEL_57:
  OUTLINED_FUNCTION_37();
}

void sub_26B692038(char *a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  v6 = *&a1[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock];
  if (!v6 || (v7 = (v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes), *(v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes + 8) == 1) || (v8 = (v6 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds), *(v8 + 8) == 1))
  {
    v9 = a1;
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v54 = *v8;
    v71 = *v7;
    v55 = a1;
    v56 = MEMORY[0x277D83B88];
    v69 = sub_26B6EA564();
    v70 = v57;
    MEMORY[0x26D67D4D0](58, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4B8, &qword_26B6F33D0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_26B6EBA50;
    v59 = MEMORY[0x277D83C10];
    *(v58 + 56) = v56;
    *(v58 + 64) = v59;
    *(v58 + 32) = v54;
    v60 = sub_26B6E9A44();
    MEMORY[0x26D67D4D0](v60);

    v10 = v69;
    v11 = v70;
  }

  v12 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];
  v13 = sub_26B6542CC(v12);
  v63 = a2;
  v64 = v11;
  v65 = v10;
  if (!v13)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B689EC8(&qword_2810CC2A8, &qword_280409BE8, &qword_26B6F00D0);
    v33 = sub_26B6E9994();
    v35 = v34;

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_26B6EA134();
    MEMORY[0x26D67D4D0](0x5B79616C50, 0xE500000000000000);
    v36 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8];
    if (v36)
    {
      v37 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id];
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8];
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    MEMORY[0x26D67D4D0](v37, v38);

    MEMORY[0x26D67D4D0](0x706D617473202C5DLL, 0xEA0000000000203ALL);
    if (v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
    {
      v39 = -1;
    }

    else
    {
      v39 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
    }

    v71 = v39;
    v40 = sub_26B6EA564();
    MEMORY[0x26D67D4D0](v40);

    MEMORY[0x26D67D4D0](0x632079616C70202CLL, 0xEE00203A6B636F6CLL);
    MEMORY[0x26D67D4D0](v65, v64);

    MEMORY[0x26D67D4D0](0x732079616C70202CLL, 0xEE00203A65726F63);
    MEMORY[0x26D67D4D0](v33, v35);

    MEMORY[0x26D67D4D0](2108704, 0xE300000000000000);
    v41 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription];
    v42 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription + 8];

    MEMORY[0x26D67D4D0](v41, v42);

    MEMORY[0x26D67D4D0](0x6C2079616C70202CLL, 0xEF203A736C657665);
    v43 = *&v5[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];

    v45 = MEMORY[0x26D67D610](v44, &type metadata for SportingEventPlayLevel);
    v47 = v46;

    MEMORY[0x26D67D4D0](v45, v47);

    v19 = v69;
    a2 = v70;
    if (qword_2810CE9F0 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  v14 = v13;
  v61 = a3;
  v62 = v5;
  v71 = MEMORY[0x277D84F90];
  v15 = v13 & ~(v13 >> 63);

  sub_26B63B9EC(0, v15, 0);
  v16 = v71;
  v17 = sub_26B6542CC(v12);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v18 = 0;
  v67 = v12 & 0xC000000000000001;
  v68 = v12;
  v66 = v12 & 0xFFFFFFFFFFFFFF8;
  v19 = v17 + 3;
  a3 = v14;
  v20 = v17;
  while ((v17 ^ v18) != 0x8000000000000000)
  {
    v21 = v19 - 4;
    if (v67)
    {
      v22 = MEMORY[0x26D67DB30](v21, v68);
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v21 >= *(v66 + 16))
      {
        goto LABEL_47;
      }

      v22 = *(v68 + 8 * v19);
    }

    v23 = v22;
    v69 = 0;
    v70 = 0xE000000000000000;
    v24 = *(*&v22[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v26 = *(*&v22[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
      }

      if (!sub_26B6EA324())
      {
        goto LABEL_23;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {

      v31 = MEMORY[0x26D67DB30](0, v24);

      v32 = *(v31 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v25 = *(*(v24 + 32) + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value);
    }

LABEL_23:
    v27 = sub_26B6EA564();
    MEMORY[0x26D67D4D0](v27);

    v28 = v69;
    v5 = v70;
    v71 = v16;
    a2 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (a2 >= v29 >> 1)
    {
      sub_26B63B9EC(v29 > 1, a2 + 1, 1);
      v16 = v71;
    }

    ++v18;
    *(v16 + 16) = a2 + 1;
    v30 = v16 + 16 * a2;
    *(v30 + 32) = v28;
    *(v30 + 40) = v5;
    --v19;
    v17 = v20;
    if (a3 == v18)
    {

      a3 = v61;
      v5 = v62;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_38:
  v48 = sub_26B6E95C4();
  __swift_project_value_buffer(v48, qword_2810D4308);

  v49 = sub_26B6E95A4();
  v50 = sub_26B6E9E64();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v69 = v52;
    *v51 = 136315394;
    *(v51 + 4) = sub_26B6D22D8(v63, a3, &v69);
    *(v51 + 12) = 2080;
    v53 = sub_26B6D22D8(v19, a2, &v69);

    *(v51 + 14) = v53;
    _os_log_impl(&dword_26B630000, v49, v50, "%s: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D67E950](v52, -1, -1);
    MEMORY[0x26D67E950](v51, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26B6927B0(unint64_t a1)
{
  v3 = sub_26B6B8B04(a1);
  v4 = sub_26B6B8B04(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26B693484(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B6939CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26B69285C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B693524(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26B692974(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B692998(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SportingEventPlay();
      result = sub_26B6E9C94();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26B6929F4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B63F508(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  result = sub_26B6EA554();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      while (2)
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            return result;
          }

          v16 = *v15;
          v17 = *v15 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v17 + 8))
          {
            goto LABEL_16;
          }

          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= *v17)
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
        if (v11 != v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = (v4 >> 1);
    v8 = sub_26B692998(v4 >> 1);
    v19[0] = v9;
    v19[1] = v7;
    sub_26B692B3C(v19, v21, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_26B6EA204();
}

void sub_26B692B3C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v105 = MEMORY[0x277D84F90];
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v8 = *a3;
        v9 = *(*a3 + 8 * v7) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v9 + 8))
        {
          goto LABEL_163;
        }

        v10 = *(v8 + 8 * v5) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v10 + 8))
        {
          goto LABEL_164;
        }

        v11 = *v9;
        v12 = *v10;
        v13 = v8 + 8 * v5;
        v14 = 8 * v5;
        v15 = (v13 + 16);
        v16 = v5 + 2;
        while (1)
        {
          v17 = v16;
          if (v7 + 1 >= v4)
          {
            break;
          }

          v18 = *v15 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v18 + 8))
          {
            goto LABEL_159;
          }

          v19 = *(v15 - 1) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v19 + 8))
          {
            goto LABEL_160;
          }

          v20 = (v11 < v12) ^ (*v18 >= *v19);
          ++v15;
          ++v7;
          v16 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v7 = v4;
LABEL_13:
        if (v11 < v12)
        {
          if (v7 < v5)
          {
            goto LABEL_152;
          }

          if (v5 < v7)
          {
            if (v4 >= v17)
            {
              v4 = v17;
            }

            v21 = 8 * v4 - 8;
            v22 = v7;
            v23 = v5;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_161;
                }

                v25 = *(v24 + v14);
                *(v24 + v14) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 8;
              v14 += 8;
            }

            while (v23 < v22);
            v4 = a3[1];
          }
        }
      }

      if (v7 < v4)
      {
        if (__OFSUB__(v7, v5))
        {
          goto LABEL_147;
        }

        if (v7 - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_153;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
            goto LABEL_154;
          }

          if (v7 != v4)
          {
            v26 = *a3;
            v27 = *a3 + 8 * v7 - 8;
            v28 = v5 - v7;
            do
            {
              v29 = *(v26 + 8 * v7);
              v30 = v28;
              v31 = v27;
              do
              {
                if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  goto LABEL_155;
                }

                v32 = *v31;
                v33 = *v31 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
                if (*(v33 + 8))
                {
                  goto LABEL_156;
                }

                if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= *v33)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_157;
                }

                *v31 = v29;
                v31[1] = v32;
                --v31;
                v82 = __CFADD__(v30++, 1);
              }

              while (!v82);
              ++v7;
              v27 += 8;
              --v28;
            }

            while (v7 != v4);
            v7 = v4;
          }
        }
      }

      if (v7 < v5)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B63A97C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v94;
      }

      v35 = *(v6 + 16);
      v34 = *(v6 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_26B63A97C(v34 > 1, v35 + 1, 1, v6);
        v6 = v95;
      }

      *(v6 + 16) = v36;
      v37 = v6 + 32;
      v38 = (v6 + 32 + 16 * v35);
      *v38 = v5;
      v38[1] = v7;
      v98 = v7;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_162;
      }

      if (v35)
      {
        break;
      }

LABEL_127:
      v4 = a3[1];
      v5 = v98;
      if (v98 >= v4)
      {
        v105 = v6;
        goto LABEL_129;
      }
    }

    v99 = v6 + 32;
    v100 = v6;
    while (1)
    {
      v40 = v36 - 1;
      v41 = (v37 + 16 * (v36 - 1));
      v42 = (v6 + 16 * v36);
      if (v36 >= 4)
      {
        break;
      }

      if (v36 == 3)
      {
        v43 = *(v6 + 32);
        v44 = *(v6 + 40);
        v53 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        v46 = v53;
LABEL_63:
        if (v46)
        {
          goto LABEL_137;
        }

        v58 = *v42;
        v57 = v42[1];
        v59 = __OFSUB__(v57, v58);
        v60 = v57 - v58;
        v61 = v59;
        if (v59)
        {
          goto LABEL_140;
        }

        v62 = v41[1];
        v63 = v62 - *v41;
        if (__OFSUB__(v62, *v41))
        {
          goto LABEL_143;
        }

        if (__OFADD__(v60, v63))
        {
          goto LABEL_144;
        }

        if (v60 + v63 >= v45)
        {
          if (v45 < v63)
          {
            v40 = v36 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_77;
      }

      v64 = *v42;
      v65 = v42[1];
      v53 = __OFSUB__(v65, v64);
      v60 = v65 - v64;
      v61 = v53;
LABEL_77:
      if (v61)
      {
        goto LABEL_139;
      }

      v67 = *v41;
      v66 = v41[1];
      v53 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v53)
      {
        goto LABEL_142;
      }

      if (v68 < v60)
      {
        goto LABEL_127;
      }

LABEL_84:
      if (v40 - 1 >= v36)
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        return;
      }

      v72 = *a3;
      if (!*a3)
      {
        goto LABEL_158;
      }

      v103 = (v37 + 16 * (v40 - 1));
      v104 = v40;
      v73 = *v103;
      v102 = v37 + 16 * v40;
      v74 = *(v102 + 8);
      v75 = (v72 + 8 * *v103);
      v76 = (v72 + 8 * *v102);
      v77 = (v72 + 8 * v74);
      v78 = 8 * *v102 - 8 * *v103;
      v79 = 8 * v74 - 8 * *v102;
      if (v78 >> 3 < v79 >> 3)
      {
        sub_26B63E4F8((v72 + 8 * v73), v78 >> 3, v39);
        v80 = &v39[v78];
        v81 = v39;
        while (1)
        {
          v82 = v81 >= v80 || v76 >= v77;
          if (v82)
          {
            v76 = v75;
            goto LABEL_117;
          }

          v83 = *v76;
          v84 = *v76 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v84 + 8))
          {
            goto LABEL_148;
          }

          v85 = *v81 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
          if (*(v85 + 8))
          {
            goto LABEL_150;
          }

          if (*v84 >= *v85)
          {
            break;
          }

          v86 = v75 == v76;
          v76 += 8;
          if (!v86)
          {
            goto LABEL_99;
          }

LABEL_100:
          v75 += 8;
        }

        v83 = *v81;
        v86 = v75 == v81;
        v81 += 8;
        if (v86)
        {
          goto LABEL_100;
        }

LABEL_99:
        *v75 = v83;
        goto LABEL_100;
      }

      sub_26B63E4F8((v72 + 8 * *v102), v79 >> 3, v39);
      v80 = &v39[v79];
LABEL_102:
      v87 = v76 - 8;
      for (v77 -= 8; v80 > v39 && v75 < v76; v77 -= 8)
      {
        v89 = *(v80 - 1);
        if (*(v89 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
        {
          goto LABEL_149;
        }

        v90 = *v87 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v90 + 8))
        {
          goto LABEL_151;
        }

        if (*(v89 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < *v90)
        {
          v86 = v77 + 8 == v76;
          v76 -= 8;
          if (!v86)
          {
            *v77 = *v87;
            v76 = v87;
          }

          goto LABEL_102;
        }

        if (v80 != v77 + 8)
        {
          *v77 = v89;
        }

        v80 -= 8;
      }

      v81 = v39;
LABEL_117:
      v91 = (v80 - v81) / 8;
      v92 = v76 != v81 || v76 >= &v81[8 * v91];
      v6 = v100;
      if (v92)
      {
        memmove(v76, v81, 8 * v91);
      }

      if (v74 < v73)
      {
        goto LABEL_132;
      }

      v93 = *(v100 + 16);
      if (v104 > v93)
      {
        goto LABEL_133;
      }

      *v103 = v73;
      v103[1] = v74;
      if (v104 >= v93)
      {
        goto LABEL_134;
      }

      v36 = v93 - 1;
      sub_26B63F530((v102 + 16), v93 - 1 - v104, v102);
      *(v100 + 16) = v93 - 1;
      v37 = v99;
      if (v93 <= 2)
      {
        goto LABEL_127;
      }
    }

    v47 = v37 + 16 * v36;
    v48 = *(v47 - 64);
    v49 = *(v47 - 56);
    v53 = __OFSUB__(v49, v48);
    v50 = v49 - v48;
    if (v53)
    {
      goto LABEL_135;
    }

    v52 = *(v47 - 48);
    v51 = *(v47 - 40);
    v53 = __OFSUB__(v51, v52);
    v45 = v51 - v52;
    v46 = v53;
    if (v53)
    {
      goto LABEL_136;
    }

    v54 = v42[1];
    v55 = v54 - *v42;
    if (__OFSUB__(v54, *v42))
    {
      goto LABEL_138;
    }

    v53 = __OFADD__(v45, v55);
    v56 = v45 + v55;
    if (v53)
    {
      goto LABEL_141;
    }

    if (v56 >= v50)
    {
      v70 = *v41;
      v69 = v41[1];
      v53 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v53)
      {
        goto LABEL_145;
      }

      if (v45 < v71)
      {
        v40 = v36 - 2;
      }

      goto LABEL_84;
    }

    goto LABEL_63;
  }

LABEL_129:
  if (!*a1)
  {
    goto LABEL_165;
  }

  sub_26B6931D0(&v105, *a1, a3);
}

uint64_t sub_26B6931D0(char **a1, char *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 2);
    if (v6 < 2)
    {
      break;
    }

    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_55;
    }

    v8 = *&v4[16 * v6];
    v9 = (v7 + 8 * v8);
    v10 = 8 * *&v4[16 * v6 + 16];
    v11 = (v7 + v10);
    v12 = 8 * *&v4[16 * v6 + 24];
    v32 = *&v4[16 * v6 + 24];
    v13 = (v7 + v12);
    v33 = v8;
    v14 = v10 - 8 * v8;
    v15 = v12 - v10;
    if (v14 >> 3 < (v12 - v10) >> 3)
    {
      result = sub_26B63E4F8((v7 + 8 * v8), v14 >> 3, a2);
      v16 = &a2[v14];
      v17 = a2;
      while (1)
      {
        if (v17 >= v16 || v11 >= v13)
        {
          v11 = v9;
          goto LABEL_36;
        }

        v19 = *v11;
        v20 = *v11 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v20 + 8))
        {
          goto LABEL_53;
        }

        v21 = *v17 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v21 + 8))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (*v20 >= *v21)
        {
          break;
        }

        v22 = v9 == v11;
        v11 += 8;
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 += 8;
      }

      v19 = *v17;
      v22 = v9 == v17;
      v17 += 8;
      if (v22)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v9 = v19;
      goto LABEL_19;
    }

    result = sub_26B63E4F8((v7 + v10), v15 >> 3, a2);
    v16 = &a2[v15];
LABEL_21:
    v23 = v11 - 8;
    for (v13 -= 8; v16 > a2 && v9 < v11; v13 -= 8)
    {
      v25 = *(v16 - 1);
      if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      v26 = *v23 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
      if (*(v26 + 8))
      {
        goto LABEL_54;
      }

      if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < *v26)
      {
        v22 = v13 + 8 == v11;
        v11 -= 8;
        if (!v22)
        {
          *v13 = *v23;
          v11 = v23;
        }

        goto LABEL_21;
      }

      if (v16 != v13 + 8)
      {
        *v13 = v25;
      }

      v16 -= 8;
    }

    v17 = a2;
LABEL_36:
    v27 = (v16 - v17) / 8;
    if (v11 != v17 || v11 >= &v17[8 * v27])
    {
      memmove(v11, v17, 8 * v27);
    }

    if (v32 < v33)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_26B63F2BC(v4);
      v4 = result;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26B63F2BC(v4);
    }

    if ((v6 - 2) >= *(v4 + 2))
    {
      goto LABEL_49;
    }

    v29 = &v4[16 * v6];
    *v29 = v33;
    *(v29 + 1) = v32;
    *a1 = v4;
    result = sub_26B63F230(v6 - 1);
  }

  return 1;
}

uint64_t sub_26B693484(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26B6EA324();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26B6EA184();
  *v1 = result;
  return result;
}

void sub_26B693524(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_26B63AC9C(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

void (*sub_26B69358C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_26B692968(a3);
  sub_26B692974(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D67DB30](a2, a3);
  }

  *a1 = v7;
  return sub_26B693618;
}

uint64_t sub_26B693620(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B6936A8()
{
  result = qword_28040A498;
  if (!qword_28040A498)
  {
    sub_26B67826C(255, &qword_2810CDBA8, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A498);
  }

  return result;
}

uint64_t sub_26B69373C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_26B6EA324();
    if (v4)
    {
      v5 = v4;
      v2 = sub_26B6E3B94(v4, 0);
      sub_26B6939CC((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t type metadata accessor for PlaysStore()
{
  result = qword_2810CE6A8;
  if (!qword_2810CE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B693824()
{
  result = sub_26B6E93B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B6939CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26B6EA324();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_26B6B8B04(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SportingEventPlay();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26B689EC8(&qword_28040A4A8, &qword_280409E40, &qword_26B6F3670);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
          v9 = sub_26B69358C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B693B54()
{
  result = qword_28040A4B0;
  if (!qword_28040A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4B0);
  }

  return result;
}

unint64_t sub_26B693BA8()
{
  result = qword_28040A4C0;
  if (!qword_28040A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4C0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for PlaysStore.PlayStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B693D94()
{
  result = qword_28040A4C8;
  if (!qword_28040A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(unint64_t *a1)
{

  return sub_26B689EC8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26B689EC8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  result = *(v0 - 288);
  v2 = *(v0 - 304);
  v3 = *(v0 - 320);
  v4 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = (result + a2);
  v3 = *v2 & 0xFFFFFFFFFFFFLL;
  v2[1];
  return result;
}

void OUTLINED_FUNCTION_33_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_34_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_26B645A94(v0, v1);
}

SportsKit::Sport __swiftcall Sport.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6E9A84();
  v5 = v4;

  v6 = v3 == 0x6C6C616265736162 && v5 == 0xE800000000000000;
  if (v6 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || (v3 == 0xD000000000000020 ? (v7 = 0x800000026B6FC3A0 == v5) : (v7 = 0), v7 || (OUTLINED_FUNCTION_2_10() & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v3 == 0x616274656B736162 && v5 == 0xEA00000000006C6CLL;
    if (v10 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v12 = v11 == v5) : (v12 = 0), v12 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
    {

      v9 = 1;
    }

    else
    {
      v13 = v3 == 0x6C6C6162746F6F66 && v5 == 0xE800000000000000;
      if (v13 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v15 = v14 == v5) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
      {

        v9 = 2;
      }

      else
      {
        v16 = v3 == 0x79656B636F68 && v5 == 0xE600000000000000;
        if (v16 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v18 = v17 == v5) : (v18 = 0), v18 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
        {

          v9 = 3;
        }

        else
        {
          v19 = v3 == 0x7962677572 && v5 == 0xE500000000000000;
          if (v19 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v21 = v20 == v5) : (v21 = 0), v21 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
          {

            v9 = 4;
          }

          else
          {
            v22 = v3 == 0x726563636F73 && v5 == 0xE600000000000000;
            if (v22 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || (v3 == 0xD000000000000020 ? (v23 = 0x800000026B6FC490 == v5) : (v23 = 0), v23 || (OUTLINED_FUNCTION_2_10() & 1) != 0))
            {

              v9 = 5;
            }

            else
            {
              v24 = v3 == 0x6C6C616274666F73 && v5 == 0xE800000000000000;
              if (v24 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v26 = v25 == v5) : (v26 = 0), v26 || (OUTLINED_FUNCTION_0_11() & 1) != 0))
              {

                v9 = 6;
              }

              else
              {
                v27 = v3 == 0x73696E6E6574 && v5 == 0xE600000000000000;
                if (v27 || (OUTLINED_FUNCTION_2_10() & 1) != 0 || ((OUTLINED_FUNCTION_1_13(), v6) ? (v29 = v28 == v5) : (v29 = 0), v29))
                {

                  v9 = 7;
                }

                else
                {
                  v30 = OUTLINED_FUNCTION_0_11();

                  if (v30)
                  {
                    v9 = 7;
                  }

                  else
                  {
                    v9 = 8;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *v2 = v9;
  return result;
}

uint64_t Sport.rawValue.getter()
{
  result = 0x6C6C616265736162;
  switch(*v0)
  {
    case 1:
      result = 0x616274656B736162;
      break;
    case 2:
      v2 = 1953460070;
      goto LABEL_9;
    case 3:
      result = 0x79656B636F68;
      break;
    case 4:
      result = 0x7962677572;
      break;
    case 5:
      result = 0x726563636F73;
      break;
    case 6:
      v2 = 1952870259;
LABEL_9:
      result = v2 | 0x6C6C616200000000;
      break;
    case 7:
      result = 0x73696E6E6574;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26B694480()
{
  result = qword_28040A4D0;
  if (!qword_28040A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4D0);
  }

  return result;
}

uint64_t sub_26B6944EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Sport.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_26B69452C@<X0>(uint64_t *a1@<X8>)
{
  result = Sport.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Sport(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6946EC()
{
  result = qword_28040A4D8;
  if (!qword_28040A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_26B6EA5D4();
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_26B6EA5D4();
}

uint64_t sub_26B6947A8()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_249();
  return sub_26B6EA744();
}

uint64_t sub_26B6947DC()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_221();
  return sub_26B6EA744();
}

uint64_t sub_26B694830(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_95_0();
  MEMORY[0x26D67E0E0](a1 + 101);
  return sub_26B6EA744();
}

uint64_t sub_26B694944(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_95_0();
  a2(a1);
  OUTLINED_FUNCTION_220();

  return sub_26B6EA744();
}

uint64_t sub_26B6949BC(char a1)
{
  OUTLINED_FUNCTION_95_0();
  if (a1)
  {
    v2 = 200;
  }

  else
  {
    v2 = 56;
  }

  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

uint64_t sub_26B694A2C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_95_0();
  a2(v5, a1);
  return sub_26B6EA744();
}

uint64_t sub_26B694A7C()
{
  OUTLINED_FUNCTION_226();
  MEMORY[0x26D67E0E0](v0 + 101);
  return sub_26B6EA744();
}

uint64_t sub_26B694ADC()
{
  sub_26B6EA714();
  OUTLINED_FUNCTION_252();
  return sub_26B6EA744();
}

uint64_t sub_26B694B18()
{
  sub_26B6EA714();
  OUTLINED_FUNCTION_221();
  return sub_26B6EA744();
}

uint64_t sub_26B694B58()
{
  OUTLINED_FUNCTION_226();
  if (v0)
  {
    v1 = 200;
  }

  else
  {
    v1 = 56;
  }

  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

uint64_t sub_26B694BA0()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694C1C()
{
  sub_26B6EA714();
  OUTLINED_FUNCTION_249();
  return sub_26B6EA744();
}

uint64_t sub_26B694C54()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_253();

  return sub_26B6EA744();
}

uint64_t sub_26B694CDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_26B6EA714();
  a3(a2);
  OUTLINED_FUNCTION_220();

  return sub_26B6EA744();
}

uint64_t sub_26B694D30()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694DB0()
{
  OUTLINED_FUNCTION_226();
  v1 = qword_26B6F8278[v0];
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694E04()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694EB4()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B694F5C()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_253();

  return sub_26B6EA744();
}

uint64_t sub_26B694FD8()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B695084()
{
  OUTLINED_FUNCTION_226();
  MEMORY[0x26D67E0E0](v0 & 1);
  return sub_26B6EA744();
}

uint64_t sub_26B6950C0()
{
  OUTLINED_FUNCTION_226();
  MEMORY[0x26D67E0E0](v0);
  return sub_26B6EA744();
}

uint64_t sub_26B6950FC()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B695160()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_253();

  return sub_26B6EA744();
}

uint64_t sub_26B6951F8()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_253();

  return sub_26B6EA744();
}

uint64_t sub_26B6952D0()
{
  sub_26B6EA714();
  sub_26B6E9AE4();

  return sub_26B6EA744();
}

uint64_t sub_26B69539C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_26B6EA714();
  a3(v6, a2);
  return sub_26B6EA744();
}

BOOL sub_26B6953F4(char a1, char a2)
{
  if ((a1 - 1) > 3u)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = qword_26B6F82A8[(a1 - 1)];
  }

  if ((a2 - 1) > 3u)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = qword_26B6F82A8[(a2 - 1)];
  }

  return v2 >= v3;
}

id SportingEventLocalizedDisplayName.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SportingEventLocalizedDisplayName.init(text:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SportingEventLocalizedDisplayName();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26B695574(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B695574(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69562C(uint64_t a1)
{
  v2 = sub_26B6957B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695668(uint64_t a1)
{
  v2 = sub_26B6957B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6956C8()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4E8, &qword_26B6F35C0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6957B0();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6957B0()
{
  result = qword_28040A4F0;
  if (!qword_28040A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A4F0);
  }

  return result;
}

void SportingEventLocalizedDisplayName.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventLocalizedDisplayName.init(from:)();
}

void SportingEventLocalizedDisplayName.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A4F8, &qword_26B6F35C8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6957B0();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventLocalizedDisplayName();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v7 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v7, v8, OBJC_IVAR____TtC9SportsKit33SportingEventLocalizedDisplayName_text);
    v11.receiver = v2;
    v11.super_class = type metadata accessor for SportingEventLocalizedDisplayName();
    objc_msgSendSuper2(&v11, sel_init);
    v9 = OUTLINED_FUNCTION_13_3();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B695974(void *a1@<X8>)
{
  SportingEventLocalizedDisplayName.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6959D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7472617473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6959D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B695A8C(uint64_t a1)
{
  v2 = sub_26B695C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695AC8(uint64_t a1)
{
  v2 = sub_26B695C38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B695B40()
{
  OUTLINED_FUNCTION_191();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A508, &qword_26B6F35D0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B695C38();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  v8 = *(v0 + OBJC_IVAR____TtC9SportsKit21SportingEventDuration_start);
  OUTLINED_FUNCTION_177();
  sub_26B6EA514();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B695C38()
{
  result = qword_28040A510;
  if (!qword_28040A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A510);
  }

  return result;
}

void SportingEventDuration.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventDuration.init(from:)();
}

void SportingEventDuration.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A518, &qword_26B6F35D8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B695C38();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventDuration();
    OUTLINED_FUNCTION_102_0();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    sub_26B6EA444();
    *&v2[OBJC_IVAR____TtC9SportsKit21SportingEventDuration_start] = v7;
    v10.receiver = v2;
    v10.super_class = type metadata accessor for SportingEventDuration();
    objc_msgSendSuper2(&v10, sel_init);
    v8 = OUTLINED_FUNCTION_13_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B695DF8(void *a1@<X8>)
{
  SportingEventDuration.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B695E54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B695EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B695E54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B695F14(uint64_t a1)
{
  v2 = sub_26B6960EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B695F50(uint64_t a1)
{
  v2 = sub_26B6960EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B695FD4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_185();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A528, &qword_26B6F35E0);
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6960EC();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  v10 = *(v0 + OBJC_IVAR____TtC9SportsKit21SportingEventSchedule_duration);
  type metadata accessor for SportingEventDuration();
  OUTLINED_FUNCTION_131_0();
  sub_26B6B25CC(v5, v6, v7);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_234();
  sub_26B6EA534();
  v8 = OUTLINED_FUNCTION_85_1();
  v9(v8);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6960EC()
{
  result = qword_2810CE2B0;
  if (!qword_2810CE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2B0);
  }

  return result;
}

void SportingEventSchedule.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventSchedule.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventSchedule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A538, &qword_26B6F35E8);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6960EC();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingEventSchedule();
    OUTLINED_FUNCTION_102_0();
  }

  else
  {
    type metadata accessor for SportingEventDuration();
    OUTLINED_FUNCTION_131_0();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit21SportingEventSchedule_duration] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingEventSchedule();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6962DC(void *a1@<X8>)
{
  SportingEventSchedule.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B696358(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6963F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B696358(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B696424(uint64_t a1)
{
  v2 = sub_26B6965CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B696460(uint64_t a1)
{
  v2 = sub_26B6965CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6964E4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A550, &qword_26B6F35F0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6965CC();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventSport_canonicalId);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6965CC()
{
  result = qword_28040A558;
  if (!qword_28040A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A558);
  }

  return result;
}

void SportingEventSport.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventSport.init(from:)();
}

void SportingEventSport.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A560, &qword_26B6F35F8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6965CC();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventSport();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v7 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v7, v8, OBJC_IVAR____TtC9SportsKit18SportingEventSport_canonicalId);
    v11.receiver = v2;
    v11.super_class = type metadata accessor for SportingEventSport();
    objc_msgSendSuper2(&v11, sel_init);
    v9 = OUTLINED_FUNCTION_13_3();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B696790(void *a1@<X8>)
{
  SportingEventSport.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B696824(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000026B6FCA10 == a2;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B69693C(char a1)
{
  if (!a1)
  {
    return 0x6163696E6F6E6163;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x74726F7073;
}

uint64_t sub_26B6969A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B696824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6969CC(uint64_t a1)
{
  v2 = sub_26B696C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B696A08(uint64_t a1)
{
  v2 = sub_26B696C54();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B696AD8()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A580, &unk_26B6F3600);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B696C54();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_canonicalId);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_localizedDisplayName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B696CA8();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
    OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit19SportingEventLeague_sport);
    type metadata accessor for SportingEventSport();
    OUTLINED_FUNCTION_126_0();
    sub_26B6B25CC(v5, v6, v7);
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  v9(v8);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B696C54()
{
  result = qword_2810CE3D8;
  if (!qword_2810CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3D8);
  }

  return result;
}

unint64_t sub_26B696CA8()
{
  result = qword_2810CDC08;
  if (!qword_2810CDC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B6B25CC(&qword_2810CDD90, v1, type metadata accessor for SportingEventLocalizedDisplayName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC08);
  }

  return result;
}

void SportingEventLeague.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventLeague.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventLeague.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A590, &qword_26B6F3610);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B696C54();
  OUTLINED_FUNCTION_31_4();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventLeague();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_80_1();
    v17 = sub_26B6EA424();
    v18 = &v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_canonicalId];
    *v18 = v17;
    v18[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    OUTLINED_FUNCTION_36_4();
    sub_26B685420();
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_88_1();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_localizedDisplayName] = a10;
    type metadata accessor for SportingEventSport();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_126_0();
    sub_26B6B25CC(v20, v21, v22);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_160();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit19SportingEventLeague_sport] = a10;
    v25.receiver = v10;
    v25.super_class = type metadata accessor for SportingEventLeague();
    objc_msgSendSuper2(&v25, sel_init);
    v23 = OUTLINED_FUNCTION_13_3();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B696FD0(void *a1@<X8>)
{
  SportingEventLeague.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B697058()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B6970A0(char a1)
{
  if (a1)
  {
    return 0x736772612D636F6CLL;
  }

  else
  {
    return 0x79656B2D636F6CLL;
  }
}

uint64_t sub_26B6970FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B697058();
  *a2 = result;
  return result;
}

uint64_t sub_26B69712C()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B6970A0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26B69715C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B697058();
  *a1 = result;
  return result;
}

uint64_t sub_26B697184(uint64_t a1)
{
  v2 = sub_26B6973A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6971C0(uint64_t a1)
{
  v2 = sub_26B6973A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697280()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5B0, &unk_26B6F3618);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6973A4();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_key);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_arguments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B6973F8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA4E4();
  }

  v5 = OUTLINED_FUNCTION_21_2();
  v6(v5);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B6973A4()
{
  result = qword_28040A5B8;
  if (!qword_28040A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A5B8);
  }

  return result;
}

unint64_t sub_26B6973F8()
{
  result = qword_280409BF0;
  if (!qword_280409BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BF0);
  }

  return result;
}

void SportingEventAlertText.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlertText.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlertText.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5C0, &qword_26B6F3628);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B6973A4();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlertText();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v17 = sub_26B6EA424();
    v18 = &v10[OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_key];
    *v18 = v17;
    v18[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    OUTLINED_FUNCTION_36_4();
    sub_26B6858E8();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA414();
    *&v10[OBJC_IVAR____TtC9SportsKit22SportingEventAlertText_arguments] = a10;
    v22.receiver = v10;
    v22.super_class = type metadata accessor for SportingEventAlertText();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B697650(void *a1@<X8>)
{
  SportingEventAlertText.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6976E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036625250 && a2 == 0xE400000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6977EC(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 2036625250;
  }

  return 0x646E756F73;
}

uint64_t sub_26B69783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6976E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B697864(uint64_t a1)
{
  v2 = sub_26B697AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6978A0(uint64_t a1)
{
  v2 = sub_26B697AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697974()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5E0, &qword_26B6F3630);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B697AE0();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title);
  type metadata accessor for SportingEventAlertText();
  OUTLINED_FUNCTION_123_0();
  sub_26B6B25CC(v5, v6, v7);
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_body);
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventAlert_sound);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4A4();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  v9(v8);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B697AE0()
{
  result = qword_28040A5E8;
  if (!qword_28040A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A5E8);
  }

  return result;
}

void SportingEventAlert.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlert.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlert.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A5F8, &qword_26B6F3638);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B697AE0();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlert();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventAlertText();
    v26 = 0;
    OUTLINED_FUNCTION_123_0();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    v24 = OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title;
    *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventAlert_title] = a10;
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventAlert_body] = a10;
    OUTLINED_FUNCTION_172(2);
    v20 = sub_26B6EA3D4();
    OUTLINED_FUNCTION_70(v20, v21, OBJC_IVAR____TtC9SportsKit18SportingEventAlert_sound);
    v25.receiver = v10;
    v25.super_class = type metadata accessor for SportingEventAlert();
    objc_msgSendSuper2(&v25, sel_init, v24);
    v22 = OUTLINED_FUNCTION_10_8();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B697DAC(void *a1@<X8>)
{
  SportingEventAlert.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B697E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B697ED8(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_26B697F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B697E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B697F3C(uint64_t a1)
{
  v2 = sub_26B698168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B697F78(uint64_t a1)
{
  v2 = sub_26B698168();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B697FFC()
{
  OUTLINED_FUNCTION_191();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A618, &qword_26B6F3640);
  OUTLINED_FUNCTION_5_10(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B698168();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  v14 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_alert);
  type metadata accessor for SportingEventAlert();
  OUTLINED_FUNCTION_120_0();
  sub_26B6B25CC(v10, v11, v12);
  OUTLINED_FUNCTION_110_1();
  sub_26B6EA534();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_version);
    sub_26B6EA524();
  }

  (*(v6 + 8))(v3, v0);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

unint64_t sub_26B698168()
{
  result = qword_28040A620;
  if (!qword_28040A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A620);
  }

  return result;
}

void SportingEventAlertUpdate.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventAlertUpdate.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventAlertUpdate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A630, &qword_26B6F3648);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B698168();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventAlertUpdate();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_225();
  }

  else
  {
    type metadata accessor for SportingEventAlert();
    v23 = 0;
    OUTLINED_FUNCTION_120_0();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_alert] = a10;
    OUTLINED_FUNCTION_172(1);
    OUTLINED_FUNCTION_52_1();
    *&v10[OBJC_IVAR____TtC9SportsKit24SportingEventAlertUpdate_version] = sub_26B6EA454();
    v22.receiver = v10;
    v22.super_class = type metadata accessor for SportingEventAlertUpdate();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6983A8(void *a1@<X8>)
{
  SportingEventAlertUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B698450()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {

    v23 = OUTLINED_FUNCTION_22_0();
    sub_26B6AD130(v23, v24, 10);

    return;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    if (v1 == 43)
    {
      if (!v3)
      {
LABEL_76:
        __break(1u);
        return;
      }

      if (v3 != 1)
      {
        OUTLINED_FUNCTION_143();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v9)
          {
            break;
          }

          if (__OFADD__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v9);
      }
    }

    else if (v1 == 45)
    {
      if (!v3)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v3 != 1)
      {
        OUTLINED_FUNCTION_143();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v9)
          {
            break;
          }

          if (__OFSUB__(v13, v12))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v9);
      }
    }

    else if (v3)
    {
      do
      {
        OUTLINED_FUNCTION_49_1();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_56_2();
        if (!v9)
        {
          break;
        }

        if (__OFADD__(v22, v21))
        {
          break;
        }

        OUTLINED_FUNCTION_138_0();
      }

      while (!v9);
    }
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      OUTLINED_FUNCTION_22_0();
      v6 = sub_26B6EA1E4();
    }

    v7 = *v6;
    if (v7 == 43)
    {
      if (v4 < 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v4 != 1 && v6)
      {
        OUTLINED_FUNCTION_227();
        do
        {
          OUTLINED_FUNCTION_49_1();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_56_2();
          if (!v9)
          {
            break;
          }

          if (__OFADD__(v15, v14))
          {
            break;
          }

          OUTLINED_FUNCTION_138_0();
        }

        while (!v9);
      }
    }

    else
    {
      if (v7 == 45)
      {
        if (v4 >= 1)
        {
          if (v4 != 1 && v6)
          {
            OUTLINED_FUNCTION_227();
            do
            {
              OUTLINED_FUNCTION_49_1();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_56_2();
              if (!v9)
              {
                break;
              }

              if (__OFSUB__(v11, v10))
              {
                break;
              }

              OUTLINED_FUNCTION_138_0();
            }

            while (!v9);
          }

          return;
        }

        __break(1u);
        goto LABEL_74;
      }

      if (v4)
      {
        v18 = 0;
        if (v6)
        {
          do
          {
            v19 = *v6 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v6;
            --v4;
          }

          while (v4);
        }
      }
    }
  }
}

uint64_t sub_26B6986BC(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_143();
            while (1)
            {
              OUTLINED_FUNCTION_49_1();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_60_2();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_138_0();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_49_1();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_60_2();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_138_0();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_143();
          while (1)
          {
            OUTLINED_FUNCTION_49_1();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_60_2();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_138_0();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26B6EA1E4();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_227();
              while (1)
              {
                OUTLINED_FUNCTION_49_1();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_60_2();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_138_0();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_227();
            while (1)
            {
              OUTLINED_FUNCTION_49_1();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_60_2();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_138_0();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_26B6AD130(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_26B698930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B698968(v4);
}

uint64_t sub_26B698980(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6989B8(v4);
}

uint64_t sub_26B6989C4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B698A24(v2);
}

void *sub_26B6989F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698A30(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B698A90(v2);
}

void *sub_26B698A60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698A9C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B698AFC(v2);
}

void *sub_26B698ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698B08(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B698B68(v2);
}

void *sub_26B698B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__league);
  v2 = v1;
  return v1;
}

uint64_t sub_26B698B74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B698BAC(v4);
}

uint64_t sub_26B698BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B698BF0(v4);
}

uint64_t sub_26B698C14()
{
  v1 = sub_26B6E9074();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_26B6E90D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26B6E90C4();
  sub_26B6E9064();
  sub_26B6E9084();
  v35 = v0;
  type metadata accessor for SportingEvent();
  sub_26B6B25CC(&qword_2810CE660, v6, type metadata accessor for SportingEvent);
  v7 = sub_26B6E90B4();
  v9 = v8;
  sub_26B645A3C(v7, v8);
  v10 = OUTLINED_FUNCTION_6_0();
  v12 = sub_26B6ADC5C(v10, v11);
  if (v13)
  {
    v14 = v12;
    v15 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v15, v16);
LABEL_9:

    v28 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v28, v29);
    return v14;
  }

  v33 = v7;
  v34 = v9;
  v17 = OUTLINED_FUNCTION_6_0();
  sub_26B645A3C(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
  if (!swift_dynamicCast())
  {
    v24 = OUTLINED_FUNCTION_6_0();
    sub_26B645A94(v24, v25);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_26B6413B4(v31, &qword_280409310, &qword_26B6ED010);
LABEL_8:
    v26 = OUTLINED_FUNCTION_6_0();
    v14 = sub_26B6AD08C(v26, v27);
    goto LABEL_9;
  }

  sub_26B645C80(v31, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v19 = sub_26B6EA374();
  v20 = OUTLINED_FUNCTION_6_0();
  sub_26B645A94(v20, v21);
  if ((v19 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v35, v36);
  sub_26B6EA364();

  v22 = OUTLINED_FUNCTION_6_0();
  sub_26B645A94(v22, v23);
  v14 = *&v31[0];
  __swift_destroy_boxed_opaque_existential_1(&v35);
  return v14;
}

id SportingEvent.__allocating_init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_150();
  v15 = objc_allocWithZone(v14);
  OUTLINED_FUNCTION_153();
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v16, v17, v18, v19, v20, v21, v22, a8, a9, a10, a11, a12, a13, a14);
}

id SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v15 = *a5;
  v16 = OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage] = 0;
  v17 = OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament] = 0;
  v18 = OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule] = 0;
  v19 = OBJC_IVAR____TtC9SportsKit13SportingEvent__league;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__league] = 0;
  v20 = OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName] = 0;
  v21 = OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates] = 0;
  v22 = &v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_version];
  *v23 = a3;
  v23[1] = a4;
  v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus] = v15;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors] = a6;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent_clock] = a7;
  *&v14[OBJC_IVAR____TtC9SportsKit13SportingEvent__plays] = a8;
  *&v14[v16] = a10;
  *&v14[v17] = a9;
  v24 = *&v14[v18];
  *&v14[v18] = a11;
  v25 = a7;
  v26 = a10;
  v27 = a9;
  v28 = a11;

  v29 = *&v14[v19];
  *&v14[v19] = a12;
  v30 = a12;

  v31 = *&v14[v20];
  *&v14[v20] = a13;

  v32 = *&v14[v21];
  *&v14[v21] = a14;

  v35.receiver = v14;
  v35.super_class = type metadata accessor for SportingEvent();
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

void SportingEvent.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEvent.init(from:)();
}

void SportingEvent.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A0, &unk_26B6F3660);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_61_0();
  v26 = OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage) = 0;
  v27 = OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament) = 0;
  v28 = OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule) = 0;
  v29 = OBJC_IVAR____TtC9SportsKit13SportingEvent__league;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__league) = 0;
  v30 = OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName) = 0;
  *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates) = 0;
  OUTLINED_FUNCTION_21_3();
  sub_26B6ADE28();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    v12 = *&v0[v30];

    OUTLINED_FUNCTION_197();

    type metadata accessor for SportingEvent();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    v11 = sub_26B6EA424();
    v13 = &v0[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_105_1();
    v15 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v15, v16, OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
    OUTLINED_FUNCTION_146();
    sub_26B6ADE7C();
    sub_26B6EA464();
    v0[OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    OUTLINED_FUNCTION_176();
    sub_26B6ADED0();
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors] = v32;
    type metadata accessor for SportingEventCurrentClock();
    OUTLINED_FUNCTION_175();
    OUTLINED_FUNCTION_132_0();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit13SportingEvent_clock] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
    sub_26B6ADFCC();
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_53_1();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit13SportingEvent__plays] = v32;
    type metadata accessor for SportingEventCoverage();
    sub_26B6B25CC(&qword_2810CE2D0, v20, type metadata accessor for SportingEventCoverage);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v32);
    type metadata accessor for SportingTournament();
    sub_26B6B25CC(&qword_2810CE3E8, v21, type metadata accessor for SportingTournament);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v32);
    type metadata accessor for SportingEventSchedule();
    sub_26B6B25CC(&qword_2810CE290, v22, type metadata accessor for SportingEventSchedule);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v32);
    type metadata accessor for SportingEventLeague();
    sub_26B6B25CC(&qword_2810CE3B8, v23, type metadata accessor for SportingEventLeague);
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    OUTLINED_FUNCTION_224(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B685420();
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA464();
    v24 = *&v0[v30];
    *&v0[v30] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6B0, &qword_26B6F3678);
    sub_26B6AE0EC();
    OUTLINED_FUNCTION_14_9();
    sub_26B6EA414();
    (*(v7 + 8))(v4, v5);
    OUTLINED_FUNCTION_197();
    *&v0[v25] = v32;

    v31.receiver = v0;
    v31.super_class = type metadata accessor for SportingEvent();
    objc_msgSendSuper2(&v31, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

id SportingEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B699860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B636F6C63 && a2 == 0xE500000000000000;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7379616C70 && a2 == 0xE500000000000000;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6567617265766F63 && a2 == 0xE800000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656D616E72756F74 && a2 == 0xEA0000000000746ELL;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756761656CLL && a2 == 0xE600000000000000;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x800000026B6FD410 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6470557472656C61 && a2 == 0xEC00000073657461)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_26B6EA5D4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26B699C18(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x73736572676F7270;
      break;
    case 3:
      result = 0x74697465706D6F63;
      break;
    case 4:
      result = 0x6B636F6C63;
      break;
    case 5:
      result = 0x7379616C70;
      break;
    case 6:
      result = 0x6567617265766F63;
      break;
    case 7:
      result = 0x656D616E72756F74;
      break;
    case 8:
      result = 0x656C756465686373;
      break;
    case 9:
      result = 0x65756761656CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6470557472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B699D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B699860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B699DAC(uint64_t a1)
{
  v2 = sub_26B6ADE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B699DE8(uint64_t a1)
{
  v2 = sub_26B6ADE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B699F14()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6C8, &qword_26B6F3680);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6ADE28();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
    v11 = *(v1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
    OUTLINED_FUNCTION_146();
    sub_26B6AE1A0();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D0, &qword_26B6F3688);
    sub_26B6AE1F4();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
    OUTLINED_FUNCTION_175();
    type metadata accessor for SportingEventCurrentClock();
    OUTLINED_FUNCTION_132_0();
    sub_26B6B25CC(v6, v7, v8);
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D8, &qword_26B6F3690);
    sub_26B6AE32C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6E0, &qword_26B6F3698);
    sub_26B6AE464();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6F0, &qword_26B6F36A8);
    sub_26B6AE59C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__schedule);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A700, &qword_26B6F36B8);
    sub_26B6AE6D4();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__league);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A710, &qword_26B6F36C8);
    sub_26B6AE80C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__localizedShortName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A720, &qword_26B6F36D8);
    sub_26B6AE944();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit13SportingEvent__alertUpdates);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A730, &qword_26B6F36E8);
    sub_26B6AEA4C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v9 = OUTLINED_FUNCTION_21_2();
  v10(v9);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_26B69A2D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_26B69A3A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B6E99F4();

  return v5;
}

uint64_t sub_26B69A418()
{
  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_major);
  OUTLINED_FUNCTION_52_0();
  v7 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](46, 0xE100000000000000);
  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_minor);
  OUTLINED_FUNCTION_52_0();
  v1 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v1);

  MEMORY[0x26D67D4D0](46, 0xE100000000000000);
  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_patch);
  OUTLINED_FUNCTION_52_0();
  v2 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v2);

  return v7;
}

uint64_t sub_26B69A504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B69A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69A654(uint64_t a1)
{
  v2 = sub_26B6AEC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69A690(uint64_t a1)
{
  v2 = sub_26B6AEC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69A6E4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A778, &qword_26B6F36F8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AEC2C();
  OUTLINED_FUNCTION_39_3();
  v6 = *(v1 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_major);
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA524();
  if (!v0)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_minor);
    OUTLINED_FUNCTION_69_1();
    sub_26B6EA524();
    v8 = *(v1 + OBJC_IVAR____TtC9SportsKit20SportingEventVersion_patch);
    OUTLINED_FUNCTION_69_1();
    sub_26B6EA524();
  }

  v9 = OUTLINED_FUNCTION_21_2();
  v10(v9);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventVersion.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventVersion.init(from:)();
}

void SportingEventVersion.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A788, &qword_26B6F3700);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6AEC2C();
  OUTLINED_FUNCTION_12_7();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventVersion();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    *&v2[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_major] = sub_26B6EA454();
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_52_1();
    *&v2[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_minor] = sub_26B6EA454();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_52_1();
    *&v2[OBJC_IVAR____TtC9SportsKit20SportingEventVersion_patch] = sub_26B6EA454();
    v9.receiver = v2;
    v9.super_class = type metadata accessor for SportingEventVersion();
    objc_msgSendSuper2(&v9, sel_init);
    v7 = OUTLINED_FUNCTION_10_8();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B69A9D4(void *a1@<X8>)
{
  SportingEventVersion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t SportingEventCoverageLastUpdateScope.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E657645;
  }

  else
  {
    return 0x6B636F6C43;
  }
}

uint64_t sub_26B69AA8C@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCoverageLastUpdateScope.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

void sub_26B69AB68(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B69ABDC(&v4);
  *a2 = v4;
}

void sub_26B69ABA4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B69ABE8(&v3);
}

void SportingEventCoverageLastUpdate.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCoverageLastUpdate.init(from:)(v1);
}

void SportingEventCoverageLastUpdate.init(from:)(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7A0, &unk_26B6F3708);
  v16 = OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_61_0();
  v9 = OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope;
  *(v2 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope) = 2;
  OUTLINED_FUNCTION_145(OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp);
  v10 = a1[3];
  v11 = a1[4];
  OUTLINED_FUNCTION_39(a1);
  sub_26B6AEC80();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SportingEventCoverageLastUpdate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    sub_26B6AECF8();
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA464();
    *(v2 + v9) = v19;
    OUTLINED_FUNCTION_36_4();
    sub_26B6EA444();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_171();
    v15(v14, v16);
    *v1 = v13;
    *(v1 + 8) = 0;
    v17.receiver = 0;
    v17.super_class = type metadata accessor for SportingEventCoverageLastUpdate();
    objc_msgSendSuper2(&v17, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_238();
}

uint64_t sub_26B69AE88(uint64_t a1)
{
  sub_26B68A2A0(a1, v19);
  if (!v20)
  {
    sub_26B6413B4(v19, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  Update = type metadata accessor for SportingEventCoverageLastUpdate();
  OUTLINED_FUNCTION_38_3(Update, v3, v4, Update, v5, v6, v7, v8, v16, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope);
  v10 = v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope];
  if (v9 == 2)
  {
    if (v10 != 2)
    {
LABEL_11:

      return 0;
    }
  }

  else if (v10 == 2 || (sub_26B646420(v9 & 1, v10 & 1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp);
  v12 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp + 8);
  v13 = *&v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp];
  v14 = v18[OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp + 8];

  if ((v12 & 1) == 0)
  {
    return (v11 == v13) & ~v14;
  }

  return v14;
}

uint64_t sub_26B69AFDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69B0A8(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x65706F6373;
  }
}

uint64_t sub_26B69B0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69AFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69B110(uint64_t a1)
{
  v2 = sub_26B6AEC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69B14C(uint64_t a1)
{
  v2 = sub_26B6AEC80();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69B1A0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7A8, &qword_26B6F3718);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AEC80();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__scope);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7B0, &qword_26B6F3720);
  sub_26B6AED4C();
  OUTLINED_FUNCTION_12_9();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_5((v1 + OBJC_IVAR____TtC9SportsKit31SportingEventCoverageLastUpdate__timestamp));
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7C0, &qword_26B6F3730);
    sub_26B6AEEA8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void sub_26B69B2F0(void *a1@<X8>)
{
  SportingEventCoverageLastUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B69B340(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B69B3A0(v2);
}

void *sub_26B69B370()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  v2 = v1;
  return v1;
}

uint64_t sub_26B69B3AC(uint64_t a1)
{
  sub_26B68A2A0(a1, v20);
  if (!v21)
  {
    sub_26B6413B4(v20, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_7;
  }

  v3 = type metadata accessor for SportingEventCoverage();
  OUTLINED_FUNCTION_38_3(v3, v4, v5, v3, v6, v7, v8, v9, v17, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  v11 = *&v19[OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion];
  if (!v10)
  {
    v16 = v11;

    if (!v11)
    {
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_7;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  type metadata accessor for SportingEventCoverageIngestion();
  v12 = v11;
  v13 = v10;
  OUTLINED_FUNCTION_211();
  v14 = sub_26B6E9FA4();

  return v14 & 1;
}

uint64_t sub_26B69B4BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_26B6413B4(v10, &qword_2804092A0, &qword_26B6F2850);
  return v8 & 1;
}

uint64_t sub_26B69B58C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69747365676E69 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B69B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69B58C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69B658(uint64_t a1)
{
  v2 = sub_26B6AEFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69B694(uint64_t a1)
{
  v2 = sub_26B6AEFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69B6F4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7D8, &qword_26B6F3740);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AEFCC();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7E0, &qword_26B6F3748);
  sub_26B6AF020();
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_177();
  sub_26B6EA534();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventCoverage.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCoverage.init(from:)();
}

void SportingEventCoverage.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A298, &qword_26B6F2608);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_1();
  v8 = OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion;
  *&v0[OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion] = 0;
  OUTLINED_FUNCTION_3_7();
  sub_26B6AEFCC();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    type metadata accessor for SportingEventCoverage();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    v9 = sub_26B67FA60();
    v10 = *&v0[v8];
    *&v0[v8] = v9;

    v13.receiver = v0;
    v13.super_class = type metadata accessor for SportingEventCoverage();
    objc_msgSendSuper2(&v13, sel_init);
    v11 = OUTLINED_FUNCTION_232();
    v12(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69B99C(void *a1@<X8>)
{
  SportingEventCoverage.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B69B9EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69BA24(v4);
}

uint64_t sub_26B69BA30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69BA68(v4);
}

uint64_t sub_26B69BAC0()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26B69BB00(char a1)
{
  if (!a1)
  {
    return 0x6567617265766F63;
  }

  if (a1 == 1)
  {
    return 0x616470557473616CLL;
  }

  return 1953718636;
}

uint64_t sub_26B69BB88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B69BAC0();
  *a2 = result;
  return result;
}

uint64_t sub_26B69BBB8()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B69BB00(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26B69BBE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B69BAC0();
  *a1 = result;
  return result;
}

uint64_t sub_26B69BC1C(uint64_t a1)
{
  v2 = sub_26B6AF158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69BC58(uint64_t a1)
{
  v2 = sub_26B6AF158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B69BC94(uint64_t a1)
{
  sub_26B68A2A0(a1, v23);
  if (!v24)
  {
    sub_26B6413B4(v23, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  v2 = type metadata accessor for SportingEventCoverageIngestion();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v20, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates];
  if (*(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates))
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates];

    sub_26B637204();
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  v9 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates];
  if (*(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates))
  {
    if (v9)
    {
      v13 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates];

      sub_26B63721C();
      v15 = v14;

      if (v15)
      {
        goto LABEL_12;
      }

LABEL_16:

      return 0;
    }

LABEL_14:

    return v9;
  }

  if (v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last);
  v17 = *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last + 8);
  v18 = *&v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last];
  v9 = v22[OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last + 8];

  if ((v17 & 1) == 0)
  {
    return (v16 == v18) & ~v9;
  }

  return v9;
}

void sub_26B69BEBC()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A808, &qword_26B6F3760);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AF158();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v0 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A810, &qword_26B6F3768);
  sub_26B6AF1AC();
  OUTLINED_FUNCTION_3_12();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A820, &qword_26B6F3780);
    sub_26B6AF38C();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_25_5((v0 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last));
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A7C0, &qword_26B6F3730);
    sub_26B6AEEA8();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCoverageIngestion.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCoverageIngestion.init(from:)();
}

void SportingEventCoverageIngestion.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A280, &unk_26B6F25F0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_1();
  v23 = OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates;
  *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates) = 0;
  v21 = OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates;
  *(v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__lastUpdates) = 0;
  v8 = v1 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__last;
  *v8 = 0;
  *(v8 + 8) = 1;
  OUTLINED_FUNCTION_21_3();
  sub_26B6AF158();
  OUTLINED_FUNCTION_31_4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v13 = *&v0[v23];

    v14 = *&v0[v21];

    type metadata accessor for SportingEventCoverageIngestion();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    v10 = sub_26B67FB30(v9);
    OUTLINED_FUNCTION_94_1(v10);
    OUTLINED_FUNCTION_88_1();
    v12 = sub_26B67FC10(v11);
    v15 = *&v0[v21];
    *&v0[v21] = v12;

    OUTLINED_FUNCTION_88_1();
    v17 = sub_26B67FC4C(v16);
    OUTLINED_FUNCTION_187(v17, v18);
    v22.receiver = v0;
    v22.super_class = type metadata accessor for SportingEventCoverageIngestion();
    objc_msgSendSuper2(&v22, sel_init);
    v19 = OUTLINED_FUNCTION_112_0();
    v20(v19, v4);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69C280(void *a1@<X8>)
{
  SportingEventCoverageIngestion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B69C308(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B69C37C(&v4);
  *a2 = v4;
}

void sub_26B69C344(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B69C388(&v3);
}

void SportingEventCoverageIngestionUpdate.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCoverageIngestionUpdate.init(from:)();
}

void SportingEventCoverageIngestionUpdate.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A840, &qword_26B6F37A0);
  v17 = OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v8 = &v0[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__coverageUpdateType];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode;
  v0[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode] = 2;
  v10 = v3[3];
  v11 = v3[4];
  OUTLINED_FUNCTION_39(v3);
  sub_26B6AF548();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v12 = v8[1];

    type metadata accessor for SportingEventCoverageIngestionUpdate();
    OUTLINED_FUNCTION_106_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = sub_26B6EA424();
    OUTLINED_FUNCTION_178(v13, v14);
    sub_26B6AF59C();
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA464();
    v15 = OUTLINED_FUNCTION_171();
    v16(v15, v17);
    v0[v9] = 0;
    v18.receiver = v0;
    v18.super_class = type metadata accessor for SportingEventCoverageIngestionUpdate();
    objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B69C5D0(uint64_t a1)
{
  sub_26B68A2A0(a1, v23);
  if (!v24)
  {
    sub_26B6413B4(v23, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_17;
  }

  v2 = type metadata accessor for SportingEventCoverageIngestionUpdate();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v20, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  OUTLINED_FUNCTION_142_0();
  v11 = *&v22[v10 + 8];
  if (v12)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_44_2(v9);
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_26B6EA5D4() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v11)
  {
LABEL_16:

    goto LABEL_17;
  }

  v16 = *(v1 + OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode);
  v17 = v22[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode];
  if (v16 != 2)
  {
    if (v17 != 2)
    {
      v18 = sub_26B647CD8(v16 & 1, v17 & 1);

      return v18 & 1;
    }

    goto LABEL_16;
  }

  v18 = v17 == 2;
  return v18 & 1;
}

uint64_t sub_26B69C72C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026B6FD430 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69C804(char a1)
{
  if (a1)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_26B69C84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69C72C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69C874(uint64_t a1)
{
  v2 = sub_26B6AF548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69C8B0(uint64_t a1)
{
  v2 = sub_26B6AF548();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69C910()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A858, &qword_26B6F37A8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AF548();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v0 + OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__coverageUpdateType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  OUTLINED_FUNCTION_2_11();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode);
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A860, &qword_26B6F37C0);
    sub_26B6AF5F0();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void sub_26B69CA54(void *a1@<X8>)
{
  SportingEventCoverageIngestionUpdate.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t IngestionError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

unint64_t sub_26B69CB1C@<X0>(unint64_t *a1@<X8>)
{
  result = IngestionError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SportsKit::SportingEventProgressStatus_optional __swiftcall SportingEventProgressStatus.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventProgressStatus.rawValue.getter()
{
  result = 0x656D6147657250;
  switch(*v0)
  {
    case 1:
      result = 0x6572676F72506E49;
      break;
    case 2:
      result = 0x6B61657242;
      break;
    case 3:
      result = 0x6C616E6946;
      break;
    case 4:
      result = 0x656E6F7074736F50;
      break;
    case 5:
      result = 0x65646E6570737553;
      break;
    case 6:
      result = 0x656C6C65636E6143;
      break;
    case 7:
      result = 0x646579616C6544;
      break;
    case 8:
      result = 0x74696566726F46;
      break;
    case 9:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69CE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B646CAC();
}

uint64_t sub_26B69CE20@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventProgressStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B69CF24()
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t SportingEventCompetitorQualifier.rawValue.getter()
{
  if (*v0)
  {
    return 2036430657;
  }

  else
  {
    return 1701670728;
  }
}

uint64_t sub_26B69CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorQualifier.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

void sub_26B69D0DC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B69D150(&v4);
  *a2 = v4;
}

void sub_26B69D118(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B69D15C(&v3);
}

id SportingEventCompetitorContainer.init(competitor:score:isActive:winOutcome:ordinal:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, char a6)
{
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive;
  v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive] = 2;
  v8 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome;
  v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome] = 4;
  v9 = &v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  *v9 = 0;
  v9[8] = 1;
  *&v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor] = a1;
  *&v6[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] = a2;
  v6[v7] = a3;
  v6[v8] = *a4;
  *v9 = a5;
  v9[8] = a6 & 1;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for SportingEventCompetitorContainer();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_26B69D2C8(uint64_t a1)
{
  v2 = v1;
  sub_26B68A2A0(a1, v27);
  if (!v28)
  {
    sub_26B6413B4(v27, &qword_2804092A0, &qword_26B6F2850);
    return 0;
  }

  v3 = type metadata accessor for SportingEventCompetitorContainer();
  OUTLINED_FUNCTION_38_3(v3, v4, v5, v3, v6, v7, v8, v9, v24, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_26B68A378();
  v10 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor);
  v11 = *&v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor];
  OUTLINED_FUNCTION_52_0();
  LOBYTE(v10) = sub_26B6E9FA4();

  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score);
  v13 = *&v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score];
  OUTLINED_FUNCTION_52_0();
  v14 = sub_26B6E9FA4();

  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive);
  v16 = v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive];
  if (v15 == 2)
  {
    if (v16 != 2)
    {
LABEL_18:

      return 0;
    }
  }

  else if (v16 == 2 || ((v16 ^ v15) & 1) != 0)
  {
    goto LABEL_18;
  }

  v17 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome);
  v18 = v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome];
  if (v17 == 4)
  {
    if (v18 != 4)
    {
      goto LABEL_18;
    }
  }

  else if (v18 == 4 || (sub_26B646688(v17, v18) & 1) == 0)
  {
    goto LABEL_18;
  }

  v19 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal);
  v20 = *(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal + 8);
  v21 = *&v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  v22 = v26[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal + 8];

  if ((v20 & 1) == 0)
  {
    return (v19 == v21) & ~v22;
  }

  return v22;
}

void sub_26B69D478(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score) + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  v4 = sub_26B6542CC(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_26;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D67DB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = (*&v6[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name);
    v9 = *v8;
    v10 = v8[1];
    v11 = 0xE500000000000000;
    v12 = 0x65726F6353;
    switch(v2)
    {
      case 1:
        v11 = 0xE400000000000000;
        v12 = 1936618834;
        break;
      case 2:
        v11 = 0xE400000000000000;
        v12 = 1937008968;
        break;
      case 3:
        v11 = 0xE600000000000000;
        v12 = 0x73726F727245;
        break;
      case 4:
        v11 = 0xE700000000000000;
        v12 = 0x73656B69727453;
        break;
      case 5:
        v13 = 1819042114;
        goto LABEL_16;
      case 6:
        v12 = 1937012047;
        v11 = 0xE400000000000000;
        break;
      case 7:
        v11 = 0xE800000000000000;
        OUTLINED_FUNCTION_90();
        break;
      case 8:
        v13 = 1818324807;
LABEL_16:
        v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
        break;
      default:
        break;
    }

    if (v9 == v12 && v10 == v11)
    {

LABEL_26:

      return;
    }

    v15 = sub_26B6EA5D4();

    if (v15)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_26B69D6AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74697465706D6F63 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576697463417369 && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6374754F6E6977 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B69D854(char a1)
{
  result = 0x74697465706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x6576697463417369;
      break;
    case 3:
      result = 0x6F6374754F6E6977;
      break;
    case 4:
      result = 0x6C616E6964726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69D900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69D6AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69D928(uint64_t a1)
{
  v2 = sub_26B6AF74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69D964(uint64_t a1)
{
  v2 = sub_26B6AF74C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69DA04()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8C0, &unk_26B6F37D0);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AF74C();
  OUTLINED_FUNCTION_39_3();
  v14 = *(v0 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor);
  type metadata accessor for SportingEventCompetitor();
  OUTLINED_FUNCTION_130_0();
  sub_26B6B25CC(v6, v7, v8);
  OUTLINED_FUNCTION_3_12();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score);
    type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_129_0();
    sub_26B6B25CC(v9, v10, v11);
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive);
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C890();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8C8, &qword_26B6F37E8);
    sub_26B6AF7E8();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
    OUTLINED_FUNCTION_25_5((v0 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal));
    OUTLINED_FUNCTION_175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
    sub_26B6AF944();
    OUTLINED_FUNCTION_3_12();
    sub_26B6EA534();
  }

  v12 = OUTLINED_FUNCTION_21_2();
  v13(v12);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitorContainer.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorContainer.init(from:)();
}

void SportingEventCompetitorContainer.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A278, &qword_26B6F25E8);
  v24 = OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive;
  v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__isActive] = 2;
  v9 = OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome;
  v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__winOutcome] = 4;
  v10 = &v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer__ordinal];
  *v10 = 0;
  v10[8] = 1;
  v11 = v3[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_39(v3);
  sub_26B6AF74C();
  OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for SportingEventCompetitorContainer();
    OUTLINED_FUNCTION_106_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventCompetitor();
    OUTLINED_FUNCTION_130_0();
    sub_26B6B25CC(v13, v14, v15);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_160();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_competitor] = v25;
    type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_129_0();
    sub_26B6B25CC(v16, v17, v18);
    OUTLINED_FUNCTION_235();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_88_1();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorContainer_score] = v25;
    v0[v8] = sub_26B67FC84(2);
    OUTLINED_FUNCTION_198(3);
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_80_1();
      sub_26B6EA3C4();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_213();
      sub_26B6812CC();
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v19 = 4;
    }

    v0[v9] = v19;
    OUTLINED_FUNCTION_88_1();
    *v10 = sub_26B67FD10(v20);
    v10[8] = v21 & 1;
    v26.receiver = v0;
    v26.super_class = type metadata accessor for SportingEventCompetitorContainer();
    objc_msgSendSuper2(&v26, sel_init);
    v22 = OUTLINED_FUNCTION_112_0();
    v23(v22, v24);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69DFC4(void *a1@<X8>)
{
  SportingEventCompetitorContainer.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B69E040(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69E078(v4);
}

uint64_t sub_26B69E084(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69E0BC(v4);
}

uint64_t sub_26B69E0C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69E100(v4);
}

uint64_t sub_26B69E144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69E17C(v4);
}

uint64_t sub_26B69E188(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B69E1C0(v4);
}

void sub_26B69E1CC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B69E240(&v4);
  *a2 = v4;
}

void sub_26B69E208(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B69E24C(&v3);
}

void SportingEventCompetitor.__allocating_init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  OUTLINED_FUNCTION_150();
  v10 = objc_allocWithZone(v9);
  OUTLINED_FUNCTION_153();
  SportingEventCompetitor.init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(v11, v12, v13, v14, v15, v16, v17, a8, a9, v18, a8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
}

void SportingEventCompetitor.init(canonicalId:members:metadata:statistics:abbreviation:localizedDisplayName:images:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  OUTLINED_FUNCTION_132();
  a20 = v24;
  a21 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = a22;
  v32 = a23;
  v34 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members] = 0;
  v35 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata] = 0;
  v36 = *v32;
  v37 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics] = 0;
  v38 = &v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__abbreviation];
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName] = 0;
  v40 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images;
  *&v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images] = 0;
  v41 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier;
  v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier] = 2;
  v42 = &v23[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId];
  *v42 = v43;
  v42[1] = v44;
  *&v23[v34] = v45;
  *&v23[v35] = v46;
  v47 = *&v23[v37];
  *&v23[v37] = v48;

  v49 = v38[1];
  *v38 = v31;
  v38[1] = v29;

  v50 = *&v23[v39];
  *&v23[v39] = v27;

  v51 = *&v23[v40];
  *&v23[v40] = v33;

  v23[v41] = v36;
  v52 = type metadata accessor for SportingEventCompetitor();
  a9.receiver = v23;
  a9.super_class = v52;
  objc_msgSendSuper2(&a9, sel_init);
  OUTLINED_FUNCTION_131();
}

void sub_26B69E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v33;
  a28 = v34;
  sub_26B68A2A0(v35, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_120;
  }

  type metadata accessor for SportingEventCompetitor();
  if ((OUTLINED_FUNCTION_98_0() & 1) == 0)
  {
LABEL_120:
    OUTLINED_FUNCTION_165();
    return;
  }

  v36 = a12;
  v37 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members);
  if (v37)
  {
    v38 = *&a12[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members];
    if (v38)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v87)
      {
        goto LABEL_119;
      }

      v93 = v29;
      v98 = a12;
      if ((v28 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_43_2();

        OUTLINED_FUNCTION_144();
        while (1)
        {
          OUTLINED_FUNCTION_124_0();
          if (v87)
          {

            v29 = v93;
            v36 = a12;
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_122_0();
          if (v39)
          {
            break;
          }

          if (a11)
          {
            v46 = OUTLINED_FUNCTION_92_1();
            v41 = MEMORY[0x26D67DB30](v46);
          }

          else
          {
            OUTLINED_FUNCTION_121_0();
            if (v40)
            {
              goto LABEL_123;
            }

            v41 = *(v37 + 8 * v31);
          }

          v42 = v41;
          if (v32)
          {
            v47 = OUTLINED_FUNCTION_111();
            v43 = MEMORY[0x26D67DB30](v47);
          }

          else
          {
            OUTLINED_FUNCTION_156();
            if (v40)
            {
              goto LABEL_124;
            }

            v43 = *(v38 + 8 * v31);
          }

          v44 = v43;
          type metadata accessor for SportingEventParticipant();
          v45 = OUTLINED_FUNCTION_93_1();

          ++v31;
          if ((v45 & 1) == 0)
          {
LABEL_98:

            goto LABEL_120;
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
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
      }

      __break(1u);
      goto LABEL_138;
    }
  }

LABEL_23:
  v48 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata);
  if (v48)
  {
    v49 = *&v36[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata];
    if (v49)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v87)
      {
        goto LABEL_119;
      }

      v94 = v29;
      v98 = v36;
      if (v28 < 0)
      {
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v87)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v39)
        {
          goto LABEL_125;
        }

        if (a11)
        {
          v55 = OUTLINED_FUNCTION_92_1();
          v50 = MEMORY[0x26D67DB30](v55);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v40)
          {
            goto LABEL_126;
          }

          v50 = *(v48 + 8 * v31);
        }

        v51 = v50;
        if (v32)
        {
          v56 = OUTLINED_FUNCTION_111();
          v52 = MEMORY[0x26D67DB30](v56);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v40)
          {
            goto LABEL_127;
          }

          v52 = *(v49 + 8 * v31);
        }

        v53 = v52;
        type metadata accessor for SportingEventMetadata();
        v54 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v54 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v94;
      v36 = v98;
    }
  }

  v57 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
  if (v57)
  {
    v58 = *&v36[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics];
    if (v58)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v87)
      {
        goto LABEL_119;
      }

      v95 = v29;
      v98 = v36;
      if (v28 < 0)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v87)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v39)
        {
          goto LABEL_128;
        }

        if (a11)
        {
          v64 = OUTLINED_FUNCTION_92_1();
          v59 = MEMORY[0x26D67DB30](v64);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v40)
          {
            goto LABEL_129;
          }

          v59 = *(v57 + 8 * v31);
        }

        v60 = v59;
        if (v32)
        {
          v65 = OUTLINED_FUNCTION_111();
          v61 = MEMORY[0x26D67DB30](v65);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v40)
          {
            goto LABEL_130;
          }

          v61 = *(v58 + 8 * v31);
        }

        v62 = v61;
        type metadata accessor for SportingEventCompetitorStatistic();
        v63 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v63 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v95;
      v36 = v98;
    }
  }

  v66 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName);
  if (v66)
  {
    v67 = *&v36[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName];
    if (v67)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v87)
      {
        goto LABEL_119;
      }

      v96 = v29;
      v98 = v36;
      if (v28 < 0)
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_216();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v87)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v39)
        {
          goto LABEL_131;
        }

        if (a11)
        {
          v72 = OUTLINED_FUNCTION_92_1();
          v68 = MEMORY[0x26D67DB30](v72);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v40)
          {
            goto LABEL_132;
          }

          v68 = *(v66 + 8 * v31);
        }

        v69 = v68;
        if (v30)
        {
          v73 = OUTLINED_FUNCTION_111();
          v70 = MEMORY[0x26D67DB30](v73);
        }

        else
        {
          if (v29 >= *(v32 + 16))
          {
            goto LABEL_133;
          }

          v70 = *(v67 + 8 * v31);
        }

        v71 = v70;
        type metadata accessor for SportingEventLocalizedDisplayName();
        v29 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v29 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v29 = v96;
      v36 = v98;
    }
  }

  v74 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images);
  if (!v74 || (v75 = *&v36[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images]) == 0)
  {
LABEL_100:
    OUTLINED_FUNCTION_47_2();
    if (v84)
    {
      if (!v82)
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_44_2(v83);
      v87 = v87 && v85 == v86;
      if (!v87 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (v82)
    {
LABEL_119:

      goto LABEL_120;
    }

    v88 = *(v29 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier);
    v89 = v36[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier];
    if (v88 == 2)
    {
      if (v89 != 2)
      {
        goto LABEL_119;
      }
    }

    else if (v89 == 2 || (sub_26B646A7C(v88 & 1, v89 & 1) & 1) == 0)
    {
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_228(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId);
    if (!v87 || v90 != v91)
    {
      sub_26B6EA5D4();
    }

    goto LABEL_119;
  }

  OUTLINED_FUNCTION_26_7();
  if (!v87)
  {
    goto LABEL_119;
  }

  v97 = v29;
  v98 = v36;
  if ((v28 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_216();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v87)
      {
        break;
      }

      OUTLINED_FUNCTION_122_0();
      if (v39)
      {
        goto LABEL_134;
      }

      if (a11)
      {
        v80 = OUTLINED_FUNCTION_92_1();
        v76 = MEMORY[0x26D67DB30](v80);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v40)
        {
          goto LABEL_135;
        }

        v76 = *(v74 + 8 * v31);
      }

      v77 = v76;
      if (v30)
      {
        v81 = OUTLINED_FUNCTION_111();
        v78 = MEMORY[0x26D67DB30](v81);
      }

      else
      {
        if (v29 >= *(v32 + 16))
        {
          goto LABEL_136;
        }

        v78 = *(v75 + 8 * v31);
      }

      v79 = v78;
      type metadata accessor for SportingEventImage();
      v29 = OUTLINED_FUNCTION_93_1();

      ++v31;
      if ((v29 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    v29 = v97;
    v36 = v98;
    goto LABEL_100;
  }

LABEL_141:
  __break(1u);
}

void sub_26B69E988()
{
  OUTLINED_FUNCTION_132();
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
  if (v2)
  {
    v3 = *v1;
    v4 = sub_26B6542CC(v2);
    OUTLINED_FUNCTION_245();
    v15 = v5;
    v16 = v6;

    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_27;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D67DB30](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = (*&v8[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit36SportingEventCompetitorStatisticType_name);
      v11 = 0xE700000000000000;
      v12 = 0x73747369737341;
      switch(v3)
      {
        case 1:
          v12 = 0xD000000000000015;
          v11 = v15;
          break;
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x736573736150;
          break;
        case 3:
          v12 = 0xD000000000000015;
          v11 = v16;
          break;
        case 4:
          v11 = 0xE800000000000000;
          v12 = 0x73646E756F626552;
          break;
        case 5:
          v11 = 0xE500000000000000;
          v12 = 0x73746F6853;
          break;
        case 6:
          v11 = 0xEA00000000006C61;
          v12 = 0x6F473A73746F6853;
          break;
        case 7:
          v11 = 0xE900000000000073;
          v12 = 0x7265766F6E727554;
          break;
        default:
          break;
      }

      if (*v10 == v12 && v10[1] == v11)
      {

LABEL_26:

        goto LABEL_27;
      }

      v14 = sub_26B6EA5D4();

      if (v14)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B69EBDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737265626D656DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000026B6FCA10 == a2;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
              {

                return 7;
              }

              else
              {
                v13 = sub_26B6EA5D4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26B69EE70(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x737265626D656DLL;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x6974736974617473;
      break;
    case 4:
      result = 0x6169766572626261;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x736567616D69;
      break;
    case 7:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B69EF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69EBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69EF9C(uint64_t a1)
{
  v2 = sub_26B6AFAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69EFD8(uint64_t a1)
{
  v2 = sub_26B6AFAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69F0C4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A928, &qword_26B6F3810);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6AFAB0();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId);
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members);
    OUTLINED_FUNCTION_87_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A930, &qword_26B6F3818);
    sub_26B6AFB04();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata);
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A940, &qword_26B6F3830);
    sub_26B6AFCC0();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A950, &qword_26B6F3848);
    sub_26B6AFE7C();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    v8 = *(v1 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__abbreviation);
    OUTLINED_FUNCTION_175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B6839E8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A720, &qword_26B6F36D8);
    sub_26B6AE944();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    OUTLINED_FUNCTION_205(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A960, &qword_26B6F3860);
    sub_26B6B003C();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    v9 = *(v1 + OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A970, &qword_26B6F3878);
    sub_26B6B01F8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitor.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCompetitor.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

void SportingEventCompetitor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_38();
  v15 = v13;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A258, &qword_26B6F25C8);
  OUTLINED_FUNCTION_4(v18);
  v51 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_16_0();
  v56 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__members] = 0;
  v55 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__metadata] = 0;
  v52 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__statistics] = 0;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__abbreviation);
  v53 = v23;
  v54 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__localizedDisplayName] = 0;
  v24 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images;
  *&v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__images] = 0;
  v25 = OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier;
  v15[OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor__qualifier] = 2;
  v26 = v17[3];
  v27 = v17[4];
  OUTLINED_FUNCTION_39(v17);
  sub_26B6AFAB0();
  OUTLINED_FUNCTION_48_1();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    v32 = *&v15[v56];

    v33 = *&v15[v55];

    v34 = *&v15[v52];

    v35 = *(v53 + 8);

    v36 = *&v15[v54];

    v37 = *&v15[v24];

    type metadata accessor for SportingEventCompetitor();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v58[0]) = 0;
    OUTLINED_FUNCTION_35_1();
    v28 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v28, v29, OBJC_IVAR____TtC9SportsKit23SportingEventCompetitor_canonicalId);
    OUTLINED_FUNCTION_35_1();
    v31 = sub_26B67FE00(v30);
    OUTLINED_FUNCTION_94_1(v31);
    OUTLINED_FUNCTION_35_1();
    v39 = sub_26B67FE28(v38);
    OUTLINED_FUNCTION_94_1(v39);
    OUTLINED_FUNCTION_35_1();
    v41 = sub_26B67FE64(v40);
    v42 = *&v15[v52];
    *&v15[v52] = v41;

    v43 = sub_26B67FEA0(4);
    OUTLINED_FUNCTION_178(v43, v44);
    v45 = sub_26B67FEC8(5);
    v46 = *&v15[v54];
    *&v15[v54] = v45;

    v47 = sub_26B67FF04(6);
    v48 = *&v15[v24];
    *&v15[v24] = v47;

    OUTLINED_FUNCTION_198(7);
    if (sub_26B6EA484())
    {
      sub_26B6EA3C4();
      sub_26B642140(v58, &v57);
      sub_26B681414();
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      a13 = 2;
    }

    v15[v25] = a13;
    v50 = type metadata accessor for SportingEventCompetitor();
    v59.receiver = v15;
    v59.super_class = v50;
    objc_msgSendSuper2(&v59, sel_init);
    (*(v51 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B69F78C(void *a1@<X8>)
{
  SportingEventCompetitor.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventMetadata.__allocating_init(metadataType:value:)()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_240();
  return SportingEventMetadata.init(metadataType:value:)(v0, v1, v2);
}

id SportingEventMetadata.init(metadataType:value:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] = *a1;
  v4 = &v3[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SportingEventMetadata();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_26B69F898(uint64_t a1)
{
  sub_26B68A2A0(a1, v17);
  if (!v18)
  {
    sub_26B6413B4(v17, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_10;
  }

  v2 = type metadata accessor for SportingEventMetadata();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v14, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  OUTLINED_FUNCTION_194(OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = sub_26B6472BC(*(v1 + OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType), v16[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType]);

  return v12 & 1;
}

uint64_t sub_26B69F9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xEC00000065707954;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B69FA78(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_26B69FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69F9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B69FAE4(uint64_t a1)
{
  v2 = sub_26B6B0354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69FB20(uint64_t a1)
{
  v2 = sub_26B6B0354();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B69FB80()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A990, &qword_26B6F3890);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0354();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v1 + OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType);
  sub_26B6B03A8();
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4F4();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventMetadata.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventMetadata.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

void SportingEventMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9A8, &qword_26B6F3898);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B0354();
  OUTLINED_FUNCTION_12_7();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for SportingEventMetadata();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    sub_26B6B03FC();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    v15[OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_metadataType] = a13;
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_52_1();
    v20 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v20, v21, OBJC_IVAR____TtC9SportsKit21SportingEventMetadata_value);
    v24.receiver = v15;
    v24.super_class = type metadata accessor for SportingEventMetadata();
    objc_msgSendSuper2(&v24, sel_init);
    v22 = OUTLINED_FUNCTION_10_8();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B69FE5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_223();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_26B69FED4(void *a1@<X8>)
{
  SportingEventMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B69FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B69FE5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B69FF50(uint64_t a1)
{
  v2 = sub_26B6B0450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B69FF8C(uint64_t a1)
{
  v2 = sub_26B6B0450();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventMetadataType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9B8, &qword_26B6F38A0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B0450();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    OUTLINED_FUNCTION_105_1();
    sub_26B6EA424();
    v10 = sub_26B6EA394();

    if (v10 >= 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    (*(v6 + 8))(v3, v4);
    *v2 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_37();
}

uint64_t SportingEventMetadataType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636142;
  }
}

SportsKit::SportingEventMetadataType_optional __swiftcall SportingEventMetadataType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventMetadataType.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A9C8, &qword_26B6F38A8);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v7 = *v0;
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B6B0450();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_234();
  sub_26B6EA4F4();
  v9 = OUTLINED_FUNCTION_85_1();
  v10(v9);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6A0360@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventMetadataType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6A0520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A0558(v4);
}

uint64_t sub_26B6A0564(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A059C(v4);
}

uint64_t sub_26B6A05A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A05E0(v4);
}

void sub_26B6A05EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v33;
  a28 = v34;
  sub_26B68A2A0(v35, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_116;
  }

  type metadata accessor for SportingEventParticipant();
  if ((OUTLINED_FUNCTION_98_0() & 1) == 0)
  {
LABEL_116:
    OUTLINED_FUNCTION_165();
    return;
  }

  v36 = a12;
  v37 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata);
  if (v37)
  {
    v38 = *&a12[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata];
    if (v38)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v68)
      {
        goto LABEL_115;
      }

      v101 = v29;
      v103 = a12;
      if ((v28 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_43_2();

        OUTLINED_FUNCTION_144();
        while (1)
        {
          OUTLINED_FUNCTION_124_0();
          if (v68)
          {

            v29 = v101;
            v36 = a12;
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_122_0();
          if (v39)
          {
            break;
          }

          if (a11)
          {
            v45 = OUTLINED_FUNCTION_92_1();
            v41 = MEMORY[0x26D67DB30](v45);
          }

          else
          {
            OUTLINED_FUNCTION_121_0();
            if (v40)
            {
              goto LABEL_120;
            }

            v41 = *(v37 + 8 * v31);
          }

          v36 = v41;
          if (v32)
          {
            v46 = OUTLINED_FUNCTION_111();
            v42 = MEMORY[0x26D67DB30](v46);
          }

          else
          {
            OUTLINED_FUNCTION_156();
            if (v40)
            {
              goto LABEL_121;
            }

            v42 = *(v38 + 8 * v31);
          }

          v43 = v42;
          type metadata accessor for SportingEventParticipantMetadata();
          v44 = OUTLINED_FUNCTION_93_1();

          ++v31;
          if ((v44 & 1) == 0)
          {
LABEL_60:

            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      goto LABEL_130;
    }
  }

LABEL_23:
  v47 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (v47)
  {
    v48 = *&v36[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics];
    if (v48)
    {
      OUTLINED_FUNCTION_26_7();
      if (!v68)
      {
        goto LABEL_115;
      }

      v102 = v29;
      v103 = v36;
      if (v28 < 0)
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_43_2();

      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_124_0();
        if (v68)
        {
          break;
        }

        OUTLINED_FUNCTION_122_0();
        if (v39)
        {
          goto LABEL_122;
        }

        if (a11)
        {
          v53 = OUTLINED_FUNCTION_92_1();
          v49 = MEMORY[0x26D67DB30](v53);
        }

        else
        {
          OUTLINED_FUNCTION_121_0();
          if (v40)
          {
            goto LABEL_123;
          }

          v49 = *(v47 + 8 * v31);
        }

        v36 = v49;
        if (v32)
        {
          v54 = OUTLINED_FUNCTION_111();
          v50 = MEMORY[0x26D67DB30](v54);
        }

        else
        {
          OUTLINED_FUNCTION_156();
          if (v40)
          {
            goto LABEL_124;
          }

          v50 = *(v48 + 8 * v31);
        }

        v51 = v50;
        type metadata accessor for SportingEventParticipantStatistic();
        v52 = OUTLINED_FUNCTION_93_1();

        ++v31;
        if ((v52 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v29 = v102;
      v36 = v103;
    }
  }

  v55 = *(v29 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images);
  if (!v55 || (v56 = *&v36[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images]) == 0)
  {
LABEL_63:
    OUTLINED_FUNCTION_47_2();
    if (v65)
    {
      if (!v63)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v64);
      v68 = v68 && v66 == v67;
      if (!v68 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v63)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v71)
    {
      if (!v69)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v70);
      v74 = v68 && v72 == v73;
      if (!v74 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v69)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v77)
    {
      if (!v75)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v76);
      v80 = v68 && v78 == v79;
      if (!v80 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v75)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v83)
    {
      if (!v81)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v82);
      v86 = v68 && v84 == v85;
      if (!v86 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }
    }

    else if (v81)
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_47_2();
    if (v89)
    {
      if (!v87)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v88);
      v92 = v68 && v90 == v91;
      if (!v92 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_106:
      OUTLINED_FUNCTION_142_0();
      v95 = &v36[v94];
      v96 = *(v95 + 1);
      if (!v97)
      {
        v100 = *(v95 + 1);

        if (v96)
        {
LABEL_61:
        }

        goto LABEL_116;
      }

      if (!v96)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_44_2(v93);
      if (!v68 || v98 != v96)
      {
        OUTLINED_FUNCTION_223();
        goto LABEL_115;
      }

LABEL_125:

      goto LABEL_116;
    }

    if (!v87)
    {
      goto LABEL_106;
    }

LABEL_115:

    goto LABEL_116;
  }

  OUTLINED_FUNCTION_26_7();
  if (!v68)
  {
    goto LABEL_115;
  }

  v103 = v36;
  if ((v28 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_216();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v68)
      {

        v36 = v103;
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_122_0();
      if (v39)
      {
        break;
      }

      if (a11)
      {
        v61 = OUTLINED_FUNCTION_92_1();
        v57 = MEMORY[0x26D67DB30](v61);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v40)
        {
          goto LABEL_128;
        }

        v57 = *(v55 + 8 * v31);
      }

      v58 = v57;
      if (v30)
      {
        v62 = OUTLINED_FUNCTION_111();
        v59 = MEMORY[0x26D67DB30](v62);
      }

      else
      {
        if (v29 >= *(v32 + 16))
        {
          goto LABEL_129;
        }

        v59 = *(v56 + 8 * v31);
      }

      v60 = v59;
      type metadata accessor for SportingEventImage();
      v29 = OUTLINED_FUNCTION_93_1();

      ++v31;
      if ((v29 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
  }

  __break(1u);
}

void sub_26B6A0A90()
{
  OUTLINED_FUNCTION_132();
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
  if (v2)
  {
    v3 = *v1;
    v4 = sub_26B6542CC(v2);
    OUTLINED_FUNCTION_245();
    v15 = v5;
    v16 = v6;

    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_25;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D67DB30](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = (*&v8[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] + OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
      v11 = 0xEE00676E69747461;
      v12 = 0x423A737461427441;
      switch(v3)
      {
        case 1:
          v12 = 0x7461423A73746948;
          v11 = 0xEC000000676E6974;
          break;
        case 2:
          v12 = 0x503A736573736F4CLL;
          v11 = 0xEF676E6968637469;
          break;
        case 3:
          v12 = 0xD000000000000014;
          v11 = v15;
          break;
        case 4:
          v12 = 0xD00000000000001CLL;
          v11 = v16;
          break;
        case 5:
          v12 = 0x7469503A736E6957;
          v11 = 0xED0000676E696863;
          break;
        default:
          break;
      }

      if (*v10 == v12 && v10[1] == v11)
      {

LABEL_24:

        goto LABEL_25;
      }

      v14 = sub_26B6EA5D4();

      if (v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B6A0CE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26B6EA5D4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}