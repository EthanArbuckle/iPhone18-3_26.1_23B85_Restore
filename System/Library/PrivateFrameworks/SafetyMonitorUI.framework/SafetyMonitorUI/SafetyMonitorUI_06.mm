uint64_t sub_2646B395C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v152 = v2;
  v153 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v144 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v144 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v144 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v144 - v17;
  v19 = sub_264783B64();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v150 = &v144 - v25;
  v26 = *(v1 + 16);
  v151 = [swift_getObjCClassFromObject() messageType];
  if (*(v1 + 48) == 1)
  {
    v147 = v18;
    v27 = v26;
    v28 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v29 = v155;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v1;
    sub_264783ED4();

    v31 = v155;
    if (v155)
    {
      v32 = [v155 sessionID];
      v33 = v150;
      sub_264783B44();

      v34 = [v27 sessionID];
      sub_264783B44();

      LOBYTE(v34) = sub_264783B34();
      v35 = v20[1];
      v35(v24, v28);
      v35(v33, v28);
      v149 = v28;
      if (v34)
      {
        v36 = [v31 sessionState];
        v37 = v30[48];
        v144 = v27;
        v38 = v147;
        if (v37)
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v85 = v31;
        v86 = sub_264783E14();
        v87 = sub_2647859F4();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v147 = v85;
          v89 = v88;
          v146 = swift_slowAlloc();
          v154 = v30;
          v155 = v146;
          *v89 = 136316674;
          type metadata accessor for TranscriptViewModel();
          LODWORD(v145) = v87;

          v90 = sub_264785764();
          v92 = sub_2646DF234(v90, v91, &v155);

          *(v89 + 4) = v92;
          *(v89 + 12) = 2080;
          *(v89 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v155);
          *(v89 + 22) = 2080;
          if (v30[48])
          {
            v93 = 82;
          }

          else
          {
            v93 = 73;
          }

          v94 = sub_2646DF234(v93, 0xE100000000000000, &v155);

          *(v89 + 24) = v94;
          *(v89 + 32) = 2048;
          *(v89 + 34) = v151;
          *(v89 + 42) = 2080;
          v95 = [objc_opt_self() convertSessionStateToString_];
          v96 = sub_264785724();
          v151 = v36;
          v98 = v97;

          v99 = sub_2646DF234(v96, v98, &v155);

          *(v89 + 44) = v99;
          *(v89 + 52) = 2080;
          v100 = [v147 sessionID];
          v101 = v150;
          sub_264783B44();

          v102 = sub_264783B04();
          v104 = v103;
          v105 = v149;
          v35(v101, v149);
          v106 = sub_2646DF234(v102, v104, &v155);

          *(v89 + 54) = v106;
          *(v89 + 62) = 2080;
          v107 = [v144 sessionID];
          sub_264783B44();

          v108 = sub_264783B04();
          v110 = v109;
          v35(v101, v105);
          v36 = v151;
          v111 = sub_2646DF234(v108, v110, &v155);

          *(v89 + 64) = v111;
          _os_log_impl(&dword_264605000, v86, v145, "%s, %s: userType: %s, messageType: %lu, sessionState: %s, receiverSessionStatus.sessionID, %s, message.sessionID: %s", v89, 0x48u);
          v112 = v146;
          swift_arrayDestroy();
          MEMORY[0x266740650](v112, -1, -1);
          MEMORY[0x266740650](v89, -1, -1);
        }

        else
        {
        }

        (*(v153 + 8))(v38, v152);
        if (v36 < 0xA)
        {
          v62 = 0x33Cu >> v36;
          return v62 & 1;
        }
      }

      else
      {
        v63 = v30;
        if (v30[48])
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v113 = v31;
        v114 = sub_264783E14();
        v115 = sub_2647859B4();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = v27;
          v117 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v154 = v63;
          v155 = v151;
          *v117 = 136315906;
          type metadata accessor for TranscriptViewModel();
          LODWORD(v147) = v115;

          v118 = sub_264785764();
          v120 = sub_2646DF234(v118, v119, &v155);

          *(v117 + 4) = v120;
          *(v117 + 12) = 2080;
          *(v117 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v155);
          *(v117 + 22) = 2080;
          v121 = [v113 sessionID];
          v122 = v150;
          sub_264783B44();

          v123 = sub_264783B04();
          v125 = v124;
          v148 = v113;
          v126 = v149;
          v35(v122, v149);
          v127 = sub_2646DF234(v123, v125, &v155);

          *(v117 + 24) = v127;
          *(v117 + 32) = 2080;
          v128 = [v116 sessionID];
          sub_264783B44();

          v129 = sub_264783B04();
          v131 = v130;
          v35(v122, v126);
          v132 = sub_2646DF234(v129, v131, &v155);

          *(v117 + 34) = v132;
          _os_log_impl(&dword_264605000, v114, v147, "%s, %s: SessionID mismatch, hiding Details button. receiverSessionStatus.sessionID, %s, message.sessionID: %s", v117, 0x2Au);
          v133 = v151;
          swift_arrayDestroy();
          MEMORY[0x266740650](v133, -1, -1);
          MEMORY[0x266740650](v117, -1, -1);
        }

        else
        {
        }

        (*(v153 + 8))(v16, v152);
      }
    }

    else
    {
      v61 = v1;
      if (*(v1 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v64 = sub_264783E14();
      v65 = sub_2647859D4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v153;
        v70 = v68;
        v154 = v61;
        v155 = v68;
        *v66 = 136315650;
        type metadata accessor for TranscriptViewModel();

        v71 = sub_264785764();
        v73 = sub_2646DF234(v71, v72, &v155);

        *(v66 + 4) = v73;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v155);
        *(v66 + 22) = 2112;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v74 = v154;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v75 = v154;
        *(v66 + 24) = v154;
        *v67 = v75;
        _os_log_impl(&dword_264605000, v64, v65, "%s, %s: receiverSessionStatus unavailable, %@", v66, 0x20u);
        sub_26460CD50(v67, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v67, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v70, -1, -1);
        MEMORY[0x266740650](v66, -1, -1);

        (*(v69 + 8))(v13, v152);
      }

      else
      {

        (*(v153 + 8))(v13, v152);
      }
    }

LABEL_46:
    LOBYTE(v62) = 0;
    return v62 & 1;
  }

  sub_264783DF4();

  v39 = sub_264783E14();
  v40 = sub_2647859F4();

  v41 = os_log_type_enabled(v39, v40);
  v148 = v1;
  v149 = v19;
  v146 = v20;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v154 = v1;
    v155 = v43;
    *v42 = 136315906;
    type metadata accessor for TranscriptViewModel();
    v147 = v7;
    v145 = v24;

    v44 = sub_264785764();
    v46 = v26;
    v47 = v1;
    v48 = sub_2646DF234(v44, v45, &v155);
    v49 = v152;
    v50 = v153;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v155);
    *(v42 + 22) = 2080;
    v51 = *(v47 + 48);
    v26 = v46;
    if (v51)
    {
      v52 = 82;
    }

    else
    {
      v52 = 73;
    }

    v53 = sub_2646DF234(v52, 0xE100000000000000, &v155);

    *(v42 + 24) = v53;
    *(v42 + 32) = 2048;
    *(v42 + 34) = v151;
    _os_log_impl(&dword_264605000, v39, v40, "%s, %s: userType: %s, messageType: %lu", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v43, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);

    v54 = v50;
    v24 = v145;
    v55 = *(v54 + 8);
    v56 = v49;
    v7 = v147;
    v55(v10, v56);
  }

  else
  {

    v55 = *(v153 + 8);
    v55(v10, v152);
  }

  v57 = sub_264785714();
  v58 = MGGetSInt32Answer();

  if (v58 != 6 && v58 != 1)
  {
    goto LABEL_46;
  }

  if ([objc_opt_self() zelkovaRemoteControlEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v148;
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v60 = v155 ^ 1;
  }

  else
  {
    v60 = 0;
    v59 = v148;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  LOBYTE(v62) = 0;
  if (((v155 | v60) & 1) != 0 && v151)
  {
    if (v151 != 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v76 = v155;
      if (v155)
      {
        v77 = [v155 configuration];
        if (v77)
        {
          v78 = v77;
          v79 = [v77 sessionID];
          v80 = v150;
          sub_264783B44();

          v81 = [v26 sessionID];
          sub_264783B44();

          LOBYTE(v81) = sub_264783B34();
          v82 = v146[1];
          v83 = v149;
          v82(v24, v149);
          v82(v80, v83);
          v84 = [v76 isActiveState];

          LOBYTE(v62) = v84 & v81;
          return v62 & 1;
        }
      }

      if (v59[48])
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v135 = sub_264783E14();
      v136 = sub_2647859F4();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = v7;
        v139 = swift_slowAlloc();
        v154 = v59;
        v155 = v139;
        *v137 = 136315394;
        type metadata accessor for TranscriptViewModel();

        v140 = sub_264785764();
        v142 = sub_2646DF234(v140, v141, &v155);

        *(v137 + 4) = v142;
        *(v137 + 12) = 2080;
        *(v137 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v155);
        _os_log_impl(&dword_264605000, v135, v136, "%s, %s: Session state information missing - hiding view button", v137, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v139, -1, -1);
        MEMORY[0x266740650](v137, -1, -1);

        v143 = v138;
      }

      else
      {

        v143 = v7;
      }

      v55(v143, v152);
      goto LABEL_46;
    }

    LOBYTE(v62) = sub_2646B4B8C();
  }

  return v62 & 1;
}

uint64_t sub_2646B4B8C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = sub_264783AF4();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  if (*(v1 + 64) == 2)
  {
    v56 = v11;
    v57 = v3;
    v59 = v21;
    v60 = v6;
    v61 = v20;
    v58 = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v24 = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v75[2] = v71;
    v75[3] = v72;
    v75[4] = v73;
    v75[5] = v74;
    v75[0] = v69;
    v75[1] = v70;
    if (v70)
    {
      sub_26460CD50(v75, &qword_27FF756F8, &qword_264787DF0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v25 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v26 = v61;
      if ((*(v61 + 48))(v16, 1, v17) == 1)
      {
        sub_26460CD50(v16, &qword_27FF756B8, &qword_26478AC90);
      }

      else
      {
        (*(v26 + 32))(v23, v16, v17);
        v27 = v59;
        sub_264783AD4();
        v28 = sub_264783A74();
        v29 = *(v26 + 8);
        v29(v27, v17);
        v29(v23, v17);
        if (v28)
        {
          return 1;
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v31 = v63;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v71 = v65;
    v72 = v66;
    v73 = v67;
    v74 = v68;
    v69 = v63;
    v70 = v64;
    if (v64)
    {
      sub_26460CD50(&v69, &qword_27FF756F8, &qword_264787DF0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v32 = v63;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v33 = *(v61 + 48);
      LODWORD(v32) = v33(v14, 1, v17);
      sub_26460CD50(v14, &qword_27FF756B8, &qword_26478AC90);
      if (v32 != 1)
      {
        v34 = v60;
        if (*(v1 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v35 = sub_264783E14();
        v36 = sub_2647859E4();

        if (os_log_type_enabled(v35, v36))
        {
          v55 = v36;
          v37 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *&v63 = v54;
          *v37 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4();

          v38 = v62;
          swift_getKeyPath();
          swift_getKeyPath();
          v39 = v56;
          sub_264783ED4();

          if (v33(v39, 1, v17))
          {
            sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
            v40 = 0xE300000000000000;
            v41 = 7104878;
          }

          else
          {
            v42 = v61;
            v43 = v59;
            (*(v61 + 16))(v59, v39, v17);
            sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
            v44 = sub_264783A64();
            v45 = [v44 absoluteTimeString:0 preposition:0 capitalized:0];

            v46 = sub_264785724();
            v40 = v47;

            (*(v42 + 8))(v43, v17);
            v41 = v46;
          }

          v49 = v57;
          v48 = v58;
          v50 = v60;
          v51 = sub_2646DF234(v41, v40, &v63);

          *(v37 + 4) = v51;
          _os_log_impl(&dword_264605000, v35, v55, "Invalid safety cache expiry date, %s, hiding view button", v37, 0xCu);
          v52 = v54;
          __swift_destroy_boxed_opaque_existential_0(v54);
          MEMORY[0x266740650](v52, -1, -1);
          MEMORY[0x266740650](v37, -1, -1);

          (*(v49 + 8))(v50, v48);
        }

        else
        {

          (*(v57 + 8))(v34, v58);
        }
      }
    }
  }

  return 0;
}

uint64_t TranscriptViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__sessionViewModel;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__safetyCacheViewModel;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString, v10);
  v11(v0 + OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString, v10);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  return v0;
}

uint64_t TranscriptViewModel.__deallocating_deinit()
{
  TranscriptViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2646B56B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranscriptViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TranscriptViewModel()
{
  result = qword_27FF773B8;
  if (!qword_27FF773B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646B5754(uint64_t a1)
{
  result = sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel);
  *(a1 + 8) = result;
  return result;
}

void sub_2646B5954()
{
  sub_264656F60(319, &qword_27FF773C8);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2646B64FC(319, &qword_27FF773D0, type metadata accessor for SessionViewModel);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_2646B64FC(319, &qword_27FF773D8, type metadata accessor for SafetyCacheViewModel);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_264656F60(319, &qword_27FF75E18);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2646B64FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783EF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2646B6550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2646B6598()
{
  sub_264655264(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646B6608()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646B6654()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646B66B0()
{
  result = qword_27FF773F8;
  if (!qword_27FF773F8)
  {
    sub_264659B70(255, &qword_27FF76980, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF773F8);
  }

  return result;
}

uint64_t sub_2646B6718()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CheckInOnboardingViewController4.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_264783B94();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_264785704();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler];
  *v15 = 0;
  v15[1] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] = a1;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_sessionType] = a2;
  *v15 = a3;
  v15[1] = a4;
  sub_264611394(a3);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v18 = sub_264785714();

  v21.receiver = v5;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_symbolName_contentLayout_, v18, 0, 0, 2);
  sub_26460C9A0(a3);

  return v19;
}

Swift::Void __swiftcall CheckInOnboardingViewController4.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v6 = [objc_opt_self() boldButton];
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] == 1)
  {
    if (qword_27FF75180 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    sub_264785754();
  }

  v9 = sub_264785714();

  [v6 setTitle:v9 forState:0];

  [v6 addTarget:v0 action:sel_sendCheckIn forControlEvents:64];
  v10 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v11 = sub_264785714();
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
  v12 = [v0 buttonTray];
  [v12 addButton_];

  v13 = [v0 buttonTray];
  [v13 addButton_];

  if (*&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_sessionType] == 4)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v14 = sub_264785714();
    if (qword_27FF75120 != -1)
    {
      swift_once();
    }

    v15 = sub_264785714();
    v16 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v14 description:v15 symbolName:v16];

    if (qword_27FF75128 != -1)
    {
      swift_once();
    }

    v17 = sub_264785714();
    if (qword_27FF75130 != -1)
    {
      swift_once();
    }

    v18 = sub_264785714();
    v19 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v17 description:v18 symbolName:v19];

    if (qword_27FF75138 != -1)
    {
      swift_once();
    }

    v20 = sub_264785714();
    if (qword_27FF75140 == -1)
    {
      goto LABEL_32;
    }

LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  if (qword_27FF750B0 != -1)
  {
    swift_once();
  }

  v21 = sub_264785714();
  if (qword_27FF750D0 != -1)
  {
    swift_once();
  }

  v22 = sub_264785714();
  v23 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v21 description:v22 symbolName:v23];

  if (qword_27FF750D8 != -1)
  {
    swift_once();
  }

  v24 = sub_264785714();
  if (qword_27FF750E0 != -1)
  {
    swift_once();
  }

  v25 = sub_264785714();
  v26 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v24 description:v25 symbolName:v26];

  if (qword_27FF750E8 != -1)
  {
    swift_once();
  }

  v20 = sub_264785714();
  if (qword_27FF750F0 != -1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v27 = sub_264785714();
  v28 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v20 description:v27 symbolName:v28];

  if (qword_27FF750B8 != -1)
  {
    swift_once();
  }

  v29 = sub_264785714();
  if (qword_27FF750C8 != -1)
  {
    swift_once();
  }

  v30 = sub_264785714();
  v31 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v29 description:v30 symbolName:v31];
}

void sub_2646B72E4()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler + 8];

      v2(v4);
      sub_26460C9A0(v2);
    }
  }

  [objc_opt_self() setHasUserCompletedOnboarding_];
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

id CheckInOnboardingViewController4.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController4.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController4.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SafetyMonitorAvatarView.init(with:groupID:badgeImageName:diameter:padding:badgeDiameter:badgeImageColor:badgeAlignment:badgeStroke:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, char a13)
{
  if (a7)
  {
    v13 = a10 / 3.2;
  }

  else
  {
    v13 = a6;
  }

  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = v13;
  *(a9 + 40) = a8;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13 & 1;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a11;
  return result;
}

uint64_t SafetyMonitorAvatarView.body.getter()
{
  v1 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v1;
  v9[4] = *(v0 + 64);
  v10 = *(v0 + 80);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v1;
  v8 = 1;
  sub_2646B7A2C(v9, &v21);
  v16 = v26;
  v17 = v27;
  v18[0] = v28[0];
  *(v18 + 10) = *(v28 + 10);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = v21;
  v12 = v22;
  v19[5] = v26;
  v19[6] = v27;
  v20[0] = v28[0];
  *(v20 + 10) = *(v28 + 10);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_26460CCE8(&v11, &v5, &qword_27FF77420, &qword_26478CFD0);
  sub_26460CD50(v19, &qword_27FF77420, &qword_26478CFD0);
  *&v7[103] = v17;
  *&v7[87] = v16;
  *&v7[39] = v13;
  *&v7[23] = v12;
  *&v7[119] = v18[0];
  *&v7[129] = *(v18 + 10);
  *&v7[55] = v14;
  *&v7[71] = v15;
  *&v7[7] = v11;
  *&v6[97] = *&v7[96];
  *&v6[113] = *&v7[112];
  *&v6[129] = *&v7[128];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  *&v6[65] = *&v7[64];
  *&v6[81] = *&v7[80];
  *&v6[1] = *v7;
  v5 = v3;
  v6[0] = v8;
  v6[145] = BYTE9(v18[1]);
  *&v6[17] = *&v7[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77428, &qword_26478CFD8);
  sub_2646B7C58();
  sub_264784FE4();
  v28[1] = *&v6[112];
  v28[2] = *&v6[128];
  v29 = *&v6[144];
  v25 = *&v6[48];
  v26 = *&v6[64];
  v27 = *&v6[80];
  v28[0] = *&v6[96];
  v21 = v5;
  v22 = *v6;
  v23 = *&v6[16];
  v24 = *&v6[32];
  return sub_26460CD50(&v21, &qword_27FF77428, &qword_26478CFD8);
}

uint64_t sub_2646B7A2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v46 = a1[2];
  v47 = v4;
  v48 = a1[4];
  *&v49 = *(a1 + 10);
  v5 = a1[1];
  v44 = *a1;
  v45 = v5;
  sub_2646B7CD8(&v51);
  v6 = v51;
  v7 = sub_264784C44();
  v8 = *(a1 + 10);
  sub_264783F54();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_264784C54();
  sub_264783F54();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v44) = 0;
  LOBYTE(v51) = 0;
  v26 = *(a1 + 3);
  if (v26)
  {
    v27 = *(a1 + 2);
    v28 = *(a1 + 4);
    v29 = *(a1 + 5);
    v30 = *(a1 + 56) & 1 | 0x100;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v29 = 0;
    v30 = 0;
  }

  *&v37 = v6;
  BYTE8(v37) = v7;
  *&v38 = v10;
  *(&v38 + 1) = v12;
  *&v39 = v14;
  *(&v39 + 1) = v16;
  LOBYTE(v40) = 0;
  BYTE8(v40) = v17;
  *&v41 = v19;
  *(&v41 + 1) = v21;
  *&v42 = v23;
  *(&v42 + 1) = v25;
  v43 = 0;
  LOBYTE(v50) = 0;
  v44 = v37;
  v45 = v38;
  v48 = v41;
  v49 = v42;
  v46 = v39;
  v47 = v40;
  v31 = v38;
  *a2 = v37;
  *(a2 + 16) = v31;
  v32 = v46;
  v33 = v47;
  v34 = v49;
  v35 = v50;
  *(a2 + 64) = v48;
  *(a2 + 80) = v34;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = v28;
  *(a2 + 112) = v27;
  *(a2 + 120) = v26;
  *(a2 + 128) = v29;
  *(a2 + 136) = v30;

  sub_26460CCE8(&v37, &v51, &qword_27FF77448, &qword_26478D090);
  sub_2646B83C0(v28, v27, v26);
  sub_2646B8404(v28, v27, v26);
  v51 = v6;
  v52 = v7;
  v53 = v10;
  v54 = v12;
  v55 = v14;
  v56 = v16;
  v57 = 0;
  v58 = v17;
  v59 = v19;
  v60 = v21;
  v61 = v23;
  v62 = v25;
  v63 = 0;
  return sub_26460CD50(&v51, &qword_27FF77448, &qword_26478D090);
}

unint64_t sub_2646B7C58()
{
  result = qword_27FF77430;
  if (!qword_27FF77430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77428, &qword_26478CFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77430);
  }

  return result;
}

uint64_t sub_2646B7CD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  if (*v1)
  {
    v11 = v1[8];
    v10 = v1[9];
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v13 = *v1;
      }

      if (sub_264785C14())
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v23 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77460, &unk_26478D0A0);
      sub_2647852E4();
      v19 = v20;
      v23 = v11;
      v24 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
      sub_2647852E4();
      v18 = v20;
      v12 = v21;
      sub_264785504();
      sub_2647840A4();
      v20 = v19;
      v21 = v18;
      *&v22 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77468, &qword_26478D0B0);
      sub_2646B8448(&qword_27FF77470, &qword_27FF77468, &qword_26478D0B0, sub_26465A1AC);
      goto LABEL_11;
    }
  }

  sub_264783E04();
  v14 = sub_264783E14();
  v15 = sub_2647859D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_264605000, v14, v15, "Empty contact to create avatar for", v16, 2u);
    MEMORY[0x266740650](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_264785504();
  sub_2647840A4();
  v23 = v20;
  LOBYTE(v24) = BYTE8(v20);
  v25 = v21;
  v26 = BYTE8(v21);
  v27 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77450, &qword_26478D098);
  sub_2646B8448(&qword_27FF77458, &qword_27FF77450, &qword_26478D098, sub_264691184);
LABEL_11:
  result = sub_2647853C4();
  *a1 = result;
  return result;
}

uint64_t sub_2646B8028()
{
  v1 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v1;
  v9[4] = *(v0 + 64);
  v10 = *(v0 + 80);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v1;
  v8 = 1;
  sub_2646B7A2C(v9, &v21);
  v16 = v26;
  v17 = v27;
  v18[0] = v28[0];
  *(v18 + 10) = *(v28 + 10);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = v21;
  v12 = v22;
  v19[5] = v26;
  v19[6] = v27;
  v20[0] = v28[0];
  *(v20 + 10) = *(v28 + 10);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_26460CCE8(&v11, &v5, &qword_27FF77420, &qword_26478CFD0);
  sub_26460CD50(v19, &qword_27FF77420, &qword_26478CFD0);
  *&v7[103] = v17;
  *&v7[87] = v16;
  *&v7[39] = v13;
  *&v7[23] = v12;
  *&v7[119] = v18[0];
  *&v7[129] = *(v18 + 10);
  *&v7[55] = v14;
  *&v7[71] = v15;
  *&v7[7] = v11;
  *&v6[97] = *&v7[96];
  *&v6[113] = *&v7[112];
  *&v6[129] = *&v7[128];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  *&v6[65] = *&v7[64];
  *&v6[81] = *&v7[80];
  *&v6[1] = *v7;
  v5 = v3;
  v6[0] = v8;
  v6[145] = BYTE9(v18[1]);
  *&v6[17] = *&v7[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77428, &qword_26478CFD8);
  sub_2646B7C58();
  sub_264784FE4();
  v28[1] = *&v6[112];
  v28[2] = *&v6[128];
  v29 = *&v6[144];
  v25 = *&v6[48];
  v26 = *&v6[64];
  v27 = *&v6[80];
  v28[0] = *&v6[96];
  v21 = v5;
  v22 = *v6;
  v23 = *&v6[16];
  v24 = *&v6[32];
  return sub_26460CD50(&v21, &qword_27FF77428, &qword_26478CFD8);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2646B8284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646B82CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2646B8334()
{
  result = qword_27FF77438;
  if (!qword_27FF77438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77440, &qword_26478D088);
    sub_2646B7C58();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77438);
  }

  return result;
}

uint64_t sub_2646B83C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2646B8404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2646B8448(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2646B84E0()
{
  result = qword_27FF77478;
  if (!qword_27FF77478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77478);
  }

  return result;
}

uint64_t sub_2646B8534(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2646B857C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646B85E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_264785334();
}

uint64_t sub_2646B868C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264785274();
  *a1 = result;
  return result;
}

uint64_t sub_2646B86CC()
{
  v1 = sub_264784934();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77480, &qword_26478D1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  sub_2647848E4();
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77488, &qword_26478D1B8);
  sub_26460CDF0(&qword_27FF77490, &qword_27FF77488, &qword_26478D1B8);
  sub_264783FE4();
  v8 = sub_26460CDF0(&qword_27FF77498, &qword_27FF77480, &qword_26478D1B0);
  MEMORY[0x26673E690](v7, v3, v8);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2646B88C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646B8900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77480, &qword_26478D1B0);
  sub_26460CDF0(&qword_27FF77498, &qword_27FF77480, &qword_26478D1B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t SafetyCacheDetailedAddressFormatter.init(displayLocality:administrativeArea:formattedTime:shortAddress:coordinate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a8;
  a9[4] = sub_2646B8A70;
  a9[5] = v14;
  result = swift_allocObject();
  *(result + 16) = a10;
  *(result + 24) = a11;
  a9[6] = sub_2646B8A98;
  a9[7] = result;
  return result;
}

uint64_t sub_2646B8A38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646B8A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2646B8A98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2646B8AC0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v10 = [a1 location];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
    v13 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

    v14 = [v13 _geoMapItem];
    if (v14)
    {
      v15 = [v14 addressObject];
      swift_unknownObjectRelease();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      if (v15 && (v17 = [v15 cityDisplayNameWithFallback_]) != 0)
      {
        v18 = v17;
        v19 = sub_264785724();
        v48 = v20;
        v49 = v19;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v21 = [a1 administrativeArea];
      if (v21)
      {
        v22 = v21;
        v23 = sub_264785724();
        v46 = v24;
        v47 = v23;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      sub_2646B9908(a2, v9);
      v25 = sub_264783AF4();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v9, 1, v25) == 1)
      {

        sub_2646B9898(a2);
        sub_2646B9898(v9);
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v29 = sub_264783A64();
        v44 = v13;
        v30 = v29;
        v31 = [v29 preciseFormattedTime];
        v45 = v16;
        v43 = a2;
        v32 = v11;
        v33 = v31;

        v27 = sub_264785724();
        v35 = v34;

        v28 = v35;
        v11 = v32;
        v16 = v45;
        sub_2646B9898(v43);
        (*(v26 + 8))(v9, v25);
      }

      v36 = swift_allocObject();
      *(v36 + 16) = sub_2646B9900;
      *(v36 + 24) = v16;
      v37 = swift_allocObject();
      *(v37 + 16) = v11;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_2646B9DD0;
      *(v38 + 24) = v36;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_2646B99B0;
      *(v39 + 24) = v37;
      v40 = v48;
      *a3 = v49;
      a3[1] = v40;
      v41 = v46;
      a3[2] = v47;
      a3[3] = v41;
      a3[4] = sub_2646B9DD0;
      a3[5] = v38;
      a3[6] = sub_2646B9DD4;
      a3[7] = v39;
      a3[8] = v27;
      a3[9] = v28;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2646B9898(a2);

    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
  }
}

id sub_2646B8E98(id result)
{
  if (result)
  {
    result = [result shortAddress];
    if (result)
    {
      v1 = result;
      v2 = sub_264785724();
      v4 = v3;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        return v2;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::String __swiftcall SafetyCacheDetailedAddressFormatter.formattedString()()
{
  v1 = sub_264783B94();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2647856E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *v0;
  v11 = v0[2];
  v10 = v0[3];
  v12 = v0[8];
  v13 = v0[9];
  if (v0[1])
  {
    if (v10)
    {
      if (v13)
      {
        v14 = v0[1];

        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856B4();
      }

      else
      {
        v28 = v0[1];

        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();
      }

      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
    }

    else
    {
      if (!v13)
      {

        goto LABEL_14;
      }

      v25 = v0[1];

      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      v26 = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
    }

    goto LABEL_12;
  }

  v31 = v4;
  v17 = v12;
  v18 = v0;
  v20 = v0[4];
  v19 = v0[5];
  v21 = v20(0);
  if (!v13)
  {
    if (v22)
    {
      goto LABEL_13;
    }

    v32 = v9;
    v33 = 0;
    v34 = v11;
    v35 = v10;
    v36 = v20;
    v37 = v19;
    v38 = *(v18 + 3);
    v39 = v17;
    v40 = 0;
LABEL_18:
    v21 = sub_2646B947C();
    goto LABEL_13;
  }

  if (!v22)
  {
    v32 = v9;
    v33 = 0;
    v34 = v11;
    v35 = v10;
    v36 = v20;
    v37 = v19;
    v38 = *(v18 + 3);
    v39 = v17;
    v40 = v13;
    goto LABEL_18;
  }

  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_26460EC78();
  v23 = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
LABEL_12:
  v21 = sub_264785744();
LABEL_13:
  v9 = v21;
LABEL_14:
  v29 = v9;
  result._object = v22;
  result._countAndFlagsBits = v29;
  return result;
}

uint64_t sub_2646B947C()
{
  v31 = *v0;
  v32 = v0[1];
  v33 = v0[2];
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = (*(v0 + 6))();
  v6 = v5;
  v34 = *v0;
  v35 = v0[1];
  v36 = v0[2];
  v30 = sub_2646B99C0();
  v8 = v7;
  v10 = sub_2646B9B94();
  v11 = v9;
  if (v3)
  {
    v29 = v9;
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 bundleForClass_];
    sub_264783904();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2647889A0;
    v16 = MEMORY[0x277D839F8];
    v17 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v17;
    *(v15 + 32) = fabs(v4);
    v18 = MEMORY[0x277D837D0];
    *(v15 + 96) = MEMORY[0x277D837D0];
    v19 = sub_2646B9D68();
    *(v15 + 104) = v19;
    *(v15 + 72) = v30;
    *(v15 + 80) = v8;
    *(v15 + 136) = v16;
    *(v15 + 144) = v17;
    *(v15 + 112) = fabs(v6);
    *(v15 + 176) = v18;
    *(v15 + 184) = v19;
    *(v15 + 152) = v10;
    *(v15 + 160) = v29;
    *(v15 + 216) = v18;
    *(v15 + 224) = v19;
    *(v15 + 192) = v2;
    *(v15 + 200) = v3;
  }

  else
  {
    sub_26460EC78();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_264783904();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26478D1C0;
    v23 = MEMORY[0x277D839F8];
    v24 = MEMORY[0x277D83A80];
    *(v22 + 56) = MEMORY[0x277D839F8];
    *(v22 + 64) = v24;
    *(v22 + 32) = fabs(v4);
    v25 = MEMORY[0x277D837D0];
    *(v22 + 96) = MEMORY[0x277D837D0];
    v26 = sub_2646B9D68();
    *(v22 + 104) = v26;
    *(v22 + 72) = v30;
    *(v22 + 80) = v8;
    *(v22 + 136) = v23;
    *(v22 + 144) = v24;
    *(v22 + 112) = fabs(v6);
    *(v22 + 176) = v25;
    *(v22 + 184) = v26;
    *(v22 + 152) = v10;
    *(v22 + 160) = v11;
  }

  v27 = sub_264785734();

  return v27;
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

uint64_t sub_2646B97EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2646B9834(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_2646B9898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646B9908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646B9978()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646B99C0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t sub_2646B9B94()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

unint64_t sub_2646B9D68()
{
  result = qword_27FF774A0;
  if (!qword_27FF774A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774A0);
  }

  return result;
}

uint64_t LocationSearchRowCompletionItem.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0)
  {
    sub_264785F64();
    v5 = v2;
    sub_264785AF4();

    if (v1)
    {
LABEL_3:
      sub_264785F64();
      v6 = v1;
      sub_264785AF4();

      goto LABEL_6;
    }
  }

  else
  {
    sub_264785F64();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_264785F64();
LABEL_6:

  return sub_264785794();
}

uint64_t LocationSearchRowCompletionItem.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_264785F44();
  if (!v2)
  {
    sub_264785F64();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_264785F64();
    goto LABEL_6;
  }

  sub_264785F64();
  v5 = v2;
  sub_264785AF4();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_264785F64();
  v6 = v1;
  sub_264785AF4();

LABEL_6:
  sub_264785794();
  return sub_264785F94();
}

uint64_t sub_2646B9F5C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_264785F44();
  LocationSearchRowCompletionItem.hash(into:)();
  return sub_264785F94();
}

uint64_t sub_2646B9FB4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_264785F44();
  LocationSearchRowCompletionItem.hash(into:)();
  return sub_264785F94();
}

uint64_t _s15SafetyMonitorUI31LocationSearchRowCompletionItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v7 = sub_264785E84();
    result = 0;
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v9 = v3;
  if (v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v2 mapItem];
    if (v5)
    {
LABEL_8:
      v10 = v3;
      v11 = v5;
      if (v9)
      {
LABEL_9:
        if (v11)
        {
          sub_2646BA220();
          v12 = v5;
          v13 = v9;
          v14 = sub_264785AE4();

          return v14 & 1;
        }

        v17 = v5;

        return 0;
      }

      goto LABEL_13;
    }
  }

  v15 = v3;
  v11 = [v4 mapItem];
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v11)
  {
    v16 = v5;

    return 0;
  }

  v18 = v5;
  return 1;
}

unint64_t sub_2646BA134()
{
  result = qword_27FF774A8;
  if (!qword_27FF774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774A8);
  }

  return result;
}

uint64_t sub_2646BA188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2646BA1D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2646BA220()
{
  result = qword_27FF76FC8;
  if (!qword_27FF76FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF76FC8);
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

uint64_t getEnumTagSinglePayload for ETAOptionRow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ETAOptionRow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

double sub_2646BA334@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *v1;
  v6 = swift_allocObject();
  *&v49[0] = 0;
  sub_2647852E4();
  v7 = sub_2647845C4();
  v34 = 1;
  sub_2646BA55C(v5, v3, v4, v6, &v19);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v49[10] = v29;
  v49[11] = v30;
  v49[12] = v31;
  v49[13] = v32;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v49[5] = v24;
  v49[0] = v19;
  v49[1] = v20;
  sub_26460CCE8(&v35, &v18, &qword_27FF774B8, &qword_26478D378);
  sub_26460CD50(v49, &qword_27FF774B8, &qword_26478D378);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v8 = *&v33[160];
  *(a1 + 193) = *&v33[176];
  v9 = *&v33[208];
  *(a1 + 209) = *&v33[192];
  *(a1 + 225) = v9;
  v10 = *&v33[96];
  *(a1 + 129) = *&v33[112];
  v11 = *&v33[144];
  *(a1 + 145) = *&v33[128];
  *(a1 + 161) = v11;
  *(a1 + 177) = v8;
  v12 = *&v33[32];
  *(a1 + 65) = *&v33[48];
  v13 = *&v33[80];
  *(a1 + 81) = *&v33[64];
  *(a1 + 97) = v13;
  *(a1 + 113) = v10;
  result = *v33;
  v15 = *&v33[16];
  *(a1 + 17) = *v33;
  *(a1 + 33) = v15;
  v16 = v34;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  v17 = *&v33[223];
  *(a1 + 49) = v12;
  *(a1 + 240) = v17;
  *(a1 + 248) = sub_2646BAE4C;
  *(a1 + 256) = v6;
  return result;
}

uint64_t sub_2646BA55C@<X0>(char a1@<W0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v18 = sub_264785274();
  v17 = sub_264785504();
  v9 = v8;
  v10 = *(a4 + 24);
  v44 = *(a4 + 16);
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF774C0, &qword_26478D380);
  sub_2647852F4();
  sub_264785504();
  sub_2647840A4();
  LOBYTE(a4) = sub_264784C24();
  v56 = 1;
  v11 = sub_264784724();
  LOBYTE(v44) = 1;
  sub_2646BA9D8(a1, a2, a3 & 1, v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v29;
  v12 = v44;
  *&v30 = v18;
  *(&v30 + 1) = sub_2646BA8D8;
  *&v31 = 0;
  *(&v31 + 1) = v17;
  *v32 = v9;
  *&v32[24] = v25;
  *&v32[40] = v26;
  *&v32[8] = v24;
  v32[56] = a4;
  v34 = 0u;
  v33 = 0u;
  v19 = *v32;
  v20 = *&v32[16];
  v23[0] = 1;
  v21 = *&v32[32];
  v22 = *&v32[48];
  v36 = v11;
  v37[0] = v44;
  *&v37[1] = *v27;
  *&v37[17] = *&v27[16];
  *&v37[33] = *&v27[32];
  *&v37[49] = *&v27[48];
  *&v37[64] = *(&v29 + 1);
  *&v23[8] = v11;
  *&v23[24] = *v37;
  *&v23[72] = *&v37[48];
  *&v23[88] = *(&v29 + 1);
  *&v23[56] = *&v37[32];
  *&v23[40] = *&v37[16];
  v13 = v31;
  *a5 = v30;
  a5[1] = v13;
  a5[4] = v21;
  a5[5] = v22;
  a5[2] = v19;
  a5[3] = v20;
  a5[8] = *v23;
  a5[9] = *&v23[16];
  a5[6] = 0u;
  a5[7] = 0u;
  a5[12] = *&v23[64];
  a5[13] = *&v23[80];
  a5[10] = *&v23[32];
  a5[11] = *&v23[48];
  v35 = 1;
  v38[0] = v11;
  v38[1] = 0;
  v39 = v12;
  v41 = *&v27[16];
  v42 = *&v27[32];
  *v43 = *&v27[48];
  *&v43[15] = *&v27[63];
  v40 = *v27;
  sub_26460CCE8(&v30, &v44, &qword_27FF774C8, &qword_26478D388);
  sub_26460CCE8(&v36, &v44, &qword_27FF774D0, &unk_26478D390);
  sub_26460CD50(v38, &qword_27FF774D0, &unk_26478D390);
  v49 = v24;
  v44 = v18;
  v45 = sub_2646BA8D8;
  v46 = 0;
  v47 = v17;
  v48 = v9;
  v50 = v25;
  v51 = v26;
  v52 = a4;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return sub_26460CD50(&v44, &qword_27FF774C8, &qword_26478D388);
}

uint64_t sub_2646BA8D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264784894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647851A4();
  sub_2647849F4();
  sub_2647840F4();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_2646BA9D8@<X0>(char a1@<W0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_264785E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v50 = ETAType.labelName.getter();
  v51 = v13;
  sub_264613FC4();
  v14 = sub_264784E44();
  v46 = v15;
  v47 = v14;
  HIDWORD(v45) = v16;
  v48 = v17;
  if ((a3 & 1) != 0 || (v18 = [objc_opt_self() hourMinuteShortTimeIntervalFormatter], (*(v9 + 104))(v12, *MEMORY[0x277D84680], v8), v19 = sub_26473BF14(v12, 300.0, a2), (*(v9 + 8))(v12, v8), v20 = objc_msgSend(v18, sel_stringFromTimeInterval_, v19), v18, !v20))
  {
    if (qword_27FF752E8 != -1)
    {
      swift_once();
    }

    v21 = qword_27FF79188;
    v23 = unk_27FF79190;
  }

  else
  {
    v21 = sub_264785724();
    v23 = v22;
  }

  v50 = v21;
  v51 = v23;
  v24 = sub_264784E44();
  v26 = v25;
  v28 = v27;
  sub_264784D64();
  v29 = sub_264784E24();
  v31 = v30;
  v33 = v32;

  sub_26460ECC4(v24, v26, v28 & 1);

  LODWORD(v50) = sub_2647849C4();
  v34 = sub_264784DF4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_26460ECC4(v29, v31, v33 & 1);

  v41 = BYTE4(v45) & 1;
  v49 = BYTE4(v45) & 1;
  LOBYTE(v50) = BYTE4(v45) & 1;
  v52 = v38 & 1;
  v43 = v46;
  v42 = v47;
  *a4 = v47;
  *(a4 + 8) = v43;
  *(a4 + 16) = v41;
  *(a4 + 24) = v48;
  *(a4 + 32) = v34;
  *(a4 + 40) = v36;
  *(a4 + 48) = v38 & 1;
  *(a4 + 56) = v40;
  sub_26460C474(v42, v43, v41);

  sub_26460C474(v34, v36, v38 & 1);

  sub_26460ECC4(v34, v36, v38 & 1);

  sub_26460ECC4(v42, v43, v49);
}

uint64_t sub_2646BAD50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF774C0, &qword_26478D380);
  return sub_264785304();
}

double sub_2646BADAC@<D0>(void *a1@<X8>)
{
  result = *&qword_27FF774B0;
  *a1 = qword_27FF774B0;
  return result;
}

void *sub_2646BADBC(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (*a1 > v5)
  {
    v4 = *a1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2646BAE14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646BAE68()
{
  result = qword_27FF774D8;
  if (!qword_27FF774D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF774E0, &qword_26478D3B8);
    sub_26460CDF0(&qword_27FF774E8, &qword_27FF774F0, &qword_26478D3C0);
    sub_26460CDF0(&qword_27FF774F8, &qword_27FF77500, qword_26478D3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774D8);
  }

  return result;
}

SafetyMonitorUI::SessionLocationType_optional __swiftcall SessionLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SessionLocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1802661751;
  v4 = 0x6C6F6F686373;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
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

unint64_t sub_2646BB03C()
{
  result = qword_27FF77508;
  if (!qword_27FF77508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77508);
  }

  return result;
}

uint64_t sub_2646BB090()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_2646BB15C()
{
  *v0;
  *v0;
  *v0;
  sub_264785794();
}

uint64_t sub_2646BB214()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646BB2E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1802661751;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F6F686373;
  if (v2 != 3)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for SessionLocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionLocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2646BB4C0()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  *&v22[0] = 0;
  *(&v22[0] + 1) = 0xE000000000000000;
  sub_264785CE4();

  v27 = 0x203A656C74697428;
  v28 = 0xE900000000000022;
  MEMORY[0x26673F4D0](*v1, v1[1]);
  MEMORY[0x26673F4D0](0xD000000000000011, 0x8000000264797700);
  v7 = v0[2];
  v8 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  sub_26460CCE8(v1 + *(v8 + 24), v6, &qword_27FF756B8, &qword_26478AC90);
  v9 = v7;
  sub_2646B8AC0(v9, v6, v22);
  if (v23)
  {
    v18 = v22[0];
    v19 = v22[1];
    *&v20[0] = v23;
    *(v20 + 8) = v24;
    *(&v20[1] + 8) = v25;
    *(&v20[2] + 1) = v26;
    v10 = SafetyCacheDetailedAddressFormatter.formattedString()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
    v21[2] = v20[0];
    v21[3] = v20[1];
    v21[4] = v20[2];
    v21[0] = v18;
    v21[1] = v19;
    sub_264681A38(v21);
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  MEMORY[0x26673F4D0](countAndFlagsBits, object);

  MEMORY[0x26673F4D0](0x3A656D616E202C22, 0xEA00000000002220);
  v13 = [v9 name];
  if (v13)
  {
    v14 = v13;
    v2 = sub_264785724();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x26673F4D0](v2, v16);

  MEMORY[0x26673F4D0](10530, 0xE200000000000000);
  return v27;
}

uint64_t sub_2646BB6FC()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  v6 = v0;
  v7 = sub_264783E14();
  v8 = sub_2647859B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315651;
    v12 = v6;
    v13 = [v12 description];
    v14 = sub_264785724();
    v16 = v15;

    v17 = sub_2646DF234(v14, v16, &v28);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x697461746F6E6E61, 0xEB00000000736E6FLL, &v28);
    *(v10 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v18 = v27;
    v19 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v20 = MEMORY[0x26673F530](v18, v19);
    v22 = v21;

    v23 = sub_2646DF234(v20, v22, &v28);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_264605000, v7, v8, "#SafetyCacheMapViewModel, %s, %s: updating annotation to %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    return (*(v2 + 8))(v5, v26);
  }

  else
  {

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_2646BB9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646BBA3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_2646BBAB4(__int128 *a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v30[-v4];
  v6 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v7 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
  v33 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
  v34 = v7;
  v8 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
  v35 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
  v36 = v8;
  v9 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
  v31 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v32 = v9;
  v43[2] = v33;
  v43[3] = v7;
  v43[4] = v35;
  v43[5] = v8;
  v43[0] = v31;
  v43[1] = v9;
  v10 = a1[3];
  v6[2] = a1[2];
  v6[3] = v10;
  v11 = a1[5];
  v6[4] = a1[4];
  v6[5] = v11;
  v12 = a1[1];
  *v6 = *a1;
  v6[1] = v12;
  sub_26460CCE8(&v31, &v37, &qword_27FF756F8, &qword_264787DF0);
  sub_26460CD50(v43, &qword_27FF756F8, &qword_264787DF0);
  v13 = v6[3];
  v39 = v6[2];
  v40 = v13;
  v14 = v6[5];
  v41 = v6[4];
  v42 = v14;
  v15 = v6[1];
  v37 = *v6;
  v38 = v15;
  v16 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
  v17 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation + 8];
  v18 = v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation + 16];
  v19 = sub_2647858E4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v1;
  v21 = v34;
  *(v20 + 72) = v33;
  *(v20 + 88) = v21;
  v22 = v36;
  *(v20 + 104) = v35;
  *(v20 + 120) = v22;
  v23 = v32;
  *(v20 + 40) = v31;
  *(v20 + 56) = v23;
  v24 = v37;
  *(v20 + 152) = v38;
  *(v20 + 136) = v24;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  *(v20 + 216) = v42;
  *(v20 + 200) = v27;
  *(v20 + 184) = v26;
  *(v20 + 168) = v25;
  *(v20 + 232) = v16;
  *(v20 + 240) = v17;
  *(v20 + 248) = v18;
  sub_26460CCE8(&v37, v30, &qword_27FF756F8, &qword_264787DF0);
  v28 = v1;
  sub_264635430(0, 0, v5, &unk_26478D7D8, v20);
}

uint64_t sub_2646BBCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5[3];
  *(v8 + 48) = a5[2];
  *(v8 + 64) = v11;
  v12 = a5[5];
  *(v8 + 80) = a5[4];
  *(v8 + 96) = v12;
  v13 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v13;
  v14 = a6[3];
  *(v8 + 144) = a6[2];
  *(v8 + 160) = v14;
  v15 = a6[5];
  *(v8 + 176) = a6[4];
  *(v8 + 192) = v15;
  v16 = a6[1];
  *(v8 + 112) = *a6;
  *(v8 + 128) = v16;
  v17 = swift_task_alloc();
  *(v8 + 208) = v17;
  *v17 = v8;
  v17[1] = sub_2646BBDDC;

  return sub_2646BBED0((v8 + 16), (v8 + 112), a7, a8, v20 & 1);
}

uint64_t sub_2646BBDDC()
{
  v1 = *(*v0 + 208);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2646BBED0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 368) = a4;
  *(v6 + 376) = v5;
  *(v6 + 704) = a5;
  *(v6 + 360) = a3;
  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  *(v6 + 384) = v9;
  v10 = *(v9 - 8);
  *(v6 + 392) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  v12 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  *(v6 + 440) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  *(v6 + 480) = swift_task_alloc();
  v15 = *(a1 + 40);
  *(v6 + 488) = a1[1];
  *(v6 + 504) = v15;
  *(v6 + 520) = *(a1 + 72);
  v16 = a2[3];
  *(v6 + 48) = a2[2];
  *(v6 + 64) = v16;
  v17 = a2[5];
  *(v6 + 80) = a2[4];
  *(v6 + 96) = v17;
  v18 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v18;

  return MEMORY[0x2822009F8](sub_2646BC094, 0, 0);
}

uint64_t sub_2646BC094()
{
  v105 = v0;
  v1 = (v0 + 536);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v0 + 536) = v2;
  *(v0 + 552) = v3;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 568) = v5;
  *(v0 + 576) = v4;
  if (!v2)
  {
    sub_2647858B4();
    *(v0 + 696) = sub_2647858A4();
    v10 = sub_264785874();
    v12 = v11;
    v13 = sub_2646BEEC0;
LABEL_8:

    return MEMORY[0x2822009F8](v13, v10, v12);
  }

  v6 = *(&v2 + 1);
  if (!*(v0 + 488) || (v7 = *(v0 + 496)) == 0)
  {
    if (!*(&v2 + 1))
    {
      v17 = *(v0 + 16);
      v18 = *(v0 + 24);
      v19 = *(v0 + 48);
      v100 = *(v0 + 72);
      v102 = *(v0 + 104);
      v20 = v3;
      v21 = *(v0 + 80);
      v22 = v17;
      v23 = v18;

      v24 = v19;
      v25 = v20;
      v26 = *(&v20 + 1);
      v27 = v100;
      sub_2646C6804(v5, v4);
      v28 = *(v0 + 488);

      if (!v28)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    sub_26460CCE8(v0 + 16, v0 + 112, &qword_27FF756F8, &qword_264787DF0);
LABEL_13:
    *(v0 + 584) = v6;
    v14 = v6;
    v15 = swift_task_alloc();
    *(v0 + 592) = v15;
    *v15 = v0;
    v15[1] = sub_2646BC9DC;
    v16 = *(v0 + 376);

    return sub_2646BFA44(v14);
  }

  if (!*(&v2 + 1))
  {
    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v36 = *(v0 + 48);
    v101 = *(v0 + 72);
    v103 = *(v0 + 104);
    v38 = *(&v3 + 1);
    v37 = v3;
    v39 = *(v0 + 80);
    v40 = v34;
    v41 = v35;

    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = v101;
    sub_2646C6804(v5, v4);

    v29 = *(v0 + 504);
    if (v29)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v6 = v6;
  sub_26460CCE8(v0 + 16, v0 + 208, &qword_27FF756F8, &qword_264787DF0);
  v8 = v7;
  v9 = sub_264785AE4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v29 = *(v0 + 504);
  if (v29)
  {
LABEL_18:
    v30 = *(v0 + 552);
    if (!v30)
    {
      goto LABEL_27;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v31 = v30;
    v32 = v29;
    v33 = sub_264785AE4();

    if (v33)
    {
      goto LABEL_27;
    }

LABEL_23:
    *(v0 + 600) = v31;
    v46 = v31;
    v47 = swift_task_alloc();
    *(v0 + 608) = v47;
    *v47 = v0;
    v47[1] = sub_2646BD1A8;
    v48 = *(v0 + 376);

    return sub_2646BFEF0(v46);
  }

LABEL_22:
  v31 = *(v0 + 552);
  if (v31)
  {
    goto LABEL_23;
  }

  if (!*(v0 + 488))
  {
    v51 = 0;
    v50 = 0xF000000000000000;
LABEL_34:
    v52 = *(v0 + 576);
    if (v52 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v57 = v51;
      v58 = v50;
LABEL_38:
      sub_264655900(v57, v58);
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_27:
  v49 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v49);
  if (v49 >> 60 == 15)
  {
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    goto LABEL_34;
  }

  v52 = *(v0 + 576);
  if (v52 >> 60 == 15)
  {
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
LABEL_36:
    v59 = *(v0 + 568);
    sub_2646C6804(v59, v52);
    sub_264655900(v51, v50);
    sub_264655900(v59, v52);
    if (v52 >> 60 == 15)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v53 = *(v0 + 568);
  v54 = *(v0 + 528);
  v55 = *(v0 + 520);
  sub_2646C6804(v53, *(v0 + 576));
  sub_2646C6804(v53, v52);
  sub_2646C6804(v55, v54);
  v56 = sub_2646C6DE4(v55, v54, v53, v52);
  sub_264655900(v53, v52);
  sub_264655900(v55, v54);
  sub_264655900(v53, v52);
  sub_264655900(v55, v54);
  if ((v56 & 1) == 0)
  {
LABEL_37:
    v60 = *(v0 + 576);
    v61 = *(v0 + 568);
    v62 = *(v0 + 480);
    v63 = *(v0 + 376);
    sub_26465944C(v61, v60);
    sub_2647858C4();
    v64 = sub_2647858E4();
    (*(*(v64 - 8) + 56))(v62, 0, 1, v64);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = v61;
    v65[5] = v60;
    v65[6] = v63;
    sub_2646C6804(v61, v60);
    v66 = v63;
    sub_264635430(0, 0, v62, &unk_26478D780, v65);

    v57 = v61;
    v58 = v60;
    goto LABEL_38;
  }

LABEL_39:
  v67 = *(v0 + 560);
  if (*(v0 + 488) && (v68 = *(v0 + 512)) != 0)
  {
    if (!v67 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v67 = v67, v69 = v68, v70 = sub_264785AE4(), v67, v69, (v70 & 1) != 0))
    {
LABEL_43:
      v71 = *v1;
      if ((*v1 & 0xC000000000000001) != 0)
      {
        if (v71 < 0)
        {
          v72 = *v1;
        }

        v73 = sub_264785C14();
        v74 = v73 + 6;
        if (!__OFADD__(v73, 6))
        {
LABEL_47:
          v75 = *(v0 + 560);
          v73 = sub_2647031CC(0, v74 & ~(v74 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v73;
          *(v0 + 344) = v73;
          if (v75)
          {
            v76 = *(v0 + 560);
            sub_2647858B4();
            v77 = v76;
            *(v0 + 640) = sub_2647858A4();
            v10 = sub_264785874();
            v12 = v78;
            v13 = sub_2646BDC90;
            goto LABEL_8;
          }

LABEL_56:
          *(v0 + 648) = v73;
          v82 = *(v0 + 544);
          if (v82)
          {
            sub_2647858B4();
            v83 = v82;
            *(v0 + 656) = sub_2647858A4();
            v10 = sub_264785874();
            v12 = v84;
            v13 = sub_2646BE15C;
          }

          else
          {
            v85 = *(v0 + 552);
            v86 = *(v0 + 536);
            v87 = *(v0 + 376);
            v88 = swift_allocObject();
            *(v88 + 16) = v87;
            v89 = v87;

            sub_2646BF230(v90, sub_2646C6850, v88);
            if (v85)
            {
              v91 = *(v0 + 552);
              sub_2647858B4();
              v92 = v91;
              *(v0 + 664) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v93;
              v13 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v94 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_26468177C(v94);
              }

              *(v0 + 680) = v94;
              v95 = v94[2];
              v96 = *(*(v0 + 392) + 80);
              v104[0] = v94 + ((v96 + 32) & ~v96);
              v104[1] = v95;
              sub_2646C4A4C(v104);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v98;
              v13 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v97;
              v13 = sub_2646BE9C8;
            }
          }

          goto LABEL_8;
        }
      }

      else
      {
        v73 = *(v71 + 16);
        v74 = v73 + 6;
        if (!__OFADD__(v73, 6))
        {
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_56;
    }
  }

  else if (!v67)
  {
    goto LABEL_43;
  }

  *(v0 + 616) = v67;
  v79 = v67;
  v80 = swift_task_alloc();
  *(v0 + 624) = v80;
  *v80 = v0;
  v80[1] = sub_2646BD88C;
  v81 = *(v0 + 376);

  return sub_2646C04AC(v79);
}

uint64_t sub_2646BC9DC()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2646BCAD8, 0, 0);
}

uint64_t sub_2646BCAD8()
{
  v63 = v0;

  if (!*(v0 + 488))
  {
    v2 = *(v0 + 552);
    if (!v2)
    {
      v5 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 552);
  if (!v1)
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_9:
    *(v0 + 600) = v2;
    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 608) = v8;
    *v8 = v0;
    v8[1] = sub_2646BD1A8;
    v9 = *(v0 + 376);

    return sub_2646BFEF0(v7);
  }

  if (v2)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v2 = v2;
    v3 = v1;
    v4 = sub_264785AE4();

    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  v11 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v11);
  if (v11 >> 60 == 15)
  {
    v6 = *(v0 + 528);
    v5 = *(v0 + 520);
LABEL_14:
    v12 = *(v0 + 576);
    if (v12 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v13 = v5;
      v14 = v6;
LABEL_22:
      sub_264655900(v13, v14);
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v12 = *(v0 + 576);
  if (v12 >> 60 != 15)
  {
    v16 = *(v0 + 568);
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    sub_2646C6804(v16, *(v0 + 576));
    sub_2646C6804(v16, v12);
    sub_2646C6804(v18, v17);
    v19 = sub_2646C6DE4(v18, v17, v16, v12);
    sub_264655900(v16, v12);
    sub_264655900(v18, v17);
    sub_264655900(v16, v12);
    sub_264655900(v18, v17);
    if (v19)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v6 = *(v0 + 528);
  v5 = *(v0 + 520);
LABEL_18:
  v15 = *(v0 + 568);
  sub_2646C6804(v15, v12);
  sub_264655900(v5, v6);
  sub_264655900(v15, v12);
  if (v12 >> 60 != 15)
  {
LABEL_21:
    v20 = *(v0 + 576);
    v21 = *(v0 + 568);
    v22 = *(v0 + 480);
    v23 = *(v0 + 376);
    sub_26465944C(v21, v20);
    sub_2647858C4();
    v24 = sub_2647858E4();
    (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v21;
    v25[5] = v20;
    v25[6] = v23;
    sub_2646C6804(v21, v20);
    v26 = v23;
    sub_264635430(0, 0, v22, &unk_26478D780, v25);

    v13 = v21;
    v14 = v20;
    goto LABEL_22;
  }

LABEL_23:
  v27 = *(v0 + 560);
  if (*(v0 + 488) && (v28 = *(v0 + 512)) != 0)
  {
    if (!v27 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v27 = v27, v29 = v28, v30 = sub_264785AE4(), v27, v29, (v30 & 1) != 0))
    {
LABEL_27:
      v31 = *(v0 + 536);
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (v31 < 0)
        {
          v32 = *(v0 + 536);
        }

        v33 = sub_264785C14();
        v34 = v33 + 6;
        if (!__OFADD__(v33, 6))
        {
LABEL_31:
          v35 = *(v0 + 560);
          v33 = sub_2647031CC(0, v34 & ~(v34 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v33;
          *(v0 + 344) = v33;
          if (v35)
          {
            v36 = *(v0 + 560);
            sub_2647858B4();
            v37 = v36;
            *(v0 + 640) = sub_2647858A4();
            v38 = sub_264785874();
            v40 = v39;
            v41 = sub_2646BDC90;
LABEL_49:

            return MEMORY[0x2822009F8](v41, v38, v40);
          }

LABEL_40:
          *(v0 + 648) = v33;
          v45 = *(v0 + 544);
          if (v45)
          {
            sub_2647858B4();
            v46 = v45;
            *(v0 + 656) = sub_2647858A4();
            v38 = sub_264785874();
            v40 = v47;
            v41 = sub_2646BE15C;
          }

          else
          {
            v48 = *(v0 + 552);
            v49 = *(v0 + 536);
            v50 = *(v0 + 376);
            v51 = swift_allocObject();
            *(v51 + 16) = v50;
            v52 = v50;

            sub_2646BF230(v53, sub_2646C6850, v51);
            if (v48)
            {
              v54 = *(v0 + 552);
              sub_2647858B4();
              v55 = v54;
              *(v0 + 664) = sub_2647858A4();
              v38 = sub_264785874();
              v40 = v56;
              v41 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v57 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v57 = sub_26468177C(v57);
              }

              *(v0 + 680) = v57;
              v58 = v57[2];
              v59 = *(*(v0 + 392) + 80);
              v62[0] = v57 + ((v59 + 32) & ~v59);
              v62[1] = v58;
              sub_2646C4A4C(v62);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v38 = sub_264785874();
              v40 = v61;
              v41 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v38 = sub_264785874();
              v40 = v60;
              v41 = sub_2646BE9C8;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v33 = *(v31 + 16);
        v34 = v33 + 6;
        if (!__OFADD__(v33, 6))
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else if (!v27)
  {
    goto LABEL_27;
  }

  *(v0 + 616) = v27;
  v42 = v27;
  v43 = swift_task_alloc();
  *(v0 + 624) = v43;
  *v43 = v0;
  v43[1] = sub_2646BD88C;
  v44 = *(v0 + 376);

  return sub_2646C04AC(v42);
}

uint64_t sub_2646BD1A8()
{
  v1 = *(*v0 + 608);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2646BD2A4, 0, 0);
}

uint64_t sub_2646BD2A4()
{
  v56 = v0;

  if (!*(v0 + 488))
  {
    v3 = 0;
    v2 = 0xF000000000000000;
LABEL_5:
    v4 = *(v0 + 576);
    if (v4 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v5 = v3;
      v6 = v2;
LABEL_13:
      sub_264655900(v5, v6);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v1);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
    goto LABEL_5;
  }

  v4 = *(v0 + 576);
  if (v4 >> 60 == 15)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
LABEL_9:
    v7 = *(v0 + 568);
    sub_2646C6804(v7, v4);
    sub_264655900(v3, v2);
    sub_264655900(v7, v4);
    if (v4 >> 60 == 15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  sub_2646C6804(v8, *(v0 + 576));
  sub_2646C6804(v8, v4);
  sub_2646C6804(v10, v9);
  v11 = sub_2646C6DE4(v10, v9, v8, v4);
  sub_264655900(v8, v4);
  sub_264655900(v10, v9);
  sub_264655900(v8, v4);
  sub_264655900(v10, v9);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 480);
    v15 = *(v0 + 376);
    sub_26465944C(v13, v12);
    sub_2647858C4();
    v16 = sub_2647858E4();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v13;
    v17[5] = v12;
    v17[6] = v15;
    sub_2646C6804(v13, v12);
    v18 = v15;
    sub_264635430(0, 0, v14, &unk_26478D780, v17);

    v5 = v13;
    v6 = v12;
    goto LABEL_13;
  }

LABEL_14:
  v19 = *(v0 + 560);
  if (*(v0 + 488) && (v20 = *(v0 + 512)) != 0)
  {
    if (!v19 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v19 = v19, v21 = v20, v22 = sub_264785AE4(), v19, v21, (v22 & 1) != 0))
    {
LABEL_18:
      v23 = *(v0 + 536);
      if ((v23 & 0xC000000000000001) != 0)
      {
        if (v23 < 0)
        {
          v24 = *(v0 + 536);
        }

        v25 = sub_264785C14();
        v26 = v25 + 6;
        if (!__OFADD__(v25, 6))
        {
LABEL_22:
          v27 = *(v0 + 560);
          v25 = sub_2647031CC(0, v26 & ~(v26 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v25;
          *(v0 + 344) = v25;
          if (v27)
          {
            v28 = *(v0 + 560);
            sub_2647858B4();
            v29 = v28;
            *(v0 + 640) = sub_2647858A4();
            v30 = sub_264785874();
            v32 = v31;
            v33 = sub_2646BDC90;
LABEL_40:

            return MEMORY[0x2822009F8](v33, v30, v32);
          }

LABEL_31:
          *(v0 + 648) = v25;
          v38 = *(v0 + 544);
          if (v38)
          {
            sub_2647858B4();
            v39 = v38;
            *(v0 + 656) = sub_2647858A4();
            v30 = sub_264785874();
            v32 = v40;
            v33 = sub_2646BE15C;
          }

          else
          {
            v41 = *(v0 + 552);
            v42 = *(v0 + 536);
            v43 = *(v0 + 376);
            v44 = swift_allocObject();
            *(v44 + 16) = v43;
            v45 = v43;

            sub_2646BF230(v46, sub_2646C6850, v44);
            if (v41)
            {
              v47 = *(v0 + 552);
              sub_2647858B4();
              v48 = v47;
              *(v0 + 664) = sub_2647858A4();
              v30 = sub_264785874();
              v32 = v49;
              v33 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v50 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_26468177C(v50);
              }

              *(v0 + 680) = v50;
              v51 = v50[2];
              v52 = *(*(v0 + 392) + 80);
              v55[0] = v50 + ((v52 + 32) & ~v52);
              v55[1] = v51;
              sub_2646C4A4C(v55);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v30 = sub_264785874();
              v32 = v54;
              v33 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v30 = sub_264785874();
              v32 = v53;
              v33 = sub_2646BE9C8;
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v25 = *(v23 + 16);
        v26 = v25 + 6;
        if (!__OFADD__(v25, 6))
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  else if (!v19)
  {
    goto LABEL_18;
  }

  *(v0 + 616) = v19;
  v34 = v19;
  v35 = swift_task_alloc();
  *(v0 + 624) = v35;
  *v35 = v0;
  v35[1] = sub_2646BD88C;
  v36 = *(v0 + 376);

  return sub_2646C04AC(v34);
}

uint64_t sub_2646BD88C()
{
  v1 = *(*v0 + 624);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2646BD988, 0, 0);
}

uint64_t sub_2646BD988()
{
  v31 = v0;

  v1 = *(v0 + 536);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v3 = *(v1 + 16);
    v4 = v3 + 6;
    if (!__OFADD__(v3, 6))
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 < 0)
  {
    v2 = *(v0 + 536);
  }

  v3 = sub_264785C14();
  v4 = v3 + 6;
  if (__OFADD__(v3, 6))
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v0 + 560);
  v3 = sub_2647031CC(0, v4 & ~(v4 >> 63), 0, MEMORY[0x277D84F90]);
  *(v0 + 632) = v3;
  *(v0 + 344) = v3;
  if (v5)
  {
    v6 = *(v0 + 560);
    sub_2647858B4();
    v7 = v6;
    *(v0 + 640) = sub_2647858A4();
    v8 = sub_264785874();
    v10 = v9;
    v11 = sub_2646BDC90;
    goto LABEL_19;
  }

LABEL_10:
  *(v0 + 648) = v3;
  v12 = *(v0 + 544);
  if (v12)
  {
    sub_2647858B4();
    v13 = v12;
    *(v0 + 656) = sub_2647858A4();
    v8 = sub_264785874();
    v10 = v14;
    v11 = sub_2646BE15C;
  }

  else
  {
    v15 = *(v0 + 552);
    v16 = *(v0 + 536);
    v17 = *(v0 + 376);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = v17;

    sub_2646BF230(v20, sub_2646C6850, v18);
    if (v15)
    {
      v21 = *(v0 + 552);
      sub_2647858B4();
      v22 = v21;
      *(v0 + 664) = sub_2647858A4();
      v8 = sub_264785874();
      v10 = v23;
      v11 = sub_2646BE5D0;
    }

    else if (*(v0 + 704))
    {
      v24 = *(v0 + 344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_26468177C(v24);
      }

      *(v0 + 680) = v24;
      v25 = v24[2];
      v26 = *(*(v0 + 392) + 80);
      v30[0] = v24 + ((v26 + 32) & ~v26);
      v30[1] = v25;
      sub_2646C4A4C(v30);
      sub_2647858B4();

      *(v0 + 688) = sub_2647858A4();
      v8 = sub_264785874();
      v10 = v28;
      v11 = sub_2646BED04;
    }

    else
    {
      sub_2647858B4();
      *(v0 + 672) = sub_2647858A4();
      v8 = sub_264785874();
      v10 = v27;
      v11 = sub_2646BE9C8;
    }
  }

LABEL_19:

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_2646BDC90()
{
  v1 = v0[80];
  v2 = v0[59];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return MEMORY[0x2822009F8](sub_2646BDD4C, 0, 0);
}

uint64_t sub_2646BDD4C()
{
  v47 = v0;
  v1 = *(v0 + 472);
  v2 = v1 + *(*(v0 + 440) + 24);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 632);
  v7 = *(v0 + 560);
  v8 = *(v0 + 432);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v7 latitude];
  v12 = v11;
  [v7 longitude];
  v14 = v13;
  v15 = *(v10 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v16 = v15;
  v17 = [v7 date];
  v18 = v8 + *(v9 + 32);
  sub_264783AC4();

  *v8 = v4;
  *(v8 + 8) = v12;
  *(v8 + 16) = v14;
  *(v8 + 24) = 2;
  *(v8 + 32) = v15;
  v19 = v8 + *(v9 + 36);
  *v19 = 0;
  *(v19 + 8) = 1;
  v21 = *(v6 + 16);
  v20 = *(v6 + 24);
  v22 = *(v0 + 632);
  if (v21 >= v20 >> 1)
  {
    v22 = sub_2647031CC(v20 > 1, v21 + 1, 1, *(v0 + 632));
  }

  v23 = *(v0 + 432);
  v24 = *(v0 + 392);

  *(v22 + 16) = v21 + 1;
  sub_2646C6920(v23, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v22;
  *(v0 + 648) = v22;
  v25 = *(v0 + 544);
  if (v25)
  {
    sub_2647858B4();
    v26 = v25;
    *(v0 + 656) = sub_2647858A4();
    v27 = sub_264785874();
    v29 = v28;
    v30 = sub_2646BE15C;
  }

  else
  {
    v31 = *(v0 + 552);
    v32 = *(v0 + 536);
    v33 = *(v0 + 376);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v35 = v33;

    sub_2646BF230(v36, sub_2646C6850, v34);
    if (v31)
    {
      v37 = *(v0 + 552);
      sub_2647858B4();
      v38 = v37;
      *(v0 + 664) = sub_2647858A4();
      v27 = sub_264785874();
      v29 = v39;
      v30 = sub_2646BE5D0;
    }

    else if (*(v0 + 704))
    {
      v40 = *(v0 + 344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_26468177C(v40);
      }

      *(v0 + 680) = v40;
      v41 = v40[2];
      v42 = *(*(v0 + 392) + 80);
      v46[0] = v40 + ((v42 + 32) & ~v42);
      v46[1] = v41;
      sub_2646C4A4C(v46);
      sub_2647858B4();

      *(v0 + 688) = sub_2647858A4();
      v27 = sub_264785874();
      v29 = v44;
      v30 = sub_2646BED04;
    }

    else
    {
      sub_2647858B4();
      *(v0 + 672) = sub_2647858A4();
      v27 = sub_264785874();
      v29 = v43;
      v30 = sub_2646BE9C8;
    }
  }

  return MEMORY[0x2822009F8](v30, v27, v29);
}

uint64_t sub_2646BE15C()
{
  v1 = v0[82];
  v2 = v0[58];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return MEMORY[0x2822009F8](sub_2646BE218, 0, 0);
}

uint64_t sub_2646BE218()
{
  v44 = v0;
  v1 = *(v0 + 464);
  v2 = v1 + *(*(v0 + 440) + 20);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 648);
  v7 = *(v0 + 544);
  v8 = *(v0 + 424);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v7 latitude];
  v12 = v11;
  [v7 longitude];
  v14 = v13;
  v15 = *(v10 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v16 = v15;
  v17 = [v7 date];
  v18 = v8 + *(v9 + 32);
  sub_264783AC4();

  *v8 = v4;
  *(v8 + 8) = v12;
  *(v8 + 16) = v14;
  *(v8 + 24) = 1;
  *(v8 + 32) = v15;
  v19 = v8 + *(v9 + 36);
  *v19 = 0;
  *(v19 + 8) = 1;
  v21 = *(v6 + 16);
  v20 = *(v6 + 24);
  v22 = *(v0 + 648);
  if (v21 >= v20 >> 1)
  {
    v22 = sub_2647031CC(v20 > 1, v21 + 1, 1, *(v0 + 648));
  }

  v23 = *(v0 + 424);
  v24 = *(v0 + 392);

  *(v22 + 16) = v21 + 1;
  sub_2646C6920(v23, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v22;
  v25 = *(v0 + 552);
  v26 = *(v0 + 536);
  v27 = *(v0 + 376);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = v27;

  sub_2646BF230(v30, sub_2646C6850, v28);
  if (v25)
  {
    v31 = *(v0 + 552);
    sub_2647858B4();
    v32 = v31;
    *(v0 + 664) = sub_2647858A4();
    v33 = sub_264785874();
    v35 = v34;
    v36 = sub_2646BE5D0;
  }

  else if (*(v0 + 704))
  {
    v37 = *(v0 + 344);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_26468177C(v37);
    }

    *(v0 + 680) = v37;
    v38 = v37[2];
    v39 = *(*(v0 + 392) + 80);
    v43[0] = v37 + ((v39 + 32) & ~v39);
    v43[1] = v38;
    sub_2646C4A4C(v43);
    sub_2647858B4();

    *(v0 + 688) = sub_2647858A4();
    v33 = sub_264785874();
    v35 = v41;
    v36 = sub_2646BED04;
  }

  else
  {
    sub_2647858B4();
    *(v0 + 672) = sub_2647858A4();
    v33 = sub_264785874();
    v35 = v40;
    v36 = sub_2646BE9C8;
  }

  return MEMORY[0x2822009F8](v36, v33, v35);
}

uint64_t sub_2646BE5D0()
{
  v1 = v0[83];
  v2 = v0[57];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return MEMORY[0x2822009F8](sub_2646BE68C, 0, 0);
}

uint64_t sub_2646BE68C()
{
  v34 = v0;
  v1 = *(v0 + 456);
  v2 = v1 + *(*(v0 + 440) + 28);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 552);
  v7 = *(v0 + 416);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v6 latitude];
  v11 = v10;
  [v6 longitude];
  v13 = v12;
  v14 = *(v9 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v15 = v14;
  v16 = [v6 date];
  v17 = v7 + *(v8 + 32);
  sub_264783AC4();

  [v6 hunc];
  *v7 = v4;
  *(v7 + 8) = v11;
  *(v7 + 16) = v13;
  *(v7 + 24) = 3;
  *(v7 + 32) = v14;
  v18 = v7 + *(v8 + 36);
  *v18 = v19;
  *(v18 + 8) = 0;
  v20 = *(v0 + 344);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_2647031CC(0, v20[2] + 1, 1, v20);
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_2647031CC(v21 > 1, v22 + 1, 1, v20);
  }

  v23 = *(v0 + 416);
  v24 = *(v0 + 392);

  v20[2] = v22 + 1;
  sub_2646C6920(v23, v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v20;
  if (*(v0 + 704))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26468177C(v20);
    }

    *(v0 + 680) = v20;
    v25 = v20[2];
    v26 = *(*(v0 + 392) + 80);
    v33[0] = v20 + ((v26 + 32) & ~v26);
    v33[1] = v25;
    sub_2646C4A4C(v33);
    sub_2647858B4();

    *(v0 + 688) = sub_2647858A4();
    v28 = sub_264785874();
    v30 = v29;
    v31 = sub_2646BED04;
  }

  else
  {
    sub_2647858B4();
    *(v0 + 672) = sub_2647858A4();
    v28 = sub_264785874();
    v30 = v27;
    v31 = sub_2646BE9C8;
  }

  return MEMORY[0x2822009F8](v31, v28, v30);
}

uint64_t sub_2646BE9C8()
{
  v1 = v0[84];
  v2 = v0[56];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return MEMORY[0x2822009F8](sub_2646BEA84, 0, 0);
}

uint64_t sub_2646BEA84()
{
  v25 = v0;
  v1 = v0[56];
  v2 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v3 = 0;
  if (!(*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    v3 = *(v1 + 16);
    v4 = v3;
  }

  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v10 = *(v7 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v11 = *(v6 + 32);
  v12 = v10;
  sub_264783A34();
  *v5 = v3;
  *(v5 + 8) = v9;
  *(v5 + 16) = v8;
  *(v5 + 24) = 0;
  *(v5 + 32) = v10;
  v13 = v5 + *(v6 + 36);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0[43];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_2647031CC(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_2647031CC(v15 > 1, v16 + 1, 1, v14);
  }

  v17 = v0[51];
  v18 = v0[49];
  v14[2] = v16 + 1;
  sub_2646C6920(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, type metadata accessor for SafetyCacheMapView.Annotation);
  v0[43] = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_26468177C(v14);
  }

  v0[85] = v14;
  v19 = v14[2];
  v20 = *(v0[49] + 80);
  v24[0] = v14 + ((v20 + 32) & ~v20);
  v24[1] = v19;
  sub_2646C4A4C(v24);
  sub_2647858B4();

  v0[86] = sub_2647858A4();
  v22 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646BED04, v22, v21);
}

uint64_t sub_2646BED04()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[44] = v2;
  v3;
  sub_264783EE4();
  sub_2646BB6FC();

  return MEMORY[0x2822009F8](sub_2646BEDCC, 0, 0);
}

uint64_t sub_2646BEDCC()
{
  sub_26460CD50((v0 + 2), &qword_27FF756F8, &qword_264787DF0);
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2646BEEC0()
{
  v1 = v0[87];
  v2 = v0[55];
  v3 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[42] = MEMORY[0x277D84F90];
  v4 = v3;
  sub_264783EE4();
  sub_2646BB6FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = sub_264783EC4();
  v6 = v5;
  sub_26460CD50(v5, &qword_27FF767D0, &qword_26478AC98);
  v7 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = v2[5];
  sub_26460CD50(v6 + v9, &qword_27FF767D0, &qword_26478AC98);
  v8(v6 + v9, 1, 1, v7);
  v10 = v2[6];
  sub_26460CD50(v6 + v10, &qword_27FF767D0, &qword_26478AC98);
  v8(v6 + v10, 1, 1, v7);
  v11 = v2[7];
  sub_26460CD50(v6 + v11, &qword_27FF767D0, &qword_26478AC98);
  v8(v6 + v11, 1, 1, v7);
  v24();

  v13 = v0[59];
  v12 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v16 = v0[56];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v21 = v0[50];

  v22 = v0[1];

  return v22();
}

void sub_2646BF15C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  [*a1 latitude];
  v7 = v6;
  [v5 longitude];
  v9 = v8;
  v10 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v11 = v10;
  v12 = [v5 date];
  v13 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v14 = a3 + *(v13 + 32);
  sub_264783AC4();

  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = 4;
  *(a3 + 32) = v10;
  v15 = a3 + *(v13 + 36);
  *v15 = 0;
  *(v15 + 8) = 1;
}

uint64_t sub_2646BF230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - v16;
  v46 = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = sub_264785C14();
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = *v3;
  v20 = *(*v3 + 16);
  v21 = v20 + v18;
  if (__OFADD__(v20, v18))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v24 = v19[3] >> 1, v24 < v21))
  {
    if (v20 <= v21)
    {
      v25 = v20 + v18;
    }

    else
    {
      v25 = v20;
    }

    v19 = sub_2647031CC(isUniquelyReferenced_nonNull_native, v25, 1, v19);
    v24 = v19[3] >> 1;
  }

  v26 = v19[2];
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v7 + 72);
  v27 = v24 - v26;
  v28 = sub_2646C5FEC(&v51, v19 + v21 + v10 * v26, v24 - v26, a1, a2, a3);
  if (v28 < v18)
  {
    goto LABEL_19;
  }

  if (v28 >= 1)
  {
    v29 = v19[2];
    v30 = __OFADD__(v29, v28);
    v31 = v29 + v28;
    if (v30)
    {
      __break(1u);
      goto LABEL_24;
    }

    v19[2] = v31;
  }

  if (v28 == v27)
  {
LABEL_20:
    v43 = v3;
    a1 = v19[2];
    v33 = v48;
    sub_2646C6B78(v48);
    v27 = v46;
    sub_26460CCE8(v33, v46, &qword_27FF766A8, &unk_26478AA80);
    v45 = *(v7 + 48);
    if (v45(v27, 1, v47) == 1)
    {
      v3 = v43;
LABEL_22:
      sub_26460CD50(v48, &qword_27FF766A8, &unk_26478AA80);
      sub_26467A824();

      result = sub_26460CD50(v27, &qword_27FF766A8, &unk_26478AA80);
      goto LABEL_17;
    }

LABEL_24:
    v3 = v43;
    do
    {
      sub_26460CD50(v27, &qword_27FF766A8, &unk_26478AA80);
      v35 = v19[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < a1 + 1)
      {
        v19 = sub_2647031CC(v35 > 1, a1 + 1, 1, v19);
        v36 = v19[3] >> 1;
      }

      v37 = v50;
      sub_26460CCE8(v48, v50, &qword_27FF766A8, &unk_26478AA80);
      if (v45(v37, 1, v47) == 1)
      {
LABEL_25:
        sub_26460CD50(v50, &qword_27FF766A8, &unk_26478AA80);
        v34 = a1;
      }

      else
      {
        if (a1 <= v36)
        {
          v34 = v36;
        }

        else
        {
          v34 = a1;
        }

        v38 = v19 + v21 + v10 * a1;
        v44 = v34;
        while (1)
        {
          sub_2646C6920(v50, v49, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v34 == a1)
          {
            break;
          }

          v39 = v48;
          sub_26460CD50(v48, &qword_27FF766A8, &unk_26478AA80);
          sub_2646C6920(v49, v38, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646C6B78(v39);
          v40 = v39;
          v3 = v43;
          v34 = v44;
          v41 = v50;
          ++a1;
          sub_26460CCE8(v40, v50, &qword_27FF766A8, &unk_26478AA80);
          v38 += v10;
          if (v45(v41, 1, v47) == 1)
          {
            goto LABEL_25;
          }
        }

        sub_2646C68C0(v49, type metadata accessor for SafetyCacheMapView.Annotation);
        a1 = v34;
      }

      v19[2] = v34;
      v27 = v46;
      sub_26460CCE8(v48, v46, &qword_27FF766A8, &unk_26478AA80);
    }

    while (v45(v27, 1, v47) != 1);
    goto LABEL_22;
  }

  sub_26467A824();

LABEL_17:
  *v3 = v19;
  return result;
}

void *sub_2646BF754(void *result)
{
  v4 = result[2];
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v5 + 3) >> 1, v11 < v7))
  {
    if (v6 <= v7)
    {
      v12 = v6 + v4;
    }

    else
    {
      v12 = v6;
    }

    v5 = sub_2647034DC(isUniquelyReferenced_nonNull_native, v12, 1, v5);
    v11 = *(v5 + 3) >> 1;
  }

  v13 = *(v5 + 2);
  v14 = (v11 - v13);
  result = sub_2646C5E8C(v43, &v5[24 * v13 + 32], v11 - v13, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v15 = *(v5 + 2);
    v16 = __OFADD__(v15, result);
    v17 = result + v15;
    if (v16)
    {
      __break(1u);
      while (1)
      {
LABEL_19:
        v19 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_45;
        }

        if (v19 >= ((v3 + 64) >> 6))
        {
          break;
        }

        v18 = v14[v19];
        ++v17;
        if (v18)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      result = sub_26467A824();
      *v1 = v5;
      return result;
    }

    *(v5 + 2) = v17;
  }

  if (result != v14)
  {
    goto LABEL_13;
  }

LABEL_16:
  v2 = *(v5 + 2);
  v14 = v43[1];
  v42 = v43[0];
  v3 = v43[2];
  v17 = v44;
  v18 = v45;
  if (!v45)
  {
    goto LABEL_19;
  }

  v19 = v44;
LABEL_22:
  v20 = (v18 - 1) & v18;
  v21 = *(v42 + 48) + 24 * (__clz(__rbit64(v18)) | (v19 << 6));
  v23 = *v21;
  v22 = *(v21 + 8);
  v24 = *(v21 + 16);
  result = *v21;
  if (!v23)
  {
    goto LABEL_13;
  }

  v25 = (v3 + 64) >> 6;
  v26 = v19;
  while (1)
  {
    v27 = *(v5 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) >= v2 + 1)
    {
      if (v2 < v28)
      {
        break;
      }

      goto LABEL_24;
    }

    v40 = result;
    v5 = sub_2647034DC((v27 > 1), v2 + 1, 1, v5);
    result = v40;
    v28 = *(v5 + 3) >> 1;
    if (v2 < v28)
    {
      break;
    }

LABEL_24:
    *(v5 + 2) = v2;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v29 = &v5[24 * v2 + 32];
    *v29 = result;
    *(v29 + 8) = v22;
    *(v29 + 16) = v24;
    v30 = v2 + 1;
    if (!v20)
    {
      break;
    }

    v41 = v30;
    v31 = v28;
LABEL_34:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v35 = *(v42 + 48) + 24 * (v34 | (v26 << 6));
    v36 = v26;
    v37 = *v35;
    v22 = *(v35 + 8);
    v24 = *(v35 + 16);
    result = *v35;
    v38 = v37 == 0;
    v26 = v36;
    v28 = v31;
    v2 = v41;
    if (v38 || v41 >= v28)
    {
      goto LABEL_24;
    }
  }

  v32 = v26;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      *(v5 + 2) = v30;
      goto LABEL_13;
    }

    v20 = v14[v33];
    ++v32;
    if (v20)
    {
      v41 = v30;
      v31 = v28;
      v26 = v33;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2646BFA44(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = *(*(sub_264783B94() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_264785704() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[17] = v6;
  v2[18] = *(v6 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646BFBB0, 0, 0);
}

uint64_t sub_2646BFBB0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v25 = *(v0 + 136);
  v26 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = [v7 date];
  sub_264783AC4();

  v9 = sub_264783AF4();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v12 = sub_264785754();
  v23 = v13;
  v24 = v12;
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v0 + 48) = &protocol witness table for SMLocation;
  *(v0 + 16) = v7;
  v15 = v7;
  sub_2647858C4();
  v16 = sub_2647858E4();
  v17 = v5;
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v2, v1, &qword_27FF756B8, &qword_26478AC90);
  v18 = (*(v25 + 80) + 104) & ~*(v25 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  sub_264689B0C((v0 + 56), (v19 + 4));
  v19[9] = KeyPath;
  v19[10] = v6;
  v19[11] = v24;
  v19[12] = v23;
  sub_26460CF84(v1, v19 + v18);
  *(v19 + v18 + v26) = 1;

  v20 = v6;
  sub_264635430(0, 0, v17, &unk_26478D768, v19);

  sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2646BFEF0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[15] = v4;
  v2[16] = *(v4 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = *(*(sub_264783B94() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = *(*(sub_264785704() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = *(*(sub_2647856E4() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0088, 0, 0);
}

uint64_t sub_2646C0088()
{
  v1 = *(v0 + 104);
  if (*(v1 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact))
  {
    sub_264785B14();
LABEL_5:
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_6;
  }

  v2 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_handle);
  v3 = *v2;
  if (v2[1])
  {
    v4 = v2[1];

    goto LABEL_5;
  }

  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v30 = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
LABEL_6:
  v35 = *(v0 + 160);
  v10 = *(v0 + 144);
  v36 = *(v0 + 152);
  v37 = *(v0 + 168);
  v11 = *(v0 + 136);
  v32 = *(v0 + 128);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = sub_264785754();
  v33 = v17;
  v34 = v16;
  v18 = [v15 date];
  sub_264783AC4();

  v19 = sub_264783AF4();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v0 + 48) = &protocol witness table for SMLocation;
  *(v0 + 16) = v15;
  v21 = v15;
  sub_2647858C4();
  v22 = sub_2647858E4();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v10, v11, &qword_27FF756B8, &qword_26478AC90);
  v23 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  sub_264689B0C((v0 + 56), (v24 + 4));
  v24[9] = KeyPath;
  v24[10] = v14;
  v24[11] = v34;
  v24[12] = v33;
  sub_26460CF84(v11, v24 + v23);
  *(v24 + v23 + v32) = 1;

  v25 = v14;
  sub_264635430(0, 0, v12, &unk_26478D740, v24);

  sub_26460CD50(v10, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2646C04AC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = *(*(sub_264783B94() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_264785704() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[17] = v6;
  v2[18] = *(v6 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0618, 0, 0);
}

uint64_t sub_2646C0618()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v25 = *(v0 + 136);
  v26 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = [v7 date];
  sub_264783AC4();

  v9 = sub_264783AF4();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v12 = sub_264785754();
  v23 = v13;
  v24 = v12;
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v0 + 48) = &protocol witness table for SMLocation;
  *(v0 + 16) = v7;
  v15 = v7;
  sub_2647858C4();
  v16 = sub_2647858E4();
  v17 = v5;
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v2, v1, &qword_27FF756B8, &qword_26478AC90);
  v18 = (*(v25 + 80) + 104) & ~*(v25 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  sub_264689B0C((v0 + 56), (v19 + 4));
  v19[9] = KeyPath;
  v19[10] = v6;
  v19[11] = v24;
  v19[12] = v23;
  sub_26460CF84(v1, v19 + v18);
  *(v19 + v18 + v26) = 1;

  v20 = v6;
  sub_264635430(0, 0, v17, &unk_26478D680, v19);

  sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2646C0950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v7 = sub_264783E24();
  v6[36] = v7;
  v8 = *(v7 - 8);
  v6[37] = v8;
  v9 = *(v8 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v11 = *(*(sub_264783B94() - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v12 = *(*(sub_264785704() - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v6[43] = v13;
  v6[44] = *(v13 + 64);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0B28, 0, 0);
}

uint64_t sub_2646C0B28()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = objc_opt_self();
  v4 = sub_264783A04();
  v0[47] = v4;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_2646C0C74;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77590, &qword_26478D788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26463F8C4;
  v0[13] = &block_descriptor_9;
  v0[14] = v5;
  [v3 _mapItemFromHandle_completionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2646C0C74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_2646C12F4;
  }

  else
  {
    v3 = sub_2646C0D84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2646C0D84()
{
  v61 = v0;
  v1 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 360);
    v2 = *(v0 + 368);
    v4 = *(v0 + 344);
    v58 = *(v0 + 352);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    v7 = *(v0 + 320);
    v8 = *(v0 + 280);
    [v1 _coordinate];
    v10 = v9;
    [v1 _coordinate];
    v12 = v11;
    v13 = sub_264783AF4();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v16 = sub_264785754();
    v55 = v17;
    v56 = v16;
    KeyPath = swift_getKeyPath();
    type metadata accessor for CLLocationCoordinate2D(0);
    *(v0 + 144) = v10;
    *(v0 + 168) = v19;
    *(v0 + 176) = &protocol witness table for CLLocationCoordinate2D;
    *(v0 + 152) = v12;
    sub_2647858C4();
    v20 = sub_2647858E4();
    (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
    sub_264689A40(v0 + 144, v0 + 184);
    sub_26460CCE8(v2, v3, &qword_27FF756B8, &qword_26478AC90);
    v21 = (*(v4 + 80) + 104) & ~*(v4 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_264689B0C((v0 + 184), (v22 + 4));
    v22[9] = KeyPath;
    v22[10] = v8;
    v22[11] = v56;
    v22[12] = v55;
    sub_26460CF84(v3, v22 + v21);
    *(v22 + v21 + v58) = 1;

    v23 = v8;
    sub_264635430(0, 0, v7, &unk_26478D7C0, v22);

    sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  }

  else
  {
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v26 = *(v0 + 280);
    v27 = sub_2647858E4();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v29 = v26;
    sub_264635430(0, 0, v24, &unk_26478D798, v28);

    sub_264783E04();
    v30 = v29;
    v31 = sub_264783E14();
    v32 = sub_2647859D4();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 312);
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    if (v33)
    {
      v59 = *(v0 + 312);
      v37 = *(v0 + 280);
      v57 = *(v0 + 288);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60[0] = v39;
      *v38 = 136315394;
      v40 = v37;
      v41 = [v40 description];
      v42 = sub_264785724();
      v44 = v43;

      v45 = sub_2646DF234(v42, v44, v60);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264797850, v60);
      _os_log_impl(&dword_264605000, v31, v32, "#SafetyCacheMapViewModel, %s, %s: Fail to resolve destination map item", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v38, -1, -1);

      (*(v35 + 8))(v59, v57);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }
  }

  v47 = *(v0 + 360);
  v46 = *(v0 + 368);
  v49 = *(v0 + 328);
  v48 = *(v0 + 336);
  v51 = *(v0 + 312);
  v50 = *(v0 + 320);
  v52 = *(v0 + 304);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_2646C12F4()
{
  v41 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  swift_willThrow();

  sub_264783E04();
  v5 = v4;
  v6 = v2;
  v7 = sub_264783E14();
  v8 = sub_2647859D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 296);
    v39 = *(v0 + 304);
    v10 = *(v0 + 280);
    v37 = *(v0 + 384);
    v38 = *(v0 + 288);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v11 = 136315650;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_264785724();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, v40);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264797850, v40);
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = sub_264785EF4();
    v24 = sub_2646DF234(v22, v23, v40);

    *(v11 + 24) = v24;
    _os_log_impl(&dword_264605000, v7, v8, "#SafetyCacheMapViewModel, %s, %s: Error resolving map item from map data handle, error: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v9 + 8))(v39, v38);
  }

  else
  {
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 288);

    (*(v26 + 8))(v25, v27);
  }

  v29 = *(v0 + 360);
  v28 = *(v0 + 368);
  v31 = *(v0 + 328);
  v30 = *(v0 + 336);
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  v34 = *(v0 + 304);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2646C15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C1658, 0, 0);
}

uint64_t sub_2646C1658()
{
  sub_2647858B4();
  *(v0 + 64) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C16EC, v2, v1);
}

uint64_t sub_2646C16EC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_264783EC4();
  sub_264659660(v2, v6, &qword_27FF767D0, &qword_26478AC98);
  v5(v0 + 2, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2646C1820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 488) = v22;
  *(v8 + 280) = a8;
  *(v8 + 288) = v21;
  *(v8 + 264) = a6;
  *(v8 + 272) = a7;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 + 64);
  *(v8 + 320) = swift_task_alloc();
  v11 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  *(v8 + 328) = v11;
  v12 = *(v11 - 8);
  *(v8 + 336) = v12;
  *(v8 + 344) = *(v12 + 64);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v13 = sub_264783AF4();
  *(v8 + 376) = v13;
  v14 = *(v13 - 8);
  *(v8 + 384) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v16 = sub_264783E24();
  *(v8 + 400) = v16;
  v17 = *(v16 - 8);
  *(v8 + 408) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C1A98, 0, 0);
}

uint64_t sub_2646C1A98()
{
  v48 = v0;
  v1 = v0[55];
  v2 = v0[31];
  v3 = v0[32];
  sub_264783E04();
  sub_264689A40(v2, (v0 + 2));

  v4 = sub_264783E14();
  v5 = sub_2647859F4();

  if (os_log_type_enabled(v4, v5))
  {
    v46 = v0[55];
    v7 = v0[50];
    v6 = v0[51];
    v8 = v0[32];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136643075;
    sub_264689A40((v0 + 2), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
    v11 = sub_264785764();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v14 = sub_2646DF234(v11, v13, &v47);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = sub_264785BB4();
    v17 = sub_2646DF234(v15, v16, &v47);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_264605000, v4, v5, "#SafetyCacheMapViewModel: Trying to resolve location for %{sensitive}s (key path: %s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v6 + 8))(v46, v7);
  }

  else
  {
    v18 = v0[55];
    v19 = v0[50];
    v20 = v0[51];

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[48];
  v21 = v0[49];
  v23 = v0[47];
  v24 = v0[33];
  v25 = v0[31];
  v26 = v25[3];
  v27 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v26);
  v28 = (*(v27 + 8))(v26, v27);
  v29 = v25[3];
  v30 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v32 = objc_opt_self();
  v33 = v25[3];
  v34 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v33);
  v35 = (*(v34 + 8))(v33, v34);
  v36 = v25[3];
  v37 = v25[4];
  __swift_project_boxed_opaque_existential_0(v25, v36);
  if ([v32 isLocationShiftRequiredForCoordinate_])
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  sub_264783AE4();
  v39 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v40 = sub_264783A64();
  v41 = [v39 initWithCoordinate:v40 altitude:v38 horizontalAccuracy:v28 verticalAccuracy:v31 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v0[56] = v41;

  (*(v22 + 8))(v21, v23);
  v42 = *(v24 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_geocoder);
  v43 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[57] = v43;
  v44 = swift_task_alloc();
  v0[58] = v44;
  *v44 = v0;
  v44[1] = sub_2646C1EC8;

  return CachedGeocoder.placemark(forKey:with:)(v41, v43);
}

uint64_t sub_2646C1EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v7 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v5 = sub_2646C266C;
  }

  else
  {

    v5 = sub_2646C1FE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2646C1FE4()
{
  v84 = v0;
  v1 = v0[59];
  if (v1)
  {
    v2 = v0[47];
    v3 = v0[48];
    v4 = v0[46];
    v78 = v0[54];
    v80 = v0[45];
    v5 = v0[40];
    v6 = v0[41];
    v7 = v0[35];
    v8 = v0[34];
    v9 = v0[32];
    sub_26460CCE8(v0[36], v5, &qword_27FF756B8, &qword_26478AC90);
    v10 = *(v6 + 24);
    (*(v3 + 56))(&v4[v10], 1, 1, v2);
    *v4 = v8;
    *(v4 + 1) = v7;
    *(v4 + 2) = v1;

    sub_264659660(v5, &v4[v10], &qword_27FF756B8, &qword_26478AC90);
    sub_264783E04();
    sub_2646C6858(v4, v80, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);

    v11 = sub_264783E14();
    v12 = sub_2647859F4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[54];
    v16 = v0[50];
    v15 = v0[51];
    v17 = v0[45];
    if (v13)
    {
      v18 = v0[32];
      v81 = v0[50];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v83 = v20;
      *v19 = 136643075;
      v21 = sub_2646BB4C0();
      v79 = v14;
      v23 = v22;
      sub_2646C68C0(v17, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      v24 = sub_2646DF234(v21, v23, &v83);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v25 = sub_264785BB4();
      v27 = sub_2646DF234(v25, v26, &v83);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_264605000, v11, v12, "#SafetyCacheMapViewModel: setting last unlock location name: %{sensitive}s (key path: %s)", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v20, -1, -1);
      MEMORY[0x266740650](v19, -1, -1);

      (*(v15 + 8))(v79, v81);
    }

    else
    {

      sub_2646C68C0(v17, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      (*(v15 + 8))(v14, v16);
    }

    v47 = v0[56];
    v48 = v0[46];
    v50 = v0[43];
    v49 = v0[44];
    v51 = v0[42];
    v52 = v0[37];
    v53 = v0[32];
    v54 = v0[33];
    v55 = sub_2647858E4();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);
    sub_2646C6858(v48, v49, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
    v56 = (*(v51 + 80) + 48) & ~*(v51 + 80);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v54;
    v57[5] = v53;
    sub_2646C6920(v49, v57 + v56, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);

    v58 = v54;
    sub_264635430(0, 0, v52, &unk_26478D6B8, v57);

    sub_2646C68C0(v48, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  else
  {
    v28 = v0[53];
    v29 = v0[31];
    v30 = v0[32];
    sub_264783E04();
    sub_264689A40(v29, (v0 + 12));

    v31 = sub_264783E14();
    v32 = sub_2647859D4();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[53];
    v36 = v0[50];
    v35 = v0[51];
    if (v33)
    {
      v82 = v0[53];
      v37 = v0[32];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v83 = v39;
      *v38 = 136643075;
      sub_264689A40((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
      v40 = sub_264785764();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      v43 = sub_2646DF234(v40, v42, &v83);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = sub_264785BB4();
      v46 = sub_2646DF234(v44, v45, &v83);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_264605000, v31, v32, "#SafetyCacheMapViewModel: No result for reverse geo returned for location: %{sensitive}s (key path: %s).", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v38, -1, -1);

      (*(v35 + 8))(v82, v36);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
      (*(v35 + 8))(v34, v36);
    }

    v59 = v0[56];
    v60 = v0[37];
    v61 = v0[32];
    v62 = v0[33];
    v63 = sub_2647858E4();
    (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = 0;
    v64[4] = v62;
    v64[5] = v61;

    v65 = v62;
    sub_264635430(0, 0, v60, &unk_26478D6A0, v64);
  }

  v67 = v0[54];
  v66 = v0[55];
  v69 = v0[52];
  v68 = v0[53];
  v70 = v0[49];
  v72 = v0[45];
  v71 = v0[46];
  v73 = v0[44];
  v74 = v0[40];
  v75 = v0[37];

  v76 = v0[1];

  return v76();
}

uint64_t sub_2646C266C()
{
  v59 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 416);
  v3 = *(v0 + 256);

  sub_264783E04();

  v4 = v1;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 480);
    v8 = *(v0 + 408);
    v56 = *(v0 + 416);
    v9 = *(v0 + 400);
    v10 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v11 = 136315394;
    swift_getErrorValue();
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = sub_264785EF4();
    v18 = sub_2646DF234(v16, v17, &v58);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v19 = sub_264785BB4();
    v21 = sub_2646DF234(v19, v20, &v58);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_264605000, v5, v6, "#SafetyCacheMapViewModel: Failed to reverse geocode for location: %s (key path: %s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v8 + 8))(v56, v9);
  }

  else
  {
    v23 = *(v0 + 408);
    v22 = *(v0 + 416);
    v24 = *(v0 + 400);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 480);
  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v29 = *(v0 + 296);
  v28 = *(v0 + 304);
  v57 = *(v0 + 448);
  v53 = *(v0 + 488);
  v30 = *(v0 + 280);
  v31 = *(v0 + 288);
  v54 = *(v0 + 264);
  v55 = *(v0 + 272);
  v33 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = sub_2647858E4();
  (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  sub_264689A40(v33, v0 + 56);
  sub_26460CCE8(v31, v26, &qword_27FF756B8, &qword_26478AC90);
  v35 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v36 = (v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v25;
  *(v37 + 40) = v53;
  sub_264689B0C((v0 + 56), v37 + 48);
  *(v37 + 88) = v54;
  sub_26460CF84(v26, v37 + v35);
  v38 = (v37 + v36);
  *v38 = v55;
  v38[1] = v30;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;

  v39 = v54;
  v40 = v25;
  sub_264635430(0, 0, v29, &unk_26478D690, v37);

  v42 = *(v0 + 432);
  v41 = *(v0 + 440);
  v44 = *(v0 + 416);
  v43 = *(v0 + 424);
  v45 = *(v0 + 392);
  v47 = *(v0 + 360);
  v46 = *(v0 + 368);
  v48 = *(v0 + 352);
  v49 = *(v0 + 320);
  v50 = *(v0 + 296);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_2646C2A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C2AF8, 0, 0);
}

uint64_t sub_2646C2AF8()
{
  sub_2647858B4();
  *(v0 + 72) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C2B8C, v2, v1);
}

uint64_t sub_2646C2B8C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v6(v0 + 2, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2646C2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C2D58, 0, 0);
}

uint64_t sub_2646C2D58()
{
  sub_2647858B4();
  *(v0 + 80) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C2DEC, v2, v1);
}

uint64_t sub_2646C2DEC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_2646C6858(v3, v2, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  v6 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v7(v0 + 2, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2646C2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v16;
  *(v8 + 192) = v15;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 272) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v10 = sub_264783E24();
  *(v8 + 224) = v10;
  v11 = *(v10 - 8);
  *(v8 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C3050, 0, 0);
}

uint64_t sub_2646C3050()
{
  v1 = *(v0 + 160);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
  type metadata accessor for CLError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);
    *(v0 + 144) = v3;
    *(v0 + 248) = v3;
    sub_2646C49F4();
    sub_264783954();
    if (*(v0 + 152) == 2 && (*(v0 + 272) & 1) != 0)
    {
      v4 = (v0 + 16);
      v5 = *(v0 + 240);
      v6 = *(v0 + 168);
      sub_264783E04();
      sub_264689A40(v6, v0 + 16);
      v7 = sub_264783E14();
      v8 = sub_2647859D4();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 232);
      v11 = *(v0 + 240);
      v12 = *(v0 + 224);
      if (v9)
      {
        v13 = swift_slowAlloc();
        v31 = v11;
        v14 = swift_slowAlloc();
        v33 = v14;
        *v13 = 136642819;
        sub_264689A40(v4, v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
        v15 = sub_264785764();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0(v4);
        v18 = sub_2646DF234(v15, v17, &v33);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_264605000, v7, v8, "#SafetyCacheMapViewModel: retrying reverse resolve location: %{sensitive}s because of network error", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x266740650](v14, -1, -1);
        MEMORY[0x266740650](v13, -1, -1);

        (*(v10 + 8))(v31, v12);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        (*(v10 + 8))(v11, v12);
      }

      v21 = *(v0 + 168);
      v22 = v21[3];
      v23 = __swift_project_boxed_opaque_existential_0(v21, v22);
      v24 = swift_task_alloc();
      *(v0 + 256) = v24;
      *v24 = v0;
      v24[1] = sub_2646C3394;
      v25 = *(v0 + 200);
      v26 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      v29 = *(v0 + 176);

      return sub_2646C6250(v23, v27, v28, v25, v26, 0, v29, v22);
    }
  }

  sub_2647858B4();
  *(v0 + 264) = sub_2647858A4();
  v20 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C3504, v20, v19);
}

uint64_t sub_2646C3394()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2646C3490, 0, 0);
}

uint64_t sub_2646C3490()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2646C3504()
{
  v1 = v0[33];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];

  v5 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v6(v0 + 12, 0);

  v7 = v0[30];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

id sub_2646C3670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheMapViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2646C37F4()
{
  sub_2646C3930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2646C3C3C(319, &qword_27FF77558, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2646C3930()
{
  if (!qword_27FF77550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF756F0, &qword_264787DE8);
    v0 = sub_264783EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77550);
    }
  }
}

uint64_t sub_2646C39C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2646C3A98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646C3B68()
{
  sub_264659B70(319, &qword_27FF77F50, 0x277CBFC40);
  if (v0 <= 0x3F)
  {
    sub_2646C3C3C(319, &qword_27FF75DE8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2646C3C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2646C3CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646C3D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2646C3DBC()
{
  sub_2646C3C3C(319, &qword_27FF77580, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2646C3E5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SafetyCacheMapViewModel(0);
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_2646C3E9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_264783864();
    if (v10)
    {
      v11 = sub_264783884();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_264783874();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_264783864();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_264783884();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_264783874();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2646C40CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2646C6D2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_264655264(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2646C3E9C(v14, a3, a4, &v13);
  v10 = v4;
  sub_264655264(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2646C4268(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = *(v1 + ((*(v4 + 80) + 104) & ~*(v4 + 80)) + *(v4 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_264611390;

  return sub_2646C1820(a1, v5, v6, (v1 + 4), v7, v8, v9, v10);
}

uint64_t sub_2646C43C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8 + 8);

  v11 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_2646C4520(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v18 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 88);
  v12 = (v1 + v6);
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_264611390;

  return sub_2646C2F3C(a1, v18, v8, v9, v10, v1 + 48, v11, v1 + v5);
}

uint64_t sub_2646C4698()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2646C46E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_2646C2A5C(a1, v4, v5, v7, v6);
}

uint64_t sub_2646C47A0()
{
  v1 = (type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 8);

  v8 = v1[8];
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646C48E8(uint64_t a1)
{
  v4 = *(type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_2646C2CB8(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_2646C49F4()
{
  result = qword_27FF75788;
  if (!qword_27FF75788)
  {
    type metadata accessor for CLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75788);
  }

  return result;
}

uint64_t sub_2646C4A4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264785E34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SafetyCacheMapView.Annotation(0);
        v6 = sub_264785834();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2646C4DDC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2646C4B78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2646C4B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_2646C6858(v24, v18, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646C6858(v21, v14, type metadata accessor for SafetyCacheMapView.Annotation);
      v25 = *(v8 + 32);
      v26 = sub_264783A84();
      sub_2646C68C0(v14, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646C68C0(v18, type metadata accessor for SafetyCacheMapView.Annotation);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_2646C6920(v24, v37, type metadata accessor for SafetyCacheMapView.Annotation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2646C6920(v27, v21, type metadata accessor for SafetyCacheMapView.Annotation);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2646C4DDC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_2646C5740(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_2646F47DC(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_2646F4750(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_2646F47DC(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_2646C6858(v114 + v25 * v24, v19, type metadata accessor for SafetyCacheMapView.Annotation);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_2646C6858(v27, v120, type metadata accessor for SafetyCacheMapView.Annotation);
      v30 = *(v9 + 32);
      LODWORD(v115) = sub_264783A84();
      sub_2646C68C0(v29, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646C68C0(v19, type metadata accessor for SafetyCacheMapView.Annotation);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_2646C6858(v32, v19, type metadata accessor for SafetyCacheMapView.Annotation);
        v33 = v120;
        sub_2646C6858(v5, v120, type metadata accessor for SafetyCacheMapView.Annotation);
        v34 = *(v121 + 32);
        v35 = sub_264783A84() & 1;
        sub_2646C68C0(v33, type metadata accessor for SafetyCacheMapView.Annotation);
        result = sub_2646C68C0(v19, type metadata accessor for SafetyCacheMapView.Annotation);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_2646C6920(v42 + v41, v111, type metadata accessor for SafetyCacheMapView.Annotation);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2646C6920(v111, v42 + v36, type metadata accessor for SafetyCacheMapView.Annotation);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_2646C6858(v5, v19, type metadata accessor for SafetyCacheMapView.Annotation);
    v96 = v120;
    sub_2646C6858(v93, v120, type metadata accessor for SafetyCacheMapView.Annotation);
    v97 = *(v9 + 32);
    a4 = sub_264783A84();
    sub_2646C68C0(v96, type metadata accessor for SafetyCacheMapView.Annotation);
    result = sub_2646C68C0(v19, type metadata accessor for SafetyCacheMapView.Annotation);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_2646F48D4(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_2646F48D4((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_2646C5740(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_2646F47DC(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_2646F4750(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for SafetyCacheMapView.Annotation;
    v98 = v119;
    sub_2646C6920(v5, v119, type metadata accessor for SafetyCacheMapView.Annotation);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_2646C6920(v98, v93, type metadata accessor for SafetyCacheMapView.Annotation);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_2646C5740(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_2646C6858(v33, v47, type metadata accessor for SafetyCacheMapView.Annotation);
          v35 = v48;
          sub_2646C6858(v29, v48, type metadata accessor for SafetyCacheMapView.Annotation);
          v36 = *(v31 + 32);
          v37 = sub_264783A84();
          sub_2646C68C0(v35, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646C68C0(v34, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_2646C6858(a2, v47, type metadata accessor for SafetyCacheMapView.Annotation);
        v22 = v48;
        sub_2646C6858(a4, v48, type metadata accessor for SafetyCacheMapView.Annotation);
        v23 = *(v49 + 32);
        v24 = sub_264783A84();
        sub_2646C68C0(v22, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646C68C0(v21, type metadata accessor for SafetyCacheMapView.Annotation);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_2646F47F0(&v52, &v51, &v50);
  return 1;
}

id sub_2646C5C70(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_264785C04();
  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  sub_26467A890();
  result = sub_264785984();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_264785C44())
      {
        goto LABEL_30;
      }

      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_2646C5E8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        v24 = v19;
        goto LABEL_24;
      }

      v11 += 24;
      v21 = v19;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2646C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2646C6A98(a4, a5, a6, &v32);
  v29 = v32;
  v30 = v33;
  *v31 = v34;
  *&v31[16] = v35;
  if (!a2)
  {
    a3 = 0;
    v26 = v33;
    *a1 = v32;
    *(a1 + 16) = v26;
    *(a1 + 32) = v34;
    *(a1 + 48) = v35;
    return a3;
  }

  if (!a3)
  {
LABEL_10:
    v24 = *v31;
    v25 = v30;
    *a1 = v29;
    *(a1 + 16) = v25;
    *(a1 + 32) = v24;
    *(a1 + 40) = *&v31[8];
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = 1;
    while (1)
    {
      sub_2646C6B78(v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        break;
      }

      sub_2646C6920(v15, v20, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646C6920(v20, a2, type metadata accessor for SafetyCacheMapView.Annotation);
      if (a3 == v22)
      {
        goto LABEL_10;
      }

      a2 += *(v17 + 72);
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_26460CD50(v15, &qword_27FF766A8, &unk_26478AA80);
    v27 = *v31;
    v28 = v30;
    *a1 = v29;
    *(a1 + 16) = v28;
    *(a1 + 32) = v27;
    *(a1 + 40) = *&v31[8];
    return v22 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2646C6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a5;
  *(v8 + 128) = a7;
  *(v8 + 168) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a2;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 + 64);
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 40) = a8;
  *(v8 + 48) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a1, a8);

  return MEMORY[0x2822009F8](sub_2646C63B8, 0, 0);
}

uint64_t sub_2646C63B8()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v16 = *(v0 + 168);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);
  sub_2647858C4();
  v10 = sub_2647858E4();
  (*(*(v10 - 8) + 56))(v1, 0, 1, v10);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v9, v2, &qword_27FF756B8, &qword_26478AC90);
  v11 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  sub_264689B0C((v0 + 56), (v12 + 4));
  v12[9] = v5;
  v12[10] = v6;
  v12[11] = v8;
  v12[12] = v7;
  sub_26460CF84(v2, v12 + v11);
  *(v12 + v11 + v4) = v16;

  v13 = v6;

  sub_264635430(0, 0, v1, &unk_26478D718, v12);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v6 = *(v0 + 72);

  v7 = *(v0 + 96);

  v8 = sub_264783AF4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2646C66AC(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = *(v1 + ((*(v4 + 80) + 104) & ~*(v4 + 80)) + *(v4 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26460F764;

  return sub_2646C1820(a1, v5, v6, (v1 + 4), v7, v8, v9, v10);
}

uint64_t sub_2646C6804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26465944C(a1, a2);
  }

  return a1;
}

uint64_t sub_2646C6818()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646C6858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646C68C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2646C6920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646C6988()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_264655264(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2646C69D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264611390;

  return sub_2646C0950(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2646C6A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2646C6B78(uint64_t a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      v6 = v16;
      if (v16)
      {
LABEL_16:
        v14 = v1[5];
        v13 = v1[6];
        v16 = v6;
        v14(&v16);

        v15 = type metadata accessor for SafetyCacheMapView.Annotation(0);
        (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
        return;
      }
    }

LABEL_6:
    v7 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    return;
  }

  v3 = v1[3];
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[3];
LABEL_14:
    v11 = (v4 - 1) & v4;
    v6 = *(*(*v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
    v12 = v6;
    v10 = v5;
LABEL_15:
    v1[3] = v10;
    v1[4] = v11;
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v8 = (v1[2] + 64) >> 6;
  if (v8 <= v3 + 1)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = (v1[2] + 64) >> 6;
  }

  v10 = v9 - 1;
  while (1)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v5 >= v8)
    {
      v6 = 0;
      v11 = 0;
      goto LABEL_15;
    }

    v4 = *(v1[1] + 8 * v5);
    ++v3;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2646C6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_264783864();
  v11 = result;
  if (result)
  {
    result = sub_264783884();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_264783874();
  sub_2646C3E9C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2646C6DE4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26465944C(a3, a4);
          return sub_2646C40CC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2646C6F78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646C6FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_2646C15BC(a1, v4, v5, v6);
}

uint64_t sub_2646C706C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 120);
    if (v3 >> 60 != 15)
    {
      sub_264655264(*(v0 + 112), v3);
    }

    v4 = *(v0 + 128);
  }

  if (*(v0 + 152))
  {

    v5 = *(v0 + 152);

    v6 = *(v0 + 216);
    if (v6 >> 60 != 15)
    {
      sub_264655264(*(v0 + 208), v6);
    }

    v7 = *(v0 + 224);
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

uint64_t sub_2646C718C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);
  v9 = *(v1 + 248);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_2646BBCE8(a1, v4, v5, v6, (v1 + 40), (v1 + 136), v7, v8);
}

uint64_t sub_2646C7270(uint64_t result, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11)
{
  if (a3)
  {
    v17 = result;

    sub_264655900(a10, a11);
  }

  return result;
}

id CriticalAlertOnboardingView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6[0] = v1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  objc_allocWithZone(type metadata accessor for CriticalAlertOnboardingViewController());

  return CriticalAlertOnboardingViewController.init(model:)(v6);
}

id sub_2646C73B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6[0] = v1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  objc_allocWithZone(type metadata accessor for CriticalAlertOnboardingViewController());

  return CriticalAlertOnboardingViewController.init(model:)(v6);
}

uint64_t sub_2646C7418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646C7518();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2646C747C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646C7518();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2646C74E0()
{
  sub_2646C7518();
  sub_264784B74();
  __break(1u);
}

unint64_t sub_2646C7518()
{
  result = qword_27FF77598;
  if (!qword_27FF77598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77598);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2646C7580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2646C75C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646C7634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775B8, &qword_26478D998);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775D8, &qword_26478D9B0);
  sub_2646C7D40();
  sub_264785334();
  v11 = sub_264784C24();
  v12 = &v9[*(v6 + 36)];
  *v12 = v11;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  v12[40] = 1;
  sub_2646C7C34();
  sub_264785034();
  return sub_2646C7DF8(v9);
}

uint64_t sub_2646C77C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v11 - 8) + 56))(v10, 2, 3, v11);
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  MEMORY[0x26673F100](&v17);
  v12 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2647031A4(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2647031A4(v13 > 1, v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  sub_26468FA08(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14);
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v16[0] = v12;
  sub_2647853E4();
}

uint64_t sub_2646C79C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2647845C4();
  if (qword_27FF752B0 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v3 = sub_264784E44();
  v5 = v4;
  v7 = v6;
  v9 = v8 & 1;
  sub_26460C474(v3, v4, v8 & 1);

  sub_26460ECC4(v3, v5, v9);

  v10 = sub_264784C94();
  result = sub_264783F54();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v9;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = 0;
  return result;
}

double sub_2646C7AF8@<D0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775A0, &qword_26478D990);
  sub_2646C7BA8();
  sub_264785464();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775D0, &qword_26478D9A8) + 36);
  *(v3 + 32) = 0;
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

unint64_t sub_2646C7BA8()
{
  result = qword_27FF775A8;
  if (!qword_27FF775A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775A0, &qword_26478D990);
    sub_2646C7C34();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775A8);
  }

  return result;
}

unint64_t sub_2646C7C34()
{
  result = qword_27FF775B0;
  if (!qword_27FF775B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775B8, &qword_26478D998);
    sub_26460CDF0(&qword_27FF775C0, &qword_27FF775C8, &qword_26478D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775B0);
  }

  return result;
}

uint64_t sub_2646C7CEC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2646C7D40()
{
  result = qword_27FF775E0;
  if (!qword_27FF775E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775D8, &qword_26478D9B0);
    sub_26460CDF0(&qword_27FF775E8, &qword_27FF775F0, &qword_26478D9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775E0);
  }

  return result;
}

uint64_t sub_2646C7DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775B8, &qword_26478D998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2646C7E64()
{
  result = qword_27FF775F8;
  if (!qword_27FF775F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775D0, &qword_26478D9A8);
    sub_2646C7F1C();
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775F8);
  }

  return result;
}

unint64_t sub_2646C7F1C()
{
  result = qword_27FF77600;
  if (!qword_27FF77600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77608, &unk_26478D9C0);
    sub_2646C7BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77600);
  }

  return result;
}

SafetyMonitorUI::ReverseGeocodeStatus_optional __swiftcall ReverseGeocodeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReverseGeocodeStatus.rawValue.getter()
{
  v1 = 0x6974736575716572;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6575716552746F6ELL;
  }
}

uint64_t sub_2646C80C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974736575716572;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 1)
  {
    v3 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6575716552746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED0000676E697473;
  }

  v7 = 0x6974736575716572;
  v8 = 0xEA0000000000676ELL;
  if (*a2 != 1)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6575716552746F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED0000676E697473;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_2646C81E0()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_2646C8298()
{
  *v0;
  *v0;
  sub_264785794();
}

uint64_t sub_2646C833C()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646C83FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697473;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6974736575716572;
  if (v2 != 1)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6575716552746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void LocationSearchViewModel.init(selectedLocation:destinationType:geofenceSize:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v106 = a2;
  v107 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v93 = *(v94 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  v103 = *(v7 - 8);
  v104.i64[0] = v7;
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7);
  v102 = v91 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  v100 = *(v101 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = v91 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v95 = *(v97 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v98 = v91 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  v14 = *(v96 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v96);
  v17 = v91 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v91 - v26;
  LODWORD(v105) = *a3;
  v28 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__locationSearchText;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_264783E94();
  v29 = *(v24 + 32);
  v91[1] = v23;
  v30 = v23;
  v31 = v95;
  v29(&v3[v28], v27, v30);
  v32 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__searchedLocations;
  v33 = MEMORY[0x277D84F90];
  *&v109 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77658, &qword_26478E4E0);
  sub_264783E94();
  v34 = &v3[v32];
  v35 = v97;
  (*(v19 + 32))(v34, v22, v18);
  v36 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationValidity;
  LOBYTE(v109) = 0;
  sub_264783E94();
  (*(v14 + 32))(&v3[v36], v17, v96);
  v37 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedFenceSize;
  LOBYTE(v109) = 0;
  v38 = v98;
  sub_264783E94();
  (*(v31 + 32))(&v3[v37], v38, v35);
  v39 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__annotations;
  *&v109 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77678, &qword_26478DA10);
  v40 = v99;
  sub_264783E94();
  (*(v100 + 32))(&v3[v39], v40, v101);
  v41 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationReverseGeocodeStatus;
  LOBYTE(v109) = 0;
  v42 = v102;
  sub_264783E94();
  (*(v103 + 32))(&v3[v41], v42, v104.i64[0]);
  if (v33 >> 62 && sub_264785C14())
  {
    v43 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
  }

  v44 = v106;
  *&v3[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_cancellableSet] = v43;
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_safetyMonitorManager;
  *&v3[v45] = [objc_opt_self() defaultManager];
  v46 = &unk_27FF77000;
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter;
  *&v3[v47] = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  if (qword_27FF74FC8 != -1)
  {
    swift_once();
  }

  v106 = xmmword_27FF80718;
  v104 = *&qword_27FF80728;
  swift_beginAccess();
  v109 = v106;
  v110 = v104;
  type metadata accessor for MKCoordinateRegion(0);
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v111 = v44;
  type metadata accessor for SMSessionDestinationType(0);
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v31 + 8))(&v3[v37], v35);
  LOBYTE(v111) = v105;
  sub_264783E94();
  swift_endAccess();
  v48 = *MEMORY[0x277D4AD20];
  sub_264785724();
  v49 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v50 = sub_264785714();

  v51 = [v49 initWithEffectiveBundlePath_];

  if (v51)
  {
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager] = v51;
    v52 = v107;
    if (v107)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_264788990;
      *(v53 + 32) = v52;
      swift_beginAccess();
      v111 = v53;
      v54 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776C0, &unk_26478DA18);
      sub_264783E94();
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v111 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776C0, &unk_26478DA18);
      sub_264783E94();
      swift_endAccess();
    }

    v55 = type metadata accessor for LocationSearchViewModel();
    v108.receiver = v3;
    v108.super_class = v55;
    v56 = objc_msgSendSuper2(&v108, sel_init);
    v57 = v56;
    if (v52)
    {
      *&v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v58 = swift_allocObject();
      v105 = xmmword_264788990;
      *(v58 + 16) = xmmword_264788990;
      *(v58 + 32) = v52;
      swift_getKeyPath();
      swift_getKeyPath();
      *&v109 = v58;
      v59 = v52;
      v60 = v57;
      v61 = v59;
      v62 = v60;
      sub_264783EE4();
      sub_2646CA060();
      v104.i64[0] = sub_2646CFDA4(v61, v44);
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = [v61 placemark];
      v70 = [v69 location];

      if (v70)
      {
        v103 = v66;
        [v70 coordinate];
        v72 = v71;
        v74 = v73;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v109 = v72;
        *(&v109 + 1) = v74;
        v110 = vdupq_n_s64(0x3F747AE147AE147BuLL);
        v75 = v62;
        sub_264783EE4();
        v76 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
        [v70 coordinate];
        [v76 setCoordinate_];
        v77 = v76;
        if (v64)
        {

          v78 = sub_264785714();
        }

        else
        {
          v78 = 0;
        }

        [v76 setTitle_];

        if (v68)
        {
          v80 = sub_264785714();
        }

        else
        {
          v80 = 0;
        }

        v46 = &unk_27FF77000;
        [v76 setSubtitle_];

        v81 = swift_allocObject();
        *(v81 + 16) = v105;
        *(v81 + 32) = v76;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v109 = v81;
        v82 = v75;
        v83 = v76;
        sub_264783EE4();

        v52 = v107;
      }

      else
      {

        v46 = &unk_27FF77000;
      }
    }

    else
    {
      v79 = v56;
    }

    v84 = *&v57[v46[211]];
    v85 = v57;
    [v84 setDelegate_];
    v86 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager;
    v87 = *&v85[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager];
    [v87 setDelegate_];

    [*&v85[v86] requestLocation];
    swift_beginAccess();
    v88 = v92;
    sub_264783EA4();
    swift_endAccess();
    *(swift_allocObject() + 16) = v85;
    sub_26460CDF0(&unk_27FF776C8, &qword_27FF77610, &qword_26478D9D0);
    v89 = v85;
    v90 = v94;
    sub_264783F14();

    (*(v93 + 8))(v88, v90);
    swift_beginAccess();
    sub_264783E34();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LocationSearchViewModel()
{
  result = qword_27FF77758;
  if (!qword_27FF77758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}